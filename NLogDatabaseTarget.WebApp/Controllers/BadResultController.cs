using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NLogDatabaseTarget.WebApp.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class BadResultController : ControllerBase
    {

        private readonly ILogger<BadResultController> _logger;

        public BadResultController(ILogger<BadResultController> logger)
        {
            _logger = logger;
        }

        [HttpGet]
        public string Get()
        {
            _logger.LogError("Fatal Error ):(");
            return "ERROR";
        }
    }
}
