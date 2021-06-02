using System;
using System.Collections.Generic;

#nullable disable

namespace efcodefirstapi.Models
{
    public partial class Platform
    {
        public Platform()
        {
            Commands = new HashSet<Command>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public string LicenseKey { get; set; }

        public virtual ICollection<Command> Commands { get; set; }
    }
}
