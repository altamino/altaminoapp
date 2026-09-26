package androidx.media3.extractor.text.ttml;

import android.text.Layout;
import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ColorParser;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.common.util.XmlPullParserUtil;
import androidx.media3.extractor.text.SimpleSubtitleDecoder;
import androidx.media3.extractor.text.Subtitle;
import androidx.media3.extractor.text.SubtitleDecoderException;
import com.google.common.base.c;
import com.google.firebase.remoteconfig.a;
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

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public final class TtmlDecoder extends SimpleSubtitleDecoder {
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
    private static final FrameAndTickRate DEFAULT_FRAME_AND_TICK_RATE = new FrameAndTickRate(30.0f, 1, 1);
    private static final CellResolution DEFAULT_CELL_RESOLUTION = new CellResolution(32, 15);

    private static final class CellResolution {
        final int columns;
        final int rows;

        CellResolution(int i10, int i11) {
            this.columns = i10;
            this.rows = i11;
        }
    }

    private static final class FrameAndTickRate {
        final float effectiveFrameRate;
        final int subFrameRate;
        final int tickRate;

        FrameAndTickRate(float f, int i10, int i11) {
            this.effectiveFrameRate = f;
            this.subFrameRate = i10;
            this.tickRate = i11;
        }
    }

    private static final class TtsExtent {
        final int height;
        final int width;

        TtsExtent(int i10, int i11) {
            this.width = i10;
            this.height = i11;
        }
    }

    public TtmlDecoder() {
        super(TAG);
        try {
            XmlPullParserFactory xmlPullParserFactoryNewInstance = XmlPullParserFactory.newInstance();
            this.xmlParserFactory = xmlPullParserFactoryNewInstance;
            xmlPullParserFactoryNewInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e);
        }
    }

    private static CellResolution A(XmlPullParser xmlPullParser, CellResolution cellResolution) throws SubtitleDecoderException {
        String attributeValue = xmlPullParser.getAttributeValue(TTP, "cellResolution");
        if (attributeValue == null) {
            return cellResolution;
        }
        Matcher matcher = CELL_RESOLUTION.matcher(attributeValue);
        if (!matcher.matches()) {
            Log.i(TAG, "Ignoring malformed cell resolution: " + attributeValue);
            return cellResolution;
        }
        try {
            int i10 = Integer.parseInt((String) Assertions.e(matcher.group(1)));
            int i11 = Integer.parseInt((String) Assertions.e(matcher.group(2)));
            if (i10 != 0 && i11 != 0) {
                return new CellResolution(i10, i11);
            }
            throw new SubtitleDecoderException("Invalid cell resolution " + i10 + " " + i11);
        } catch (NumberFormatException unused) {
            Log.i(TAG, "Ignoring malformed cell resolution: " + attributeValue);
            return cellResolution;
        }
    }

    private static void B(String str, TtmlStyle ttmlStyle) throws SubtitleDecoderException {
        Matcher matcher;
        String[] strArrD1 = Util.d1(str, "\\s+");
        if (strArrD1.length == 1) {
            matcher = FONT_SIZE.matcher(str);
        } else {
            if (strArrD1.length != 2) {
                throw new SubtitleDecoderException("Invalid number of entries for fontSize: " + strArrD1.length + ".");
            }
            matcher = FONT_SIZE.matcher(strArrD1[1]);
            Log.i(TAG, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
        }
        if (!matcher.matches()) {
            throw new SubtitleDecoderException("Invalid expression for fontSize: '" + str + "'.");
        }
        String str2 = (String) Assertions.e(matcher.group(3));
        str2.hashCode();
        switch (str2) {
            case "%":
                ttmlStyle.z(3);
                break;
            case "em":
                ttmlStyle.z(2);
                break;
            case "px":
                ttmlStyle.z(1);
                break;
            default:
                throw new SubtitleDecoderException("Invalid unit for fontSize: '" + str2 + "'.");
        }
        ttmlStyle.y(Float.parseFloat((String) Assertions.e(matcher.group(1))));
    }

    private static FrameAndTickRate C(XmlPullParser xmlPullParser) throws SubtitleDecoderException {
        float f;
        String attributeValue = xmlPullParser.getAttributeValue(TTP, "frameRate");
        int i10 = attributeValue != null ? Integer.parseInt(attributeValue) : 30;
        String attributeValue2 = xmlPullParser.getAttributeValue(TTP, "frameRateMultiplier");
        if (attributeValue2 != null) {
            String[] strArrD1 = Util.d1(attributeValue2, " ");
            if (strArrD1.length != 2) {
                throw new SubtitleDecoderException("frameRateMultiplier doesn't have 2 parts");
            }
            f = Integer.parseInt(strArrD1[0]) / Integer.parseInt(strArrD1[1]);
        } else {
            f = 1.0f;
        }
        FrameAndTickRate frameAndTickRate = DEFAULT_FRAME_AND_TICK_RATE;
        int i11 = frameAndTickRate.subFrameRate;
        String attributeValue3 = xmlPullParser.getAttributeValue(TTP, "subFrameRate");
        if (attributeValue3 != null) {
            i11 = Integer.parseInt(attributeValue3);
        }
        int i12 = frameAndTickRate.tickRate;
        String attributeValue4 = xmlPullParser.getAttributeValue(TTP, "tickRate");
        if (attributeValue4 != null) {
            i12 = Integer.parseInt(attributeValue4);
        }
        return new FrameAndTickRate(i10 * f, i11, i12);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:67:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:6:0x0039  */
    private static TtmlNode F(XmlPullParser xmlPullParser, @Nullable TtmlNode ttmlNode, Map<String, TtmlRegion> map, FrameAndTickRate frameAndTickRate) throws SubtitleDecoderException {
        long j6;
        long j10;
        int attributeCount = xmlPullParser.getAttributeCount();
        TtmlStyle ttmlStyleI = I(xmlPullParser, null);
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
                    jK3 = K(attributeValue, frameAndTickRate);
                    break;
                case "end":
                    jK2 = K(attributeValue, frameAndTickRate);
                    break;
                case "begin":
                    jK = K(attributeValue, frameAndTickRate);
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
        if (ttmlNode != null) {
            long j11 = ttmlNode.startTimeUs;
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
        } else if (ttmlNode != null) {
            long j13 = ttmlNode.endTimeUs;
            if (j13 != j6) {
                j10 = j13;
            } else {
                j10 = jK2;
            }
        } else {
            j10 = jK2;
        }
        return TtmlNode.c(xmlPullParser.getName(), j12, j10, ttmlStyleI, strArr, str, strSubstring, ttmlNode);
    }

    /* JADX WARN: Code duplicated, block: B:44:0x016a  */
    /* JADX WARN: Code duplicated, block: B:65:0x01b9  */
    @Nullable
    private static TtmlRegion G(XmlPullParser xmlPullParser, CellResolution cellResolution, @Nullable TtsExtent ttsExtent) {
        float f;
        float f6;
        float f7;
        float f10;
        int i10;
        float f11;
        int i11;
        String strA = XmlPullParserUtil.a(xmlPullParser, "id");
        if (strA == null) {
            return null;
        }
        String strA2 = XmlPullParserUtil.a(xmlPullParser, "origin");
        if (strA2 == null) {
            Log.i(TAG, "Ignoring region without an origin");
            return null;
        }
        Pattern pattern = PERCENTAGE_COORDINATES;
        Matcher matcher = pattern.matcher(strA2);
        Pattern pattern2 = PIXEL_COORDINATES;
        Matcher matcher2 = pattern2.matcher(strA2);
        if (matcher.matches()) {
            try {
                float f12 = Float.parseFloat((String) Assertions.e(matcher.group(1))) / 100.0f;
                f = Float.parseFloat((String) Assertions.e(matcher.group(2))) / 100.0f;
                f6 = f12;
            } catch (NumberFormatException unused) {
                Log.i(TAG, "Ignoring region with malformed origin: " + strA2);
                return null;
            }
        } else {
            if (!matcher2.matches()) {
                Log.i(TAG, "Ignoring region with unsupported origin: " + strA2);
                return null;
            }
            if (ttsExtent == null) {
                Log.i(TAG, "Ignoring region with missing tts:extent: " + strA2);
                return null;
            }
            try {
                int i12 = Integer.parseInt((String) Assertions.e(matcher2.group(1)));
                int i13 = Integer.parseInt((String) Assertions.e(matcher2.group(2)));
                f6 = i12 / ttsExtent.width;
                f = i13 / ttsExtent.height;
            } catch (NumberFormatException unused2) {
                Log.i(TAG, "Ignoring region with malformed origin: " + strA2);
                return null;
            }
        }
        String strA3 = XmlPullParserUtil.a(xmlPullParser, "extent");
        if (strA3 == null) {
            Log.i(TAG, "Ignoring region without an extent");
            return null;
        }
        Matcher matcher3 = pattern.matcher(strA3);
        Matcher matcher4 = pattern2.matcher(strA3);
        if (matcher3.matches()) {
            try {
                f7 = Float.parseFloat((String) Assertions.e(matcher3.group(1))) / 100.0f;
                f10 = Float.parseFloat((String) Assertions.e(matcher3.group(2))) / 100.0f;
            } catch (NumberFormatException unused3) {
                Log.i(TAG, "Ignoring region with malformed extent: " + strA2);
                return null;
            }
        } else {
            if (!matcher4.matches()) {
                Log.i(TAG, "Ignoring region with unsupported extent: " + strA2);
                return null;
            }
            if (ttsExtent == null) {
                Log.i(TAG, "Ignoring region with missing tts:extent: " + strA2);
                return null;
            }
            try {
                int i14 = Integer.parseInt((String) Assertions.e(matcher4.group(1)));
                int i15 = Integer.parseInt((String) Assertions.e(matcher4.group(2)));
                f7 = i14 / ttsExtent.width;
                f10 = i15 / ttsExtent.height;
            } catch (NumberFormatException unused4) {
                Log.i(TAG, "Ignoring region with malformed extent: " + strA2);
                return null;
            }
        }
        String strA4 = XmlPullParserUtil.a(xmlPullParser, "displayAlign");
        if (strA4 != null) {
            String strE = c.e(strA4);
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
        float f13 = 1.0f / cellResolution.rows;
        String strA5 = XmlPullParserUtil.a(xmlPullParser, "writingMode");
        if (strA5 != null) {
            String strE2 = c.e(strA5);
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
        return new TtmlRegion(strA, f6, f11, 0, i10, f7, f10, 1, f13, i11);
    }

    private static float H(String str) {
        Matcher matcher = SIGNED_PERCENTAGE.matcher(str);
        if (!matcher.matches()) {
            Log.i(TAG, "Invalid value for shear: " + str);
            return Float.MAX_VALUE;
        }
        try {
            return Math.min(100.0f, Math.max(-100.0f, Float.parseFloat((String) Assertions.e(matcher.group(1)))));
        } catch (NumberFormatException e) {
            Log.j(TAG, "Failed to parse shear: " + str, e);
            return Float.MAX_VALUE;
        }
    }

    private static long K(String str, FrameAndTickRate frameAndTickRate) throws SubtitleDecoderException {
        double d;
        double d2;
        Matcher matcher = CLOCK_TIME.matcher(str);
        if (matcher.matches()) {
            double d6 = (Long.parseLong((String) Assertions.e(matcher.group(1))) * 3600) + (Long.parseLong((String) Assertions.e(matcher.group(2))) * 60) + Long.parseLong((String) Assertions.e(matcher.group(3)));
            String strGroup = matcher.group(4);
            double d7 = a.DEFAULT_VALUE_FOR_DOUBLE;
            double d10 = d6 + (strGroup != null ? Double.parseDouble(strGroup) : 0.0d);
            String strGroup2 = matcher.group(5);
            double d11 = d10 + (strGroup2 != null ? Long.parseLong(strGroup2) / frameAndTickRate.effectiveFrameRate : 0.0d);
            String strGroup3 = matcher.group(6);
            if (strGroup3 != null) {
                d7 = (Long.parseLong(strGroup3) / ((double) frameAndTickRate.subFrameRate)) / ((double) frameAndTickRate.effectiveFrameRate);
            }
            return (long) ((d11 + d7) * 1000000.0d);
        }
        Matcher matcher2 = OFFSET_TIME.matcher(str);
        if (!matcher2.matches()) {
            throw new SubtitleDecoderException("Malformed time expression: " + str);
        }
        double d12 = Double.parseDouble((String) Assertions.e(matcher2.group(1)));
        String str2 = (String) Assertions.e(matcher2.group(2));
        str2.hashCode();
        switch (str2) {
            case "f":
                d = frameAndTickRate.effectiveFrameRate;
                d12 /= d;
                return (long) (d12 * 1000000.0d);
            case "h":
                d2 = 3600.0d;
                break;
            case "m":
                d2 = 60.0d;
                break;
            case "t":
                d = frameAndTickRate.tickRate;
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
    private static TtsExtent L(XmlPullParser xmlPullParser) {
        String strA = XmlPullParserUtil.a(xmlPullParser, "extent");
        if (strA == null) {
            return null;
        }
        Matcher matcher = PIXEL_COORDINATES.matcher(strA);
        if (!matcher.matches()) {
            Log.i(TAG, "Ignoring non-pixel tts extent: " + strA);
            return null;
        }
        try {
            return new TtsExtent(Integer.parseInt((String) Assertions.e(matcher.group(1))), Integer.parseInt((String) Assertions.e(matcher.group(2))));
        } catch (NumberFormatException unused) {
            Log.i(TAG, "Ignoring malformed tts extent: " + strA);
            return null;
        }
    }

    private static TtmlStyle x(@Nullable TtmlStyle ttmlStyle) {
        return ttmlStyle == null ? new TtmlStyle() : ttmlStyle;
    }

    @Override // androidx.media3.extractor.text.SimpleSubtitleDecoder
    protected Subtitle v(byte[] bArr, int i10, boolean z6) throws SubtitleDecoderException {
        FrameAndTickRate frameAndTickRate;
        try {
            XmlPullParser xmlPullParserNewPullParser = this.xmlParserFactory.newPullParser();
            HashMap map = new HashMap();
            HashMap map2 = new HashMap();
            HashMap map3 = new HashMap();
            map2.put("", new TtmlRegion(""));
            TtsExtent ttsExtentL = null;
            xmlPullParserNewPullParser.setInput(new ByteArrayInputStream(bArr, 0, i10), null);
            ArrayDeque arrayDeque = new ArrayDeque();
            FrameAndTickRate frameAndTickRateC = DEFAULT_FRAME_AND_TICK_RATE;
            CellResolution cellResolutionA = DEFAULT_CELL_RESOLUTION;
            int i11 = 0;
            TtmlSubtitle ttmlSubtitle = null;
            for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.getEventType()) {
                TtmlNode ttmlNode = (TtmlNode) arrayDeque.peek();
                if (i11 == 0) {
                    String name = xmlPullParserNewPullParser.getName();
                    if (eventType == 2) {
                        if ("tt".equals(name)) {
                            frameAndTickRateC = C(xmlPullParserNewPullParser);
                            cellResolutionA = A(xmlPullParserNewPullParser, DEFAULT_CELL_RESOLUTION);
                            ttsExtentL = L(xmlPullParserNewPullParser);
                        }
                        TtsExtent ttsExtent = ttsExtentL;
                        FrameAndTickRate frameAndTickRate2 = frameAndTickRateC;
                        CellResolution cellResolution = cellResolutionA;
                        if (y(name)) {
                            if ("head".equals(name)) {
                                frameAndTickRate = frameAndTickRate2;
                                D(xmlPullParserNewPullParser, map, cellResolution, ttsExtent, map2, map3);
                            } else {
                                frameAndTickRate = frameAndTickRate2;
                                try {
                                    TtmlNode ttmlNodeF = F(xmlPullParserNewPullParser, ttmlNode, map2, frameAndTickRate);
                                    arrayDeque.push(ttmlNodeF);
                                    if (ttmlNode != null) {
                                        ttmlNode.a(ttmlNodeF);
                                    }
                                } catch (SubtitleDecoderException e) {
                                    Log.j(TAG, "Suppressing parser error", e);
                                    i11++;
                                }
                            }
                            frameAndTickRateC = frameAndTickRate;
                        } else {
                            Log.f(TAG, "Ignoring unsupported tag: " + xmlPullParserNewPullParser.getName());
                            i11++;
                            frameAndTickRateC = frameAndTickRate2;
                        }
                        ttsExtentL = ttsExtent;
                        cellResolutionA = cellResolution;
                    } else if (eventType == 4) {
                        ((TtmlNode) Assertions.e(ttmlNode)).a(TtmlNode.d(xmlPullParserNewPullParser.getText()));
                    } else if (eventType == 3) {
                        if (xmlPullParserNewPullParser.getName().equals("tt")) {
                            ttmlSubtitle = new TtmlSubtitle((TtmlNode) Assertions.e((TtmlNode) arrayDeque.peek()), map, map2, map3);
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
            if (ttmlSubtitle != null) {
                return ttmlSubtitle;
            }
            throw new SubtitleDecoderException("No TTML subtitles found");
        } catch (IOException e2) {
            throw new IllegalStateException("Unexpected error when reading input.", e2);
        } catch (XmlPullParserException e6) {
            throw new SubtitleDecoderException("Unable to decode source", e6);
        }
    }

    private static Map<String, TtmlStyle> D(XmlPullParser xmlPullParser, Map<String, TtmlStyle> map, CellResolution cellResolution, @Nullable TtsExtent ttsExtent, Map<String, TtmlRegion> map2, Map<String, String> map3) throws XmlPullParserException, IOException {
        do {
            xmlPullParser.next();
            if (XmlPullParserUtil.f(xmlPullParser, "style")) {
                String strA = XmlPullParserUtil.a(xmlPullParser, "style");
                TtmlStyle ttmlStyleI = I(xmlPullParser, new TtmlStyle());
                if (strA != null) {
                    for (String str : J(strA)) {
                        ttmlStyleI.a(map.get(str));
                    }
                }
                String strG = ttmlStyleI.g();
                if (strG != null) {
                    map.put(strG, ttmlStyleI);
                }
            } else if (XmlPullParserUtil.f(xmlPullParser, "region")) {
                TtmlRegion ttmlRegionG = G(xmlPullParser, cellResolution, ttsExtent);
                if (ttmlRegionG != null) {
                    map2.put(ttmlRegionG.id, ttmlRegionG);
                }
            } else if (XmlPullParserUtil.f(xmlPullParser, "metadata")) {
                E(xmlPullParser, map3);
            }
        } while (!XmlPullParserUtil.d(xmlPullParser, "head"));
        return map;
    }

    private static void E(XmlPullParser xmlPullParser, Map<String, String> map) throws XmlPullParserException, IOException {
        String strA;
        do {
            xmlPullParser.next();
            if (XmlPullParserUtil.f(xmlPullParser, "image") && (strA = XmlPullParserUtil.a(xmlPullParser, "id")) != null) {
                map.put(strA, xmlPullParser.nextText());
            }
        } while (!XmlPullParserUtil.d(xmlPullParser, "metadata"));
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static TtmlStyle I(XmlPullParser xmlPullParser, TtmlStyle ttmlStyle) {
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
                    b7 = !attributeName.equals("textEmphasis") ? (byte) -1 : c.VT;
                    break;
                case 1115953443:
                    b7 = !attributeName.equals("rubyPosition") ? (byte) -1 : c.FF;
                    break;
                case 1287124693:
                    b7 = !attributeName.equals("backgroundColor") ? (byte) -1 : c.CR;
                    break;
                case 1754920356:
                    b7 = !attributeName.equals("multiRowAlign") ? (byte) -1 : c.SO;
                    break;
                default:
                    b7 = -1;
                    break;
            }
            switch (b7) {
                case 0:
                    ttmlStyle = x(ttmlStyle).B("italic".equalsIgnoreCase(attributeValue));
                    break;
                case 1:
                    ttmlStyle = x(ttmlStyle).x(attributeValue);
                    break;
                case 2:
                    ttmlStyle = x(ttmlStyle).H(z(attributeValue));
                    break;
                case 3:
                    String strE = c.e(attributeValue);
                    strE.hashCode();
                    switch (strE) {
                        case "nounderline":
                            ttmlStyle = x(ttmlStyle).K(false);
                            break;
                        case "underline":
                            ttmlStyle = x(ttmlStyle).K(true);
                            break;
                        case "nolinethrough":
                            ttmlStyle = x(ttmlStyle).C(false);
                            break;
                        case "linethrough":
                            ttmlStyle = x(ttmlStyle).C(true);
                            break;
                    }
                    break;
                case 4:
                    ttmlStyle = x(ttmlStyle).v("bold".equalsIgnoreCase(attributeValue));
                    break;
                case 5:
                    if ("style".equals(xmlPullParser.getName())) {
                        ttmlStyle = x(ttmlStyle).A(attributeValue);
                    }
                    break;
                case 6:
                    String strE2 = c.e(attributeValue);
                    strE2.hashCode();
                    switch (strE2) {
                        case "baseContainer":
                        case "base":
                            ttmlStyle = x(ttmlStyle).F(2);
                            break;
                        case "container":
                            ttmlStyle = x(ttmlStyle).F(1);
                            break;
                        case "delimiter":
                            ttmlStyle = x(ttmlStyle).F(4);
                            break;
                        case "textContainer":
                        case "text":
                            ttmlStyle = x(ttmlStyle).F(3);
                            break;
                    }
                    break;
                case 7:
                    ttmlStyle = x(ttmlStyle);
                    try {
                        ttmlStyle.w(ColorParser.c(attributeValue));
                    } catch (IllegalArgumentException unused) {
                        Log.i(TAG, "Failed parsing color value: " + attributeValue);
                    }
                    break;
                case 8:
                    ttmlStyle = x(ttmlStyle).G(H(attributeValue));
                    break;
                case 9:
                    String strE3 = c.e(attributeValue);
                    strE3.hashCode();
                    if (!strE3.equals("all")) {
                        if (strE3.equals("none")) {
                            ttmlStyle = x(ttmlStyle).I(false);
                        }
                    } else {
                        ttmlStyle = x(ttmlStyle).I(true);
                    }
                    break;
                case 10:
                    try {
                        ttmlStyle = x(ttmlStyle);
                        B(attributeValue, ttmlStyle);
                    } catch (SubtitleDecoderException unused2) {
                        Log.i(TAG, "Failed parsing fontSize value: " + attributeValue);
                    }
                    break;
                case 11:
                    ttmlStyle = x(ttmlStyle).J(TextEmphasis.a(attributeValue));
                    break;
                case 12:
                    String strE4 = c.e(attributeValue);
                    strE4.hashCode();
                    if (!strE4.equals("before")) {
                        if (strE4.equals("after")) {
                            ttmlStyle = x(ttmlStyle).E(2);
                        }
                    } else {
                        ttmlStyle = x(ttmlStyle).E(1);
                    }
                    break;
                case 13:
                    ttmlStyle = x(ttmlStyle);
                    try {
                        ttmlStyle.u(ColorParser.c(attributeValue));
                    } catch (IllegalArgumentException unused3) {
                        Log.i(TAG, "Failed parsing background value: " + attributeValue);
                    }
                    break;
                case 14:
                    ttmlStyle = x(ttmlStyle).D(z(attributeValue));
                    break;
            }
        }
        return ttmlStyle;
    }

    private static String[] J(String str) {
        String strTrim = str.trim();
        if (strTrim.isEmpty()) {
            return new String[0];
        }
        return Util.d1(strTrim, "\\s+");
    }

    private static boolean y(String str) {
        if (!str.equals("tt") && !str.equals("head") && !str.equals("body") && !str.equals("div") && !str.equals("p") && !str.equals("span") && !str.equals("br") && !str.equals("style") && !str.equals("styling") && !str.equals("layout") && !str.equals("region") && !str.equals("metadata") && !str.equals("image") && !str.equals("data") && !str.equals("information")) {
            return false;
        }
        return true;
    }

    @Nullable
    private static Layout.Alignment z(String str) {
        String strE = c.e(str);
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
