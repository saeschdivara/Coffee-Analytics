########################
## UGLIFY TRICKS ##
########################

aa = encodeURIComponent
f = window
ba = setTimeout
n = Math

Pc = (a, b) ->
    return a.href = b

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

        @a[b] = !0

    M: () ->
        ###
        ###

        b = []
        c = -1
        while c < a.length
            c++
            @a[c] && (b[n.floor(c / 6)] = b[n.floor(c / 6)] ^ 1 << c % 6)

        c = -1
        while c < b.length
            c++
            b[c] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(b[c] || 0)

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

# find ?
D = (a, b) ->
    return 0 == a.indexOf(b)

sa = (a) ->
    if a
        a.replace(/^[\s\xa0]+|[\s\xa0]+$/g, "")
    else
        ""

ta = (a) ->
    b = M.createElement("img")
    b.width = 1;
    b.height = 1;
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
        a.removeEventListener(b, c, !1)
    else
        a.detachEvent && a.detachEvent("on" + b, c)

# insert_script_element
wa = (a, b) ->
    if (a)
        c = M.createElement("script")
        c.type = "text/javascript"
        c.async = !0
        c.src = a

        if b
            c.id = b

        d = M.getElementsByTagName("script")[0]
        d.parentNode.insertBefore(c, d)

        return

# get_clean_host_name ?
xa = () ->
    a = "" + M.location.hostname
    if 0 == a.indexOf("www.")
        return a.substring(4)
    else
        retunr a

ya = (a) ->
    b = M.referrer;
    if /^https?:\/\//i.test(b)
        if a
            return b
        a = "//" + M.location.hostname
        c = b.indexOf(a)

        if (5 == c || 6 == c)
            a = b.charAt(c + a.length)
            if "/" == a or "?" == a or "" == a or ":" == a
                return

        return b

za = (a, b) ->
    if 1 == b[y] and null != b[0] and is_object(b[0])
        return b[0]

    c = {}
    d = n.min(a[y] + 1, b[y])
    e = -1

    while e < d
        e++
        if is_object(b[e])
            for g of b[e]
                b[e][ra](g)
                c[g] = b[e][g]

            break
        else
            if e < a[y]
                c[a[e]] = b[e]

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

    if M.referrer
        referrer = M.referrer
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
    b = window._gaUserPrefs;
    if b and b.ioo and b.ioo() or a and window["ga-disable-" + a] is !0
        return !0
    try
        c = window.external
        if c and c._gaUserPrefs and "oo" is c._gaUserPrefs
            return !0
    catch d

    return !1

# find_all_cookie_settings ??
Ca = (a) ->
    b = []
    c = M.cookie.split(";")
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
        e = !1
    else
        if eb.test(M.location.hostname) or c is "/" && vc.test(d)
            e = !1
        else
            e = !0

    if !e
        return!1

    if b && 1200 < b[y]
        b = b.substring(0, 1200)
        J(24)

    c = "#{a}=#{b}; path=#{c};"

    gmt_string = (new Date((new Date).getTime() + g)).toGMTString()
    if g
        c += "expires=#{gmt_string}; "

    if d and d != "none"
        c += "domain=#{d};"

    d = M.cookie

    M.cookie = c

    d = (d != M.cookie)
    if not(d)
        t
    else
        a = Ca(a)
        d = 0
        for foo in a
            if b is foo
                d = !0
                break
        d = !1

    return d

Cc = (a) ->
    return K(a).replace(/\(/g, "%28").replace(/\)/g, "%29")

vc = /^(www\.)?google(\.com?)?(\.[a-z]{2})?$/
eb = /(^|\.)doubleclick\.net$/i

# get_analytics_address
oc = () ->
    if Ba or "https:" is M.location.protocol
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

