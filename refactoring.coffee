########################
## UGLIFY TRICKS ##
########################

aa = encodeURIComponent
f = window
ba = setTimeout
n = Math

# set_href
set_href_of_element = (a, b) ->
    return a.href = b

set_name_on_object = (a, b) ->
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
set_meta_data = (a) ->
    pa.set(a)

is_function = (variable) ->
    return typeof variable is "function"

is_object = (variable) ->
    return typeof variable is "object"

is_boolean = (variable) ->
    return typeof variable is "boolean"

is_array = (a) ->
    return"[object Array]" == Object.prototype.toString.call(Object(a))

is_string = (a) ->
    return 0 != a && -1 < (a.constructor + "").indexOf("String")

starts_with = (a, b) ->
    return a.indexOf(b) == 0

sa = (a) ->
    if a
        a.replace(/^[\s\xa0]+|[\s\xa0]+$/g, "")
    else
        ""

# create_spy_image
create_spy_image = (image_url) ->
    image_element = document.createElement("img")
    image_element.width = 1
    image_element.height = 1
    image_element.src = image_url

    return image_element

# empty_function
empty_function = () ->

# get_clean_uri_data ?
K = (a) ->
    if is_function(a)
        return encodeURI(a)

    set_meta_data(28)
    return a

# add_event_listener
add_event_listener = (a, b, c, d) ->
    try
        if a.addEventListener
            a.addEventListener(b, c, !!d)
        else
            a.attachEvent && a.attachEvent("on" + b, c)
    catch e
        console.log(e)
        set_meta_data(27)

# remove_event_listener
remove_event_listener = (a, b, c) ->
    if a.removeEventListener
        a.removeEventListener(b, c, false)
    else
        a.detachEvent && a.detachEvent("on" + b, c)

# insert_script_element
insert_script_element = (script_url, element_id) ->
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

get_clean_host_name = () ->
    hostname = "" + document.location.hostname

    if starts_with(hostname, 'www.')
        return hostname.substring(4)
    else
        return hostname

get_referrer = (a) ->
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


class GaHashMap
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
            return @m[":" + a]
        else
            return @w[":" + a]


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

call_func_async = (a) ->
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
        console.log(d)

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
        if double_click_regex.test(document.location.hostname) or c is "/" and google_regex.test(d)
            e = false
        else
            e = true

    if not e
        return false

    if b and 1200 < b[y]
        b = b.substring(0, 1200)
        set_meta_data(24)

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

google_regex = /^(www\.)?google(\.com?)?(\.[a-z]{2})?$/
double_click_regex = /(^|\.)doubleclick\.net$/i

get_analytics_address = () ->
    if Ba or "https:" is document.location.protocol
        protocol = "https:"
    else
        protocol = "http:"

    return "#{protocol}//www.google-analytics.com"

Da = (a) ->
    set_name_on_object(@, "len");
    @message = a + "-8192"

Ea = (a) ->
    set_name_on_object(@, "ff2post");
    @message = a + "-2036"

Ga = (url_string, data, callback, d) ->
    callback = callback or empty_function

    if d
        d = callback
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
            wc(url_string, data, callback)

        else if (8192 >= data.length)

            if (0 <= window.navigator.userAgent.indexOf("Firefox") and not [].reduce)
                throw new Ea(data.length)

            send_plain_request(url_string, data, callback) or send_cross_domain_request(url_string, data, callback) or create_invisible_iframe(data, callback) or callback()

        else
            throw new Da(data.length)

wc = (a, b, onload_callback) ->
    # create spy image element
    spy_image_element = create_spy_image("#{a}?#{b}")

    spy_image_element.onload = spy_image_element.onerror = () ->
        spy_image_element.onload = null
        spy_image_element.onerror = null
        onload_callback()

send_cross_domain_request = (url_string, data, callback) ->

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

send_plain_request = (url_string, data, callback) ->
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

create_invisible_iframe = (a, b) ->
    if not(document.body)
        call_func_async(() ->
            create_invisible_iframe(a, b)
        )

        return true
    a = aa(a)

    try
        iframe_element = document.createElement('<iframe name="' + a + '"></iframe>')
    catch d
        console.log(d)
        iframe_element = document.createElement("iframe")
        set_name_on_object(iframe_element, a)

    iframe_element.height = "0"
    iframe_element.width = "0"
    iframe_element.style.display = "none"
    iframe_element.style.visibility = "hidden"

    doc_location = document.location
    encoded_uri_fav_icon = encodeURIComponent("#{doc_location.protocol}//#{doc_location.host}/favicon.ico")
    e = get_analytics_address() + "/analytics_iframe.html##{encoded_uri_fav_icon}"
    g = () ->
        iframe_element.src = ""
        if iframe_element.parentNode
            iframe_element.parentNode.removeChild(iframe_element)

    add_event_listener(window, "beforeunload", g)
    ca = false
    l = 0
    k = () ->
        if not(ca)
            try
                if 9 < l or iframe_element.contentWindow.location.host is document.location.host
                    ca = true
                    g()
                    remove_event_listener(O, "beforeunload", g)
                    b()

                    return

            catch a
                console.log(a)
            l++
            setTimeout(k, 200)

    add_event_listener(iframe_element, "load", k)
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

    ga_main_func: (a) ->
        ###
        ###

        try
            for foo_bar in @t
                c = a.get(foo_bar)
                if c
                    is_function(c)
                    c.call(window, a)
        catch d
            console.log(d)

        hit_callback = a.get(ga_hit_callback)

        if hit_callback != empty_function and is_function(hit_callback)
            a.set(ga_hit_callback, empty_function, true)
            setTimeout(hit_callback, 10)

    #####################
    ## PRIVATE METHODS ##
    #####################

