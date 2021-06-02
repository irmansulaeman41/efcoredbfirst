using efcodefirstapi.DataAccess;
using efcodefirstapi.Models.ViewModel;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace efcodefirstapi.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class CommandController : ControllerBase
    {
        private readonly ILogger<CommandController> _logger;
        private readonly ApplicationDbContext _dbcontext;

        public CommandController(ILogger<CommandController> logger, ApplicationDbContext dbcontext)
        {
            _logger = logger;
            _dbcontext = dbcontext;
        }

        [HttpGet]
        public IEnumerable<CommandViewModel> Get()
        {
            return _dbcontext.Commands.Select(d => new CommandViewModel()
            {
                CommandLine = d.CommandLine,
                HowTo = d.HowTo,
                Id = d.Id,
                PlatformId = d.PlatformId,
                PlatformLicenseKey = d.Platform.LicenseKey,
                PlatformName = d.Platform.Name
            }).ToList();
        }
    }
}
