package com.google.android.exoplayer2.text.ttml;

import android.text.Layout;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.text.i;
import com.google.android.exoplayer2.text.k;
import com.google.android.exoplayer2.util.o0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.t;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: loaded from: classes.dex */
public final class c extends com.google.android.exoplayer2.text.h {
    private static final String ATTR_BEGIN = "begin";
    private static final String ATTR_DURATION = "dur";
    private static final String ATTR_END = "end";
    private static final String ATTR_IMAGE = "backgroundImage";
    private static final String ATTR_REGION = "region";
    private static final String ATTR_STYLE = "style";
    private static final int DEFAULT_FRAME_RATE = 30;
    private static final String TAG = "TtmlDecoder";
    private static final String TTP = "http://www.w3.org/ns/ttml#parameter";
    private final XmlPullParserFactory xmlParserFactory;
    private static final Pattern CLOCK_TIME = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");
    private static final Pattern OFFSET_TIME = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");
    private static final Pattern FONT_SIZE = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");
    static final Pattern SIGNED_PERCENTAGE = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");
    static final Pattern PERCENTAGE_COORDINATES = Pattern.compile("^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$");
    private static final Pattern PIXEL_COORDINATES = Pattern.compile("^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$");
    private static final Pattern CELL_RESOLUTION = Pattern.compile("^(\\d+) (\\d+)$");
    private static final b DEFAULT_FRAME_AND_TICK_RATE = new b(30.0f, 1, 1);
    private static final a DEFAULT_CELL_RESOLUTION = new a(32, 15);

    private static final class a {
        final int columns;
        final int rows;

        a(int i10, int i11) {
            this.columns = i10;
            this.rows = i11;
        }
    }

    private static final class b {
        final float effectiveFrameRate;
        final int subFrameRate;
        final int tickRate;

        b(float f, int i10, int i11) {
            this.effectiveFrameRate = f;
            this.subFrameRate = i10;
            this.tickRate = i11;
        }
    }

    /* JADX INFO: renamed from: com.google.android.exoplayer2.text.ttml.c$c, reason: collision with other inner class name */
    private static final class C0182c {
        final int height;
        final int width;

        C0182c(int i10, int i11) {
            this.width = i10;
            this.height = i11;
        }
    }