Ja = (a) ->
    if a.get(ga_sample_rate) != 100 and La( get_string_value(a, ga_client_id) ) % 10000 >= 100 * R(a, ga_sample_rate)
        throw "abort"

Ma = (a) ->
    if Aa( get_string_value(a, ga_tracking_id) )
        throw "abort"

check_protocol = () ->
    protocol = document.location.protocol
    if protocol != "http:" and protocol != "https:"
        throw "abort"

Pa = (a) ->
    try
        if window.XMLHttpRequest
            if "withCredentials" in new window.XMLHttpRequest
                set_meta_data(40)
            else
                if window.XDomainRequest
                    set_meta_data(41)
                if window.navigator.sendBeacon
                    set_meta_data(42)
    catch b
        console.log(b)

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
    a.set(ga_hit_payload, c.join("&"), true)

Sa = (a) ->
    transport_url = get_string_value(a, ga_transport_url) or get_analytics_address() + "/collect"

    Ga(
        transport_url,
        get_string_value(a, ga_hit_payload),
        a.get(ga_hit_callback),
        a.get(ga_use_beacon)
    )

    a.set(ga_hit_callback, empty_function, true)

Hc = (a) ->
    ga_data = window.gaData

    if ga_data

        if ga_data.expId
            a.set(ga_exp_id, ga_data.expId)

        if ga_data.expVar
            a.set(ga_exp_var, ga_data.expVar)

# abort_on_preview ?
abort_on_preview = () ->
    if window.navigator and window.navigator.loadPurpose is "preview"
        throw "abort"

yd = (a) ->
    ga_dev_ids = window.gaDevIds

    if is_array(ga_dev_ids) and ga_dev_ids.length != 0
        a.set("&did", ga_dev_ids.join(","), true)

vb = (a) ->
    if not( a.get(ga_tracking_id) )
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
        console.log(b)
        return hd()

Ta = (a) ->
    b = R(a, ga_hc)

    if 500 <= b
        set_meta_data(15)

    c = get_string_value(a, ga_hit_type)

    if c != "transaction" and c != "item"
        c = R(a, ga_ti)
        # Returns the number of milliseconds between midnight, January 1, 1970
        current_miliseconds = (new Date).getTime()
        e = R(a, ga_ti)

        if 0 is e
            a.set(ga_ti, current_miliseconds);

        e = Math.round(2 * (current_miliseconds - e) / 1000)

        if 0 < e
            c = Math.min(c + e, 20)
            a.set(ga_ti, current_miliseconds)

        if 0 >= c
            throw "abort"

        a.set(ga_ti, --c)

    a.set(ga_hc, ++b)


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

        @data = new GaHashMap

    get: (a) ->
        ###
        ###
        
        b = $a(a)
        c = @data.get(a)
        if b and 0 == c
            if is_function(b.defaultValue)
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

Qa = new GaHashMap
Za = []

get_string_value = (store, attribute_name) ->
    value = store.get(attribute_name)

    if value == 0
        return ""
    else
        return "" + value

R = (a, b) ->
    c = a.get(b)

    if 0 == c or c is ''
        return 0
    else
        return 1 * c

ab = (a, b, c, d) ->
    if c != 0
        switch
            when b is ga_tracking_id then google_account_type_regex.test(c)
            else null

    e = $a(b)

    if e and e.o
        e.o(a, b, c, d)
    else
        a.data.set(b, c, d)

bb = (a, b, c, d, e) ->
    set_name_on_object(@, a)

    @p = b
    @n = d
    @o = e
    @defaultValue = c

$a = (a) ->
    b = Qa.get(a)

    if not(b)

        for d in Za
            e = d[0].exec(a)

            if e
                b = d[1](e)
                Qa.set(b.name, b)
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

gb = is_string(f.GoogleAnalyticsObject) and sa(f.GoogleAnalyticsObject) or "ga"
Ba = false
ga_api_version = T("apiVersion", "v")
ga_client_version = T("clientVersion", "_v")

S("anonymizeIp", "aip")

ga_ad_sense_id = S("adSenseId", "a")
ga_hit_type = S("hitType", "t")
ga_hit_callback = S("hitCallback")
ga_hit_payload = S("hitPayload")

S("nonInteraction", "ni")
S("currencyCode", "cu")

ga_use_beacon = S("useBeacon", 0, false)

S("dataSource", "ds")
S("sessionControl", "sc", "")
S("sessionGroup", "sg")
S("queueTime", "qt")

Ac = S("_s", "_s")

S("screenName", "cd")

ga_location = S("location", "dl", "")
ga_referrer = S("referrer", "dr")
ga_page = S("page", "dp", "")

S("hostname", "dh")

ga_language = S("language", "ul")
ga_encoding = S("encoding", "de")

S("title", "dt", () ->
    return document.title or 0
)

cb("contentGroup([0-9]+)", (a) ->
    return new bb(a[0], "cg" + a[1])
)

ga_screen_colors = S("screenColors", "sd")
ga_screen_resolution = S("screenResolution", "sr")
ga_viewport_size = S("viewportSize", "vp")
ga_java_enabled = S("javaEnabled", "je")
ga_flash_version = S("flashVersion", "fl")

S("campaignId", "ci")
S("campaignName", "cn")
S("campaignSource", "cs")
S("campaignMedium", "cm")
S("campaignKeyword", "ck")
S("campaignContent", "cc")

