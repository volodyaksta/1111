//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EtalonFM
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class EtalonFMEntities : DbContext
    {
        private static EtalonFMEntities _context;

        public static EtalonFMEntities GetContext()
        {
            if (_context == null) _context = new EtalonFMEntities();
            return _context;
        }

        public EtalonFMEntities()
            : base("name=EtalonFMEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<AdType> AdTypes { get; set; }
        public virtual DbSet<Client> Clients { get; set; }
        public virtual DbSet<Location> Locations { get; set; }
        public virtual DbSet<Manag> Manags { get; set; }
        public virtual DbSet<Order> Orders { get; set; }
        public virtual DbSet<User> Users { get; set; }
    }
}
