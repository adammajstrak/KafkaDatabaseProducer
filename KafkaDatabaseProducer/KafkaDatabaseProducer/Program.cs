using KafkaDatabaseProducer;

internal class Program
{
    public static async Task Main(string[] args)
    {
        DatabaseRepository databaseRepository = new DatabaseRepository();
        KafkaProducer kafkaProducer = new KafkaProducer();

        await foreach (var data in databaseRepository.GetMessages())
        {
            kafkaProducer.SendMessage(data.Message);
        }

        await kafkaProducer.CheckSending();

        Console.ReadKey();
    }
}