ga_event_category = S("eventCategory", "ec")
ga_event_action = S("eventAction", "ea")
ga_event_label = S("eventLabel", "el")
ga_event_value = S("eventValue", "ev")
ga_social_network = S("socialNetwork", "sn")
ga_social_action = S("socialAction", "sa")
ga_social_target = S("socialTarget", "st")
ga_l1 = S("l1", "plt")
ga_l2 = S("l2", "pdt")
ga_l3 = S("l3", "dns")
ga_l4 = S("l4", "rrt")
ga_l5 = S("l5", "srt")
ga_l6 = S("l6", "tcp")
ga_l7 = S("l7", "dit")
ga_l8 = S("l8", "clt")
ga_timing_category = S("timingCategory", "utc")
ga_timing_var = S("timingVar", "utv")
ga_timing_label = S("timingLabel", "utl")
ga_timing_value = S("timingValue", "utt")

S("appName", "an")
S("appVersion", "av", "")
S("appId", "aid", "")
S("appInstallerId", "aiid", "")
S("exDescription", "exd")
S("exFatal", "exf")

ga_exp_id = S("expId", "xid")
ga_exp_var = S("expVar", "xvar")
ga_ut_ma = S("_utma", "_utma")
ga_ut_mz = S("_utmz", "_utmz")
ga_ut_mht = S("_utmht", "_utmht")
ga_hc = S("_hc", 0, 0)
ga_ti = S("_ti", 0, 0)
ga_ti = S("_to", 0, 20)

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
    set_meta_data(34)
    Ba = !!c
)

ga_j1 = S("_j1", "jid")
ga_j2 = S("_j2", "gjid")

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

ga_oot = T("_oot")
ga_preview_task = S("previewTask")
ga_check_protocol_task = S("checkProtocolTask")
ga_validation_task = S("validationTask")
ga_check_storage_task = S("checkStorageTask")
ga_history_import_task = S("historyImportTask")
ga_sampler_task = S("samplerTask")
ga_rlt = T("_rlt")
ga_build_hit_task = S("buildHitTask")
ga_send_hit_task = S("sendHitTask")
ga_ce_task = S("ceTask")
ga_dev_id_task = S("devIdTask")
ga_timing_task = S("timingTask")
ga_display_features_task = S("displayFeaturesTask")
ga_name = T("name")
ga_client_id = T("clientId", "cid")
ga_user_id = S("userId", "uid")
ga_tracking_id = T("trackingId", "tid")
ga_cookie_name = T("cookieName", 0, "_ga")
ga_cookie_domain = T("cookieDomain")
ga_cookie_path = T("cookiePath", 0, "/")
ga_cookie_expires = T("cookieExpires", 0, 63072000)
ga_legacy_cookie_domain = T("legacyCookieDomain")
ga_legacy_history_import = T("legacyHistoryImport", 0, true)
ga_storage = T("storage", 0, "cookie")
ga_allow_linker = T("allowLinker", 0, false)
ga_allow_anchor = T("allowAnchor", 0, true)
ga_sample_rate = T("sampleRate", "sf", 100)
ga_site_speed_sample_rate = T("siteSpeedSampleRate", 0, 1)
ga_always_send_referrer = T("alwaysSendReferrer", 0, false)
ga_transport_url = S("transportUrl")
ga_r = S("_r", "_r")

add_function_to_object = (function_name, storing_object, function_to_be_called, meta_data_number) ->
    storing_object[function_name] = () ->
        try
            if meta_data_number
                set_meta_data(meta_data_number)

            return function_to_be_called.apply(@, arguments)
            
        catch exception_obj
            console.log(exception_obj)
            g = exception_obj and exception_obj.name
            if not(1 <= 100 * Math.random() or Aa("?"))
                ca = ["t=error", "_e=exc", "_v=j31", "sr=1"]

                if function_name
                    ca.push("_f=" + function_name)

                if g
                    ca.push("_m=" + K(g.substring(0, 100)))

                ca.push("aip=1")
                ca.push("z=" + hd())
                Ga(get_analytics_address() + "/collect", ca.join("&"))

            throw exception_obj

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

find_flash_version = () ->
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
            console.log(g)

    if not(flash_plugin)
        try
            a = new ActiveXObject("ShockwaveFlash.ShockwaveFlash.6")
            b = "WIN 6,0,21,0"
            a.AllowScriptAccess = "always"
            b = a.GetVariable("$version")
        catch ca
            console.log(ca)

    if not(flash_plugin)
        try
            a = new ActiveXObject("ShockwaveFlash.ShockwaveFlash")
            b = a.GetVariable("$version")
        catch l
            console.log(l)

    if flash_plugin
        a = flash_plugin.match(/[\d]+/g)
        if 3 <= a.length
            flash_plugin = a[0] + "." + a[1] + " r" + a[2]
            
    return flash_plugin or 0

