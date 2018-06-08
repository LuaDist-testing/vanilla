package = "vanilla"
version = "0.1.0.rc6-1"

source ={
    url ="git://github.com/idevz/vanilla.git"
}

description ={
    summary       ="An OpenResty Lua MVC Web Framework",
    homepage      ="http://idevz.github.io/vanilla",
    maintainer    ="zhoujing<zhoujing00k@gmail.com>",
    license       ="MIT",
    detailed = [[
##install
```
yum install lua-devel luarocks
luarocks install vanilla
```]]
}

dependencies ={
    "lua=5.1",
    "luafilesystem=1.6.2-2",
    "lua-resty-template=1.5-1",
    "lua-resty-cookie=0.1.0-1",
    "lua-resty-session=2.2-1",
    "lua-resty-http=0.06-0"
}

build = {
   type = "builtin",
   modules = {
      ["spec.helper"] = "spec/helper.lua",
      ["spec.v.dispatcher_spec"] = "spec/v/dispatcher_spec.lua",
      ["vanilla.base"] = "vanilla/base/init.lua",
      ["vanilla.base.registry"] = "vanilla/base/registry.lua",
      ["vanilla.base.resty.cookie"] = "vanilla/base/resty/cookie.lua",
      ["vanilla.base.resty.http"] = "vanilla/base/resty/http.lua",
      ["vanilla.base.resty.http_headers"] = "vanilla/base/resty/http_headers.lua",
      ["vanilla.base.resty.template"] = "vanilla/base/resty/template.lua",
      ["vanilla.base.resty.template.html"] = "vanilla/base/resty/template/html.lua",
      ["vanilla.base.resty.template.microbenchmark"] = "vanilla/base/resty/template/microbenchmark.lua",
      ["vanilla.spec"] = "vanilla/spec/init.lua",
      ["vanilla.spec.runner"] = "vanilla/spec/runner.lua",
      ["vanilla.spec.runners.integration"] = "vanilla/spec/runners/integration.lua",
      ["vanilla.spec.runners.response"] = "vanilla/spec/runners/response.lua",
      ["vanilla.sys.application"] = "vanilla/sys/application.lua",
      ["vanilla.sys.config"] = "vanilla/sys/config.lua",
      ["vanilla.sys.console"] = "vanilla/sys/console.lua",
      ["vanilla.sys.nginx.config"] = "vanilla/sys/nginx/config.lua",
      ["vanilla.sys.nginx.directive"] = "vanilla/sys/nginx/directive.lua",
      ["vanilla.sys.nginx.handle"] = "vanilla/sys/nginx/handle.lua",
      ["vanilla.sys.vanilla"] = "vanilla/sys/vanilla.lua",
      ["vanilla.sys.waf.acc"] = "vanilla/sys/waf/acc.lua",
      ["vanilla.sys.waf.config"] = "vanilla/sys/waf/config.lua",
      ["vanilla.v.application"] = "vanilla/v/application.lua",
      ["vanilla.v.bootstrap"] = "vanilla/v/bootstrap.lua",
      ["vanilla.v.cache"] = "vanilla/v/cache.lua",
      ["vanilla.v.cache.base"] = "vanilla/v/cache/base.lua",
      ["vanilla.v.cache.lru"] = "vanilla/v/cache/lru.lua",
      ["vanilla.v.cache.mc"] = "vanilla/v/cache/mc.lua",
      ["vanilla.v.cache.redis"] = "vanilla/v/cache/redis.lua",
      ["vanilla.v.cache.shdict"] = "vanilla/v/cache/shdict.lua",
      ["vanilla.v.config.handle"] = "vanilla/v/config/handle.lua",
      ["vanilla.v.config.parse"] = "vanilla/v/config/parse.lua",
      ["vanilla.v.config.save"] = "vanilla/v/config/save.lua",
      ["vanilla.v.controller"] = "vanilla/v/controller.lua",
      ["vanilla.v.dispatcher"] = "vanilla/v/dispatcher.lua",
      ["vanilla.v.error"] = "vanilla/v/error.lua",
      ["vanilla.v.libs.ansicolors"] = "vanilla/v/libs/ansicolors.lua",
      ["vanilla.v.libs.cache"] = "vanilla/v/libs/cache.lua",
      ["vanilla.v.libs.cookie"] = "vanilla/v/libs/cookie.lua",
      ["vanilla.v.libs.http"] = "vanilla/v/libs/http.lua",
      ["vanilla.v.libs.logs"] = "vanilla/v/libs/logs.lua",
      ["vanilla.v.libs.reqargs"] = "vanilla/v/libs/reqargs.lua",
      ["vanilla.v.libs.session"] = "vanilla/v/libs/session.lua",
      ["vanilla.v.libs.shcache"] = "vanilla/v/libs/shcache.lua",
      ["vanilla.v.libs.utils"] = "vanilla/v/libs/utils.lua",
      ["vanilla.v.plugin"] = "vanilla/v/plugin.lua",
      ["vanilla.v.registry"] = "vanilla/v/registry.lua",
      ["vanilla.v.request"] = "vanilla/v/request.lua",
      ["vanilla.v.response"] = "vanilla/v/response.lua",
      ["vanilla.v.router"] = "vanilla/v/router.lua",
      ["vanilla.v.routes.restful"] = "vanilla/v/routes/restful.lua",
      ["vanilla.v.routes.simple"] = "vanilla/v/routes/simple.lua",
      ["vanilla.v.view"] = "vanilla/v/view.lua",
      ["vanilla.v.views.rtpl"] = "vanilla/v/views/rtpl.lua"
   },
   install ={
      bin ={
      "vanilla/bin/vanilla",
      "vanilla/bin/v-console"
      }
   },
}
