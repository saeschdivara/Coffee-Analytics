########################
## UGLIFY TRICKS ##
########################

aa = encodeURIComponent
f = window
ba = setTimeout
n = Math

# set_href
Pc = (a, b) ->
    return a.href = b

# set_name
fa = (a, b) ->
    return a.name = b

Qc = "replace"
q = "data"
m = "match"
xc = "send"
ja = "port"
u = "createElement"
id = "setAttribute"
da = "getTime"
x = "host"
A = "split"
B = "location"
ra = "hasOwnProperty"
ma = "hostname"
ga = "search"
E = "protocol"
Ab = "href"
kd = "action"
G = "apply"
p = "push"
h = "hash"
s = "test"
ha = "slice"
r = "cookie"
t = "indexOf"
ia = "defaultValue"
v = "name"
y = "length"
z = "prototype"
la = "clientWidth"
jd = "target"
C = "call"
na = "clientHeight"
F = "substring"
oa = "navigator"
Ub = "parentNode"
H = "join"
I = "toLowerCase"

########################
## START ##
########################


class FOO
    ########################
    ## PRIVATE PROPERTIES ##
    ########################

    #######################
    ## PUBLIC PROPERTIES ##
    #######################


    ####################
    ## PUBLIC METHODS ##
    ####################

    constructor: () ->
        ###
        ###

        @a = []

    set: (b) ->
        ###
        ###

        @a[b] = true

    # encode_base64
    M: () ->
        ###
        ###

        all_allowed_characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

        b = []
        counter = -1
        while counter < a.length
            counter++

            if @a[counter]
                divided_counter = counter / 6
                divided_counter_rest = counter % 6
                divided_floor_counter = Math.floor(divided_counter)

                b[divided_floor_counter] = b[divided_floor_counter] ^ 1 << divided_counter_rest

        counter = -1
        while counter < b.length
            counter++
            b[counter] = all_allowed_characters.charAt(b[counter] || 0)

        return b.join("") + "~"

    #####################
    ## PRIVATE METHODS ##
    #####################

pa = new FOO()

# set_meta_data ??
J = (a) ->
    pa.set(a)

# is_function
ea = (a) ->
    return typeof a is "function"

is_object = (variable) ->
    return typeof variable is "object"

is_boolean = (variable) ->
    return typeof variable is "boolean"

# is_array
ka = (a) ->
    return"[object Array]" == Object.prototype.toString.call(Object(a))

# is_string ??
qa = (a) ->
    return 0 != a && -1 < (a.constructor + "").indexOf("String")

# find ? starts_with ?
D = (a, b) ->
    return a.indexOf(b) == 0

sa = (a) ->
    if a
        a.replace(/^[\s\xa0]+|[\s\xa0]+$/g, "")
    else
        ""

# create_spy_image
ta = (a) ->
    b = document.createElement("img")
    b.width = 1
    b.height = 1
    b.src = a;

    return b

# empty_function
ua = () ->

K = (a) ->
    if (aa instanceof Function)
        return aa(a)

    J(28)
    return a

# add_event_listener
L = (a, b, c, d) ->
    try
        if a.addEventListener
            a.addEventListener(b, c, !!d)
        else
            a.attachEvent && a.attachEvent("on" + b, c)
    catch e
        J(27)

# remove_event_listener
va = (a, b, c) ->
    if a.removeEventListener
        a.removeEventListener(b, c, false)
    else
        a.detachEvent && a.detachEvent("on" + b, c)

# insert_script_element
wa = (script_url, element_id) ->
    if (script_url)
        script_element = document.createElement("script")
        script_element.type = "text/javascript"
        script_element.async = true
        script_element.src = script_url

        if element_id
            script_element.id = element_id

        first_script_element = document.getElementsByTagName("script")[0]
        first_script_element.parentNode.insertBefore(script_element, first_script_element)

        return

# get_clean_host_name ?
xa = () ->
    hostname = "" + document.location.hostname
    ##
#    if hostname.indexOf("www.") == 0
    if D(hostname, 'www.')
        return hostname.substring(4)
    else
        return hostname

# get_referrer
ya = (a) ->
    referrer = document.referrer

    if /^https?:\/\//i.test(referrer)

        if a
            return referrer

        a = "//" + document.location.hostname
        c = referrer.indexOf(a)

        if c == 5 or c == 6

            a = referrer.charAt(c + a.length)

            if a == "/" or a == "?" or a == "" or a == ":"
                return

        return referrer

za = (a, b) ->
    if b.length == 1 and b[0] != null and is_object(b[0])
        return b[0]

    c = {}
    d = Math.min(a.length + 1, b.length)
    e = -1

    while e < d
        e++
        if is_object(b[e])
            for g of b[e]
                b[e].hasOwnProperty(g)
                c[g] = b[e][g]

            break
        else
            if e < a[y]
                c[ a[e] ] = b[e]

    return c


class N
    ########################
    ## PRIVATE PROPERTIES ##
    ########################


    #######################
    ## PUBLIC PROPERTIES ##
    #######################


    ####################
    ## PUBLIC METHODS ##
    ####################

    constructor: () ->
        ###
        ###

        @keys = []
        @w = {}
        @m = {}


    set: (a, b, c) ->
        ###
        ###

        @keys.push(a)
        if c
            @m[":" + a] = b
        else
            @w[":" + a] = b


    get: (a) ->
        ###
        ###
        
        if @m.hasOwnProperty(":" + a)
            @m[":" + a]
        else
            @w[":" + a]


    map: (a) ->
        ###
        ###

        for k in @keys
            d = @get(k)
            if d
                a(c, d)


    #####################
    ## PRIVATE METHODS ##
    #####################

# f = window
O = f
M = document

# call_func_async
fb = (a) ->
    setTimeout(a, 100)

Mc = () ->
    if document.cookie
        cookie = document.cookie
    else
        cookie = ''

    if document.referrer
        referrer = document.referrer
    else
        referrer = ''

    a = window.navigator.userAgent + cookie + referrer
    b = a.length
    c = window.history.length
    while c > 0
        a += c-- ^ b++
        c--
    return La(a)

Aa = (a) ->
    ga_user_preferences = window._gaUserPrefs;
    if ga_user_preferences and ga_user_preferences.ioo and ga_user_preferences.ioo() or a and window["ga-disable-" + a] is true
        return true
    try
        window_external = window.external
        if window_external and window_external._gaUserPrefs and "oo" is window_external._gaUserPrefs
            return true
    catch d

    return false

