﻿using MagicVilla_VillaApi.Data;
using MagicVilla_VillaApi.Models;
using MagicVilla_VillaApi.Repository.IRepository;

namespace MagicVilla_VillaApi.Repository
{
    public class VillaNumberRepository : Repository<VillaNumber>, IVillaNumberRepository
    {
        private readonly ApplicationDbContext _db;
        public VillaNumberRepository(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }

        public async Task<VillaNumber> UpdateAsync(VillaNumber entity)
        {
            entity.UpdatedDate = DateTime.Now;
            _db.Update<VillaNumber>(entity);
            await _db.SaveChangesAsync();
            return entity;
        }
    }
}