Ga = (a, b, c, d) ->
    c = c or ua

    if d
        d = c
        if window.navigator.sendBeacon
            if window.navigator.sendBeacon(a, b)
                d()
                d = !0
            else
                d = !1
        else
            d = !1

    if not(d)
        if (2036 >= b.length)
            wc(a, b, c)

        else if (8192 >= b.length)

            if (0 <= window.navigator.userAgent[t]("Firefox") and ![].reduce)
                throw new Ea(b.length)

            wd(a, b, c) or xd(a, b, c) or Fa(b, c) or c()

        else
            throw new Da(b.length)

wc = (a, b, c) ->
    # create spy image element
    d = ta("#{a}?#{b}")

    d.onload = d.onerror = () ->
        d.onload = null;
        d.onerror = null;
        c()

xd = (a, b, c) ->
    d = window.XDomainRequest

    if not(d)
        return !1

    d = new d;
    d.open("POST", a)

    d.onerror = () ->
        c()

    d.onload = c

    d.send(b)

    return !0

wd = (a, b, c) ->
    d = O.XMLHttpRequest

    if not(d)
        return!1

    e = new d
    if not("withCredentials" in e)
        return!1

    e.open("POST", a, !0)
    e.withCredentials = !0
    e.setRequestHeader("Content-Type", "text/plain")
    e.onreadystatechange = () ->
        if e.readyState is 4
            c()
            e = null

    e.send(b)

    return!0

Fa = (a, b) ->
    if not(M.body)
        fb(() ->
            Fa(a, b)
        )

        return !0
    a = aa(a)

    try
        c = M.createElement('<iframe name="' + a + '"></iframe>')
    catch d
        c = M.createElement("iframe")
        fa(c, a)

    c.height = "0"
    c.width = "0"
    c.style.display = "none"
    c.style.visibility = "hidden"

    e = M.location
    e = oc() + "/analytics_iframe.html#" + encodeURIComponent("#{e.protocol}//#{e.host}/favicon.ico")
    g = () ->
        c.src = ""
        if c.parentNode
            c.parentNode.removeChild(c)

    L(window, "beforeunload", g)
    ca = !1
    l = 0
    k = () ->
        if not(ca)
            try
                if 9 < l or c.contentWindow[B][x] is M[B][x]
                    ca = !0
                    g()
                    va(O, "beforeunload", g)
                    b()

                    return

            catch a
            l++
            ba(k, 200)

    L(c, "load", k)
    M.body.appendChild(c)

    c.src = e

    return !0

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
            a.set(Ia, ua, !0)
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

Oa = () ->
    a = M.location.protocol
    if a != "http:" and a != "https:"
        throw "abort"

Pa = (a) ->
    try
        if window.XMLHttpRequest
            if "withCredentials" in new O.XMLHttpRequest
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
    a.set(Ra, c.join("&"), !0)

Sa = (a) ->
    b = P(a, gd) or oc() + "/collect"
    Ga(b, P(a, Ra), a.get(Ia), a.get(Vd))
    a.set(Ia, ua, !0)

Hc = (a) ->
    b = window.gaData
    if b
        if b.expId
            a.set(Nc, b.expId)
        if b.expVar
            a.set(Oc, b.expVar)

cd = () ->
    if window.navigator and "preview" is window.navigator.loadPurpose
        throw "abort"

yd = (a) ->
    b = window.gaDevIds;
    if ka(b) and b.length != 0
        a.set("&did", b.join(","), !0)

vb = (a) ->
    if not( a.get(Na) )
        throw "abort"

hd = () ->
    return Math.round(2147483647 * Math.random())

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

    if "transaction" != c and "item" != c
        c = R(a, Wa)
        d = (new Date).getTime()
        e = R(a, Xa)

        if 0 is e
            a.set(Xa, d);

        e = n.round(2 * (d - e) / 1000)

        if 0 < e
            c = n.min(c + e, 20)
            a.set(Xa, d)

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
Ba = !1
hb = T("apiVersion", "v")
ib = T("clientVersion", "_v")

