using System;
using System.Collections.Generic;

namespace WorldOfWarshipsAcademy.Models
{
    public partial class LightCruisers
    {
        public int Id { get; set; }
        public string Abbrev { get; set; }
        public string Nation { get; set; }
        public string Tier { get; set; }
        public string ShipName { get; set; }
        public int? Survivability { get; set; }
        public int? Artillery { get; set; }
        public string Torpedoes { get; set; }
        public string AaDefense { get; set; }
        public int? Maneuverability { get; set; }
        public int? Concealment { get; set; }

        public virtual ShipClasses AbbrevNavigation { get; set; }
        public virtual ShipNations NationNavigation { get; set; }
    }
}