# find_all_cookie_settings ??
Ca = (a) ->
    b = []
    c = document.cookie.split(";")
    custom_regex = new RegExp("^\\s*" + a + "=\\s*(.*?)\\s*$")

    d = 0
    while d < c.length
        e = c[d].match(custom_regex)

        if e
            b.push(e[1])

        d++

    return b


zc = (a, b, c, d, e, g) ->
    if Aa(e)
        e = false
    else
        if eb.test(document.location.hostname) or c is "/" && vc.test(d)
            e = false
        else
            e = true

    if !e
        returnfalse

    if b && 1200 < b[y]
        b = b.substring(0, 1200)
        J(24)

    c = "#{a}=#{b}; path=#{c};"

    gmt_string = (new Date((new Date).getTime() + g)).toGMTString()
    if g
        c += "expires=#{gmt_string}; "

    if d and d != "none"
        c += "domain=#{d};"

    d = document.cookie

    document.cookie = c

    d = (d != document.cookie)
    if not(d)
        t
    else
        a = Ca(a)
        d = 0
        for foo in a
            if b is foo
                d = true
                break
        d = false

    return d

Cc = (a) ->
    return K(a).replace(/\(/g, "%28").replace(/\)/g, "%29")

vc = /^(www\.)?google(\.com?)?(\.[a-z]{2})?$/
eb = /(^|\.)doubleclick\.net$/i

# get_analytics_address
oc = () ->
    if Ba or "https:" is document.location.protocol
        protocol = "https:"
    else
        protocol = "http:"

    return "#{protocol}//www.google-analytics.com"

Da = (a) ->
    fa(@, "len");
    @message = a + "-8192"

Ea = (a) ->
    fa(@, "ff2post");
    @message = a + "-2036"

Ga = (url_string, data, c, d) ->
    c = c or ua

    if d
        d = c
        if window.navigator.sendBeacon
            if window.navigator.sendBeacon(url_string, data)
                d()
                d = true
            else
                d = false
        else
            d = false

    if not(d)
        if (2036 >= data.length)
            wc(url_string, data, c)

        else if (8192 >= data.length)

            if (0 <= window.navigator.userAgent.indexOf("Firefox") and ![].reduce)
                throw new Ea(data.length)

            wd(url_string, data, c) or xd(url_string, data, c) or Fa(data, c) or c()

        else
            throw new Da(data.length)

wc = (a, b, onload_callback) ->
    # create spy image element
    d = ta("#{a}?#{b}")

    d.onload = d.onerror = () ->
        d.onload = null
        d.onerror = null
        onload_callback()

# send_cross_domain_request
xd = (url_string, data, callback) ->

    # This can only be used for internet explorer

    cross_domain_request = window.XDomainRequest

    if not(cross_domain_request)
        return false

    cross_domain_request = new cross_domain_request
    cross_domain_request.open("POST", url_string)

    cross_domain_request.onerror = () ->
        callback()

    cross_domain_request.onload = callback

    cross_domain_request.send(data)

    return true

# send_request
wd = (url_string, data, callback) ->
    xml_http_request = window.XMLHttpRequest

    if not(xml_http_request)
        return false

    request_sender = new xml_http_request
    if not("withCredentials" in request_sender)
        return false

    request_sender.open("POST", url_string, true)
    request_sender.withCredentials = true
    request_sender.setRequestHeader("Content-Type", "text/plain")

    request_sender.onreadystatechange = () ->
        
        if request_sender.readyState is 4
            callback()
            request_sender = null

    request_sender.send(data)

    return true

Fa = (a, b) ->
    if not(document.body)
        fb(() ->
            Fa(a, b)
        )

        return true
    a = aa(a)

    try
        iframe_element = document.createElement('<iframe name="' + a + '"></iframe>')
    catch d
        iframe_element = document.createElement("iframe")
        fa(iframe_element, a)

    iframe_element.height = "0"
    iframe_element.width = "0"
    iframe_element.style.display = "none"
    iframe_element.style.visibility = "hidden"

    e = document.location
    e = oc() + "/analytics_iframe.html#" + encodeURIComponent("#{e.protocol}//#{e.host}/favicon.ico")
    g = () ->
        iframe_element.src = ""
        if iframe_element.parentNode
            iframe_element.parentNode.removeChild(iframe_element)

    L(window, "beforeunload", g)
    ca = false
    l = 0
    k = () ->
        if not(ca)
            try
                if 9 < l or iframe_element.contentWindow[B][x] is M[B][x]
                    ca = true
                    g()
                    va(O, "beforeunload", g)
                    b()

                    return

            catch a
            l++
            ba(k, 200)

    L(iframe_element, "load", k)
    document.body.appendChild(iframe_element)

    iframe_element.src = e

    return true

class Ha
    ########################
    ## PRIVATE PROPERTIES ##
    ########################


    #######################
    ## PUBLIC PROPERTIES ##
    #######################


    ####################
    ## PUBLIC METHODS ##
    ####################

    constructor: () ->
        ###
        ###

        @t = []


    add: (a) ->
        ###
        ###
        
        @t.push(a)

    D: (a) ->
        ###
        ###

        try
            for foo_bar in @t
                c = a.get(foo_bar)
                if c
                    ea(c)
                    c.call(window, a)
        catch d

        b = a.get(Ia)
        if b != ua
            ea(b)
            a.set(Ia, ua, true)
            ba(b, 10)

    #####################
    ## PRIVATE METHODS ##
    #####################

Ja = (a) ->
    if 100 != a.get(Ka) and La( P(a, Q) ) % 10000 >= 100 * R(a, Ka)
        throw "abort"

Ma = (a) ->
    if Aa( P(a, Na) )
        throw"abort"

# check_protocol
Oa = () ->
    protocol = document.location.protocol
    if protocol != "http:" and protocol != "https:"
        throw "abort"

Pa = (a) ->
    try
        if window.XMLHttpRequest
            if "withCredentials" in new window.XMLHttpRequest
                J(40)
            else
                if window.XDomainRequest
                    J(41)
                if window.navigator.sendBeacon
                    J(42)
    catch b

    a.set(Ac, R(a, Ac) + 1)
    c = []

    Qa.map((b, e) ->
        if e.p
            g = a.get(b)
            if g != 0 and g != e.defaultValue

                if is_boolean(g)
                    g *= 1

                c.push(e.p + "=" + K("" + g))
    )

    c.push("z=" + Bd())
    a.set(Ra, c.join("&"), true)

Sa = (a) ->
    b = P(a, gd) or oc() + "/collect"
    Ga(b, P(a, Ra), a.get(Ia), a.get(Vd))
    a.set(Ia, ua, true)

Hc = (a) ->
    ga_data = window.gaData

    if ga_data

        if ga_data.expId
            a.set(Nc, ga_data.expId)

        if ga_data.expVar
            a.set(Oc, ga_data.expVar)

