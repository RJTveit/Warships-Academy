using System;
using System.Collections.Generic;

namespace WorldOfWarshipsAcademy.Models
{
    public partial class ShipNations
    {
        public ShipNations()
        {
            AircraftCarriers = new HashSet<AircraftCarriers>();
            Battleships = new HashSet<Battleships>();
            Destroyers = new HashSet<Destroyers>();
            HeavyCruisers = new HashSet<HeavyCruisers>();
            LightCruisers = new HashSet<LightCruisers>();
        }

        public string ShipNation { get; set; }
        public string NationAbbrev { get; set; }

        public virtual ICollection<AircraftCarriers> AircraftCarriers { get; set; }
        public virtual ICollection<Battleships> Battleships { get; set; }
        public virtual ICollection<Destroyers> Destroyers { get; set; }
        public virtual ICollection<HeavyCruisers> HeavyCruisers { get; set; }
        public virtual ICollection<LightCruisers> LightCruisers { get; set; }
    }
}
