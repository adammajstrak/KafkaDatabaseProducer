using Confluent.Kafka;

namespace KafkaDatabaseProducer
{
    internal class KafkaProducer : IDisposable
    {
        IProducer<Null, string> _producer;
        ICollection<Task<DeliveryResult<Null, string>>> _deliveryResults = new List<Task<DeliveryResult<Null, string>>>();

        public KafkaProducer()
        {
            var config = new ProducerConfig { BootstrapServers = "localhost:29092" };
            _producer = new ProducerBuilder<Null, string>(config).Build();
        }

        public void SendMessage(string message)
        {
            var task = _producer.ProduceAsync("Test", new Message<Null, string> { Value = message });
            _deliveryResults.Add(task);
        }

        public async Task CheckSending() 
        {
            var results = await Task.WhenAll(_deliveryResults);

            if (results.Any(x => x.Status != PersistenceStatus.Persisted))
            {
                Console.WriteLine("Some messages has been not delivered!");
            }
            else
            {
                Console.WriteLine("All messages has been delivered!");
            }
        }

        public void Dispose()
        {
            _producer.Dispose();
        }
    }
}
