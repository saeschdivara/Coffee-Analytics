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

    a: []


    #######################
    ## PUBLIC PROPERTIES ##
    #######################


    ####################
    ## PUBLIC METHODS ##
    ####################

    constructor: () ->
        ###
        ###

    set: (b) ->
        ###
        ###

        a[b] = !0

    M: () ->
        ###
        ###

        b = []
        c = 0
        while c < a[y]
            c++
            a[c] && (b[n.floor(c / 6)] = b[n.floor(c / 6)] ^ 1 << c % 6)

        c = 0
        while c < b[y]
            c++
            b[c] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(b[c] || 0)

        return b[H]("") + "~"

    #####################
    ## PRIVATE METHODS ##
    #####################

pa = new FOO()

J = (a) ->
    pa.set(a)

ea = (a) ->
    return typeof a is "function"