# abort_on_preview ?
cd = () ->
    if window.navigator and window.navigator.loadPurpose is "preview"
        throw "abort"

yd = (a) ->
    ga_dev_ids = window.gaDevIds

    if ka(ga_dev_ids) and ga_dev_ids.length != 0
        a.set("&did", ga_dev_ids.join(","), true)

vb = (a) ->
    if not( a.get(Na) )
        throw "abort"

# get_random_?
hd = () ->
    return Math.round(2147483647 * Math.random())

# get_real_random_?
Bd = () ->
    try
        a = new Uint32Array(1)
        window.crypto.getRandomValues(a)

        return a[0] & 2147483647
    catch b
        return hd()

Ta = (a) ->
    b = R(a, Ua)

    if 500 <= b
        J(15)

    c = P(a, Va)

    if c != "transaction" and c != "item"
        c = R(a, Wa)
        # Returns the number of milliseconds between midnight, January 1, 1970
        current_miliseconds = (new Date).getTime()
        e = R(a, Xa)

        if 0 is e
            a.set(Xa, current_miliseconds);

        e = Math.round(2 * (current_miliseconds - e) / 1000)

        if 0 < e
            c = Math.min(c + e, 20)
            a.set(Xa, current_miliseconds)

        if 0 >= c
            throw "abort"

        a.set(Wa, --c)

    a.set(Ua, ++b)


class Ya
    ########################
    ## PRIVATE PROPERTIES ##
    ########################


    #######################
    ## PUBLIC PROPERTIES ##
    #######################


    ####################
    ## PUBLIC METHODS ##
    ####################

    constructor: () ->
        ###
        ###

        @data = new N

    get: (a) ->
        ###
        ###
        
        b = $a(a)
        c = @data.get(a)
        if b and 0 == c
            if ea(b.defaultValue)
                c = b.defaultValue()
            else
                c = b.defaultValue

        if b and b.n
            return b.n(@, a, c)
        else
            return c

    set: (a, b, c) ->
        ###
        ###
        
        if (a)
            if is_object(a)
                for d of a
                    if a.hasOwnProperty(d)
                        ab(@, d, a[d], c)
            else
                ab(@, a, b, c)

    #####################
    ## PRIVATE METHODS ##
    #####################

Qa = new N
Za = []

P = (a, b) ->
    c = a.get(b)

    if 0 == c
        return ""
    else
        return "" + c

R = (a, b) ->
    c = a.get(b)

    if 0 == c or c is ''
        return 0
    else
        return 1 * c

ab = (a, b, c, d) ->
    if c != 0
        switch
            when b is Na then wb[s](c)
            else null

    e = $a(b)

    if e and e.o
        e.o(a, b, c, d)
    else
        a.data.set(b, c, d)

bb = (a, b, c, d, e) ->
    fa(@, a)

    @p = b;
    @n = d;
    @o = e;
    @defaultValue = c

$a = (a) ->
    b = Qa.get(a)
    if not(b)
        for d in Za
            e = d[0].exec(a)
            if e
                b = d[1](e)
                Qa.set(b.name, b);
                break
    return b

yc = (a) ->
    b = null
    Qa.map((c, d) ->
        if d.p is a
            b = d
    )
    return b and b.name

S = (a, b, c, d, e) ->
    a = new bb(a, b, c, d, e)
    Qa.set(a.name, a)

    return a.name

cb = (a, b) ->
    Za.push([new RegExp("^#{a}$"), b])

T = (a, b, c) ->
    return S(a, b, c, 0, db)

db = () ->

gb = qa(f.GoogleAnalyticsObject) and sa(f.GoogleAnalyticsObject) or "ga"
Ba = false
hb = T("apiVersion", "v")
ib = T("clientVersion", "_v")

S("anonymizeIp", "aip")

jb = S("adSenseId", "a")
Va = S("hitType", "t")
Ia = S("hitCallback")
Ra = S("hitPayload")

S("nonInteraction", "ni")
S("currencyCode", "cu")

Vd = S("useBeacon", 0, false)

S("dataSource", "ds")
S("sessionControl", "sc", "")
S("sessionGroup", "sg")
S("queueTime", "qt")

Ac = S("_s", "_s")

S("screenName", "cd")

kb = S("location", "dl", "")
lb = S("referrer", "dr")
mb = S("page", "dp", "")

S("hostname", "dh")

nb = S("language", "ul")
ob = S("encoding", "de")

S("title", "dt", () ->
    return document.title or 0
)

cb("contentGroup([0-9]+)", (a) ->
    return new bb(a[0], "cg" + a[1])
)

pb = S("screenColors", "sd")
qb = S("screenResolution", "sr")
rb = S("viewportSize", "vp")
sb = S("javaEnabled", "je")
tb = S("flashVersion", "fl")

S("campaignId", "ci")
S("campaignName", "cn")
S("campaignSource", "cs")
S("campaignMedium", "cm")
S("campaignKeyword", "ck")
S("campaignContent", "cc")

ub = S("eventCategory", "ec")
xb = S("eventAction", "ea")
yb = S("eventLabel", "el")
zb = S("eventValue", "ev")
Bb = S("socialNetwork", "sn")
Cb = S("socialAction", "sa")
Db = S("socialTarget", "st")
Eb = S("l1", "plt")
Fb = S("l2", "pdt")
Gb = S("l3", "dns")
Hb = S("l4", "rrt")
Ib = S("l5", "srt")
Jb = S("l6", "tcp")
Kb = S("l7", "dit")
Lb = S("l8", "clt")
Mb = S("timingCategory", "utc")
Nb = S("timingVar", "utv")
Ob = S("timingLabel", "utl")
Pb = S("timingValue", "utt")

S("appName", "an")
S("appVersion", "av", "")
S("appId", "aid", "")
S("appInstallerId", "aiid", "")
S("exDescription", "exd")
S("exFatal", "exf")

Nc = S("expId", "xid")
Oc = S("expVar", "xvar")
Rc = S("_utma", "_utma")
Sc = S("_utmz", "_utmz")
Tc = S("_utmht", "_utmht")
Ua = S("_hc", 0, 0)
Xa = S("_ti", 0, 0)
Wa = S("_to", 0, 20)

cb("dimension([0-9]+)", (a) ->
    return new bb(a[0], "cd" + a[1])
)

cb("metric([0-9]+)", (a) ->
    return new bb(a[0], "cm" + a[1])
)

S("linkerParam", 0, 0, Bc, db)

ld = S("usage", "_u", 0, () ->
    return pa.M()
, db)

S("forceSSL", 0, 0, () ->
    return Ba
, (a, b, c) ->
    J(34)
    Ba = !!c
)

