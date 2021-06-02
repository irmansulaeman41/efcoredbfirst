using System;
using System.Collections.Generic;

#nullable disable

namespace efcoredbfirstapi.Models
{
    public partial class Command
    {
        public int Id { get; set; }
        public string HowTo { get; set; }
        public string CommandLine { get; set; }
        public int PlatformId { get; set; }

        public virtual Platform Platform { get; set; }
    }
}
