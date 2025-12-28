本脚本由Gemini编写而来

AdGuard Home: 监听 53 端口，负责广告过滤，上游设置为 127.0.0.1:5335 (MosDNS)。

MosDNS: 监听 5335 端口，负责国内外域名分流。

PassWall: 开启透明代理，处理 MosDNS 转发过来的国外解析请求。

多拨