ed = S("_j1", "jid")
Hd = S("_j2", "gjid")

cb("\\&(.*)", (a) ->
    b = new bb(a[0], a[1])

    c = yc( a[0].substring(1) )

    if c
        b.n = (a) ->
            return a.get(c)

        b.o = (a, b, g, ca) ->
            a.set(c, g, ca)

        b.p = 0

    return b
)

Qb = T("_oot")
dd = S("previewTask")
Rb = S("checkProtocolTask")
md = S("validationTask")
Sb = S("checkStorageTask")
Uc = S("historyImportTask")
Tb = S("samplerTask")
Vb = T("_rlt")
Wb = S("buildHitTask")
Xb = S("sendHitTask")
Vc = S("ceTask")
zd = S("devIdTask")
Cd = S("timingTask")
Ld = S("displayFeaturesTask")
V = T("name")
Q = T("clientId", "cid")
Ad = S("userId", "uid")
Na = T("trackingId", "tid")
U = T("cookieName", 0, "_ga")
W = T("cookieDomain")
Yb = T("cookiePath", 0, "/")
Zb = T("cookieExpires", 0, 63072000)
$b = T("legacyCookieDomain")
Wc = T("legacyHistoryImport", 0, true)
ac = T("storage", 0, "cookie")
bc = T("allowLinker", 0, false)
cc = T("allowAnchor", 0, true)
Ka = T("sampleRate", "sf", 100)
dc = T("siteSpeedSampleRate", 0, 1)
ec = T("alwaysSendReferrer", 0, false)
gd = S("transportUrl")
Md = S("_r", "_r")

X = (a, b, c, d) ->
    b[a] = () ->
        try
            if d
                J(d)

            return c.apply(@, arguments)
            
        catch b
            g = b and b.name
            if not(1 <= 100 * Math.random() or Aa("?"))
                ca = ["t=error", "_e=exc", "_v=j31", "sr=1"]

                if a
                    ca.push("_f=" + a)

                if g
                    ca.push("_m=" + K(g.substring(0, 100)))

                ca.push("aip=1")
                ca.push("z=" + hd())
                Ga(oc() + "/collect", ca.join("&"))

            throw b

Od = () ->
    @V = 10000
    @fa = 0
    @$ = false
    @ea = 1

Ed = () ->
    a = new Od

    if a.fa and a.$
        return 0

    a.$ = true

    if a.V is 0
        return 0

    if b is 0
        b = Bd()

    if b % a.V is 0
        return Math.floor(b / a.V) % a.ea + 1
    else
        return 0

fc = () ->
    navigator = window.navigator

    plugin_list = null

    if navigator
        plugin_list = navigator.plugins

    if plugin_list and plugin_list.length
        plugin_counter = 0

        while plugin_counter < plugin_list.length and not(flash_plugin)
            plugin = plugin_list[plugin_counter]
            
            if -1 < plugin.name.indexOf("Shockwave Flash")
                flash_plugin = plugin.description

            plugin_counter++

    if not(flash_plugin)
        try
            a = new ActiveXObject("ShockwaveFlash.ShockwaveFlash.7")
            b = a.GetVariable("$version")
        catch g

    if not(flash_plugin)
        try
            a = new ActiveXObject("ShockwaveFlash.ShockwaveFlash.6")
            b = "WIN 6,0,21,0"
            a.AllowScriptAccess = "always"
            b = a.GetVariable("$version")
        catch ca

    if not(flash_plugin)
        try
            a = new ActiveXObject("ShockwaveFlash.ShockwaveFlash")
            b = a.GetVariable("$version")
        catch l

    if flash_plugin
        a = flash_plugin.match(/[\d]+/g)
        if 3 <= a.length
            flash_plugin = a[0] + "." + a[1] + " r" + a[2]
            
    return flash_plugin or 0

gc = (a, b) ->
    c = Math.min( R(a, dc), 100 )

    if not(La(P(a, Q)) % 100 >= c)
        c = {}
        Ec(c) or Fc(c)
        d = c[Eb]

        if 0 == d || Infinity == d || isNaN(d)
            if 0 < d
                Y(c, Gb)
                Y(c, Jb)
                Y(c, Ib)
                Y(c, Fb)
                Y(c, Hb)
                Y(c, Kb)
                Y(c, Lb)
                b(c)
            else
                L(window, "load", () ->
                    gc(a, b)
                , false)

Ec = (a) ->
    performance_timing = window.performance or window.webkitPerformance
    performance_timing = performance_timing and performance_timing.timing
    if not(performance_timing)
        return false

    navigation_start = performance_timing.navigationStart

    if navigation_start == 0
        return false

    a[Eb] = performance_timing.loadEventStart - navigation_start
    a[Gb] = performance_timing.domainLookupEnd - performance_timing.domainLookupStart
    a[Jb] = performance_timing.connectEnd - performance_timing.connectStart
    a[Ib] = performance_timing.responseStart - performance_timing.requestStart
    a[Fb] = performance_timing.responseEnd - performance_timing.responseStart
    a[Hb] = performance_timing.fetchStart - navigation_start
    a[Kb] = performance_timing.domInteractive - navigation_start
    a[Lb] = performance_timing.domContentLoadedEventStart - navigation_start

    return true

Fc = (a) ->
    if (window.top != window)
        return false

    external = window.external
    load_time = external and external.onloadT

    if external
        if not external.isValidLoadTime
            load_time = 0

    if 2147483648 < load_time
        load_time = 0

    if 0 < load_time
        external.setPageReadyTime();

    if load_time == 0
        return false

    a[Eb] = load_time

    return true

Y = (a, b) ->
    c = a[b]
    if (isNaN(c) or Infinity == c or c < 0)
        a[b] = 0

Fd = (a) ->
    return (b) ->
        if b.get(Va) != 'pageview' or a.I
            a.I = true
            gc(b, (b) ->
                a.send("timing", b)
            )

hc = false
mc = (a) ->
    if P(a, ac) is "cookie"

        b = P(a, U)
        c = nd(a)
        d = kc(P(a, Yb))
        e = lc(P(a, W))
        g = 1000 * R(a, Zb)
        ca = P(a, Na)

        if e != "auto"
            if zc(b, c, d, e, ca, g)
                hc = true
        else
            for __none in [1]
                J(32)
                c = []

                e = xa().split(".")

                l = e[e.length - 1]
                if (4 == e.length and parseInt(l, 10) == l)
                    l = ["none"]
                    break

                for l in e by -1
                    c.push( e.slice(l).join(".") )

                c.push("none")
                l = c

                for e in l
                    a.data.set(W, e)
                    c = nd(a)

                    if zc(b, c, d, e, ca, g)
                        hc = true
                        return

                a.data.set(W, "auto")