S("anonymizeIp", "aip")

jb = S("adSenseId", "a")
Va = S("hitType", "t")
Ia = S("hitCallback")
Ra = S("hitPayload")

S("nonInteraction", "ni")
S("currencyCode", "cu")

Vd = S("useBeacon", 0, !1)

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
    return M.title or 0
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

    c = yc(a[0].substring(1))

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
Wc = T("legacyHistoryImport", 0, !0)
ac = T("storage", 0, "cookie")
bc = T("allowLinker", 0, !1)
cc = T("allowAnchor", 0, !0)
Ka = T("sampleRate", "sf", 100)
dc = T("siteSpeedSampleRate", 0, 1)
ec = T("alwaysSendReferrer", 0, !1)
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
    @$ = !1
    @ea = 1

Ed = () ->
    a = new Od

    if a.fa and a.$
        return 0

    a.$ = !0

    if a.V is 0
        return 0

    if b is 0
        b = Bd()

    if b % a.V is 0
        return Math.floor(b / a.V) % a.ea + 1
    else
        return 0

fc = () ->
    c = O[oa]
    if c
        c = c.plugins
    else
        c = null
    if c and c[y]
        d = 0
        while d < c.length and not(b)
            e = c[d]
            if -1 < e[v][t]("Shockwave Flash")
                b = e.description

            d++

    if not(b)
        try
            a = new ActiveXObject("ShockwaveFlash.ShockwaveFlash.7")
            b = a.GetVariable("$version")
        catch g

    if not(b)
        try
            a = new ActiveXObject("ShockwaveFlash.ShockwaveFlash.6")
            b = "WIN 6,0,21,0"
            a.AllowScriptAccess = "always"
            b = a.GetVariable("$version")
        catch ca

    if not(b)
        try
            a = new ActiveXObject("ShockwaveFlash.ShockwaveFlash")
            b = a.GetVariable("$version")
        catch l

    if b
        a = b[m](/[\d]+/g)
        if 3 <= a[y]
            b = a[0] + "." + a[1] + " r" + a[2]
    return b or 0

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
                , !1)

Ec = (a) ->
    b = window.performance || window.webkitPerformance
    b = b and b.timing
    if not(b)
        return !1

    c = b.navigationStart

    if (0 == c)
        return !1

    a[Eb] = b.loadEventStart - c
    a[Gb] = b.domainLookupEnd - b.domainLookupStart
    a[Jb] = b.connectEnd - b.connectStart
    a[Ib] = b.responseStart - b.requestStart
    a[Fb] = b.responseEnd - b.responseStart
    a[Hb] = b.fetchStart - c
    a[Kb] = b.domInteractive - c
    a[Lb] = b.domContentLoadedEventStart - c

    return !0

Fc = (a) ->
    if (window.top != window)
        return!1;

    b = window.external
    c = b and b.onloadT

    if b
        if not b.isValidLoadTime
            c = 0

    if 2147483648 < c
        c = 0

    if 0 < c
        b.setPageReadyTime();

    if (0 == c)
        return !1

    a[Eb] = c

    return !0

Y = (a, b) ->
    c = a[b]
    if (isNaN(c) or Infinity == c or c < 0)
        a[b] = 0

Fd = (a) ->
    return (b) ->
        if b.get(Va) != 'pageview' or a.I
            a.I = !0
            gc(b, (b) ->
                a[xc]("timing", b)
            )

hc = !1
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
                hc = !0
        else
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
                    hc = !0
                    return

            a.data.set(W, "auto")

nc = (a) ->
    if "cookie" == P(a, ac) and !hc and mc(a)
        throw "abort"

Yc = (a) ->
    if a.get(Wc)
        b = P(a, W)
        c = P(a, $b) or xa()
        d = Xc("__utma", c, b)

        if d
            J(19)
            a.set(Tc, (new Date).getTime(), !0)
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