gc = (a, b) ->
    c = Math.min( R(a, ga_site_speed_sample_rate), 100 )

    if not(La(get_string_value(a, ga_client_id)) % 100 >= c)
        c = {}
        Ec(c) or Fc(c)
        d = c[ga_l1]

        if d == 0 or d == Infinity or isNaN(d)
            if 0 < d
                Y(c, ga_l3)
                Y(c, ga_l6)
                Y(c, ga_l5)
                Y(c, ga_l2)
                Y(c, ga_l4)
                Y(c, ga_l7)
                Y(c, ga_l8)
                b(c)
            else
                add_event_listener(window, "load", () ->
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

    a[ga_l1] = performance_timing.loadEventStart - navigation_start
    a[ga_l3] = performance_timing.domainLookupEnd - performance_timing.domainLookupStart
    a[ga_l6] = performance_timing.connectEnd - performance_timing.connectStart
    a[ga_l5] = performance_timing.responseStart - performance_timing.requestStart
    a[ga_l2] = performance_timing.responseEnd - performance_timing.responseStart
    a[ga_l4] = performance_timing.fetchStart - navigation_start
    a[ga_l7] = performance_timing.domInteractive - navigation_start
    a[ga_l8] = performance_timing.domContentLoadedEventStart - navigation_start

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

    a[ga_l1] = load_time

    return true

Y = (a, b) ->
    c = a[b]

    if isNaN(c) or c == Infinity or c < 0
        a[b] = 0

Fd = (a) ->
    return (b) ->
        if b.get(ga_hit_type) != 'pageview' or a.I
            a.I = true
            gc(b, (b) ->
                a.send("timing", b)
            )

hc = false
mc = (a) ->
    if get_string_value(a, ga_storage) is "cookie"

        b = get_string_value(a, ga_cookie_name)
        c = nd(a)
        d = kc(get_string_value(a, ga_cookie_path))
        e = lc(get_string_value(a, ga_cookie_domain))
        g = 1000 * R(a, ga_cookie_expires)
        ca = get_string_value(a, ga_tracking_id)

        if e != "auto"
            if zc(b, c, d, e, ca, g)
                hc = true
        else
            for __none in [1]
                set_meta_data(32)
                c = []

                splitted_host_name = get_clean_host_name().split(".")

                l = splitted_host_name[splitted_host_name.length - 1]
                if (splitted_host_name.length == 4 and  l == parseInt(l, 10))
                    l = ["none"]
                    break

                for l in splitted_host_name by -1
                    c.push( splitted_host_name.slice(l).join(".") )

                c.push("none")
                l = c

                for splitted_host_name in l
                    a.data.set(ga_cookie_domain, splitted_host_name)
                    c = nd(a)

                    if zc(b, c, d, splitted_host_name, ca, g)
                        hc = true
                        return

                a.data.set(ga_cookie_domain, "auto")

nc = (a) ->
    if get_string_value(a, ga_storage) == "cookie" and not hc and mc(a)
        throw "abort"

Yc = (a) ->
    if a.get(ga_legacy_history_import)
        b = get_string_value(a, ga_cookie_domain)
        c = get_string_value(a, ga_legacy_cookie_domain) or get_clean_host_name()
        d = Xc("__utma", c, b)

        if d
            set_meta_data(19)
            a.set(ga_ut_mht, (new Date).getTime(), true)
            a.set(ga_ut_ma, d.R)
            b = Xc("__utmz", c, b)

            if d.hash == b.hash
                a.set(ga_ut_mz, b.R)

nd = (a) ->
    b = Cc(get_string_value(a, ga_client_id))
    c = ic(get_string_value(a, ga_cookie_domain))
    a = jc(get_string_value(a, ga_cookie_path))

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
    if starts_with(a, '.')
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

        if La( starts_with(a, ".") )
            d = a.substring(1)
        else
            d = "." + a

    for val in b
        if val[h] is c or val[h] is d
            return val

od = new RegExp(/^https?:\/\/([^\/:]+)/)
pd = /(.*)([?&#])(?:_ga=[^&#]*)(?:&?)(.*)/

Bc = (a) ->
    a = a.get(ga_client_id)
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



class GaPluginLinker
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

        set_meta_data(48)
        @target = a
        @T = false

    decorate: (element, b) ->
        ###
        ###

        if element.tagName
            if "a" == element.tagName.toLowerCase()
                if element.href
                    set_href_of_element(element, qd(@, element.href, b))
                return

            if "form" == element.tagName.toLowerCase()
                return add_ga_hidden_input_to_form(@, element)

        if is_string(element)
            return qd(@, element, b)


    autoLink: (a, b, c) ->
        ###
        ###

        event_callback = (event) ->
            try
                event = event or window.event
                element = event.target or event.srcElement

                d = null
                counter = 100
                while element and counter > 0

                    if element.href && element.nodeName.match(/^a(?:rea)?$/i)
                        d = element
                        break

                    element = element.parentNode

                    counter--
                d = {}

                if d.protocol is "http:" or d.protocol is "https:"
                    if sd(a, d.hostname or "") and d.href
                        set_href_of_element( d, qd(e, d.href, b) )

            catch w
                console.log(w)
                set_meta_data(26)

        e = @

        if not @T
            @T = true
            add_event_listener(document, "mousedown", event_callback, false)
            add_event_listener(document, "touchstart", event_callback, false)
            add_event_listener(document, "keyup", event_callback, false)

        if c
            callback = (event) ->
                event = event or window.event
                event = event.target or event.srcElement

                if event.action
                    foo_c = event.action.match(od)

                    if foo_c
                        sd(a, foo_c[1])
                        add_ga_hidden_input_to_form(e, event)

            for form in document.forms
                add_event_listener(form, "submit", callback)

    #####################
    ## PRIVATE METHODS ##
    #####################

qd = (a, b, c) ->
    matches = pd.exec(b)

    if matches and 3 <= matches.length
        b = matches[1]

        if matches[3]
            b += matches[2] + matches[3]
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

add_ga_hidden_input_to_form = (a, form) ->
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
    console.log("#{a} => #{b}")
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

    constructor: (a, b, url, d) ->
        ###
        ###

        @U = b
        @aa = url

        if d
            b = get_string_value(a, ga_name)
            if b and b != 't0'
                if Wd[s](b)
                    b = "_gat_" + Cc( get_string_value(a, ga_tracking_id) )
                else
                    b = "_gat_" + Cc(b)
            else
                b = "_gat"

        @Y = b

    #####################
    ## PRIVATE METHODS ##
    #####################

Rd = (a, b) ->
    c = b.get(ga_build_hit_task)

    b.set(ga_build_hit_task, (b) ->
        Pd(a, b)
        d = c(b)
        Qd(a, b)
        return d
    )

    d = b.get(ga_send_hit_task)
    b.set(ga_send_hit_task, (b) ->
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
        zc(a.Y, "1", b.get(ga_cookie_path) b.get(ga_cookie_domain), b.get(ga_tracking_id), 600000)

Id = (a, b) ->
    if b.get(a.U)
        c = new GaHashMap

        d = (a) ->
            c.set($a(a).p, b.get(a))

        d(ga_api_version)
        d(ga_client_version)
        d(ga_tracking_id)
        d(ga_client_id)
        d(a.U)
        d(ld)
        e = a.aa

        c.map((a, b) ->
            e += K(a) + "=";
            e += K("" + b) + "&"
        )

        e += "z=" + hd()

        create_spy_image(e)

        b.set(a.U, "", true)

Wd = /^gtm\d+$/

displayfeatures_func = (a, b) ->
    c = a.b
    if not(c.get("dcLoaded"))
        set_meta_data(29)

        if window._gaq
            set_meta_data(52)

        b = b or {}

        if b[ga_cookie_name]
            d = Cc( b[ga_cookie_name] )

        d = new Jd(c, ga_j1, "https://stats.g.doubleclick.net/collect?t=dc&aip=1&", d)

        Rd(d, c)

        c.set("dcLoaded", true)

Sd = (a) ->
    if a.get("dcLoaded")
        b = false

    else

        if a.get(ga_storage) != 'cookie'
            b = false
        else
            b = true

    if b
        set_meta_data(51)
        b = new Jd(a, ga_j1)
        Pd(b, a)
        Qd(b, a)

        if a.get(b.U)
            a.set(ga_r, 1, true)
            a.set(ga_transport_url, get_analytics_address() + "/r/collect", true)


adfeatures_func = (a, b) ->
    c = a.b
    if not c.get("_rlsaLoaded")
        set_meta_data(38)

        b = b or {}

        if b[ga_cookie_name]
            d = Cc( b[ga_cookie_name] )

        d = new Jd(c, ga_j2, "https://www.google.com/ads/ga-audiences?t=sr&aip=1&", d)

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
                
            insert_script_element("https://www.google.com/analytics/web/inpage/pub/inpage.js?" + inpage_parameters + hd(), "_gasojs")

        ad = true

google_account_type_regex = /^(UA|YT|MO|GP)-(\d+)-(\d+)$/


class ClientDataStruct
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

        set_data = (name, data) =>
            @b.data.set(name, data)

        add_filter_and_set_data = (name, data) =>
            set_data(name, data)
            @filters.add(name)

        @b = new Ya
        @filters = new Ha

        # Set data
        set_data(ga_name, a[ga_name])
        set_data(ga_tracking_id, sa(a[ga_tracking_id]))
        set_data(ga_cookie_name, a[ga_cookie_name])
        set_data(ga_cookie_domain, a[ga_cookie_domain] or get_clean_host_name())
        set_data(ga_cookie_path, a[ga_cookie_path])
        set_data(ga_cookie_expires, a[ga_cookie_expires])
        set_data(ga_legacy_cookie_domain, a[ga_legacy_cookie_domain])
        set_data(ga_legacy_history_import, a[ga_legacy_history_import])
        set_data(ga_allow_linker, a[ga_allow_linker])
        set_data(ga_allow_anchor, a[ga_allow_anchor])
        set_data(ga_sample_rate, a[ga_sample_rate])
        set_data(ga_site_speed_sample_rate, a[ga_site_speed_sample_rate])
        set_data(ga_always_send_referrer, a[ga_always_send_referrer])
        set_data(ga_storage, a[ga_storage])
        set_data(ga_user_id, a[ga_user_id])
        set_data(ga_api_version, 1)
        set_data(ga_client_version, "j31")

        add_filter_and_set_data(ga_oot, Ma)
        add_filter_and_set_data(ga_preview_task, abort_on_preview)
        add_filter_and_set_data(ga_check_protocol_task, check_protocol)
        add_filter_and_set_data(ga_validation_task, vb)
        add_filter_and_set_data(ga_check_storage_task, nc)
        add_filter_and_set_data(ga_history_import_task, Yc)
        add_filter_and_set_data(ga_sampler_task, Ja)
        add_filter_and_set_data(ga_rlt, Ta)
        add_filter_and_set_data(ga_ce_task, Hc)
        add_filter_and_set_data(ga_dev_id_task, yd)
        add_filter_and_set_data(ga_display_features_task, Sd)
        add_filter_and_set_data(ga_build_hit_task, Pa)
        add_filter_and_set_data(ga_send_hit_task, Sa)
        add_filter_and_set_data( ga_timing_task, Fd(@) )

        Jc(@b, a[ga_client_id])
        Kc(@b)

        @b.set( ga_ad_sense_id, Lc() )

        bd(@b.get(ga_tracking_id), @b.get(ga_cookie_domain), @b.get(ga_cookie_path))

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
                b = arguments[0] and arguments[0][ga_hit_type]
                c = arguments

            if b
                c = za(qc[b] or [], c)
                c[ga_hit_type] = b

                @b.set(c, 0, true)
                @filters.ga_main_func(this.b)
                @b.data.m = {}

                set_meta_data(44)

    #####################
    ## PRIVATE METHODS ##
    #####################


Jc = (a, b) ->
    # Test if we store in a cookie
    if get_string_value(a, ga_storage) is "cookie"
        hc = false

        c = null

        for foo_noop in [0]
            d = Ca( get_string_value(a, ga_cookie_name) )
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
                    set_meta_data(13)
                    c = c[0].s
                    break

                if 0 == c.length
                    set_meta_data(12)
                else
                    set_meta_data(14)
                    d = ic(get_string_value(a, ga_cookie_domain))
                    c = Gc(c, d, 0)
                    if 1 == c.length
                        c = c[0].s
                        break

                    d = jc( get_string_value(a, ga_cookie_path) )
                    c = Gc(c, d, 1)
                    c = c[0] and c[0].s
                    break

            c = 0


        if c
            c = get_string_value(a, ga_cookie_domain)
            d = get_string_value(a, ga_legacy_cookie_domain) or get_clean_host_name()
            c = Xc("__utma", d, c)

            if c is 0
                c = 0
            else
                c = c.O[1] + "." + c.O[2]

            if c
                set_meta_data(10)
        if c
            a.data.set(ga_client_id, c)
            hc = true

    c = a.get(ga_allow_anchor)

    if c
        location_part = 'href'
    else
        location_part = 'search'

    c = document.location[location_part].match(
            "(?:&|#|\\?)" +
            K("_ga").replace(/([.*+?^=!:${}()|\[\]\/\\])/g, "\\$1") +
            "=([^&#]*)"
    )

    if c and c.length is 2
        e = c[1]
    else
        e = ""

    if e

        if a.get(ga_allow_linker)

            c = e.indexOf(".")

            if c is -1
                set_meta_data(22)
            else
                d = e.substring(c + 1)

            if "1" != e.substring(0, c)
                set_meta_data(22)

            else
                c = d.indexOf(".")

                if c is -1
                    set_meta_data(22)
                else
                    e = d.substring(0, c)
                    c = d.substring(c + 1)

                    if e != Ic(c, 0) and e != Ic(c, -1) and e != Ic(c, -2)
                        set_meta_data(23)
                    else
                        set_meta_data(11)
                        a.data.set(ga_client_id, c)

    else
        set_meta_data(21)

    if b
        set_meta_data(9)
        a.data.set(ga_client_id, K(b))

    if a.get(ga_client_id)
        c = window.gaGlobal and window.gaGlobal.vid

        if not(c and c.search(/^(?:utma\.)?\d+\.\d+$/) != -1)
            c = 0

        if c
            set_meta_data(17)
            a.data.set(ga_client_id, c)
            
        else
            set_meta_data(8)
            foo_val = Math.round((new Date).getTime() / 1000)
            a.data.set(ga_client_id, [hd() ^ Mc() & 2147483647, foo_val].join("."))

    mc(a)

Kc = (a) ->
    navigator = window.navigator
    screen = window.screen
    document_location = document.location

    a.set( ga_referrer, get_referrer( a.get(ga_always_send_referrer) ) )

    if document_location
        path_name = document_location.pathname or ""

        # Check if we need to start the path with a slash
        if path_name.charAt(0) != "/"
            set_meta_data(31)
            path_name = "/" + path_name

        protocol = document_location.protocol
        hostname = document_location.hostname
        search_part = document_location.search
        a.set(ga_location, "#{protocol}//#{hostname}#{path_name}#{search_part}")

    if screen
        a.set(ga_screen_resolution, screen.width + "x" + screen.height)

    if screen
        a.set(ga_screen_colors, screen.colorDepth + "-bit")

    document_element = document.documentElement
    document_body = document.body
    g = document_body and document_body.clientWidth and document_body.clientHeight
    ca = []

    if document_element and document_element.clientWidth and document_element.clientHeight

        if document.compatMode is "CSS1Compat" or not g
            ca = [document_element.clientWidth, document_element.clientHeight]
        else
            if g
                ca = [document_body.clientWidth, document_body.clientHeight]

    if 0 >= ca[0] or 0 >= ca[1]
        screen_resolution = ''
    else
        screen_resolution = ca.join("x")

    browser_language = (navigator and (navigator.language or navigator.browserLanguage) or "").toLowerCase()
    java_enabled = (navigator and is_function(navigator.javaEnabled) and navigator.javaEnabled() or false)
    document_char_set = document.characterSet or document.charset

    a.set(ga_viewport_size, screen_resolution)
    a.set( ga_flash_version, find_flash_version() )
    a.set(ga_encoding, document_char_set)
    a.set(ga_java_enabled, java_enabled)
    a.set( ga_language, browser_language )

    location_hash = document.location.hash
    if document_location and a.get(ga_allow_anchor) and location_hash
        splitted_location_hash = location_hash.split(/[?&#]+/)
        location_part_list = []

        for location_part in splitted_location_hash

            if  starts_with(location_part, "utm_id") or
                starts_with(location_part, "utm_campaign") or
                starts_with(location_part, "utm_source") or
                starts_with(location_part, "utm_medium") or
                starts_with(location_part, "utm_term") or
                starts_with(location_part, "utm_content") or
                starts_with(location_part, "gclid") or
                starts_with(location_part, "dclid") or
                starts_with(location_part, "gclsrc")

                    location_part_list.push(location_part)


        if 0 < location_part_list.length
            location_hash = "#" + location_part_list.join("&")
            a.set(ga_location, a.get(ga_location) + location_hash)

qc =
    pageview: [ga_page]
    event: [ga_event_category, ga_event_action, ga_event_label, ga_event_value]
    social: [ga_social_network, ga_social_action, ga_social_target]
    timing: [ga_timing_category, ga_timing_var, ga_timing_value, ga_timing_label]

call_func_when_no_pre_render = (call_func) ->
    if document.visibilityState is "prerender"
        return false

    call_func()

    return true

td = /^(?:(\w+)\.)?(?:(\w+):)?(\w+)$/

sc = (main_function_arguments) ->
    # #4
    if is_function( main_function_arguments[0] )
        @u = main_function_arguments[0]
    else
        search_results = td.exec( main_function_arguments[0] )

        if search_results != null or search_results.length is 4
            @c = search_results[1] or "t0"
            @e = search_results[2] or ""
            @d = search_results[3]

            # action arguments
            @a = [].slice.call(main_function_arguments, 1)

            # Empty string brings false
            if not @e
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
                        if is_string(@a[1])
                            @X = @a[1]
                        else
                            @W = @a[1]

        first_arg = main_function_arguments[1]
        second_arg = main_function_arguments[2]

        if not(@d)
            throw "abort"

        if @i and (not is_string(first_arg) or first_arg is "")
            throw "abort"

        if @g and (not is_string(first_arg) or "" == first_arg or not is_function(second_arg))
            throw "abort"

        if ud(@c) or ud(@e)
            throw "abort"

        if @g and @c != "t0"
            throw "abort"


# starts_with_point_or_colon
ud = (a) ->
    return a.indexOf(".") >= 0  or a.indexOf(":") >= 0

Yd = new GaHashMap
$d = new GaHashMap
Zd =
    ec: 45,
    ecommerce: 46,
    linkid: 47

tc = (a, b, c) ->
    
    if b is GoogleAnalyticsObjectClass
        set_meta_data(35)
    else
        b.get(ga_name)

    d = Yd.get(a)

    if not is_function(d)
        return false

    b.plugins_ = b.plugins_ or new GaHashMap

    if b.plugins_.get(a)
        return true

    foo_val = new d(b, c or {})
    b.plugins_.set(a, foo_val)

    return true

get_url_information = (a) ->
    url_to_array_by_link_element = (link_element) ->
        hostname = (link_element.hostname or "").split(":")[0].toLowerCase()

        protocol = (link_element.protocol or "").toLowerCase()

        port = link_element.port or ("http:" == protocol ? 80 : "https:" == protocol ? 443 : "")

        path = link_element.pathname or ""

        if starts_with(path, "/")
            path = "/" + path

        return [hostname, "" + port, path]

    link_element = document.createElement("a")
    set_href_of_element(link_element, document.location.href)

    protocol = (link_element.protocol or "").toLowerCase()
    e = url_to_array_by_link_element(link_element)
    link_search_string = link_element.search or ""

    host = e[0]
    port = e[1]
    path = e[2]

    if port
        additional_bundle = ":" + port
    else
        additional_bundle = ''

    ca = protocol + "//" + host + additional_bundle

    if starts_with(a, "//")
        a = protocol + a

    else
        if starts_with(a, "/")
            a = ca + a
        else
            if not a or starts_with(a, "?")
                a = ca + path + (a or link_search_string)
            else
                if 0 > a.split("/")[0].indexOf(":")
                    a = ca + path.substring(0, path.lastIndexOf("/")) + "/" + a

    set_href_of_element(link_element, a)

    d = url_to_array_by_link_element(link_element)

    return {
        protocol: protocol,
        host: d[0],
        port: d[1],
        path: d[2],
        G: link_element.search or "",
        url: a or ""
    }

Z = {
    ga: () ->
        Z.f = []
}

Z.ga()

Z.ga_main_func = (a) ->
    # #2
    b = Z.analyse_main_arguments.apply(Z, arguments)
    b = Z.f.concat(b)
    Z.f = []

    while 0 < b.length and not Z.v(b[0]) and not(b.shift() or 0 < Z.f.length)
        Z.f = Z.f.concat(b)

Z.analyse_main_arguments = (a) ->
    # #3
    b = []
    for arg in arguments
        try
            d = new sc(arg)

            # #5
            if d.g
                Yd.set(d.a[0], d.a[1])
            else
                if d.i

                    e = d
                    g = e.a[0]

                    if not is_function(Yd.get(g)) and not $d.get(g)

                        Zd.hasOwnProperty(g) and set_meta_data(Zd[g])
                        ca = e.X

                        if not ca
                            if Zd.hasOwnProperty(g)
                                set_meta_data(39)
                                ca = g + ".js"
                            else
                                set_meta_data(43)

                        if ca
                            if ca and 0 <= ca.indexOf("/")
                                protocol = (Ba or "https:" == document.location.protocol ? "https:" : "http:")
                                ca = "#{protocol}//www.google-analytics.com/plugins/ua/#{ca}"

                            l = get_url_information(ca)
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
                                be = get_url_information(document.location.href)

                                if e.G or 0 <= e.url.indexOf("?") or 0 <= e.path.indexOf("://")
                                    Xd = false
                                else if e.host is be.host and e.port == be.port
                                    Xd = true
                                else
                                    if e.protocol
                                        http_port = 80
                                    else
                                        http_port = 443

                                    if "www.google-analytics.com" is e.host and (e.port or http_port) == http_port and starts_with(e.path, "/plugins/")
                                        Xd = true
                                    else
                                        Xd = false

                            if Xd
                                insert_script_element(l.url)
                                $d.set(g, true)

                b.push(d)

        catch de
            console.log(de)

    return b

Z.v = (a) ->
    try
        if (a.u)
            a.u.call(window, GoogleAnalyticsObjectClass.getByName("t0"))
        else
            if gb is a.c
                b = GoogleAnalyticsObjectClass
            else
                b = GoogleAnalyticsObjectClass.getByName(a.c)

            if a.A
                if a.c is 't0'
                    GoogleAnalyticsObjectClass.create.apply(GoogleAnalyticsObjectClass, a.a)

            else if a.ba
                GoogleAnalyticsObjectClass.remove(a.c)

            else if b
                if a.i
                    if not tc(a.a[0], b, a.W)
                        return true
            else if a.e
                d = a.a
                e = b.plugins_.get(a.e)
                e[a.d].apply(e, d)
            else
                b[a.d].apply(b, a.a)
    catch g
        console.log(g)

# #1
# Main function / class (not using argument a)
GoogleAnalyticsObjectClass = (a) ->
    set_meta_data(1)
    Z.ga_main_func.apply(Z, [arguments])

GoogleAnalyticsObjectClass.h = {}
GoogleAnalyticsObjectClass.P = []
GoogleAnalyticsObjectClass.L = 0
GoogleAnalyticsObjectClass.answer = 42

uc = [ga_tracking_id, ga_cookie_domain, ga_name]

GoogleAnalyticsObjectClass.create = (a) ->
    b = za(uc, [].slice.call(arguments))

    if b[ga_name]
        b[ga_name] = "t0"

    c = "" + b[ga_name]

    if GoogleAnalyticsObjectClass.h[c]
        return GoogleAnalyticsObjectClass.h[c]

    b = new ClientDataStruct(b)
    GoogleAnalyticsObjectClass.h[c] = b
    GoogleAnalyticsObjectClass.P.push(b)

    return b

GoogleAnalyticsObjectClass.remove = (a) ->
    for val in GoogleAnalyticsObjectClass.P

        if val.get(ga_name) is a
            GoogleAnalyticsObjectClass.P.splice(b, 1)
            GoogleAnalyticsObjectClass.h[a] = null

            break

GoogleAnalyticsObjectClass.getByName = (a) ->
    return GoogleAnalyticsObjectClass.h[a]

GoogleAnalyticsObjectClass.getAll = () ->
    return GoogleAnalyticsObjectClass.P.slice(0)

GoogleAnalyticsObjectClass.on_visible = () ->

    if "ga" != gb
        set_meta_data(49)

    ga_object = window[gb]

    if not ga_object or ga_object.answer != 42
        GoogleAnalyticsObjectClass.L = ga_object and ga_object.l
        GoogleAnalyticsObjectClass.loaded = true
        b = window[gb] = GoogleAnalyticsObjectClass

        # Set functions on b?
        add_function_to_object("create", b, b.create, 3)
        add_function_to_object("remove", b, b.remove)
        add_function_to_object("getByName", b, b.getByName, 5)
        add_function_to_object("getAll", b, b.getAll, 6)
        
        b = ClientDataStruct.prototype

        add_function_to_object("get", b, b.get, 7)
        add_function_to_object("set", b, b.set, 4)
        add_function_to_object("send", b, b.send, 2)

        b = Ya.prototype

        add_function_to_object("get", b, b.get)
        add_function_to_object("set", b, b.set)

        script_elements = document.getElementsByTagName("script")
        counter = 0

        while counter < script_elements.length and counter < 100
            script_src = script_elements[counter].src

            if script_src
                if not starts_with(script_src, "https://www.google-analytics.com/analytics")
                    boolean_flag = false
                else
                    boolean_flag = true
            else
                boolean_flag = false

            # Check if if there is a analytics script in the whole dom
            if boolean_flag
                set_meta_data(33)

            counter++

        if document.location.protocol != "https:" and not(Ba) and Ed()
            set_meta_data(36)
            Ba = true

        window.gaplugins = window.gaplugins or {}
        window.gaplugins.Linker = GaPluginLinker

        b = GaPluginLinker.prototype
        Yd.set("linker", GaPluginLinker)
        add_function_to_object("decorate", b, b.decorate, 20)
        add_function_to_object("autoLink", b, b.autoLink, 25)
        Yd.set("displayfeatures", displayfeatures_func)
        Yd.set("adfeatures", adfeatures_func)

        main_args = ga_object and ga_object.q

        if is_array(main_args)
            Z.ga_main_func.apply(GoogleAnalyticsObjectClass, main_args)
        else
            set_meta_data(50)

GoogleAnalyticsObjectClass.k = () ->
    a = GoogleAnalyticsObjectClass.getAll()

    for val in a
        val.get(ga_name)

on_start_up = () ->
    # Call in this script
    # Check if visibilty is prerender
    if not call_func_when_no_pre_render(GoogleAnalyticsObjectClass.on_visible)
        set_meta_data(16)

        visibilty_is_not_prerender = false

        on_visible_callback = () ->
            if not visibilty_is_not_prerender and call_func_when_no_pre_render(GoogleAnalyticsObjectClass.on_visible)
                visibilty_is_not_prerender = true

                # When visible we don't need this anymore
                remove_event_listener(document, "visibilitychange", on_visible_callback)

        add_event_listener(document, "visibilitychange", on_visible_callback)

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

###################################
## THIS IS WHERE THE GAME STARTS ##
###################################

on_start_up()