nc = (a) ->
    if P(a, ac) == "cookie" and not hc and mc(a)
        throw "abort"

Yc = (a) ->
    if a.get(Wc)
        b = P(a, W)
        c = P(a, $b) or xa()
        d = Xc("__utma", c, b)

        if d
            J(19)
            a.set(Tc, (new Date).getTime(), true)
            a.set(Rc, d.R)
            b = Xc("__utmz", c, b)

            if d.hash == b.hash
                a.set(Sc, b.R)

nd = (a) ->
    b = Cc(P(a, Q))
    c = ic(P(a, W))
    a = jc(P(a, Yb))

    if 1 < a
        c += "-" + a

    return ["GA1", c, b].join(".")

Gc = (a, b, c) ->
    d = []
    e = []
    for l in a
        if l.r[c] == b
            d.push(l)
        else
            if 0 == g or l.r[c] < g
                e = [l]
                g = l.r[c]
            else
                if l.r[c] == g
                    e.push(l)

    if 0 < d.length
        return d
    else
        return e

# remove_point
lc = (a) ->
#    if 0 == a.indexOf(".")
    if D(a, '.')
        return a.substr(1)
    else
        return a

# get_splitted_length?
ic = (a) ->
    return lc(a).split(".").length

kc = (a) ->
    if not(a)
        return "/"

    if 1 < a.length and a.lastIndexOf("/") == a.length - 1
        a = a.substr(0, a.length - 1)

    if 0 != a.indexOf("/")
        a = "/" + a

    return a

jc = (a) ->
    a = kc(a)

    if "/" is a
        return 1
    else
        return a.split("/").length


Xc = (a, b, c) ->
    if b == "none"
        b = ""

    d = []
    e = Ca(a)

    if "__utma" == a
        a = 6
    else
        a = 2

    for val in e
        ca = ("" + val).split(".")

        if ca.length >= a
            d.push(
                hash: ca[0]
                R: val
                O: ca
            )

    if 0 == d.length
        return 0
    else
        if 1 == d.length
            return d[0]
        else
            return Zc(b, d) or Zc(c, d) or Zc(null, d) or d[0]

Zc = (a, b) ->
    if null == a
        c = 1
        d = 1
    else
        c = La(a)

        if La( D(a, ".") )
            d = a.substring(1)
        else
            d = "." + a

    for val in b
        if val[h] is c or val[h] is d
            return val

