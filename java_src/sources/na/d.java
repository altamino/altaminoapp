package na;

import aa.e;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import net.pubnative.lite.sdk.vpaid.h;
import org.schabi.newpipe.extractor.services.youtube.r0;
import qa.y;

/* JADX INFO: loaded from: classes11.dex */
public final class d extends org.schabi.newpipe.extractor.linkhandler.b {
    private static final Pattern YOUTUBE_VIDEO_ID_REGEX_PATTERN = Pattern.compile("^([a-zA-Z0-9_-]{11})");
    private static final d INSTANCE = new d();
    private static final List<String> SUBPATHS = h.a(new Object[]{"embed/", "live/", "shorts/", "watch/", "v/", "w/"});

    private static String j(String str) {
        if (str == null) {
            return null;
        }
        Matcher matcher = YOUTUBE_VIDEO_ID_REGEX_PATTERN.matcher(str);
        if (matcher.find()) {
            return matcher.group(1);
        }
        return null;
    }

    public static d l() {
        return INSTANCE;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // org.schabi.newpipe.extractor.linkhandler.b
    public String e(String str) throws UnsupportedOperationException, aa.h {
        String strH;
        byte b7 = 2;
        try {
            URI uri = new URI(str);
            String scheme = uri.getScheme();
            if (scheme != null && (scheme.equals("vnd.youtube") || scheme.equals("vnd.youtube.launch"))) {
                String schemeSpecificPart = uri.getSchemeSpecificPart();
                if (!schemeSpecificPart.startsWith("//")) {
                    return i(schemeSpecificPart);
                }
                String strJ = j(schemeSpecificPart.substring(2));
                if (strJ != null) {
                    return strJ;
                }
                str = "https:" + schemeSpecificPart;
            }
        } catch (URISyntaxException unused) {
        }
        try {
            URL urlW = y.w(str);
            String host = urlW.getHost();
            String path = urlW.getPath();
            if (!path.isEmpty()) {
                path = path.substring(1);
            }
            if (!y.l(urlW) || (!r0.e0(urlW) && !r0.d0(urlW) && !r0.U(urlW) && !r0.V(urlW) && !r0.X(urlW))) {
                if (!host.equalsIgnoreCase("googleads.g.doubleclick.net")) {
                    throw new aa.h("The URL is not a YouTube URL");
                }
                throw new e("Error: found ad: " + str);
            }
            if (b.n().a(str)) {
                throw new aa.h("Error: no suitable URL: " + str);
            }
            String upperCase = host.toUpperCase();
            upperCase.hashCode();
            switch (upperCase.hashCode()) {
                case -2114213841:
                    b7 = !upperCase.equals("INVIDIOUS.ZEE.LI") ? (byte) -1 : (byte) 0;
                    break;
                case -2087592960:
                    b7 = !upperCase.equals("TUBUS.EDUVID.ORG") ? (byte) -1 : (byte) 1;
                    break;
                case -1698218251:
                    if (!upperCase.equals("Y2U.BE")) {
                        b7 = -1;
                    }
                    break;
                case -1693444139:
                    b7 = !upperCase.equals("M.YOUTUBE.COM") ? (byte) -1 : (byte) 3;
                    break;
                case -1604112842:
                    b7 = !upperCase.equals("YT.CYBERHOST.UK") ? (byte) -1 : (byte) 4;
                    break;
                case -1416474788:
                    b7 = !upperCase.equals("VID.MINT.LGBT") ? (byte) -1 : (byte) 5;
                    break;
                case -1146372515:
                    b7 = !upperCase.equals("YTB.TROM.TF") ? (byte) -1 : (byte) 6;
                    break;
                case -1141849304:
                    b7 = !upperCase.equals("VID.PUFFYAN.US") ? (byte) -1 : (byte) 7;
                    break;
                case -1092206675:
                    b7 = !upperCase.equals("PIPED.KAVIN.ROCKS") ? (byte) -1 : (byte) 8;
                    break;
                case -827318675:
                    b7 = !upperCase.equals("INVIDIOUS.NAMAZSO.EU") ? (byte) -1 : (byte) 9;
                    break;
                case -397809965:
                    b7 = !upperCase.equals("DEV.INVIDIO.US") ? (byte) -1 : (byte) 10;
                    break;
                case -397058810:
                    b7 = !upperCase.equals("INV.RIVERSIDE.ROCKS") ? (byte) -1 : com.google.common.base.c.VT;
                    break;
                case -244508014:
                    b7 = !upperCase.equals("INVIDIOU.SITE") ? (byte) -1 : com.google.common.base.c.FF;
                    break;
                case -124567835:
                    b7 = !upperCase.equals("YEWTU.BE") ? (byte) -1 : com.google.common.base.c.CR;
                    break;
                case -52807283:
                    b7 = !upperCase.equals("MUSIC.YOUTUBE.COM") ? (byte) -1 : com.google.common.base.c.SO;
                    break;
                case 73534791:
                    b7 = !upperCase.equals("INVIDIOUS.KAVIN.ROCKS") ? (byte) -1 : com.google.common.base.c.SI;
                    break;
                case 103116914:
                    b7 = !upperCase.equals("INVIDIOUS-US.KAVIN.ROCKS") ? (byte) -1 : com.google.common.base.c.DLE;
                    break;
                case 103276081:
                    b7 = !upperCase.equals("YOUTU.BE") ? (byte) -1 : (byte) 17;
                    break;
                case 169254170:
                    b7 = !upperCase.equals("HOOKTUBE.COM") ? (byte) -1 : com.google.common.base.c.DC2;
                    break;
                case 301798888:
                    b7 = !upperCase.equals("INVIDIOUS.MOOMOO.ME") ? (byte) -1 : (byte) 19;
                    break;
                case 360245068:
                    b7 = !upperCase.equals("Y.COM.CM") ? (byte) -1 : com.google.common.base.c.DC4;
                    break;
                case 405074072:
                    b7 = !upperCase.equals("INVIDIOUS.EXONIP.DE") ? (byte) -1 : com.google.common.base.c.NAK;
                    break;
                case 941554175:
                    b7 = !upperCase.equals("WWW.YOUTUBE.COM") ? (byte) -1 : com.google.common.base.c.SYN;
                    break;
                case 1061977963:
                    b7 = !upperCase.equals("TUBE.CONNECT.CAFE") ? (byte) -1 : com.google.common.base.c.ETB;
                    break;
                case 1229581114:
                    b7 = !upperCase.equals("INVIDIO.US") ? (byte) -1 : com.google.common.base.c.CAN;
                    break;
                case 1607514856:
                    b7 = !upperCase.equals("INVIDIOUS.FDN.FR") ? (byte) -1 : com.google.common.base.c.EM;
                    break;
                case 1649009762:
                    b7 = !upperCase.equals("INVIDIOUS.SNOPYTA.ORG") ? (byte) -1 : com.google.common.base.c.SUB;
                    break;
                case 1720784822:
                    b7 = !upperCase.equals("REDIRECT.INVIDIOUS.IO") ? (byte) -1 : com.google.common.base.c.ESC;
                    break;
                case 1739373659:
                    b7 = !upperCase.equals("YTPRIVATE.COM") ? (byte) -1 : com.google.common.base.c.FS;
                    break;
                case 1818283559:
                    b7 = !upperCase.equals("INVIDIOUS.048596.XYZ") ? (byte) -1 : com.google.common.base.c.GS;
                    break;
                case 1876693401:
                    b7 = !upperCase.equals("INVIDIOUS.BLAMEFRAN.NET") ? (byte) -1 : com.google.common.base.c.RS;
                    break;
                case 1999754024:
                    b7 = !upperCase.equals("INVIDIOUS.SILKKY.CLOUD") ? (byte) -1 : com.google.common.base.c.US;
                    break;
                case 2022964729:
                    b7 = !upperCase.equals("WWW.YOUTUBE-NOCOOKIE.COM") ? (byte) -1 : (byte) 32;
                    break;
                case 2024273937:
                    b7 = !upperCase.equals("WWW.INVIDIO.US") ? (byte) -1 : (byte) 33;
                    break;
                case 2035582341:
                    b7 = !upperCase.equals("INVIDIOUS.SITE") ? (byte) -1 : (byte) 34;
                    break;
                case 2075880438:
                    b7 = !upperCase.equals("YOUTUBE.COM") ? (byte) -1 : (byte) 35;
                    break;
                default:
                    b7 = -1;
                    break;
            }
            switch (b7) {
                case 0:
                case 1:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case 15:
                case 16:
                case 18:
                case 19:
                case 20:
                case 21:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 33:
                case 34:
                    if (path.equals("watch") && (strH = y.h(urlW, "v")) != null) {
                        return i(strH);
                    }
                    String strK = k(path);
                    if (strK != null) {
                        return strK;
                    }
                    String strH2 = y.h(urlW, "v");
                    return strH2 != null ? i(strH2) : i(path);
                case 2:
                case 17:
                    String strH3 = y.h(urlW, "v");
                    return strH3 != null ? i(strH3) : i(path);
                case 3:
                case 14:
                case 22:
                case 35:
                    if (!path.equals("attribution_link")) {
                        String strK2 = k(path);
                        return strK2 != null ? strK2 : i(y.h(urlW, "v"));
                    }
                    try {
                        return i(y.h(y.w("https://www.youtube.com" + y.h(urlW, "u")), "v"));
                    } catch (MalformedURLException unused2) {
                        throw new aa.h("Error: no suitable URL: " + str);
                    }
                case 32:
                    if (path.startsWith("embed/")) {
                        return i(path.substring(6));
                    }
                    break;
            }
            throw new aa.h("Error: no suitable URL: " + str);
        } catch (MalformedURLException unused3) {
            throw new IllegalArgumentException("The given URL is not valid");
        }
    }

    private String k(String str) throws aa.h {
        for (String str2 : SUBPATHS) {
            if (str.startsWith(str2)) {
                return i(str.substring(str2.length()));
            }
        }
        return null;
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.b
    public String f(String str) throws UnsupportedOperationException, aa.h {
        return "https://www.youtube.com/watch?v=" + str;
    }

    private d() {
    }

    private static String i(String str) throws aa.h {
        String strJ = j(str);
        if (strJ != null) {
            return strJ;
        }
        throw new aa.h("The given string is not a YouTube video ID");
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.b
    public boolean h(String str) throws e {
        try {
            e(str);
            return true;
        } catch (e e) {
            throw e;
        } catch (aa.h unused) {
            return false;
        }
    }
}
