using Dapper;
using System.Data.SqlClient;

namespace KafkaDatabaseProducer
{
    internal class DatabaseRepository
    {
        public async IAsyncEnumerable<DatabaseMessage> GetMessages()
        {
            var query = "SELECT [Message] FROM [Kafka].[dbo].[KafkaMessages]";
            var connectionString = "Server=Win10\\SQLEXPRESS;Database=Kafka;User=sa;Password=Password!";

            using var connection = new SqlConnection(connectionString);
            using var reader = await connection.ExecuteReaderAsync(query);
            var rowParser = reader.GetRowParser<DatabaseMessage>();

            while (await reader.ReadAsync())
            {
                ////yield to avoid store data in memory
                yield return rowParser(reader);
            }
        }
    }

    internal class DatabaseMessage
    {
        public string Message { get; set; }
    }
}