    public c() {
        super(TAG);
        try {
            XmlPullParserFactory xmlPullParserFactoryNewInstance = XmlPullParserFactory.newInstance();
            this.xmlParserFactory = xmlPullParserFactoryNewInstance;
            xmlPullParserFactoryNewInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e);
        }
    }

    private static a A(XmlPullParser xmlPullParser, a aVar) throws k {
        String attributeValue = xmlPullParser.getAttributeValue(TTP, "cellResolution");
        if (attributeValue == null) {
            return aVar;
        }
        Matcher matcher = CELL_RESOLUTION.matcher(attributeValue);
        if (!matcher.matches()) {
            t.i(TAG, "Ignoring malformed cell resolution: " + attributeValue);
            return aVar;
        }
        try {
            int i10 = Integer.parseInt((String) com.google.android.exoplayer2.util.a.e(matcher.group(1)));
            int i11 = Integer.parseInt((String) com.google.android.exoplayer2.util.a.e(matcher.group(2)));
            if (i10 != 0 && i11 != 0) {
                return new a(i10, i11);
            }
            throw new k("Invalid cell resolution " + i10 + " " + i11);
        } catch (NumberFormatException unused) {
            t.i(TAG, "Ignoring malformed cell resolution: " + attributeValue);
            return aVar;
        }
    }

    private static void B(String str, g gVar) throws k {
        Matcher matcher;
        String[] strArrH0 = o0.H0(str, "\\s+");
        if (strArrH0.length == 1) {
            matcher = FONT_SIZE.matcher(str);
        } else {
            if (strArrH0.length != 2) {
                throw new k("Invalid number of entries for fontSize: " + strArrH0.length + ".");
            }
            matcher = FONT_SIZE.matcher(strArrH0[1]);
            t.i(TAG, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
        }
        if (!matcher.matches()) {
            throw new k("Invalid expression for fontSize: '" + str + "'.");
        }
        String str2 = (String) com.google.android.exoplayer2.util.a.e(matcher.group(3));
        str2.hashCode();
        switch (str2) {
            case "%":
                gVar.z(3);
                break;
            case "em":
                gVar.z(2);
                break;
            case "px":
                gVar.z(1);
                break;
            default:
                throw new k("Invalid unit for fontSize: '" + str2 + "'.");
        }
        gVar.y(Float.parseFloat((String) com.google.android.exoplayer2.util.a.e(matcher.group(1))));
    }

    private static b C(XmlPullParser xmlPullParser) throws k {
        float f;
        String attributeValue = xmlPullParser.getAttributeValue(TTP, "frameRate");
        int i10 = attributeValue != null ? Integer.parseInt(attributeValue) : 30;
        String attributeValue2 = xmlPullParser.getAttributeValue(TTP, "frameRateMultiplier");
        if (attributeValue2 != null) {
            String[] strArrH0 = o0.H0(attributeValue2, " ");
            if (strArrH0.length != 2) {
                throw new k("frameRateMultiplier doesn't have 2 parts");
            }
            f = Integer.parseInt(strArrH0[0]) / Integer.parseInt(strArrH0[1]);
        } else {
            f = 1.0f;
        }
        b bVar = DEFAULT_FRAME_AND_TICK_RATE;
        int i11 = bVar.subFrameRate;
        String attributeValue3 = xmlPullParser.getAttributeValue(TTP, "subFrameRate");
        if (attributeValue3 != null) {
            i11 = Integer.parseInt(attributeValue3);
        }
        int i12 = bVar.tickRate;
        String attributeValue4 = xmlPullParser.getAttributeValue(TTP, "tickRate");
        if (attributeValue4 != null) {
            i12 = Integer.parseInt(attributeValue4);
        }
        return new b(i10 * f, i11, i12);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:67:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:6:0x0039  */
    private static d F(XmlPullParser xmlPullParser, @Nullable d dVar, Map<String, e> map, b bVar) throws k {
        long j6;
        long j10;
        int attributeCount = xmlPullParser.getAttributeCount();
        g gVarI = I(xmlPullParser, null);
        String[] strArr = null;
        String strSubstring = null;
        String str = "";
        long jK = -9223372036854775807L;
        long jK2 = -9223372036854775807L;
        long jK3 = -9223372036854775807L;
        for (int i10 = 0; i10 < attributeCount; i10++) {
            String attributeName = xmlPullParser.getAttributeName(i10);
            String attributeValue = xmlPullParser.getAttributeValue(i10);
            attributeName.hashCode();
            switch (attributeName) {
                case "region":
                    if (map.containsKey(attributeValue)) {
                        str = attributeValue;
                        continue;
                    }
                    break;
                case "dur":
                    jK3 = K(attributeValue, bVar);
                    break;
                case "end":
                    jK2 = K(attributeValue, bVar);
                    break;
                case "begin":
                    jK = K(attributeValue, bVar);
                    break;
                case "style":
                    String[] strArrJ = J(attributeValue);
                    if (strArrJ.length > 0) {
                        strArr = strArrJ;
                        break;
                    }
                    break;
                case "backgroundImage":
                    if (attributeValue.startsWith("#")) {
                        strSubstring = attributeValue.substring(1);
                        break;
                    }
                    break;
            }
        }
        if (dVar != null) {
            long j11 = dVar.startTimeUs;
            j6 = -9223372036854775807L;
            if (j11 != -9223372036854775807L) {
                if (jK != -9223372036854775807L) {
                    jK += j11;
                }
                if (jK2 != -9223372036854775807L) {
                    jK2 += j11;
                }
            }
        } else {
            j6 = -9223372036854775807L;
        }
        long j12 = jK;
        if (jK2 != j6) {
            j10 = jK2;
        } else if (jK3 != j6) {
            j10 = j12 + jK3;
        } else if (dVar != null) {
            long j13 = dVar.endTimeUs;
            if (j13 != j6) {
                j10 = j13;
            } else {
                j10 = jK2;
            }
        } else {
            j10 = jK2;
        }
        return d.c(xmlPullParser.getName(), j12, j10, gVarI, strArr, str, strSubstring, dVar);
    }

    /* JADX WARN: Code duplicated, block: B:44:0x0169  */
    /* JADX WARN: Code duplicated, block: B:65:0x01b8  */
    @Nullable
    private static e G(XmlPullParser xmlPullParser, a aVar, @Nullable C0182c c0182c) {
        float f;
        float f6;
        float f7;
        float f10;
        int i10;
        float f11;
        int i11;
        String strA = p0.a(xmlPullParser, "id");
        if (strA == null) {
            return null;
        }
        String strA2 = p0.a(xmlPullParser, "origin");
        if (strA2 == null) {
            t.i(TAG, "Ignoring region without an origin");
            return null;
        }
        Pattern pattern = PERCENTAGE_COORDINATES;
        Matcher matcher = pattern.matcher(strA2);
        Pattern pattern2 = PIXEL_COORDINATES;
        Matcher matcher2 = pattern2.matcher(strA2);
        if (matcher.matches()) {
            try {
                float f12 = Float.parseFloat((String) com.google.android.exoplayer2.util.a.e(matcher.group(1))) / 100.0f;
                f = Float.parseFloat((String) com.google.android.exoplayer2.util.a.e(matcher.group(2))) / 100.0f;
                f6 = f12;
            } catch (NumberFormatException unused) {
                t.i(TAG, "Ignoring region with malformed origin: " + strA2);
                return null;
            }
        } else {
            if (!matcher2.matches()) {
                t.i(TAG, "Ignoring region with unsupported origin: " + strA2);
                return null;
            }
            if (c0182c == null) {
                t.i(TAG, "Ignoring region with missing tts:extent: " + strA2);
                return null;
            }
            try {
                int i12 = Integer.parseInt((String) com.google.android.exoplayer2.util.a.e(matcher2.group(1)));
                int i13 = Integer.parseInt((String) com.google.android.exoplayer2.util.a.e(matcher2.group(2)));
                f6 = i12 / c0182c.width;
                f = i13 / c0182c.height;
            } catch (NumberFormatException unused2) {
                t.i(TAG, "Ignoring region with malformed origin: " + strA2);
                return null;
            }
        }
        String strA3 = p0.a(xmlPullParser, "extent");
        if (strA3 == null) {
            t.i(TAG, "Ignoring region without an extent");
            return null;
        }
        Matcher matcher3 = pattern.matcher(strA3);
        Matcher matcher4 = pattern2.matcher(strA3);
        if (matcher3.matches()) {
            try {
                f7 = Float.parseFloat((String) com.google.android.exoplayer2.util.a.e(matcher3.group(1))) / 100.0f;
                f10 = Float.parseFloat((String) com.google.android.exoplayer2.util.a.e(matcher3.group(2))) / 100.0f;
            } catch (NumberFormatException unused3) {
                t.i(TAG, "Ignoring region with malformed extent: " + strA2);
                return null;
            }
        } else {
            if (!matcher4.matches()) {
                t.i(TAG, "Ignoring region with unsupported extent: " + strA2);
                return null;
            }
            if (c0182c == null) {
                t.i(TAG, "Ignoring region with missing tts:extent: " + strA2);
                return null;
            }
            try {
                int i14 = Integer.parseInt((String) com.google.android.exoplayer2.util.a.e(matcher4.group(1)));
                int i15 = Integer.parseInt((String) com.google.android.exoplayer2.util.a.e(matcher4.group(2)));
                f7 = i14 / c0182c.width;
                f10 = i15 / c0182c.height;
            } catch (NumberFormatException unused4) {
                t.i(TAG, "Ignoring region with malformed extent: " + strA2);
                return null;
            }
        }
        String strA4 = p0.a(xmlPullParser, "displayAlign");
        if (strA4 != null) {
            String strE = com.google.common.base.c.e(strA4);
            strE.hashCode();
            if (strE.equals("center")) {
                f11 = f + (f10 / 2.0f);
                i10 = 1;
            } else if (strE.equals("after")) {
                f11 = f + f10;
                i10 = 2;
            } else {
                i10 = 0;
                f11 = f;
            }
        } else {
            i10 = 0;
            f11 = f;
        }
        float f13 = 1.0f / aVar.rows;
        String strA5 = p0.a(xmlPullParser, "writingMode");
        if (strA5 != null) {
            String strE2 = com.google.common.base.c.e(strA5);
            strE2.hashCode();
            switch (strE2) {
                case "tb":
                case "tblr":
                    i11 = 2;
                    break;
                case "tbrl":
                    i11 = 1;
                    break;
                default:
                    i11 = Integer.MIN_VALUE;
                    break;
            }
        } else {
            i11 = Integer.MIN_VALUE;
        }
        return new e(strA, f6, f11, 0, i10, f7, f10, 1, f13, i11);
    }

    private static float H(String str) {
        Matcher matcher = SIGNED_PERCENTAGE.matcher(str);
        if (!matcher.matches()) {
            t.i(TAG, "Invalid value for shear: " + str);
            return Float.MAX_VALUE;
        }
        try {
            return Math.min(100.0f, Math.max(-100.0f, Float.parseFloat((String) com.google.android.exoplayer2.util.a.e(matcher.group(1)))));
        } catch (NumberFormatException e) {
            t.j(TAG, "Failed to parse shear: " + str, e);
            return Float.MAX_VALUE;
        }
    }

    private static long K(String str, b bVar) throws k {
        double d;
        double d2;
        Matcher matcher = CLOCK_TIME.matcher(str);
        if (matcher.matches()) {
            double d6 = (Long.parseLong((String) com.google.android.exoplayer2.util.a.e(matcher.group(1))) * 3600) + (Long.parseLong((String) com.google.android.exoplayer2.util.a.e(matcher.group(2))) * 60) + Long.parseLong((String) com.google.android.exoplayer2.util.a.e(matcher.group(3)));
            String strGroup = matcher.group(4);
            double d7 = com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE;
            double d10 = d6 + (strGroup != null ? Double.parseDouble(strGroup) : 0.0d);
            String strGroup2 = matcher.group(5);
            double d11 = d10 + (strGroup2 != null ? Long.parseLong(strGroup2) / bVar.effectiveFrameRate : 0.0d);
            String strGroup3 = matcher.group(6);
            if (strGroup3 != null) {
                d7 = (Long.parseLong(strGroup3) / ((double) bVar.subFrameRate)) / ((double) bVar.effectiveFrameRate);
            }
            return (long) ((d11 + d7) * 1000000.0d);
        }
        Matcher matcher2 = OFFSET_TIME.matcher(str);
        if (!matcher2.matches()) {
            throw new k("Malformed time expression: " + str);
        }
        double d12 = Double.parseDouble((String) com.google.android.exoplayer2.util.a.e(matcher2.group(1)));
        String str2 = (String) com.google.android.exoplayer2.util.a.e(matcher2.group(2));
        str2.hashCode();
        switch (str2) {
            case "f":
                d = bVar.effectiveFrameRate;
                d12 /= d;
                return (long) (d12 * 1000000.0d);
            case "h":
                d2 = 3600.0d;
                break;
            case "m":
                d2 = 60.0d;
                break;
            case "t":
                d = bVar.tickRate;
                d12 /= d;
                return (long) (d12 * 1000000.0d);
            case "ms":
                d = 1000.0d;
                d12 /= d;
                return (long) (d12 * 1000000.0d);
            default:
                return (long) (d12 * 1000000.0d);
        }
        d12 *= d2;
        return (long) (d12 * 1000000.0d);
    }

    @Nullable
    private static C0182c L(XmlPullParser xmlPullParser) {
        String strA = p0.a(xmlPullParser, "extent");
        if (strA == null) {
            return null;
        }
        Matcher matcher = PIXEL_COORDINATES.matcher(strA);
        if (!matcher.matches()) {
            t.i(TAG, "Ignoring non-pixel tts extent: " + strA);
            return null;
        }
        try {
            return new C0182c(Integer.parseInt((String) com.google.android.exoplayer2.util.a.e(matcher.group(1))), Integer.parseInt((String) com.google.android.exoplayer2.util.a.e(matcher.group(2))));
        } catch (NumberFormatException unused) {
            t.i(TAG, "Ignoring malformed tts extent: " + strA);
            return null;
        }
    }

    private static g x(@Nullable g gVar) {
        return gVar == null ? new g() : gVar;
    }

    private static boolean y(String str) {
        return str.equals("tt") || str.equals("head") || str.equals("body") || str.equals("div") || str.equals("p") || str.equals("span") || str.equals("br") || str.equals("style") || str.equals("styling") || str.equals("layout") || str.equals("region") || str.equals("metadata") || str.equals("image") || str.equals("data") || str.equals("information");
    }

    @Override // com.google.android.exoplayer2.text.h
    protected i v(byte[] bArr, int i10, boolean z6) throws k {
        b bVar;
        try {
            XmlPullParser xmlPullParserNewPullParser = this.xmlParserFactory.newPullParser();
            HashMap map = new HashMap();
            HashMap map2 = new HashMap();
            HashMap map3 = new HashMap();
            map2.put("", new e(""));
            C0182c c0182cL = null;
            xmlPullParserNewPullParser.setInput(new ByteArrayInputStream(bArr, 0, i10), null);
            ArrayDeque arrayDeque = new ArrayDeque();
            b bVarC = DEFAULT_FRAME_AND_TICK_RATE;
            a aVarA = DEFAULT_CELL_RESOLUTION;
            int i11 = 0;
            h hVar = null;
            for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.getEventType()) {
                d dVar = (d) arrayDeque.peek();
                if (i11 == 0) {
                    String name = xmlPullParserNewPullParser.getName();
                    if (eventType == 2) {
                        if ("tt".equals(name)) {
                            bVarC = C(xmlPullParserNewPullParser);
                            aVarA = A(xmlPullParserNewPullParser, DEFAULT_CELL_RESOLUTION);
                            c0182cL = L(xmlPullParserNewPullParser);
                        }
                        C0182c c0182c = c0182cL;
                        b bVar2 = bVarC;
                        a aVar = aVarA;
                        if (y(name)) {
                            if ("head".equals(name)) {
                                bVar = bVar2;
                                D(xmlPullParserNewPullParser, map, aVar, c0182c, map2, map3);
                            } else {
                                bVar = bVar2;
                                try {
                                    d dVarF = F(xmlPullParserNewPullParser, dVar, map2, bVar);
                                    arrayDeque.push(dVarF);
                                    if (dVar != null) {
                                        dVar.a(dVarF);
                                    }
                                } catch (k e) {
                                    t.j(TAG, "Suppressing parser error", e);
                                    i11++;
                                }
                            }
                            bVarC = bVar;
                        } else {
                            t.f(TAG, "Ignoring unsupported tag: " + xmlPullParserNewPullParser.getName());
                            i11++;
                            bVarC = bVar2;
                        }
                        c0182cL = c0182c;
                        aVarA = aVar;
                    } else if (eventType == 4) {
                        ((d) com.google.android.exoplayer2.util.a.e(dVar)).a(d.d(xmlPullParserNewPullParser.getText()));
                    } else if (eventType == 3) {
                        if (xmlPullParserNewPullParser.getName().equals("tt")) {
                            hVar = new h((d) com.google.android.exoplayer2.util.a.e((d) arrayDeque.peek()), map, map2, map3);
                        }
                        arrayDeque.pop();
                    }
                } else if (eventType == 2) {
                    i11++;
                } else if (eventType == 3) {
                    i11--;
                }
                xmlPullParserNewPullParser.next();
            }
            if (hVar != null) {
                return hVar;
            }
            throw new k("No TTML subtitles found");
        } catch (IOException e2) {
            throw new IllegalStateException("Unexpected error when reading input.", e2);
        } catch (XmlPullParserException e6) {
            throw new k("Unable to decode source", e6);
        }
    }

    private static Map<String, g> D(XmlPullParser xmlPullParser, Map<String, g> map, a aVar, @Nullable C0182c c0182c, Map<String, e> map2, Map<String, String> map3) throws XmlPullParserException, IOException {
        do {
            xmlPullParser.next();
            if (p0.e(xmlPullParser, "style")) {
                String strA = p0.a(xmlPullParser, "style");
                g gVarI = I(xmlPullParser, new g());
                if (strA != null) {
                    for (String str : J(strA)) {
                        gVarI.a(map.get(str));
                    }
                }
                String strG = gVarI.g();
                if (strG != null) {
                    map.put(strG, gVarI);
                }
            } else if (p0.e(xmlPullParser, "region")) {
                e eVarG = G(xmlPullParser, aVar, c0182c);
                if (eVarG != null) {
                    map2.put(eVarG.id, eVarG);
                }
            } else if (p0.e(xmlPullParser, "metadata")) {
                E(xmlPullParser, map3);
            }
        } while (!p0.c(xmlPullParser, "head"));
        return map;
    }

    private static void E(XmlPullParser xmlPullParser, Map<String, String> map) throws XmlPullParserException, IOException {
        String strA;
        do {
            xmlPullParser.next();
            if (p0.e(xmlPullParser, "image") && (strA = p0.a(xmlPullParser, "id")) != null) {
                map.put(strA, xmlPullParser.nextText());
            }
        } while (!p0.c(xmlPullParser, "metadata"));
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static g I(XmlPullParser xmlPullParser, g gVar) {
        byte b7;
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            String attributeValue = xmlPullParser.getAttributeValue(i10);
            String attributeName = xmlPullParser.getAttributeName(i10);
            attributeName.hashCode();
            switch (attributeName.hashCode()) {
                case -1550943582:
                    b7 = !attributeName.equals("fontStyle") ? (byte) -1 : (byte) 0;
                    break;
                case -1224696685:
                    b7 = !attributeName.equals("fontFamily") ? (byte) -1 : (byte) 1;
                    break;
                case -1065511464:
                    b7 = !attributeName.equals("textAlign") ? (byte) -1 : (byte) 2;
                    break;
                case -879295043:
                    b7 = !attributeName.equals("textDecoration") ? (byte) -1 : (byte) 3;
                    break;
                case -734428249:
                    b7 = !attributeName.equals("fontWeight") ? (byte) -1 : (byte) 4;
                    break;
                case 3355:
                    b7 = !attributeName.equals("id") ? (byte) -1 : (byte) 5;
                    break;
                case 3511770:
                    b7 = !attributeName.equals("ruby") ? (byte) -1 : (byte) 6;
                    break;
                case 94842723:
                    b7 = !attributeName.equals("color") ? (byte) -1 : (byte) 7;
                    break;
                case 109403361:
                    b7 = !attributeName.equals("shear") ? (byte) -1 : (byte) 8;
                    break;
                case 110138194:
                    b7 = !attributeName.equals("textCombine") ? (byte) -1 : (byte) 9;
                    break;
                case 365601008:
                    b7 = !attributeName.equals("fontSize") ? (byte) -1 : (byte) 10;
                    break;
                case 921125321:
                    b7 = !attributeName.equals("textEmphasis") ? (byte) -1 : com.google.common.base.c.VT;
                    break;
                case 1115953443:
                    b7 = !attributeName.equals("rubyPosition") ? (byte) -1 : com.google.common.base.c.FF;
                    break;
                case 1287124693:
                    b7 = !attributeName.equals("backgroundColor") ? (byte) -1 : com.google.common.base.c.CR;
                    break;
                case 1754920356:
                    b7 = !attributeName.equals("multiRowAlign") ? (byte) -1 : com.google.common.base.c.SO;
                    break;
                default:
                    b7 = -1;
                    break;
            }
            switch (b7) {
                case 0:
                    gVar = x(gVar).B("italic".equalsIgnoreCase(attributeValue));
                    break;
                case 1:
                    gVar = x(gVar).x(attributeValue);
                    break;
                case 2:
                    gVar = x(gVar).H(z(attributeValue));
                    break;
                case 3:
                    String strE = com.google.common.base.c.e(attributeValue);
                    strE.hashCode();
                    switch (strE) {
                        case "nounderline":
                            gVar = x(gVar).K(false);
                            break;
                        case "underline":
                            gVar = x(gVar).K(true);
                            break;
                        case "nolinethrough":
                            gVar = x(gVar).C(false);
                            break;
                        case "linethrough":
                            gVar = x(gVar).C(true);
                            break;
                    }
                    break;
                case 4:
                    gVar = x(gVar).v("bold".equalsIgnoreCase(attributeValue));
                    break;
                case 5:
                    if ("style".equals(xmlPullParser.getName())) {
                        gVar = x(gVar).A(attributeValue);
                    }
                    break;
                case 6:
                    String strE2 = com.google.common.base.c.e(attributeValue);
                    strE2.hashCode();
                    switch (strE2) {
                        case "baseContainer":
                        case "base":
                            gVar = x(gVar).F(2);
                            break;
                        case "container":
                            gVar = x(gVar).F(1);
                            break;
                        case "delimiter":
                            gVar = x(gVar).F(4);
                            break;
                        case "textContainer":
                        case "text":
                            gVar = x(gVar).F(3);
                            break;
                    }
                    break;
                case 7:
                    gVar = x(gVar);
                    try {
                        gVar.w(com.google.android.exoplayer2.util.f.c(attributeValue));
                    } catch (IllegalArgumentException unused) {
                        t.i(TAG, "Failed parsing color value: " + attributeValue);
                    }
                    break;
                case 8:
                    gVar = x(gVar).G(H(attributeValue));
                    break;
                case 9:
                    String strE3 = com.google.common.base.c.e(attributeValue);
                    strE3.hashCode();
                    if (!strE3.equals("all")) {
                        if (strE3.equals("none")) {
                            gVar = x(gVar).I(false);
                        }
                    } else {
                        gVar = x(gVar).I(true);
                    }
                    break;
                case 10:
                    try {
                        gVar = x(gVar);
                        B(attributeValue, gVar);
                    } catch (k unused2) {
                        t.i(TAG, "Failed parsing fontSize value: " + attributeValue);
                    }
                    break;
                case 11:
                    gVar = x(gVar).J(com.google.android.exoplayer2.text.ttml.b.a(attributeValue));
                    break;
                case 12:
                    String strE4 = com.google.common.base.c.e(attributeValue);
                    strE4.hashCode();
                    if (!strE4.equals("before")) {
                        if (strE4.equals("after")) {
                            gVar = x(gVar).E(2);
                        }
                    } else {
                        gVar = x(gVar).E(1);
                    }
                    break;
                case 13:
                    gVar = x(gVar);
                    try {
                        gVar.u(com.google.android.exoplayer2.util.f.c(attributeValue));
                    } catch (IllegalArgumentException unused3) {
                        t.i(TAG, "Failed parsing background value: " + attributeValue);
                    }
                    break;
                case 14:
                    gVar = x(gVar).D(z(attributeValue));
                    break;
            }
        }
        return gVar;
    }

    private static String[] J(String str) {
        String strTrim = str.trim();
        if (strTrim.isEmpty()) {
            return new String[0];
        }
        return o0.H0(strTrim, "\\s+");
    }

    @Nullable
    private static Layout.Alignment z(String str) {
        String strE = com.google.common.base.c.e(str);
        strE.hashCode();
        switch (strE) {
            case "center":
                return Layout.Alignment.ALIGN_CENTER;
            case "end":
            case "right":
                return Layout.Alignment.ALIGN_OPPOSITE;
            case "left":
            case "start":
                return Layout.Alignment.ALIGN_NORMAL;
            default:
                return null;
        }
    }
}