od = new RegExp(/^https?:\/\/([^\/:]+)/)
pd = /(.*)([?&#])(?:_ga=[^&#]*)(?:&?)(.*)/

Bc = (a) ->
    a = a.get(Q)
    b = Ic(a, 0)
    return "_ga=1." + K(b + "." + a)

Ic = (a, b) ->
    current_time = new Date
    c = [
        a,
        d.userAgent,
        current_time.getTimezoneOffset(),
        current_time.getYear(),
        current_time.getDate(),
        current_time.getHours(),
        current_time.getMinutes() + b
    ]

    d = window.navigator
    plugins = d.plugins or []

    for plugin in plugins
        c.push(plugin.description)

    return La(c.join("."))



class Dc
    ########################
    ## PRIVATE PROPERTIES ##
    ########################


    #######################
    ## PUBLIC PROPERTIES ##
    #######################


    ####################
    ## PUBLIC METHODS ##
    ####################

    constructor: (a) ->
        ###
        ###

        J(48)
        @target = a
        @T = false

    Q: (a, b) ->
        ###
        ###

        if a.tagName
            if "a" == a.tagName.toLowerCase()
                a.href && Pc(a, qd(this, a.href, b))
                return

            if "form" == a.tagName.toLowerCase()
                return rd(this, a)

        if "string" == typeof a
            return qd(this, a, b)


    S: (a, b, c) ->
        ###
        ###

        d = (c) ->
            try
                c = c or window.event
                element = c.target or c.srcElement

                d = null
                c = 100
                while element and c > 0

                    if element.href && element.nodeName.match(/^a(?:rea)?$/i)
                        d = element
                        break

                    element = element.parentNode

                    c--
                d = {}

                if d.protocol is "http:" or d.protocol is "https:"
                    if sd(a, d.hostname or "") and d.href
                        Pc( d, qd(e, d.href, b) )

            catch w
                J(26)

        e = @

        if not @T
            @T = true
            L(M, "mousedown", d, false)
            L(M, "touchstart", d, false)
            L(M, "keyup", d, false)

        if c
            c = (b) ->
                b = b or window.event
                b = b.target or b.srcElement

                if b.action
                    foo_c = b.action.match(od)

                    if foo_c
                        sd(a, foo_c[1])
                        rd(e, b)

            for form in document.forms
                L(form, "submit", c)

    #####################
    ## PRIVATE METHODS ##
    #####################

qd = (a, b, c) ->
    d = pd.exec(b)

    if d and 3 <= d.length
        b = d[1]

        if d[3]
            b += d[2] + d[3]
        else
            b += ""

    a = a.target.get("linkerParam")
    e = b.indexOf("?")
    d = b.indexOf("#")

    if c
        if d is -1
            b += '#' + a
        else
            b += '&' + a

        if e is -1
            c = '?'
        else
            c = '&'

        if d is -1
            b = b + (c + a)
        else
            b = b.substring(0, d) + c + a + b.substring(d)

    return b

rd = (a, form) ->
    if form and form.action
        linker_param_value = a.target.get("linkerParam").split("=")[1]

        if "get" == form.method.toLowerCase()

            child_nodes = form.childNodes or []

            for node in child_nodes
                
                if "_ga" is node.name
                    node.setAttribute("value", linker_param_value)
                    return

            hidden_ga_input = document.createElement("input")
            hidden_ga_input.setAttribute("type", "hidden")
            hidden_ga_input.setAttribute("name", "_ga")
            hidden_ga_input.setAttribute("value", linker_param_value)
            
            form.appendChild(hidden_ga_input)

        else
            if form.method.toLowerCase() == "post"
                form.action = qd(a, form.action)

sd = (a, b) ->
    if (b is document.location.hostname)
        return false

    for val in a
        if (val instanceof RegExp)
            if val.test(b)
                return true

        else if (0 <= b.indexOf(val))
            return true

    return false


class Jd
    ########################
    ## PRIVATE PROPERTIES ##
    ########################


    #######################
    ## PUBLIC PROPERTIES ##
    #######################


    ####################
    ## PUBLIC METHODS ##
    ####################

    constructor: (a, b, c, d) ->
        ###
        ###

        @U = b
        @aa = c
        # b = d # TODO: check if this is needed

        if b
            b = P(a, V)
            if b and b != 't0'
                if Wd[s](b)
                    b = "_gat_" + Cc( P(a, Na) )
                else
                    b = "_gat_" + Cc(b)
            else
                b = "_gat"

        @Y = b

    #####################
    ## PRIVATE METHODS ##
    #####################

Rd = (a, b) ->
    c = b.get(Wb)

    b.set(Wb, (b) ->
        Pd(a, b)
        d = c(b)
        Qd(a, b)
        return d
    )

    d = b.get(Xb)
    b.set(Xb, (b) ->
        c = d(b)
        Id(a, b)
        return c
    )

Pd = (a, b) ->
    if b.get(a.U)
        if "1" == Ca(a.Y)[0]
            b.set(a.U, "", true)
        else
            b.set(a.U, "" + hd(), true)

Qd = (a, b) ->
    if b.get(a.U)
        zc(a.Y, "1", b.get(Yb) b.get(W), b.get(Na), 600000)

Id = (a, b) ->
    if b.get(a.U)
        c = new N

        d = (a) ->
            c.set($a(a).p, b.get(a))

        d(hb)
        d(ib)
        d(Na)
        d(Q)
        d(a.U)
        d(ld)
        e = a.aa

        c.map((a, b) ->
            e += K(a) + "=";
            e += K("" + b) + "&"
        )

        e += "z=" + hd()

        ta(e)

        b.set(a.U, "", true)

Wd = /^gtm\d+$/

fd = (a, b) ->
    c = a.b
    if not(c.get("dcLoaded"))
        J(29)

        if window._gaq
            J(52)

        b = b || {}

        if b[U]
            d = Cc( b[U] )

        d = new Jd(c, ed, "https://stats.g.doubleclick.net/collect?t=dc&aip=1&", d)

        Rd(d, c)

        c.set("dcLoaded", true)

Sd = (a) ->
    if a.get("dcLoaded")
        b = false

    else

        if a.get(ac) != 'cookie'
            b = false
        else
            b = true

    if b
        J(51)
        b = new Jd(a, ed)
        Pd(b, a)
        Qd(b, a)

        if a.get(b.U)
            a.set(Md, 1, true)
            a.set(gd, oc() + "/r/collect", true)


Kd = (a, b) ->
    c = a.b;
    if not c.get("_rlsaLoaded")
        J(38)

        b = b || {}

        if b[U]
            d = Cc( b[U] )

        d = new Jd(c, Hd, "https://www.google.com/ads/ga-audiences?t=sr&aip=1&", d)

        Rd(d, c)

        c.set("_rlsaLoaded", true)
        tc("displayfeatures", a, b)

Lc = () ->
    window.gaGlobal = window.gaGlobal or {}
    a = window.gaGlobal
    a.hid = a.hid or hd()

    return a.hid

ad = null
bd = (a, b, c) ->
    if not ad
        location_hash = document.location.hash
        window_name = window.name
        gaso_regex = /^#?gaso=([^&]*)/

        foo_d_bool = location_hash and location_hash.match(gaso_regex) or window_name and window_name.match(gaso_regex)
        if foo_d_bool
            location_hash = location_hash[1]
        else
            location_hash = Ca("GASO")[0] or ""

        if location_hash and location_hash.match(/^(?:!([-0-9a-z.]{1,40})!)?([-.\w]{10,1200})$/i)
            zc("GASO", "" + location_hash, c, b, a, 0)

            if f._udo
                f._udo = b

            if f._utcp
                f._utcp = c

            a = location_hash[1]

            if a
                inpage_parameters = "prefix=" + a + "&"
            else
                inpage_parameters = ''
                
            wa("https://www.google.com/analytics/web/inpage/pub/inpage.js?" + inpage_parameters + hd(), "_gasojs")

        ad = true

wb = /^(UA|YT|MO|GP)-(\d+)-(\d+)$/


class pc
    ########################
    ## PRIVATE PROPERTIES ##
    ########################


    #######################
    ## PUBLIC PROPERTIES ##
    #######################


    ####################
    ## PUBLIC METHODS ##
    ####################

    constructor: (a) ->
        ###
        ###

        b = (a, b_var) =>
            @b.data.set(a, b_var)

        c = (a, foo_var) =>
            b(a, foo_var)
            @filters.add(a)

        d = @
        @b = new Ya
        @filters = new Ha

        b(V, a[V])
        b(Na, sa(a[Na]))
        b(U, a[U])
        b(W, a[W] or xa())
        b(Yb, a[Yb])
        b(Zb, a[Zb])
        b($b, a[$b])
        b(Wc, a[Wc])
        b(bc, a[bc])
        b(cc, a[cc])
        b(Ka, a[Ka])
        b(dc, a[dc])
        b(ec, a[ec])
        b(ac, a[ac])
        b(Ad, a[Ad])
        b(hb, 1)
        b(ib, "j31")
        c(Qb, Ma)
        c(dd, cd)
        c(Rb, Oa)
        c(md, vb)
        c(Sb, nc)
        c(Uc, Yc)
        c(Tb, Ja)
        c(Vb, Ta)
        c(Vc, Hc)
        c(zd, yd)
        c(Ld, Sd)
        c(Wb, Pa)
        c(Xb, Sa)
        c( Cd, Fd(@) )

        Jc(@b, a[Q])
        Kc(@b)
        @b.set( jb, Lc() )
        bd(@b.get(Na), @b.get(W), @b.get(Yb))

    get: (a) ->
        ###
        ###

        return @b.get(a)

    set: (a, b) ->
        ###
        ###

        @b.set(a, b)

    send: (a) ->
        ###
        ###

        if not(1 > arguments.length)
            if typeof arguments[0] is "string"
                b = arguments[0]
                c = [].slice.call(arguments, 1)
            else
                b = arguments[0] and arguments[0][Va]
                c = arguments

            if b
                c = za(qc[b] or [], c)
                c[Va] = b

                @b.set(c, 0, true)
                @filters.D(this.b)
                @b.data.m = {}

                J(44)

    #####################
    ## PRIVATE METHODS ##
    #####################


Jc = (a, b) ->
    if P(a, ac) is "cookie"
        hc = false

        c = null

        for foo_noop in [0]
            d = Ca( P(a, U) )
            if d and not(1 > d.length)
                c = []

                for val in d
                    g = val.split(".")
                    ca = g.shift()

                    if (ca is "GA1" or ca is "1") and 1 < g.length
                        ca = g.shift().split("-")
                        if 1 == ca.length
                            ca[1] = "1"

                        ca[0] *= 1
                        ca[1] *= 1
                        g =
                            r: ca
                            s: g.join(".")
                    else
                        g = 0

                    if g
                        c.push(g)

                if c.length is 1
                    J(13)
                    c = c[0].s
                    break

                if 0 == c.length
                    J(12)
                else
                    J(14)
                    d = ic(P(a, W))
                    c = Gc(c, d, 0)
                    if 1 == c.length
                        c = c[0].s
                        break

                    d = jc( P(a, Yb) )
                    c = Gc(c, d, 1)
                    c = c[0] and c[0].s
                    break

            c = 0


        if c
            c = P(a, W)
            d = P(a, $b) or xa()
            c = Xc("__utma", d, c)

            if c is 0
                c = 0
            else
                c = c.O[1] + "." + c.O[2]

            if c
                J(10)
        if c
            a.data.set(Q, c)
            hc = true

    c = a.get(cc)

    if c
        location_part = 'href'
    else
        location_part = 'search'

    c = document.location[location_part].match("(?:&|#|\\?)" + K("_ga").replace(/([.*+?^=!:${}()|\[\]\/\\])/g, "\\$1") + "=([^&#]*)")

    if c and c.length is 2
        e = c[1]
    else
        e = ""

    if e

        if a.get(bc)

            c = e.indexOf(".")

            if c is -1
                J(22)
            else
                d = e.substring(c + 1)

            if "1" != e.substring(0, c)
                J(22)

            else
                c = d.indexOf(".")

                if c is -1
                    J(22)
                else
                    e = d.substring(0, c)
                    c = d.substring(c + 1)

                    if e != Ic(c, 0) and e != Ic(c, -1) and e != Ic(c, -2)
                        J(23)
                    else
                        J(11)
                        a.data.set(Q, c)

    else
        J(21)

    if b
        J(9)
        a.data.set(Q, K(b))

    if a.get(Q)
        c = window.gaGlobal and window.gaGlobal.vid

        if not(c and c.search(/^(?:utma\.)?\d+\.\d+$/) != -1)
            c = 0

        if c
            J(17)
            a.data.set(Q, c)
            
        else
            J(8)
            foo_val = Math.round((new Date).getTime() / 1000)
            a.data.set(Q, [hd() ^ Mc() & 2147483647, foo_val].join("."))

    mc(a)

Kc = (a) ->
    navigator = window.navigator
    screen = window.screen
    document_location = document.location

    a.set( lb, ya( a.get(ec) ) )

    if document_location
        path_name = document_location.pathname or ""

        if "/" != e.charAt(0)
            J(31)
            path_name = "/" + path_name

        a.set(kb, document_location.protocol + "//" + document_location.hostname + path_name + document_location.search)

    if screen
        a.set(qb, screen.width + "x" + screen.height)

    if screen
        a.set(pb, screen.colorDepth + "-bit")

    document_element = document.documentElement
    e = document.body
    g = e and e.clientWidth and e.clientHeight
    ca = []

    if document_element and document_element.clientWidth and document_element.clientHeight

        if document.compatMode is "CSS1Compat" or not g
            ca = [document_element.clientWidth, document_element.clientHeight]
        else
            if g
                ca = [e.clientWidth, e.clientHeight]

    if 0 >= ca[0] or 0 >= ca[1]
        document_element = ''
    else
        document_element = ca.join("x")

    a.set(rb, c)
    a.set( tb, fc() )
    a.set(ob, document.characterSet or document.charset)
    a.set(sb, navigator and "function" is typeof navigator.javaEnabled and navigator.javaEnabled() or false)
    a.set( nb, (b and (b.language or navigator.browserLanguage) or "").toLowerCase() )

    location_hash = document.location.hash
    if document_location and a.get(cc) and location_hash
        location_hash = location_hash.split(/[?&#]+/)
        d = []

        for term_to_check in location_hash

            if  D(term_to_check, "utm_id") or
                D(term_to_check, "utm_campaign") or
                D(term_to_check, "utm_source") or
                D(term_to_check, "utm_medium") or
                D(term_to_check, "utm_term") or
                D(term_to_check, "utm_content") or
                D(term_to_check, "gclid") or
                D(term_to_check, "dclid") or
                D(term_to_check, "gclsrc")

                    d.push(term_to_check)


        if 0 < d.length
            location_hash = "#" + d.join("&")
            a.set(kb, a.get(kb) + location_hash)

qc =
    pageview: [mb]
    event: [ub, xb, yb, zb]
    social: [Bb, Cb, Db]
    timing: [Mb, Nb, Pb, Ob]

rc = (a) ->
    if document.visibilityState is "prerender"
        return false

    a()

    return true

td = /^(?:(\w+)\.)?(?:(\w+):)?(\w+)$/

sc = (main_function_arguments) ->
    # #4
    if ea( main_function_arguments[0] )
        @u = main_function_arguments[0]
    else
        b = td.exec( main_function_arguments[0] )

        if null != b or 4 is b.length
            @c = b[1] or "t0"
            @e = b[2] or ""
            @d = b[3]
            @a = [].slice.call(main_function_arguments, 1)

            if @e
                @A  = @d is "create"
                @i  = @d is "require"
                @g  = @d is "provide"
                @ba = @d is "remove"

            if @i
                if @a.length >= 3
                    @X = @a[1]
                    @W = @a[2]
                else
                    if @a[1]
                        if qa(@a[1])
                            @X = @a[1]
                        else
                            @W = @a[1]

        b = main_function_arguments[1]
        main_function_arguments = main_function_arguments[2]

        if not(@d)
            throw "abort"

        if @i and (not qa(b) or b is "")
            throw "abort"

        if @g and (not qa(b) or "" == b or not ea(main_function_arguments))
            throw "abort"

        if ud(@c) or ud(@e)
            throw "abort"

        if @g and @c != "t0"
            throw "abort"


# starts_with_point_or_colon
ud = (a) ->
    return a.indexOf(".") >= 0  or a.indexOf(":") >= 0

Yd = new N
$d = new N
Zd =
    ec: 45,
    ecommerce: 46,
    linkid: 47

tc = (a, b, c) ->
    
    if b is $
        J(35)
    else
        b.get(V)

    d = Yd.get(a)

    if not ea(d)
        return false

    b.plugins_ = b.plugins_ or new N

    if b.plugins_.get(a)
        return true

    foo_val = new d(b, c or {})
    b.plugins_.set(a, foo_val)

    return true

ae = (a) ->
    b_func = (a) ->
        b = (a.hostname or "").split(":")[0].toLowerCase()

        c = (a.protocol or "").toLowerCase()

        c = a.port or ("http:" == c ? 80 : "https:" == c ? 443 : "")

        a = a.pathname or ""

        if D(a, "/")
            a = "/" + a

        return [b, "" + c, a]

    link_element = document.createElement("a")
    Pc(link_element, document.location.href)

    protocol = (link_element.protocol or "").toLowerCase()
    d = protocol
    e = b_func(link_element)
    link_search_string = link_element.search or ""

    if e[1]
        additional_bundle = ":" + e[1]
    else
        additional_bundle = ''

    ca = d + "//" + e[0] + additional_bundle

    if D(a, "//")
        a = d + a

    else
        if D(a, "/")
            a = ca + a
        else
            if not a or D(a, "?")
                a = ca + e[2] + (a or link_search_string)
            else
                if 0 > a.split("/")[0].indexOf(":")
                    (a = ca + e[2][F](0, e[2].lastIndexOf("/")) + "/" + a)

    Pc(link_element, a)
    d = b_func(link_element)

    return {
        protocol: protocol,
        host: d[0],
        port: d[1],
        path: d[2],
        G: link_element[ga] or "",
        url: a or ""
    }

Z = {
    ga: () ->
        Z.f = []
}

Z.ga()

Z.D = (a) ->
    # #2
    b = Z.J.apply(Z, arguments)
    b = Z.f.concat(b)
    Z.f = []

    while 0 < b.length and not Z.v(b[0]) and not(b.shift() or 0 < Z.f.length)
        Z.f = Z.f.concat(b)

Z.J = (a) ->
    # #3
    b = []
    for arg in arguments
        try
            d = new sc(arg)

            if d.g
                Yd.set(d.a[0], d.a[1])
            else
                if d.i

                    e = d
                    g = e.a[0]

                    if not ea(Yd.get(g)) and not $d.get(g)

                        Zd.hasOwnProperty(g) and J(Zd[g])
                        ca = e.X

                        if not ca
                            if Zd.hasOwnProperty(g)
                                J(39)
                                ca = g + ".js"
                            else
                                J(43)

                        if ca
                            if ca and 0 <= ca.indexOf("/")
                                protocol = (Ba or "https:" == document.location.protocol ? "https:" : "http:")
                                ca = "#{protocol}//www.google-analytics.com/plugins/ua/#{ca}"

                            l = ae(ca)
                            e = 0
                            protocol_from_l = l.protocol
                            document_location_protocol = document.location.protocol

                            if "https:" is protocol_from_l or protocol_from_l is document_location_protocol
                                e = true
                            else
                                if "http:" != protocol_from_l
                                    e = false
                                else
                                    e = "http:" == document_location_protocol

                            Xd = e

                            if Xd
                                e = l
                                be = ae(document.location.href)

                                if e.G or 0 <= e.url.indexOf("?") or 0 <= e.path.indexOf("://")
                                    Xd = false
                                else if e.host is be.host and e.port == be.port
                                    Xd = true
                                else
                                    if e.protocol
                                        http_port = 80
                                    else
                                        http_port = 443

                                    if "www.google-analytics.com" is e.host and (e.port or http_port) == http_port and D(e.path, "/plugins/")
                                        Xd = true
                                    else
                                        Xd = false

                            if Xd
                                wa(l.url)
                                $d.set(g, true)

                b.push(d)

        catch de

    return b

Z.v = (a) ->
    try
        if (a.u)
            a.u.call(window, $.j("t0"))
        else
            if gb is a.c
                b = $
            else
                b = $.j(a.c)

            if a.A
                if a.c is 't0'
                    $.create.apply($, a.a)

            else if a.ba
                $.remove(a.c)

            else if b
                if a.i
                    if not tc(a.a[0], b, a.W)
                        return true
            else if a.e
                c = a.d
                d = a.a
                e = b.plugins_.get(a.e)
                e[c].apply(e, d)
            else
                b[a.d].apply(b, a.a)
    catch g

# #1
# Main function / class (not using argument a)
$ = (a) ->
    J(1)
    Z.D.apply(Z, [arguments])

$.h = {}
$.P = []
$.L = 0
$.answer = 42

uc = [Na, W, V]

$.create = (a) ->
    b = za(uc, [].slice.call(arguments))

    if b[V]
        b[V] = "t0"

    c = "" + b[V]

    if $.h[c]
        return $.h[c]

    b = new pc(b)
    $.h[c] = b
    $.P[p](b)

    return b

$.remove = (a) ->
    for val in $.P

        if val.get(V) is a
            $.P.splice(b, 1)
            $.h[a] = null

            break

$.j = (a) ->
    return $.h[a]

$.K = () ->
    return $.P.slice(0)

$.N = () ->
    if "ga" != gb
        J(49)
    a = window[gb]

    if not a or a.answer != 42
        $.L = a and a.l
        $.loaded = true
        b = window[gb] = $

        X("create", b, b.create, 3)
        X("remove", b, b.remove)
        X("getByName", b, b.j, 5)
        X("getAll", b, b.K, 6)
        b = pc.prototype
        X("get", b, b.get, 7)
        X("set", b, b.set, 4)
        X("send", b, b.send, 2)
        b = Ya.prototype
        X("get", b, b.get)
        X("set", b, b.set)

        b = document.getElementsByTagName("script")
        c = 0
        while c < b.length and c < 100
            d = b[c].src
            if d
                if d.indexOf("https://www.google-analytics.com/analytics") != 0
                    d = false
                else
                    d = true
            else
                d = false

            if d
                J(33)

            c++

        if "https:" != M[B][E] && !Ba && Ed()
            J(36)
            Ba = true

        window.gaplugins = window.gaplugins or {}
        window.gaplugins.Linker = Dc

        b = Dc.prototype
        Yd.set("linker", Dc)
        X("decorate", b, b.Q, 20)
        X("autoLink", b, b.S, 25)
        Yd.set("displayfeatures", fd)
        Yd.set("adfeatures", Kd)

        a = a and a.q

        if ka(a)
            Z.D.apply($, a)
        else
            J(50)

$.k = () ->
    a = $.K()
    for val in a
        val.get(V)

ano = () ->
    a = $.N;
    if not rc(a)
        J(16)
        b = false
        c = () ->
            if not b and rc(a)
                b = true
                va(M, "visibilitychange", c)

        L(M, "visibilitychange", c)
ano()

La = (used_string) ->
    return_char = 1
    character = 0

    if used_string
        return_char = 0
        char_position = used_string.length - 1

        while char_position >= 0
            character = used_string.charCodeAt(char_position)
            return_char = (return_char << 6 & 268435455) + character + (character << 14)
            character = return_char & 266338304

            if character != 0
                return_char = return_char ^ character >> 21

            char_position--

    return return_char