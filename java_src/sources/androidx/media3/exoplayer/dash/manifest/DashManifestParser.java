package androidx.media3.exoplayer.dash.manifest;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import android.util.Xml;
import androidx.annotation.Nullable;
import androidx.compose.material.TextFieldImplKt;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.common.C;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.UriUtil;
import androidx.media3.common.util.Util;
import androidx.media3.common.util.XmlPullParserUtil;
import androidx.media3.exoplayer.upstream.ParsingLoadable;
import androidx.media3.extractor.metadata.emsg.EventMessage;
import androidx.media3.extractor.mp4.PsshAtomUtil;
import com.google.common.base.c;
import com.google.common.base.e;
import com.google.common.collect.a0;
import com.google.common.collect.k0;
import com.narvii.headlines.ExternalPostPreviewFragment;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xml.sax.helpers.DefaultHandler;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public class DashManifestParser extends DefaultHandler implements ParsingLoadable.Parser<DashManifest> {
    private static final String TAG = "MpdParser";
    private final XmlPullParserFactory xmlParserFactory;
    private static final Pattern FRAME_RATE_PATTERN = Pattern.compile("(\\d+)(?:/(\\d+))?");
    private static final Pattern CEA_608_ACCESSIBILITY_PATTERN = Pattern.compile("CC([1-4])=.*");
    private static final Pattern CEA_708_ACCESSIBILITY_PATTERN = Pattern.compile("([1-9]|[1-5][0-9]|6[0-3])=.*");
    private static final int[] MPEG_CHANNEL_CONFIGURATION_MAPPING = {-1, 1, 2, 3, 4, 5, 6, 8, 2, 3, 4, 7, 8, 24, 8, 12, 10, 12, 14, 12, 14};

    protected static int C(List<Descriptor> list) {
        String str;
        for (int i10 = 0; i10 < list.size(); i10++) {
            Descriptor descriptor = list.get(i10);
            if ("urn:scte:dash:cc:cea-608:2015".equals(descriptor.schemeIdUri) && (str = descriptor.value) != null) {
                Matcher matcher = CEA_608_ACCESSIBILITY_PATTERN.matcher(str);
                if (matcher.matches()) {
                    return Integer.parseInt(matcher.group(1));
                }
                Log.i(TAG, "Unable to parse CEA-608 channel number from: " + descriptor.value);
            }
        }
        return -1;
    }

    protected static int D(List<Descriptor> list) {
        String str;
        for (int i10 = 0; i10 < list.size(); i10++) {
            Descriptor descriptor = list.get(i10);
            if ("urn:scte:dash:cc:cea-708:2015".equals(descriptor.schemeIdUri) && (str = descriptor.value) != null) {
                Matcher matcher = CEA_708_ACCESSIBILITY_PATTERN.matcher(str);
                if (matcher.matches()) {
                    return Integer.parseInt(matcher.group(1));
                }
                Log.i(TAG, "Unable to parse CEA-708 service block number from: " + descriptor.value);
            }
        }
        return -1;
    }

    protected static long G(XmlPullParser xmlPullParser, String str, long j6) throws ParserException {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? j6 : Util.R0(attributeValue);
    }

    protected static int I(XmlPullParser xmlPullParser) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "value");
        if (attributeValue == null) {
            return -1;
        }
        String strE = c.e(attributeValue);
        strE.hashCode();
        switch (strE) {
            case "4000":
                return 1;
            case "a000":
                return 2;
            case "f801":
                return 6;
            case "fa01":
                return 8;
            default:
                return -1;
        }
    }

    protected static int K(XmlPullParser xmlPullParser) {
        int iBitCount;
        String attributeValue = xmlPullParser.getAttributeValue(null, "value");
        if (attributeValue == null || (iBitCount = Integer.bitCount(Integer.parseInt(attributeValue, 16))) == 0) {
            return -1;
        }
        return iBitCount;
    }

    protected static long L(XmlPullParser xmlPullParser, String str, long j6) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? j6 : Util.S0(attributeValue);
    }

    protected static String M(List<Descriptor> list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            Descriptor descriptor = list.get(i10);
            String str = descriptor.schemeIdUri;
            if ("tag:dolby.com,2018:dash:EC3_ExtensionType:2018".equals(str) && "JOC".equals(descriptor.value)) {
                return "audio/eac3-joc";
            }
            if ("tag:dolby.com,2014:dash:DolbyDigitalPlusExtensionType:2014".equals(str) && "ec+3".equals(descriptor.value)) {
                return "audio/eac3-joc";
            }
        }
        return "audio/eac3";
    }

    protected static float Q(XmlPullParser xmlPullParser, String str, float f) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? f : Float.parseFloat(attributeValue);
    }

    protected static float R(XmlPullParser xmlPullParser, float f) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "frameRate");
        if (attributeValue == null) {
            return f;
        }
        Matcher matcher = FRAME_RATE_PATTERN.matcher(attributeValue);
        if (!matcher.matches()) {
            return f;
        }
        int i10 = Integer.parseInt(matcher.group(1));
        String strGroup = matcher.group(2);
        return !TextUtils.isEmpty(strGroup) ? i10 / Integer.parseInt(strGroup) : i10;
    }

    protected static int T(XmlPullParser xmlPullParser, String str, int i10) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? i10 : Integer.parseInt(attributeValue);
    }

    protected static long V(List<Descriptor> list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            Descriptor descriptor = list.get(i10);
            if (c.a("http://dashif.org/guidelines/last-segment-number", descriptor.schemeIdUri)) {
                return Long.parseLong(descriptor.value);
            }
        }
        return -1L;
    }

    protected static long W(XmlPullParser xmlPullParser, String str, long j6) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? j6 : Long.parseLong(attributeValue);
    }

    private static int o(int i10, int i11) {
        if (i10 == -1) {
            return i11;
        }
        if (i11 == -1) {
            return i10;
        }
        Assertions.g(i10 == i11);
        return i10;
    }

    private static void q(ArrayList<DrmInitData.SchemeData> arrayList) {
        String str;
        int i10 = 0;
        while (true) {
            if (i10 >= arrayList.size()) {
                str = null;
                break;
            }
            DrmInitData.SchemeData schemeData = arrayList.get(i10);
            if (C.CLEARKEY_UUID.equals(schemeData.uuid) && (str = schemeData.licenseServerUrl) != null) {
                arrayList.remove(i10);
                break;
            }
            i10++;
        }
        if (str == null) {
            return;
        }
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            DrmInitData.SchemeData schemeData2 = arrayList.get(i11);
            if (C.COMMON_PSSH_UUID.equals(schemeData2.uuid) && schemeData2.licenseServerUrl == null) {
                arrayList.set(i11, new DrmInitData.SchemeData(C.CLEARKEY_UUID, str, schemeData2.mimeType, schemeData2.data));
            }
        }
    }

    protected static String q0(XmlPullParser xmlPullParser, String str, String str2) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? str2 : attributeValue;
    }

    private static long s(long j6, long j10) {
        if (j10 != -9223372036854775807L) {
            j6 = j10;
        }
        if (j6 == Long.MAX_VALUE) {
            return -9223372036854775807L;
        }
        return j6;
    }

    private boolean u(String[] strArr) {
        for (String str : strArr) {
            if (str.startsWith("urn:dvb:dash:profile:dvb-dash:")) {
                return true;
            }
        }
        return false;
    }

    protected long A(XmlPullParser xmlPullParser, long j6) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "availabilityTimeOffset");
        if (attributeValue == null) {
            return j6;
        }
        if ("INF".equals(attributeValue)) {
            return Long.MAX_VALUE;
        }
        return (long) (Float.parseFloat(attributeValue) * 1000000.0f);
    }

    protected int F(XmlPullParser xmlPullParser) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "contentType");
        if (TextUtils.isEmpty(attributeValue)) {
            return -1;
        }
        if ("audio".equals(attributeValue)) {
            return 1;
        }
        if ("video".equals(attributeValue)) {
            return 2;
        }
        if ("text".equals(attributeValue)) {
            return 3;
        }
        return "image".equals(attributeValue) ? 4 : -1;
    }

    protected String[] a0(XmlPullParser xmlPullParser, String str, String[] strArr) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? strArr : attributeValue.split(",");
    }

    protected RangedUri c0(XmlPullParser xmlPullParser, String str, String str2) {
        long j6;
        long j10;
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        String attributeValue2 = xmlPullParser.getAttributeValue(null, str2);
        if (attributeValue2 != null) {
            String[] strArrSplit = attributeValue2.split("-");
            j6 = Long.parseLong(strArrSplit[0]);
            if (strArrSplit.length == 2) {
                j10 = (Long.parseLong(strArrSplit[1]) - j6) + 1;
            }
            return h(attributeValue, j6, j10);
        }
        j6 = 0;
        j10 = -1;
        return h(attributeValue, j6, j10);
    }

    /* JADX WARN: Code duplicated, block: B:57:0x01ee A[LOOP:0: B:3:0x006a->B:57:0x01ee, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:58:0x0198 A[EDGE_INSN: B:58:0x0198->B:47:0x0198 BREAK  A[LOOP:0: B:3:0x006a->B:57:0x01ee], SYNTHETIC] */
    protected RepresentationInfo d0(XmlPullParser xmlPullParser, List<BaseUrl> list, @Nullable String str, @Nullable String str2, int i10, int i11, float f, int i12, int i13, @Nullable String str3, List<Descriptor> list2, List<Descriptor> list3, List<Descriptor> list4, List<Descriptor> list5, @Nullable SegmentBase segmentBase, long j6, long j10, long j11, long j12, long j13, boolean z6) throws XmlPullParserException, IOException {
        long j14;
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ArrayList arrayList4;
        ArrayList arrayList5;
        long jA;
        ArrayList arrayList6;
        SegmentBase singleSegmentBase;
        ArrayList arrayList7;
        ArrayList arrayList8;
        ArrayList arrayList9;
        String attributeValue = xmlPullParser.getAttributeValue(null, "id");
        int iT = T(xmlPullParser, "bandwidth", -1);
        String strQ0 = q0(xmlPullParser, "mimeType", str);
        String strQ1 = q0(xmlPullParser, "codecs", str2);
        int iT2 = T(xmlPullParser, "width", i10);
        int iT3 = T(xmlPullParser, "height", i11);
        float fR = R(xmlPullParser, f);
        int iT4 = T(xmlPullParser, "audioSamplingRate", i13);
        ArrayList arrayList10 = new ArrayList();
        ArrayList arrayList11 = new ArrayList();
        ArrayList arrayList12 = new ArrayList(list4);
        ArrayList arrayList13 = new ArrayList(list5);
        int iZ = i12;
        long jA2 = j11;
        boolean z10 = false;
        String str4 = null;
        SegmentBase segmentBaseK0 = segmentBase;
        long j15 = j12;
        ArrayList arrayList14 = new ArrayList();
        while (true) {
            xmlPullParser.next();
            if (XmlPullParserUtil.f(xmlPullParser, "BaseURL")) {
                if (!z10) {
                    jA2 = A(xmlPullParser, jA2);
                    z10 = true;
                }
                arrayList14.addAll(B(xmlPullParser, list, z6));
            } else {
                if (XmlPullParserUtil.f(xmlPullParser, "AudioChannelConfiguration")) {
                    singleSegmentBase = segmentBaseK0;
                    iZ = z(xmlPullParser);
                    arrayList4 = arrayList11;
                    arrayList5 = arrayList13;
                    arrayList9 = arrayList14;
                } else if (XmlPullParserUtil.f(xmlPullParser, "SegmentBase")) {
                    segmentBaseK0 = i0(xmlPullParser, (SegmentBase.SingleSegmentBase) segmentBaseK0);
                } else {
                    if (XmlPullParserUtil.f(xmlPullParser, "SegmentList")) {
                        jA = A(xmlPullParser, j15);
                        j14 = jA2;
                        arrayList8 = arrayList14;
                        arrayList = arrayList13;
                        arrayList2 = arrayList11;
                        arrayList3 = arrayList12;
                        segmentBaseK0 = j0(xmlPullParser, (SegmentBase.SegmentList) segmentBaseK0, j6, j10, j14, jA, j13);
                    } else {
                        j14 = jA2;
                        ArrayList arrayList15 = arrayList14;
                        arrayList = arrayList13;
                        arrayList2 = arrayList11;
                        arrayList3 = arrayList12;
                        if (XmlPullParserUtil.f(xmlPullParser, "SegmentTemplate")) {
                            jA = A(xmlPullParser, j15);
                            segmentBaseK0 = k0(xmlPullParser, (SegmentBase.SegmentTemplate) segmentBaseK0, list5, j6, j10, j14, jA, j13);
                            arrayList8 = arrayList15;
                        } else {
                            arrayList10 = arrayList10;
                            if (XmlPullParserUtil.f(xmlPullParser, "ContentProtection")) {
                                Pair<String, DrmInitData.SchemeData> pairE = E(xmlPullParser);
                                Object obj = pairE.first;
                                if (obj != null) {
                                    str4 = (String) obj;
                                }
                                Object obj2 = pairE.second;
                                if (obj2 != null) {
                                    arrayList10.add((DrmInitData.SchemeData) obj2);
                                }
                                arrayList7 = arrayList15;
                                jA2 = j14;
                                arrayList5 = arrayList;
                                arrayList4 = arrayList2;
                                arrayList12 = arrayList3;
                                arrayList6 = arrayList7;
                            } else {
                                if (XmlPullParserUtil.f(xmlPullParser, "InbandEventStream")) {
                                    arrayList4 = arrayList2;
                                    arrayList4.add(H(xmlPullParser, "InbandEventStream"));
                                    arrayList5 = arrayList;
                                    arrayList12 = arrayList3;
                                } else {
                                    arrayList4 = arrayList2;
                                    if (XmlPullParserUtil.f(xmlPullParser, "EssentialProperty")) {
                                        arrayList12 = arrayList3;
                                        arrayList12.add(H(xmlPullParser, "EssentialProperty"));
                                        arrayList5 = arrayList;
                                    } else {
                                        arrayList12 = arrayList3;
                                        if (XmlPullParserUtil.f(xmlPullParser, "SupplementalProperty")) {
                                            arrayList5 = arrayList;
                                            arrayList5.add(H(xmlPullParser, "SupplementalProperty"));
                                        } else {
                                            arrayList5 = arrayList;
                                            v(xmlPullParser);
                                        }
                                    }
                                }
                                iZ = iZ;
                                jA2 = j14;
                                arrayList6 = arrayList15;
                            }
                        }
                        singleSegmentBase = segmentBaseK0;
                        arrayList9 = arrayList6;
                    }
                    j15 = jA;
                    arrayList7 = arrayList8;
                    jA2 = j14;
                    arrayList5 = arrayList;
                    arrayList4 = arrayList2;
                    arrayList12 = arrayList3;
                    arrayList6 = arrayList7;
                    singleSegmentBase = segmentBaseK0;
                    arrayList9 = arrayList6;
                }
                if (XmlPullParserUtil.d(xmlPullParser, "Representation")) {
                    break;
                }
                arrayList13 = arrayList5;
                arrayList11 = arrayList4;
                arrayList10 = arrayList10;
                segmentBaseK0 = singleSegmentBase;
                iZ = iZ;
                arrayList14 = arrayList9;
            }
            iZ = iZ;
            singleSegmentBase = segmentBaseK0;
            arrayList4 = arrayList11;
            arrayList5 = arrayList13;
            arrayList9 = arrayList14;
            if (XmlPullParserUtil.d(xmlPullParser, "Representation")) {
                break;
                break;
            }
            arrayList13 = arrayList5;
            arrayList11 = arrayList4;
            arrayList10 = arrayList10;
            segmentBaseK0 = singleSegmentBase;
            iZ = iZ;
            arrayList14 = arrayList9;
        }
        List<Descriptor> list6 = arrayList5;
        List<Descriptor> list7 = arrayList12;
        ArrayList arrayList16 = arrayList4;
        Format formatE = e(attributeValue, strQ0, iT2, iT3, fR, iZ, iT4, iT, str3, list2, list3, strQ1, list7, list6);
        if (singleSegmentBase == null) {
            singleSegmentBase = new SegmentBase.SingleSegmentBase();
        }
        boolean zIsEmpty = arrayList9.isEmpty();
        List list8 = arrayList9;
        if (zIsEmpty) {
            list8 = list;
        }
        return new RepresentationInfo(formatE, list8, singleSegmentBase, str4, arrayList10, arrayList16, list7, list6, -1L);
    }

    protected Format e(@Nullable String str, @Nullable String str2, int i10, int i11, float f, int i12, int i13, int i14, @Nullable String str3, List<Descriptor> list, List<Descriptor> list2, @Nullable String str4, List<Descriptor> list3, List<Descriptor> list4) {
        String str5 = str4;
        String strT = t(str2, str5);
        if ("audio/eac3".equals(strT)) {
            strT = M(list4);
            if ("audio/eac3-joc".equals(strT)) {
                str5 = "ec+3";
            }
        }
        int iO0 = o0(list);
        int iH0 = h0(list) | e0(list2) | g0(list3) | g0(list4);
        Pair<Integer, Integer> pairS0 = s0(list3);
        Format.Builder builderX = new Format.Builder().U(str).M(str2).g0(strT).K(str5).b0(i14).i0(iO0).e0(iH0).X(str3);
        int iD = -1;
        Format.Builder builderM0 = builderX.l0(pairS0 != null ? ((Integer) pairS0.first).intValue() : -1).m0(pairS0 != null ? ((Integer) pairS0.second).intValue() : -1);
        if (MimeTypes.s(strT)) {
            builderM0.n0(i10).S(i11).R(f);
        } else if (MimeTypes.o(strT)) {
            builderM0.J(i12).h0(i13);
        } else if (MimeTypes.r(strT)) {
            if ("application/cea-608".equals(strT)) {
                iD = C(list2);
            } else if ("application/cea-708".equals(strT)) {
                iD = D(list2);
            }
            builderM0.H(iD);
        } else if (MimeTypes.p(strT)) {
            builderM0.n0(i10).S(i11);
        }
        return builderM0.G();
    }

    protected int e0(List<Descriptor> list) {
        int iT0;
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            Descriptor descriptor = list.get(i11);
            if (c.a("urn:mpeg:dash:role:2011", descriptor.schemeIdUri)) {
                iT0 = f0(descriptor.value);
            } else {
                if (c.a("urn:tva:metadata:cs:AudioPurposeCS:2007", descriptor.schemeIdUri)) {
                    iT0 = t0(descriptor.value);
                }
            }
            i10 |= iT0;
        }
        return i10;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    protected int f0(@Nullable String str) {
        if (str == null) {
            return 0;
        }
        byte b7 = -1;
        switch (str.hashCode()) {
            case -2060497896:
                if (str.equals("subtitle")) {
                    b7 = 0;
                }
                break;
            case -1724546052:
                if (str.equals("description")) {
                    b7 = 1;
                }
                break;
            case -1580883024:
                if (str.equals("enhanced-audio-intelligibility")) {
                    b7 = 2;
                }
                break;
            case -1574842690:
                if (str.equals("forced_subtitle")) {
                    b7 = 3;
                }
                break;
            case -1408024454:
                if (str.equals("alternate")) {
                    b7 = 4;
                }
                break;
            case -1396432756:
                if (str.equals("forced-subtitle")) {
                    b7 = 5;
                }
                break;
            case 99825:
                if (str.equals("dub")) {
                    b7 = 6;
                }
                break;
            case 3343801:
                if (str.equals("main")) {
                    b7 = 7;
                }
                break;
            case 3530173:
                if (str.equals("sign")) {
                    b7 = 8;
                }
                break;
            case 552573414:
                if (str.equals("caption")) {
                    b7 = 9;
                }
                break;
            case 899152809:
                if (str.equals("commentary")) {
                    b7 = 10;
                }
                break;
            case 1629013393:
                if (str.equals("emergency")) {
                    b7 = c.VT;
                }
                break;
            case 1855372047:
                if (str.equals("supplementary")) {
                    b7 = c.FF;
                }
                break;
        }
        switch (b7) {
            case 0:
            case 3:
            case 5:
                return 128;
            case 1:
                return 512;
            case 2:
                return 2048;
            case 4:
                return 2;
            case 6:
                return 16;
            case 7:
                return 1;
            case 8:
                return 256;
            case 9:
                return 64;
            case 10:
                return 8;
            case 11:
                return 32;
            case 12:
                return 4;
            default:
                return 0;
        }
    }

    protected int g0(List<Descriptor> list) {
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            if (c.a("http://dashif.org/guidelines/trickmode", list.get(i11).schemeIdUri)) {
                i10 |= 16384;
            }
        }
        return i10;
    }

    protected int h0(List<Descriptor> list) {
        int iF0 = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            Descriptor descriptor = list.get(i10);
            if (c.a("urn:mpeg:dash:role:2011", descriptor.schemeIdUri)) {
                iF0 |= f0(descriptor.value);
            }
        }
        return iF0;
    }

    protected int n0(@Nullable String str) {
        if (str == null) {
            return 0;
        }
        return (str.equals("forced_subtitle") || str.equals("forced-subtitle")) ? 2 : 0;
    }

    protected int o0(List<Descriptor> list) {
        int iN0 = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            Descriptor descriptor = list.get(i10);
            if (c.a("urn:mpeg:dash:role:2011", descriptor.schemeIdUri)) {
                iN0 |= n0(descriptor.value);
            }
        }
        return iN0;
    }

    @Nullable
    protected Pair<Integer, Integer> s0(List<Descriptor> list) {
        String str;
        for (int i10 = 0; i10 < list.size(); i10++) {
            Descriptor descriptor = list.get(i10);
            if ((c.a("http://dashif.org/thumbnail_tile", descriptor.schemeIdUri) || c.a("http://dashif.org/guidelines/thumbnail_tile", descriptor.schemeIdUri)) && (str = descriptor.value) != null) {
                String[] strArrD1 = Util.d1(str, "x");
                if (strArrD1.length != 2) {
                    continue;
                } else {
                    try {
                        return Pair.create(Integer.valueOf(Integer.parseInt(strArrD1[0])), Integer.valueOf(Integer.parseInt(strArrD1[1])));
                    } catch (NumberFormatException unused) {
                        continue;
                    }
                }
            }
        }
        return null;
    }

    protected int t0(@Nullable String str) {
        if (str == null) {
            return 0;
        }
        byte b7 = -1;
        switch (str.hashCode()) {
            case 49:
                if (str.equals("1")) {
                    b7 = 0;
                }
                break;
            case 50:
                if (str.equals(ExifInterface.GPS_MEASUREMENT_2D)) {
                    b7 = 1;
                }
                break;
            case 51:
                if (str.equals(ExifInterface.GPS_MEASUREMENT_3D)) {
                    b7 = 2;
                }
                break;
            case 52:
                if (str.equals("4")) {
                    b7 = 3;
                }
                break;
            case 54:
                if (str.equals("6")) {
                    b7 = 4;
                }
                break;
        }
        switch (b7) {
            case 0:
                return 512;
            case 1:
                return 2048;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 1;
            default:
                return 0;
        }
    }

    @Nullable
    protected UrlTemplate u0(XmlPullParser xmlPullParser, String str, @Nullable UrlTemplate urlTemplate) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue != null ? UrlTemplate.b(attributeValue) : urlTemplate;
    }

    @Override // androidx.media3.exoplayer.upstream.ParsingLoadable.Parser
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public DashManifest parse(Uri uri, InputStream inputStream) throws IOException {
        try {
            XmlPullParser xmlPullParserNewPullParser = this.xmlParserFactory.newPullParser();
            xmlPullParserNewPullParser.setInput(inputStream, null);
            if (xmlPullParserNewPullParser.next() == 2 && "MPD".equals(xmlPullParserNewPullParser.getName())) {
                return X(xmlPullParserNewPullParser, uri);
            }
            throw ParserException.c("inputStream does not contain a valid media presentation description", null);
        } catch (XmlPullParserException e) {
            throw ParserException.c(null, e);
        }
    }

    protected static final class RepresentationInfo {
        public final a0<BaseUrl> baseUrls;
        public final ArrayList<DrmInitData.SchemeData> drmSchemeDatas;

        @Nullable
        public final String drmSchemeType;
        public final List<Descriptor> essentialProperties;
        public final Format format;
        public final ArrayList<Descriptor> inbandEventStreams;
        public final long revisionId;
        public final SegmentBase segmentBase;
        public final List<Descriptor> supplementalProperties;

        public RepresentationInfo(Format format, List<BaseUrl> list, SegmentBase segmentBase, @Nullable String str, ArrayList<DrmInitData.SchemeData> arrayList, ArrayList<Descriptor> arrayList2, List<Descriptor> list2, List<Descriptor> list3, long j6) {
            this.format = format;
            this.baseUrls = a0.t(list);
            this.segmentBase = segmentBase;
            this.drmSchemeType = str;
            this.drmSchemeDatas = arrayList;
            this.inbandEventStreams = arrayList2;
            this.essentialProperties = list2;
            this.supplementalProperties = list3;
            this.revisionId = j6;
        }
    }

    protected static Descriptor H(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
        String strQ0 = q0(xmlPullParser, "schemeIdUri", "");
        String strQ1 = q0(xmlPullParser, "value", null);
        String strQ2 = q0(xmlPullParser, "id", null);
        do {
            xmlPullParser.next();
        } while (!XmlPullParserUtil.d(xmlPullParser, str));
        return new Descriptor(strQ0, strQ1, strQ2);
    }

    protected static int J(XmlPullParser xmlPullParser) {
        int iT = T(xmlPullParser, "value", -1);
        if (iT <= 0 || iT >= 33) {
            return -1;
        }
        return iT;
    }

    protected static int Y(XmlPullParser xmlPullParser) {
        int iT = T(xmlPullParser, "value", -1);
        if (iT < 0) {
            return -1;
        }
        int[] iArr = MPEG_CHANNEL_CONFIGURATION_MAPPING;
        if (iT < iArr.length) {
            return iArr[iT];
        }
        return -1;
    }

    private long a(List<SegmentBase.SegmentTimelineElement> list, long j6, long j10, int i10, long j11) {
        int iM = i10 >= 0 ? i10 + 1 : (int) Util.m(j11 - j6, j10);
        for (int i11 = 0; i11 < iM; i11++) {
            list.add(l(j6, j10));
            j6 += j10;
        }
        return j6;
    }

    @Nullable
    private static String p(@Nullable String str, @Nullable String str2) {
        if (str == null) {
            return str2;
        }
        if (str2 == null) {
            return str;
        }
        Assertions.g(str.equals(str2));
        return str;
    }

    protected static String r0(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
        String text = "";
        do {
            xmlPullParser.next();
            if (xmlPullParser.getEventType() == 4) {
                text = xmlPullParser.getText();
            } else {
                v(xmlPullParser);
            }
        } while (!XmlPullParserUtil.d(xmlPullParser, str));
        return text;
    }

    protected List<BaseUrl> B(XmlPullParser xmlPullParser, List<BaseUrl> list, boolean z6) throws XmlPullParserException, IOException {
        String attributeValue = xmlPullParser.getAttributeValue(null, "dvb:priority");
        int i10 = attributeValue != null ? Integer.parseInt(attributeValue) : z6 ? 1 : Integer.MIN_VALUE;
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "dvb:weight");
        int i11 = attributeValue2 != null ? Integer.parseInt(attributeValue2) : 1;
        String attributeValue3 = xmlPullParser.getAttributeValue(null, "serviceLocation");
        String strR0 = r0(xmlPullParser, "BaseURL");
        if (UriUtil.b(strR0)) {
            if (attributeValue3 == null) {
                attributeValue3 = strR0;
            }
            return k0.j(new BaseUrl(strR0, attributeValue3, i10, i11));
        }
        ArrayList arrayList = new ArrayList();
        for (int i12 = 0; i12 < list.size(); i12++) {
            BaseUrl baseUrl = list.get(i12);
            String strD = UriUtil.d(baseUrl.url, strR0);
            String str = attributeValue3 == null ? strD : attributeValue3;
            if (z6) {
                i10 = baseUrl.priority;
                i11 = baseUrl.weight;
                str = baseUrl.serviceLocation;
            }
            arrayList.add(new BaseUrl(strD, str, i10, i11));
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0092  */
    /* JADX WARN: Code duplicated, block: B:67:0x010d  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v10, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v25 */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v27 */
    /* JADX WARN: Type inference failed for: r4v28 */
    /* JADX WARN: Type inference failed for: r4v29 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v30 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v9 */
    protected Pair<String, DrmInitData.SchemeData> E(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        String attributeValue;
        UUID uuid;
        UUID uuid2;
        ?? attributeValue2;
        ?? B;
        String attributeValue3 = xmlPullParser.getAttributeValue(null, "schemeIdUri");
        if (attributeValue3 != null) {
            String strE = c.e(attributeValue3);
            strE.hashCode();
            switch (strE) {
                case "urn:uuid:e2719d58-a985-b3c9-781a-b030af78d30e":
                    uuid = C.CLEARKEY_UUID;
                    attributeValue = null;
                    uuid2 = null;
                    attributeValue2 = uuid2;
                    B = uuid2;
                    break;
                case "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95":
                    uuid = C.PLAYREADY_UUID;
                    attributeValue = null;
                    uuid2 = null;
                    attributeValue2 = uuid2;
                    B = uuid2;
                    break;
                case "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed":
                    uuid = C.WIDEVINE_UUID;
                    attributeValue = null;
                    uuid2 = null;
                    attributeValue2 = uuid2;
                    B = uuid2;
                    break;
                case "urn:mpeg:dash:mp4protection:2011":
                    attributeValue = xmlPullParser.getAttributeValue(null, "value");
                    String strB = XmlPullParserUtil.b(xmlPullParser, "default_KID");
                    if (!TextUtils.isEmpty(strB) && !"00000000-0000-0000-0000-000000000000".equals(strB)) {
                        String[] strArrSplit = strB.split("\\s+");
                        UUID[] uuidArr = new UUID[strArrSplit.length];
                        for (int i10 = 0; i10 < strArrSplit.length; i10++) {
                            uuidArr[i10] = UUID.fromString(strArrSplit[i10]);
                        }
                        uuid = C.COMMON_PSSH_UUID;
                        attributeValue2 = 0;
                        B = PsshAtomUtil.b(uuid, uuidArr, null);
                        break;
                    } else {
                        uuid = null;
                        uuid2 = uuid;
                        attributeValue2 = uuid2;
                        B = uuid2;
                        break;
                    }
                    break;
                default:
                    attributeValue = null;
                    uuid = null;
                    uuid2 = uuid;
                    attributeValue2 = uuid2;
                    B = uuid2;
                    break;
            }
        } else {
            attributeValue = null;
            uuid = null;
            uuid2 = uuid;
            attributeValue2 = uuid2;
            B = uuid2;
        }
        do {
            xmlPullParser.next();
            if (XmlPullParserUtil.f(xmlPullParser, "clearkey:Laurl") && xmlPullParser.next() == 4) {
                B = B;
                attributeValue2 = xmlPullParser.getText();
            } else if (XmlPullParserUtil.f(xmlPullParser, "ms:laurl")) {
                B = B;
                attributeValue2 = xmlPullParser.getAttributeValue(null, "licenseUrl");
            } else if (B == 0 && XmlPullParserUtil.g(xmlPullParser, "pssh") && xmlPullParser.next() == 4) {
                byte[] bArrDecode = Base64.decode(xmlPullParser.getText(), 0);
                UUID uuidF = PsshAtomUtil.f(bArrDecode);
                if (uuidF == null) {
                    Log.i(TAG, "Skipping malformed cenc:pssh data");
                    uuid = uuidF;
                    B = 0;
                    attributeValue2 = attributeValue2;
                } else {
                    B = bArrDecode;
                    uuid = uuidF;
                    attributeValue2 = attributeValue2;
                }
            } else if (B == 0) {
                UUID uuid3 = C.PLAYREADY_UUID;
                if (uuid3.equals(uuid) && XmlPullParserUtil.f(xmlPullParser, "mspr:pro") && xmlPullParser.next() == 4) {
                    B = PsshAtomUtil.a(uuid3, Base64.decode(xmlPullParser.getText(), 0));
                    attributeValue2 = attributeValue2;
                } else {
                    v(xmlPullParser);
                    B = B;
                    attributeValue2 = attributeValue2;
                }
            } else {
                v(xmlPullParser);
                B = B;
                attributeValue2 = attributeValue2;
            }
        } while (!XmlPullParserUtil.d(xmlPullParser, "ContentProtection"));
        return Pair.create(attributeValue, uuid != null ? new DrmInitData.SchemeData(uuid, attributeValue2, "video/mp4", B) : null);
    }

    protected Pair<Long, EventMessage> N(XmlPullParser xmlPullParser, String str, String str2, long j6, long j10, ByteArrayOutputStream byteArrayOutputStream) throws XmlPullParserException, IOException {
        long jW = W(xmlPullParser, "id", 0L);
        long jW2 = W(xmlPullParser, TypedValues.TransitionType.S_DURATION, -9223372036854775807L);
        long jW3 = W(xmlPullParser, "presentationTime", 0L);
        long jX0 = Util.X0(jW2, 1000L, j6);
        long jX1 = Util.X0(jW3 - j10, 1000000L, j6);
        String strQ0 = q0(xmlPullParser, "messageData", null);
        byte[] bArrO = O(xmlPullParser, byteArrayOutputStream);
        Long lValueOf = Long.valueOf(jX1);
        if (strQ0 != null) {
            bArrO = Util.q0(strQ0);
        }
        return Pair.create(lValueOf, c(str, str2, jW, jX0, bArrO));
    }

    protected EventStream P(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        ByteArrayOutputStream byteArrayOutputStream;
        ArrayList arrayList;
        String strQ0 = q0(xmlPullParser, "schemeIdUri", "");
        String strQ1 = q0(xmlPullParser, "value", "");
        long jW = W(xmlPullParser, "timescale", 1L);
        long jW2 = W(xmlPullParser, "presentationTimeOffset", 0L);
        ArrayList arrayList2 = new ArrayList();
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream(512);
        while (true) {
            xmlPullParser.next();
            if (XmlPullParserUtil.f(xmlPullParser, "Event")) {
                byteArrayOutputStream = byteArrayOutputStream2;
                long j6 = jW2;
                arrayList = arrayList2;
                arrayList.add(N(xmlPullParser, strQ0, strQ1, jW, j6, byteArrayOutputStream));
            } else {
                byteArrayOutputStream = byteArrayOutputStream2;
                arrayList = arrayList2;
                v(xmlPullParser);
            }
            if (XmlPullParserUtil.d(xmlPullParser, "EventStream")) {
                break;
            }
            arrayList2 = arrayList;
            byteArrayOutputStream2 = byteArrayOutputStream;
            jW2 = jW2;
        }
        long[] jArr = new long[arrayList.size()];
        EventMessage[] eventMessageArr = new EventMessage[arrayList.size()];
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            Pair pair = (Pair) arrayList.get(i10);
            jArr[i10] = ((Long) pair.first).longValue();
            eventMessageArr[i10] = (EventMessage) pair.second;
        }
        return d(strQ0, strQ1, jW, jArr, eventMessageArr);
    }

    protected RangedUri S(XmlPullParser xmlPullParser) {
        return c0(xmlPullParser, "sourceURL", "range");
    }

    protected String U(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        return r0(xmlPullParser, TextFieldImplKt.LabelId);
    }

    /* JADX WARN: Code duplicated, block: B:68:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:70:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:71:0x01af A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:73:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:75:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:78:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:80:0x01e1  */
    /* JADX WARN: Code duplicated, block: B:82:0x01e8 A[LOOP:0: B:25:0x00a4->B:82:0x01e8, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:83:0x01a4 A[SYNTHETIC] */
    protected DashManifest X(XmlPullParser xmlPullParser, Uri uri) throws XmlPullParserException, IOException {
        long j6;
        boolean z6;
        long j10;
        Throwable th;
        ArrayList arrayList;
        boolean z10;
        long j11;
        DashManifestParser dashManifestParser = this;
        boolean zU = dashManifestParser.u(dashManifestParser.a0(xmlPullParser, "profiles", new String[0]));
        long j12 = -9223372036854775807L;
        long jG = G(xmlPullParser, "availabilityStartTime", -9223372036854775807L);
        long jL = L(xmlPullParser, "mediaPresentationDuration", -9223372036854775807L);
        long jL2 = L(xmlPullParser, "minBufferTime", -9223372036854775807L);
        Throwable th2 = null;
        boolean zEquals = "dynamic".equals(xmlPullParser.getAttributeValue(null, "type"));
        long jL3 = zEquals ? L(xmlPullParser, "minimumUpdatePeriod", -9223372036854775807L) : -9223372036854775807L;
        long jL4 = zEquals ? L(xmlPullParser, "timeShiftBufferDepth", -9223372036854775807L) : -9223372036854775807L;
        long jL5 = zEquals ? L(xmlPullParser, "suggestedPresentationDelay", -9223372036854775807L) : -9223372036854775807L;
        long jG2 = G(xmlPullParser, "publishTime", -9223372036854775807L);
        long jA = zEquals ? 0L : -9223372036854775807L;
        boolean z11 = true;
        ArrayList arrayListJ = k0.j(new BaseUrl(uri.toString(), uri.toString(), zU ? 1 : Integer.MIN_VALUE, 1));
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        boolean z12 = false;
        boolean z13 = false;
        long j13 = zEquals ? -9223372036854775807L : 0L;
        ProgramInformation programInformationB0 = null;
        UtcTimingElement utcTimingElementV0 = null;
        Uri uriE = null;
        ServiceDescriptionElement serviceDescriptionElementP0 = null;
        while (true) {
            xmlPullParser.next();
            if (XmlPullParserUtil.f(xmlPullParser, "BaseURL")) {
                if (!z12) {
                    jA = dashManifestParser.A(xmlPullParser, jA);
                    z12 = z11;
                }
                arrayList3.addAll(dashManifestParser.B(xmlPullParser, arrayListJ, zU));
            } else if (XmlPullParserUtil.f(xmlPullParser, "ProgramInformation")) {
                programInformationB0 = b0(xmlPullParser);
            } else if (XmlPullParserUtil.f(xmlPullParser, "UTCTiming")) {
                utcTimingElementV0 = v0(xmlPullParser);
            } else if (XmlPullParserUtil.f(xmlPullParser, "Location")) {
                uriE = UriUtil.e(uri.toString(), xmlPullParser.nextText());
            } else {
                if (XmlPullParserUtil.f(xmlPullParser, "ServiceDescription")) {
                    serviceDescriptionElementP0 = p0(xmlPullParser);
                } else {
                    if (!XmlPullParserUtil.f(xmlPullParser, "Period") || z13) {
                        j6 = jA;
                        z6 = z11;
                        j10 = j12;
                        th = th2;
                        arrayList = arrayList2;
                        v(xmlPullParser);
                    } else {
                        j6 = jA;
                        arrayList = arrayList2;
                        z6 = z11;
                        j10 = j12;
                        th = th2;
                        Pair<Period, Long> pairZ = Z(xmlPullParser, !arrayList3.isEmpty() ? arrayList3 : arrayListJ, j13, j6, jG, jL4, zU);
                        Period period = (Period) pairZ.first;
                        if (period.startMs != j10) {
                            long jLongValue = ((Long) pairZ.second).longValue();
                            long j14 = jLongValue == j10 ? j10 : period.startMs + jLongValue;
                            arrayList.add(period);
                            j13 = j14;
                            z10 = z13;
                        } else {
                            if (!zEquals) {
                                throw ParserException.c("Unable to determine start of period " + arrayList.size(), th);
                            }
                            arrayList = arrayList;
                            z10 = z6;
                        }
                        z13 = z10;
                    }
                    jA = j6;
                }
                if (XmlPullParserUtil.d(xmlPullParser, "MPD")) {
                    if (jL != j10) {
                        j11 = jL;
                    } else if (j13 != j10) {
                        j11 = j13;
                    } else {
                        if (!zEquals) {
                            throw ParserException.c("Unable to determine duration of static manifest.", th);
                        }
                        j11 = jL;
                    }
                    if (arrayList.isEmpty()) {
                        throw ParserException.c("No periods found.", th);
                    }
                    return f(jG, j11, jL2, zEquals, jL3, jL4, jL5, jG2, programInformationB0, utcTimingElementV0, serviceDescriptionElementP0, uriE, arrayList);
                }
                arrayList2 = arrayList;
                th2 = th;
                arrayList3 = arrayList3;
                z11 = z6;
                arrayListJ = arrayListJ;
                j12 = j10;
                dashManifestParser = this;
            }
            arrayList3 = arrayList3;
            arrayListJ = arrayListJ;
            z6 = z11;
            j10 = j12;
            th = th2;
            arrayList = arrayList2;
            if (XmlPullParserUtil.d(xmlPullParser, "MPD")) {
                if (jL != j10) {
                    j11 = jL;
                } else if (j13 != j10) {
                    j11 = j13;
                } else {
                    if (!zEquals) {
                        throw ParserException.c("Unable to determine duration of static manifest.", th);
                    }
                    j11 = jL;
                }
                if (arrayList.isEmpty()) {
                    return f(jG, j11, jL2, zEquals, jL3, jL4, jL5, jG2, programInformationB0, utcTimingElementV0, serviceDescriptionElementP0, uriE, arrayList);
                }
                throw ParserException.c("No periods found.", th);
            }
            arrayList2 = arrayList;
            th2 = th;
            arrayList3 = arrayList3;
            z11 = z6;
            arrayListJ = arrayListJ;
            j12 = j10;
            dashManifestParser = this;
        }
    }

    protected Pair<Period, Long> Z(XmlPullParser xmlPullParser, List<BaseUrl> list, long j6, long j10, long j11, long j12, boolean z6) throws XmlPullParserException, IOException {
        ArrayList arrayList;
        List<AdaptationSet> list2;
        List<EventStream> list3;
        Object obj;
        long j13;
        SegmentBase segmentBaseK0;
        XmlPullParser xmlPullParser2 = xmlPullParser;
        Object obj2 = null;
        String attributeValue = xmlPullParser2.getAttributeValue(null, "id");
        long jL = L(xmlPullParser2, "start", j6);
        long j14 = -9223372036854775807L;
        long j15 = j11 != -9223372036854775807L ? j11 + jL : -9223372036854775807L;
        long jL2 = L(xmlPullParser2, TypedValues.TransitionType.S_DURATION, -9223372036854775807L);
        List<AdaptationSet> arrayList2 = new ArrayList<>();
        List<EventStream> arrayList3 = new ArrayList<>();
        ArrayList arrayList4 = new ArrayList();
        long jA = j10;
        boolean z10 = false;
        long j16 = -9223372036854775807L;
        SegmentBase segmentBaseI0 = null;
        Descriptor descriptorH = null;
        while (true) {
            xmlPullParser.next();
            if (XmlPullParserUtil.f(xmlPullParser2, "BaseURL")) {
                if (!z10) {
                    jA = A(xmlPullParser2, jA);
                    z10 = true;
                }
                arrayList4.addAll(B(xmlPullParser2, list, z6));
                list3 = arrayList3;
                arrayList = arrayList4;
                j13 = j14;
                obj = obj2;
                list2 = arrayList2;
            } else {
                if (XmlPullParserUtil.f(xmlPullParser2, "AdaptationSet")) {
                    jA = jA;
                    arrayList = arrayList4;
                    list2 = arrayList2;
                    list2.add(x(xmlPullParser, !arrayList4.isEmpty() ? arrayList4 : list, segmentBaseI0, jL2, jA, j16, j15, j12, z6));
                    xmlPullParser2 = xmlPullParser;
                    list3 = arrayList3;
                } else {
                    jA = jA;
                    List<EventStream> list4 = arrayList3;
                    arrayList = arrayList4;
                    list2 = arrayList2;
                    xmlPullParser2 = xmlPullParser;
                    if (XmlPullParserUtil.f(xmlPullParser2, "EventStream")) {
                        list4.add(P(xmlPullParser));
                        list3 = list4;
                    } else if (XmlPullParserUtil.f(xmlPullParser2, "SegmentBase")) {
                        list3 = list4;
                        segmentBaseI0 = i0(xmlPullParser2, null);
                        obj = null;
                        jA = jA;
                        j13 = -9223372036854775807L;
                    } else {
                        list3 = list4;
                        if (XmlPullParserUtil.f(xmlPullParser2, "SegmentList")) {
                            long jA2 = A(xmlPullParser2, -9223372036854775807L);
                            obj = null;
                            segmentBaseK0 = j0(xmlPullParser, null, j15, jL2, jA, jA2, j12);
                            j16 = jA2;
                            j13 = -9223372036854775807L;
                        } else {
                            obj = null;
                            if (XmlPullParserUtil.f(xmlPullParser2, "SegmentTemplate")) {
                                long jA3 = A(xmlPullParser2, -9223372036854775807L);
                                j13 = -9223372036854775807L;
                                segmentBaseK0 = k0(xmlPullParser, null, a0.x(), j15, jL2, jA, jA3, j12);
                                j16 = jA3;
                            } else {
                                j13 = -9223372036854775807L;
                                if (XmlPullParserUtil.f(xmlPullParser2, "AssetIdentifier")) {
                                    descriptorH = H(xmlPullParser2, "AssetIdentifier");
                                } else {
                                    v(xmlPullParser);
                                }
                                jA = jA;
                            }
                        }
                        segmentBaseI0 = segmentBaseK0;
                    }
                }
                obj = null;
                j13 = -9223372036854775807L;
                jA = jA;
            }
            if (XmlPullParserUtil.d(xmlPullParser2, "Period")) {
                return Pair.create(g(attributeValue, jL, list2, list3, descriptorH), Long.valueOf(jL2));
            }
            arrayList2 = list2;
            arrayList4 = arrayList;
            obj2 = obj;
            arrayList3 = list3;
            j14 = j13;
        }
    }

    protected AdaptationSet b(long j6, int i10, List<Representation> list, List<Descriptor> list2, List<Descriptor> list3, List<Descriptor> list4) {
        return new AdaptationSet(j6, i10, list, list2, list3, list4);
    }

    protected ProgramInformation b0(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        String strNextText = null;
        String strQ0 = q0(xmlPullParser, "moreInformationURL", null);
        String strQ1 = q0(xmlPullParser, "lang", null);
        String strNextText2 = null;
        String strNextText3 = null;
        while (true) {
            xmlPullParser.next();
            if (XmlPullParserUtil.f(xmlPullParser, "Title")) {
                strNextText = xmlPullParser.nextText();
            } else if (XmlPullParserUtil.f(xmlPullParser, ExternalPostPreviewFragment.SOURCE)) {
                strNextText2 = xmlPullParser.nextText();
            } else if (XmlPullParserUtil.f(xmlPullParser, ExifInterface.TAG_COPYRIGHT)) {
                strNextText3 = xmlPullParser.nextText();
            } else {
                v(xmlPullParser);
            }
            String str = strNextText3;
            if (XmlPullParserUtil.d(xmlPullParser, "ProgramInformation")) {
                return new ProgramInformation(strNextText, strNextText2, str, strQ0, strQ1);
            }
            strNextText3 = str;
        }
    }

    protected EventMessage c(String str, String str2, long j6, long j10, byte[] bArr) {
        return new EventMessage(str, str2, j10, j6, bArr);
    }

    protected EventStream d(String str, String str2, long j6, long[] jArr, EventMessage[] eventMessageArr) {
        return new EventStream(str, str2, j6, jArr, eventMessageArr);
    }

    protected DashManifest f(long j6, long j10, long j11, boolean z6, long j12, long j13, long j14, long j15, @Nullable ProgramInformation programInformation, @Nullable UtcTimingElement utcTimingElement, @Nullable ServiceDescriptionElement serviceDescriptionElement, @Nullable Uri uri, List<Period> list) {
        return new DashManifest(j6, j10, j11, z6, j12, j13, j14, j15, programInformation, utcTimingElement, serviceDescriptionElement, uri, list);
    }

    protected Period g(@Nullable String str, long j6, List<AdaptationSet> list, List<EventStream> list2, @Nullable Descriptor descriptor) {
        return new Period(str, j6, list, list2, descriptor);
    }

    protected RangedUri h(String str, long j6, long j10) {
        return new RangedUri(str, j6, j10);
    }

    protected Representation i(RepresentationInfo representationInfo, @Nullable String str, @Nullable String str2, ArrayList<DrmInitData.SchemeData> arrayList, ArrayList<Descriptor> arrayList2) {
        Format.Builder builderB = representationInfo.format.b();
        if (str != null) {
            builderB.W(str);
        }
        String str3 = representationInfo.drmSchemeType;
        if (str3 != null) {
            str2 = str3;
        }
        ArrayList<DrmInitData.SchemeData> arrayList3 = representationInfo.drmSchemeDatas;
        arrayList3.addAll(arrayList);
        if (!arrayList3.isEmpty()) {
            q(arrayList3);
            r(arrayList3);
            builderB.O(new DrmInitData(str2, arrayList3));
        }
        ArrayList<Descriptor> arrayList4 = representationInfo.inbandEventStreams;
        arrayList4.addAll(arrayList2);
        return Representation.n(representationInfo.revisionId, builderB.G(), representationInfo.baseUrls, representationInfo.segmentBase, arrayList4, representationInfo.essentialProperties, representationInfo.supplementalProperties, null);
    }

    protected SegmentBase.SingleSegmentBase i0(XmlPullParser xmlPullParser, @Nullable SegmentBase.SingleSegmentBase singleSegmentBase) throws XmlPullParserException, IOException {
        long j6;
        long j10;
        long jW = W(xmlPullParser, "timescale", singleSegmentBase != null ? singleSegmentBase.timescale : 1L);
        long jW2 = W(xmlPullParser, "presentationTimeOffset", singleSegmentBase != null ? singleSegmentBase.presentationTimeOffset : 0L);
        long j11 = singleSegmentBase != null ? singleSegmentBase.indexStart : 0L;
        long j12 = singleSegmentBase != null ? singleSegmentBase.indexLength : 0L;
        String attributeValue = xmlPullParser.getAttributeValue(null, "indexRange");
        if (attributeValue != null) {
            String[] strArrSplit = attributeValue.split("-");
            j10 = Long.parseLong(strArrSplit[0]);
            j6 = (Long.parseLong(strArrSplit[1]) - j10) + 1;
        } else {
            j6 = j12;
            j10 = j11;
        }
        RangedUri rangedUriS = singleSegmentBase != null ? singleSegmentBase.initialization : null;
        do {
            xmlPullParser.next();
            if (XmlPullParserUtil.f(xmlPullParser, "Initialization")) {
                rangedUriS = S(xmlPullParser);
            } else {
                v(xmlPullParser);
            }
        } while (!XmlPullParserUtil.d(xmlPullParser, "SegmentBase"));
        return m(rangedUriS, jW, jW2, j10, j6);
    }

    protected SegmentBase.SegmentList j(RangedUri rangedUri, long j6, long j10, long j11, long j12, @Nullable List<SegmentBase.SegmentTimelineElement> list, long j13, @Nullable List<RangedUri> list2, long j14, long j15) {
        return new SegmentBase.SegmentList(rangedUri, j6, j10, j11, j12, list, j13, list2, Util.K0(j14), Util.K0(j15));
    }

    protected SegmentBase.SegmentList j0(XmlPullParser xmlPullParser, @Nullable SegmentBase.SegmentList segmentList, long j6, long j10, long j11, long j12, long j13) throws XmlPullParserException, IOException {
        long jW = W(xmlPullParser, "timescale", segmentList != null ? segmentList.timescale : 1L);
        long jW2 = W(xmlPullParser, "presentationTimeOffset", segmentList != null ? segmentList.presentationTimeOffset : 0L);
        long jW3 = W(xmlPullParser, TypedValues.TransitionType.S_DURATION, segmentList != null ? segmentList.duration : -9223372036854775807L);
        long jW4 = W(xmlPullParser, "startNumber", segmentList != null ? segmentList.startNumber : 1L);
        long jS = s(j11, j12);
        List<SegmentBase.SegmentTimelineElement> listL0 = null;
        List<RangedUri> arrayList = null;
        RangedUri rangedUriS = null;
        do {
            xmlPullParser.next();
            if (XmlPullParserUtil.f(xmlPullParser, "Initialization")) {
                rangedUriS = S(xmlPullParser);
            } else if (XmlPullParserUtil.f(xmlPullParser, "SegmentTimeline")) {
                listL0 = l0(xmlPullParser, jW, j10);
            } else if (XmlPullParserUtil.f(xmlPullParser, "SegmentURL")) {
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                arrayList.add(m0(xmlPullParser));
            } else {
                v(xmlPullParser);
            }
        } while (!XmlPullParserUtil.d(xmlPullParser, "SegmentList"));
        if (segmentList != null) {
            if (rangedUriS == null) {
                rangedUriS = segmentList.initialization;
            }
            if (listL0 == null) {
                listL0 = segmentList.segmentTimeline;
            }
            if (arrayList == null) {
                arrayList = segmentList.mediaSegments;
            }
        }
        return j(rangedUriS, jW, jW2, jW4, jW3, listL0, jS, arrayList, j13, j6);
    }

    protected SegmentBase.SegmentTemplate k(RangedUri rangedUri, long j6, long j10, long j11, long j12, long j13, List<SegmentBase.SegmentTimelineElement> list, long j14, @Nullable UrlTemplate urlTemplate, @Nullable UrlTemplate urlTemplate2, long j15, long j16) {
        return new SegmentBase.SegmentTemplate(rangedUri, j6, j10, j11, j12, j13, list, j14, urlTemplate, urlTemplate2, Util.K0(j15), Util.K0(j16));
    }

    protected SegmentBase.SegmentTemplate k0(XmlPullParser xmlPullParser, @Nullable SegmentBase.SegmentTemplate segmentTemplate, List<Descriptor> list, long j6, long j10, long j11, long j12, long j13) throws XmlPullParserException, IOException {
        long jW = W(xmlPullParser, "timescale", segmentTemplate != null ? segmentTemplate.timescale : 1L);
        long jW2 = W(xmlPullParser, "presentationTimeOffset", segmentTemplate != null ? segmentTemplate.presentationTimeOffset : 0L);
        long jW3 = W(xmlPullParser, TypedValues.TransitionType.S_DURATION, segmentTemplate != null ? segmentTemplate.duration : -9223372036854775807L);
        long jW4 = W(xmlPullParser, "startNumber", segmentTemplate != null ? segmentTemplate.startNumber : 1L);
        long jV = V(list);
        long jS = s(j11, j12);
        List<SegmentBase.SegmentTimelineElement> listL0 = null;
        UrlTemplate urlTemplateU0 = u0(xmlPullParser, "media", segmentTemplate != null ? segmentTemplate.mediaTemplate : null);
        UrlTemplate urlTemplateU1 = u0(xmlPullParser, "initialization", segmentTemplate != null ? segmentTemplate.initializationTemplate : null);
        RangedUri rangedUriS = null;
        do {
            xmlPullParser.next();
            if (XmlPullParserUtil.f(xmlPullParser, "Initialization")) {
                rangedUriS = S(xmlPullParser);
            } else if (XmlPullParserUtil.f(xmlPullParser, "SegmentTimeline")) {
                listL0 = l0(xmlPullParser, jW, j10);
            } else {
                v(xmlPullParser);
            }
        } while (!XmlPullParserUtil.d(xmlPullParser, "SegmentTemplate"));
        if (segmentTemplate != null) {
            if (rangedUriS == null) {
                rangedUriS = segmentTemplate.initialization;
            }
            if (listL0 == null) {
                listL0 = segmentTemplate.segmentTimeline;
            }
        }
        return k(rangedUriS, jW, jW2, jW4, jV, jW3, listL0, jS, urlTemplateU1, urlTemplateU0, j13, j6);
    }

    protected SegmentBase.SegmentTimelineElement l(long j6, long j10) {
        return new SegmentBase.SegmentTimelineElement(j6, j10);
    }

    protected List<SegmentBase.SegmentTimelineElement> l0(XmlPullParser xmlPullParser, long j6, long j10) throws XmlPullParserException, IOException {
        ArrayList arrayList = new ArrayList();
        long jA = 0;
        long jW = -9223372036854775807L;
        boolean z6 = false;
        int iT = 0;
        do {
            xmlPullParser.next();
            if (XmlPullParserUtil.f(xmlPullParser, ExifInterface.LATITUDE_SOUTH)) {
                long jW2 = W(xmlPullParser, "t", -9223372036854775807L);
                if (z6) {
                    jA = a(arrayList, jA, jW, iT, jW2);
                }
                if (jW2 == -9223372036854775807L) {
                    jW2 = jA;
                }
                jW = W(xmlPullParser, "d", -9223372036854775807L);
                iT = T(xmlPullParser, "r", 0);
                z6 = true;
                jA = jW2;
            } else {
                v(xmlPullParser);
            }
        } while (!XmlPullParserUtil.d(xmlPullParser, "SegmentTimeline"));
        if (z6) {
            a(arrayList, jA, jW, iT, Util.X0(j10, j6, 1000L));
        }
        return arrayList;
    }

    protected SegmentBase.SingleSegmentBase m(RangedUri rangedUri, long j6, long j10, long j11, long j12) {
        return new SegmentBase.SingleSegmentBase(rangedUri, j6, j10, j11, j12);
    }

    protected RangedUri m0(XmlPullParser xmlPullParser) {
        return c0(xmlPullParser, "media", "mediaRange");
    }

    protected UtcTimingElement n(String str, String str2) {
        return new UtcTimingElement(str, str2);
    }

    protected ServiceDescriptionElement p0(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        long jW = -9223372036854775807L;
        long jW2 = -9223372036854775807L;
        long jW3 = -9223372036854775807L;
        float fQ = -3.4028235E38f;
        float fQ2 = -3.4028235E38f;
        while (true) {
            xmlPullParser.next();
            if (XmlPullParserUtil.f(xmlPullParser, "Latency")) {
                jW = W(xmlPullParser, TypedValues.AttributesType.S_TARGET, -9223372036854775807L);
                jW2 = W(xmlPullParser, "min", -9223372036854775807L);
                jW3 = W(xmlPullParser, "max", -9223372036854775807L);
            } else if (XmlPullParserUtil.f(xmlPullParser, "PlaybackRate")) {
                fQ = Q(xmlPullParser, "min", -3.4028235E38f);
                fQ2 = Q(xmlPullParser, "max", -3.4028235E38f);
            }
            long j6 = jW;
            long j10 = jW2;
            long j11 = jW3;
            float f = fQ;
            float f6 = fQ2;
            if (XmlPullParserUtil.d(xmlPullParser, "ServiceDescription")) {
                return new ServiceDescriptionElement(j6, j10, j11, f, f6);
            }
            jW = j6;
            jW2 = j10;
            jW3 = j11;
            fQ = f;
            fQ2 = f6;
        }
    }

    protected UtcTimingElement v0(XmlPullParser xmlPullParser) {
        return n(xmlPullParser.getAttributeValue(null, "schemeIdUri"), xmlPullParser.getAttributeValue(null, "value"));
    }

    /* JADX WARN: Code duplicated, block: B:71:0x0310 A[LOOP:0: B:3:0x007e->B:71:0x0310, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:72:0x02d0 A[EDGE_INSN: B:72:0x02d0->B:65:0x02d0 BREAK  A[LOOP:0: B:3:0x007e->B:71:0x0310], SYNTHETIC] */
    protected AdaptationSet x(XmlPullParser xmlPullParser, List<BaseUrl> list, @Nullable SegmentBase segmentBase, long j6, long j10, long j11, long j12, long j13, boolean z6) throws XmlPullParserException, IOException {
        long j14;
        ArrayList<Descriptor> arrayList;
        Object obj;
        long j15;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ArrayList arrayList4;
        ArrayList arrayList5;
        String str;
        ArrayList arrayList6;
        int i10;
        ArrayList<Descriptor> arrayList7;
        long jA;
        XmlPullParser xmlPullParser2 = xmlPullParser;
        long jW = W(xmlPullParser2, "id", -1L);
        int iF = F(xmlPullParser);
        String attributeValue = xmlPullParser2.getAttributeValue(null, "mimeType");
        String attributeValue2 = xmlPullParser2.getAttributeValue(null, "codecs");
        int iT = T(xmlPullParser2, "width", -1);
        int iT2 = T(xmlPullParser2, "height", -1);
        float fR = R(xmlPullParser2, -1.0f);
        int iT3 = T(xmlPullParser2, "audioSamplingRate", -1);
        String str2 = "lang";
        String attributeValue3 = xmlPullParser2.getAttributeValue(null, "lang");
        String attributeValue4 = xmlPullParser2.getAttributeValue(null, "label");
        ArrayList<DrmInitData.SchemeData> arrayList8 = new ArrayList<>();
        ArrayList<Descriptor> arrayList9 = new ArrayList<>();
        ArrayList arrayList10 = new ArrayList();
        ArrayList arrayList11 = new ArrayList();
        ArrayList arrayList12 = new ArrayList();
        ArrayList arrayList13 = new ArrayList();
        ArrayList arrayList14 = new ArrayList();
        ArrayList arrayList15 = new ArrayList();
        SegmentBase segmentBaseK0 = segmentBase;
        int i11 = iF;
        String str3 = attributeValue3;
        int iZ = -1;
        String strU = attributeValue4;
        String str4 = null;
        boolean z10 = false;
        long jA2 = j10;
        long j16 = j11;
        while (true) {
            xmlPullParser.next();
            if (XmlPullParserUtil.f(xmlPullParser2, "BaseURL")) {
                if (!z10) {
                    jA2 = A(xmlPullParser2, jA2);
                    z10 = true;
                }
                j14 = j16;
                arrayList = arrayList9;
                arrayList15.addAll(B(xmlPullParser2, list, z6));
            } else {
                j14 = j16;
                arrayList = arrayList9;
                if (XmlPullParserUtil.f(xmlPullParser2, "ContentProtection")) {
                    Pair<String, DrmInitData.SchemeData> pairE = E(xmlPullParser);
                    Object obj2 = pairE.first;
                    if (obj2 != null) {
                        str4 = (String) obj2;
                    }
                    Object obj3 = pairE.second;
                    if (obj3 != null) {
                        arrayList8.add((DrmInitData.SchemeData) obj3);
                    }
                } else {
                    if (XmlPullParserUtil.f(xmlPullParser2, "ContentComponent")) {
                        String strP = p(str3, xmlPullParser2.getAttributeValue(null, str2));
                        int iO = o(i11, F(xmlPullParser));
                        str = strP;
                        obj = null;
                        j15 = jA2;
                        arrayList6 = arrayList14;
                        arrayList2 = arrayList13;
                        arrayList3 = arrayList12;
                        arrayList4 = arrayList11;
                        arrayList5 = arrayList10;
                        i10 = iO;
                        arrayList7 = arrayList;
                    } else {
                        int i12 = i11;
                        String str5 = str3;
                        if (XmlPullParserUtil.f(xmlPullParser2, "Role")) {
                            arrayList11.add(H(xmlPullParser2, "Role"));
                        } else if (XmlPullParserUtil.f(xmlPullParser2, "AudioChannelConfiguration")) {
                            iZ = z(xmlPullParser);
                        } else if (XmlPullParserUtil.f(xmlPullParser2, "Accessibility")) {
                            arrayList10.add(H(xmlPullParser2, "Accessibility"));
                        } else if (XmlPullParserUtil.f(xmlPullParser2, "EssentialProperty")) {
                            arrayList12.add(H(xmlPullParser2, "EssentialProperty"));
                        } else if (XmlPullParserUtil.f(xmlPullParser2, "SupplementalProperty")) {
                            arrayList13.add(H(xmlPullParser2, "SupplementalProperty"));
                        } else if (XmlPullParserUtil.f(xmlPullParser2, "Representation")) {
                            j15 = jA2;
                            arrayList2 = arrayList13;
                            arrayList3 = arrayList12;
                            arrayList4 = arrayList11;
                            arrayList5 = arrayList10;
                            obj = null;
                            str = str5;
                            RepresentationInfo representationInfoD0 = d0(xmlPullParser, !arrayList15.isEmpty() ? arrayList15 : list, attributeValue, attributeValue2, iT, iT2, fR, iZ, iT3, str5, arrayList4, arrayList5, arrayList3, arrayList2, segmentBaseK0, j12, j6, j15, j14, j13, z6);
                            int iO2 = o(i12, MimeTypes.k(representationInfoD0.format.sampleMimeType));
                            arrayList6 = arrayList14;
                            arrayList6.add(representationInfoD0);
                            xmlPullParser2 = xmlPullParser;
                            i10 = iO2;
                            arrayList7 = arrayList;
                        } else {
                            obj = null;
                            j15 = jA2;
                            arrayList15 = arrayList15;
                            arrayList2 = arrayList13;
                            arrayList3 = arrayList12;
                            arrayList4 = arrayList11;
                            arrayList5 = arrayList10;
                            arrayList8 = arrayList8;
                            str2 = str2;
                            str = str5;
                            arrayList6 = arrayList14;
                            xmlPullParser2 = xmlPullParser;
                            if (XmlPullParserUtil.f(xmlPullParser2, "SegmentBase")) {
                                segmentBaseK0 = i0(xmlPullParser2, (SegmentBase.SingleSegmentBase) segmentBaseK0);
                                i10 = i12;
                                arrayList7 = arrayList;
                                j16 = j14;
                                xmlPullParser2 = xmlPullParser2;
                            } else {
                                if (XmlPullParserUtil.f(xmlPullParser2, "SegmentList")) {
                                    jA = A(xmlPullParser2, j14);
                                    i10 = i12;
                                    segmentBaseK0 = j0(xmlPullParser, (SegmentBase.SegmentList) segmentBaseK0, j12, j6, j15, jA, j13);
                                } else {
                                    j16 = j14;
                                    i10 = i12;
                                    if (XmlPullParserUtil.f(xmlPullParser2, "SegmentTemplate")) {
                                        jA = A(xmlPullParser2, j16);
                                        segmentBaseK0 = k0(xmlPullParser, (SegmentBase.SegmentTemplate) segmentBaseK0, arrayList2, j12, j6, j15, jA, j13);
                                    } else {
                                        xmlPullParser2 = xmlPullParser2;
                                        if (XmlPullParserUtil.f(xmlPullParser2, "InbandEventStream")) {
                                            arrayList7 = arrayList;
                                            arrayList7.add(H(xmlPullParser2, "InbandEventStream"));
                                        } else {
                                            arrayList7 = arrayList;
                                            if (XmlPullParserUtil.f(xmlPullParser2, TextFieldImplKt.LabelId)) {
                                                strU = U(xmlPullParser);
                                            } else if (XmlPullParserUtil.e(xmlPullParser)) {
                                                y(xmlPullParser);
                                            }
                                        }
                                    }
                                }
                                j16 = jA;
                                arrayList7 = arrayList;
                            }
                        }
                        obj = null;
                        j15 = jA2;
                        arrayList15 = arrayList15;
                        arrayList2 = arrayList13;
                        arrayList3 = arrayList12;
                        arrayList4 = arrayList11;
                        arrayList5 = arrayList10;
                        arrayList8 = arrayList8;
                        str2 = str2;
                        i10 = i12;
                        str = str5;
                        arrayList7 = arrayList;
                        j16 = j14;
                        arrayList6 = arrayList14;
                    }
                    j16 = j14;
                }
                if (XmlPullParserUtil.d(xmlPullParser2, "AdaptationSet")) {
                    break;
                }
                arrayList9 = arrayList7;
                arrayList14 = arrayList6;
                jA2 = j15;
                arrayList15 = arrayList15;
                arrayList13 = arrayList2;
                arrayList12 = arrayList3;
                arrayList11 = arrayList4;
                arrayList10 = arrayList5;
                arrayList8 = arrayList8;
                str2 = str2;
                i11 = i10;
                str3 = str;
            }
            j16 = j14;
            arrayList15 = arrayList15;
            arrayList6 = arrayList14;
            arrayList2 = arrayList13;
            arrayList3 = arrayList12;
            arrayList4 = arrayList11;
            arrayList5 = arrayList10;
            arrayList8 = arrayList8;
            str2 = str2;
            i10 = i11;
            str = str3;
            obj = null;
            j15 = jA2;
            arrayList7 = arrayList;
            if (XmlPullParserUtil.d(xmlPullParser2, "AdaptationSet")) {
                break;
                break;
            }
            arrayList9 = arrayList7;
            arrayList14 = arrayList6;
            jA2 = j15;
            arrayList15 = arrayList15;
            arrayList13 = arrayList2;
            arrayList12 = arrayList3;
            arrayList11 = arrayList4;
            arrayList10 = arrayList5;
            arrayList8 = arrayList8;
            str2 = str2;
            i11 = i10;
            str3 = str;
        }
        List<Representation> arrayList16 = new ArrayList<>(arrayList6.size());
        for (int i13 = 0; i13 < arrayList6.size(); i13++) {
            arrayList16.add(i((RepresentationInfo) arrayList6.get(i13), strU, str4, arrayList8, arrayList7));
        }
        return b(jW, i10, arrayList16, arrayList5, arrayList3, arrayList2);
    }

    protected int z(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        String strQ0 = q0(xmlPullParser, "schemeIdUri", null);
        strQ0.hashCode();
        int iJ = -1;
        switch (strQ0) {
            case "urn:dts:dash:audio_channel_configuration:2012":
            case "tag:dts.com,2014:dash:audio_channel_configuration:2012":
                iJ = J(xmlPullParser);
                break;
            case "urn:mpeg:dash:23003:3:audio_channel_configuration:2011":
                iJ = T(xmlPullParser, "value", -1);
                break;
            case "tag:dolby.com,2014:dash:audio_channel_configuration:2011":
            case "urn:dolby:dash:audio_channel_configuration:2011":
                iJ = I(xmlPullParser);
                break;
            case "urn:mpeg:mpegB:cicp:ChannelConfiguration":
                iJ = Y(xmlPullParser);
                break;
            case "tag:dts.com,2018:uhd:audio_channel_configuration":
                iJ = K(xmlPullParser);
                break;
        }
        do {
            xmlPullParser.next();
        } while (!XmlPullParserUtil.d(xmlPullParser, "AudioChannelConfiguration"));
        return iJ;
    }

    public DashManifestParser() {
        try {
            this.xmlParserFactory = XmlPullParserFactory.newInstance();
        } catch (XmlPullParserException e) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e);
        }
    }

    private static void r(ArrayList<DrmInitData.SchemeData> arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            DrmInitData.SchemeData schemeData = arrayList.get(size);
            if (!schemeData.e()) {
                for (int i10 = 0; i10 < arrayList.size(); i10++) {
                    if (arrayList.get(i10).a(schemeData)) {
                        arrayList.remove(size);
                        break;
                    }
                }
            }
        }
    }

    @Nullable
    private static String t(@Nullable String str, @Nullable String str2) {
        if (MimeTypes.o(str)) {
            return MimeTypes.c(str2);
        }
        if (MimeTypes.s(str)) {
            return MimeTypes.n(str2);
        }
        if (MimeTypes.r(str) || MimeTypes.p(str)) {
            return str;
        }
        if ("application/mp4".equals(str)) {
            String strG = MimeTypes.g(str2);
            if ("text/vtt".equals(strG)) {
                return "application/x-mp4-vtt";
            }
            return strG;
        }
        return null;
    }

    public static void v(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        if (!XmlPullParserUtil.e(xmlPullParser)) {
            return;
        }
        int i10 = 1;
        while (i10 != 0) {
            xmlPullParser.next();
            if (XmlPullParserUtil.e(xmlPullParser)) {
                i10++;
            } else if (XmlPullParserUtil.c(xmlPullParser)) {
                i10--;
            }
        }
    }

    protected byte[] O(XmlPullParser xmlPullParser, ByteArrayOutputStream byteArrayOutputStream) throws XmlPullParserException, IOException {
        byteArrayOutputStream.reset();
        XmlSerializer xmlSerializerNewSerializer = Xml.newSerializer();
        xmlSerializerNewSerializer.setOutput(byteArrayOutputStream, e.UTF_8.name());
        xmlPullParser.nextToken();
        while (!XmlPullParserUtil.d(xmlPullParser, "Event")) {
            switch (xmlPullParser.getEventType()) {
                case 0:
                    xmlSerializerNewSerializer.startDocument(null, Boolean.FALSE);
                    break;
                case 1:
                    xmlSerializerNewSerializer.endDocument();
                    break;
                case 2:
                    xmlSerializerNewSerializer.startTag(xmlPullParser.getNamespace(), xmlPullParser.getName());
                    for (int i10 = 0; i10 < xmlPullParser.getAttributeCount(); i10++) {
                        xmlSerializerNewSerializer.attribute(xmlPullParser.getAttributeNamespace(i10), xmlPullParser.getAttributeName(i10), xmlPullParser.getAttributeValue(i10));
                    }
                    break;
                case 3:
                    xmlSerializerNewSerializer.endTag(xmlPullParser.getNamespace(), xmlPullParser.getName());
                    break;
                case 4:
                    xmlSerializerNewSerializer.text(xmlPullParser.getText());
                    break;
                case 5:
                    xmlSerializerNewSerializer.cdsect(xmlPullParser.getText());
                    break;
                case 6:
                    xmlSerializerNewSerializer.entityRef(xmlPullParser.getText());
                    break;
                case 7:
                    xmlSerializerNewSerializer.ignorableWhitespace(xmlPullParser.getText());
                    break;
                case 8:
                    xmlSerializerNewSerializer.processingInstruction(xmlPullParser.getText());
                    break;
                case 9:
                    xmlSerializerNewSerializer.comment(xmlPullParser.getText());
                    break;
                case 10:
                    xmlSerializerNewSerializer.docdecl(xmlPullParser.getText());
                    break;
            }
            xmlPullParser.nextToken();
        }
        xmlSerializerNewSerializer.flush();
        return byteArrayOutputStream.toByteArray();
    }

    protected void y(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        v(xmlPullParser);
    }
}
