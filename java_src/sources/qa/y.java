package qa;

import androidx.webkit.ProxyConfig;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

/* JADX INFO: loaded from: classes9.dex */
public final class y {
    public static final String HTTP = "http://";
    public static final String HTTPS = "https://";
    private static final Pattern M_PATTERN = Pattern.compile("(https?)?://m\\.");
    private static final Pattern WWW_PATTERN = Pattern.compile("(https?)?://www\\.");

    public static String j(String str, Pattern[] patternArr, int i10) throws n.a {
        for (Pattern pattern : patternArr) {
            try {
                String strN = n.n(pattern, str, i10);
                if (strN != null) {
                    return strN;
                }
            } catch (n.a unused) {
            }
        }
        throw new n.a("No regex matched the input on group " + i10);
    }

    public static long r(String str) throws aa.h, NumberFormatException {
        String strM;
        double d;
        try {
            strM = n.m("[\\d]+([\\.,][\\d]+)?([KMBkmb])+", str, 2);
        } catch (aa.h unused) {
            strM = "";
        }
        double d2 = Double.parseDouble(n.o("([\\d]+([\\.,][\\d]+)?)", str).replace(",", "."));
        String upperCase = strM.toUpperCase();
        upperCase.hashCode();
        switch (upperCase) {
            case "B":
                d = 1.0E9d;
                break;
            case "K":
                d = 1000.0d;
                break;
            case "M":
                d = 1000000.0d;
                break;
            default:
                return (long) d2;
        }
        return (long) (d2 * d);
    }

    public static String d(String str) {
        return URLDecoder.decode(str, StandardCharsets.UTF_8);
    }

    public static String e(String str) {
        return URLEncoder.encode(str, StandardCharsets.UTF_8);
    }

    public static boolean k(String str) {
        return str == null || t.a(str);
    }

    public static boolean m(String str) {
        return str == null || str.isEmpty();
    }

    public static boolean n(Collection<?> collection) {
        return collection == null || collection.isEmpty();
    }

    public static <K, V> boolean o(Map<K, V> map) {
        return map == null || map.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Pattern[] p(int i10) {
        return new Pattern[i10];
    }

    public static String t(String str) {
        if (M_PATTERN.matcher(str).find()) {
            return str.replace("m.", "");
        }
        return WWW_PATTERN.matcher(str).find() ? str.replace("www.", "") : str;
    }

    public static String u(String str) {
        return str.replaceAll("\\D+", "");
    }

    public static String v(String str) {
        if (str == null) {
            return null;
        }
        if (!str.startsWith(HTTP)) {
            return str;
        }
        return HTTPS + str.substring(7);
    }

    public static URL w(String str) throws MalformedURLException {
        try {
            return new URL(str);
        } catch (MalformedURLException e) {
            if (!e.getMessage().equals("no protocol: " + str)) {
                throw e;
            }
            return new URL(HTTPS + str);
        }
    }

    public static void c(String str, String str2) throws aa.h {
        if (!m(str2)) {
            if (n.g(str, str2.toLowerCase())) {
                return;
            } else {
                throw new aa.h("Url don't match the pattern");
            }
        }
        throw new IllegalArgumentException("Url can't be null or empty");
    }

    public static String f(String str) {
        try {
            URL urlW = w(str);
            if (urlW.getHost().contains("google") && urlW.getPath().equals("/url")) {
                return d(n.o("&url=([^&]+)(?:&|$)", str));
            }
            return str;
        } catch (Exception unused) {
            return str;
        }
    }

    public static String g(String str) throws aa.h {
        try {
            URL urlW = w(str);
            return urlW.getProtocol() + "://" + urlW.getAuthority();
        } catch (MalformedURLException e) {
            String message = e.getMessage();
            if (message.startsWith("unknown protocol: ")) {
                return message.substring(18);
            }
            throw new aa.h("Malformed url: " + str, e);
        }
    }

    public static String h(URL url, String str) {
        String query = url.getQuery();
        if (query != null) {
            for (String str2 : query.split("&")) {
                String[] strArrSplit = str2.split("=", 2);
                if (d(strArrSplit[0]).equals(str)) {
                    return d(strArrSplit[1]);
                }
            }
            return null;
        }
        return null;
    }

    public static String i(String str, String[] strArr, int i10) throws n.a {
        return j(str, (Pattern[]) Arrays.stream(strArr).filter(new Predicate() { // from class: qa.u
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ma.g.a((String) obj);
            }
        }).map(new Function() { // from class: qa.v
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Pattern.compile((String) obj);
            }
        }).toArray(new IntFunction() { // from class: qa.w
            @Override // java.util.function.IntFunction
            public final Object apply(int i11) {
                return y.p(i11);
            }
        }), i10);
    }

    public static boolean l(URL url) {
        boolean z6;
        String protocol = url.getProtocol();
        if (!protocol.equals(ProxyConfig.MATCH_HTTP) && !protocol.equals(ProxyConfig.MATCH_HTTPS)) {
            return false;
        }
        if (url.getPort() == url.getDefaultPort()) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (url.getPort() != -1 && !z6) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean q(String str) {
        if (!m(str) && !str.equals("null")) {
            return true;
        }
        return false;
    }

    public static String s(CharSequence charSequence, String... strArr) {
        return (String) Arrays.stream(strArr).filter(new Predicate() { // from class: qa.x
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return y.q((String) obj);
            }
        }).collect(Collectors.joining(charSequence));
    }
}
