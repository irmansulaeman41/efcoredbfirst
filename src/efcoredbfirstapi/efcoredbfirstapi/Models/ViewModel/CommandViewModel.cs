namespace efcoredbfirstapi.Models.ViewModel
{
    public class CommandViewModel
    {
        public int Id { get; set; }
        public string HowTo { get; set; }
        public string CommandLine { get; set; }
        public int PlatformId { get; set; }
        public string PlatformName { get; set; }
        public string PlatformLicenseKey { get; set; }
    }
}
