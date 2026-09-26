package androidx.media3.exoplayer.smoothstreaming.manifest;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.upstream.ParsingLoadable;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.mp4.PsshAtomUtil;
import androidx.media3.extractor.mp4.TrackEncryptionBox;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: loaded from: classes4.dex */
@UnstableApi
public class SsManifestParser implements ParsingLoadable.Parser<SsManifest> {
    private final XmlPullParserFactory xmlParserFactory;

    private static abstract class ElementParser {
        private final String baseUri;
        private final List<Pair<String, Object>> normalizedAttributes = new LinkedList();

        @Nullable
        private final ElementParser parent;
        private final String tag;

        protected void a(Object obj) {
        }

        protected abstract Object b();

        @Nullable
        protected final Object c(String str) {
            for (int i10 = 0; i10 < this.normalizedAttributes.size(); i10++) {
                Pair<String, Object> pair = this.normalizedAttributes.get(i10);
                if (((String) pair.first).equals(str)) {
                    return pair.second;
                }
            }
            ElementParser elementParser = this.parent;
            if (elementParser == null) {
                return null;
            }
            return elementParser.c(str);
        }

        protected boolean d(String str) {
            return false;
        }

        public final Object f(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
            boolean z6 = false;
            int i10 = 0;
            while (true) {
                int eventType = xmlPullParser.getEventType();
                if (eventType == 1) {
                    return null;
                }
                if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    if (this.tag.equals(name)) {
                        n(xmlPullParser);
                        z6 = true;
                    } else if (z6) {
                        if (i10 > 0) {
                            i10++;
                        } else if (d(name)) {
                            n(xmlPullParser);
                        } else {
                            ElementParser elementParserE = e(this, name, this.baseUri);
                            if (elementParserE == null) {
                                i10 = 1;
                            } else {
                                a(elementParserE.f(xmlPullParser));
                            }
                        }
                    }
                } else if (eventType != 3) {
                    if (eventType == 4 && z6 && i10 == 0) {
                        o(xmlPullParser);
                    }
                } else if (!z6) {
                    continue;
                } else if (i10 > 0) {
                    i10--;
                } else {
                    String name2 = xmlPullParser.getName();
                    h(xmlPullParser);
                    if (!d(name2)) {
                        return b();
                    }
                }
                xmlPullParser.next();
            }
        }

        protected final boolean g(XmlPullParser xmlPullParser, String str, boolean z6) {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            return attributeValue != null ? Boolean.parseBoolean(attributeValue) : z6;
        }

        protected void h(XmlPullParser xmlPullParser) {
        }

        protected final int i(XmlPullParser xmlPullParser, String str, int i10) throws ParserException {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue == null) {
                return i10;
            }
            try {
                return Integer.parseInt(attributeValue);
            } catch (NumberFormatException e) {
                throw ParserException.c(null, e);
            }
        }

        protected final long j(XmlPullParser xmlPullParser, String str, long j6) throws ParserException {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue == null) {
                return j6;
            }
            try {
                return Long.parseLong(attributeValue);
            } catch (NumberFormatException e) {
                throw ParserException.c(null, e);
            }
        }

        protected final int k(XmlPullParser xmlPullParser, String str) throws ParserException {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue == null) {
                throw new MissingFieldException(str);
            }
            try {
                return Integer.parseInt(attributeValue);
            } catch (NumberFormatException e) {
                throw ParserException.c(null, e);
            }
        }

        protected final long l(XmlPullParser xmlPullParser, String str) throws ParserException {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue == null) {
                throw new MissingFieldException(str);
            }
            try {
                return Long.parseLong(attributeValue);
            } catch (NumberFormatException e) {
                throw ParserException.c(null, e);
            }
        }

        protected final String m(XmlPullParser xmlPullParser, String str) throws MissingFieldException {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                return attributeValue;
            }
            throw new MissingFieldException(str);
        }

        protected void n(XmlPullParser xmlPullParser) throws ParserException {
        }

        protected void o(XmlPullParser xmlPullParser) {
        }

        private ElementParser e(ElementParser elementParser, String str, String str2) {
            if (QualityLevelParser.TAG.equals(str)) {
                return new QualityLevelParser(elementParser, str2);
            }
            if (ProtectionParser.TAG.equals(str)) {
                return new ProtectionParser(elementParser, str2);
            }
            if (StreamIndexParser.TAG.equals(str)) {
                return new StreamIndexParser(elementParser, str2);
            }
            return null;
        }

        protected final void p(String str, @Nullable Object obj) {
            this.normalizedAttributes.add(Pair.create(str, obj));
        }

        public ElementParser(@Nullable ElementParser elementParser, String str, String str2) {
            this.parent = elementParser;
            this.baseUri = str;
            this.tag = str2;
        }
    }

    public static class MissingFieldException extends ParserException {
        public MissingFieldException(String str) {
            super("Missing required field: " + str, null, true, 4);
        }
    }

    private static class ProtectionParser extends ElementParser {
        private static final int INITIALIZATION_VECTOR_SIZE = 8;
        public static final String KEY_SYSTEM_ID = "SystemID";
        public static final String TAG = "Protection";
        public static final String TAG_PROTECTION_HEADER = "ProtectionHeader";
        private boolean inProtectionHeader;
        private byte[] initData;
        private UUID uuid;

        private static TrackEncryptionBox[] q(byte[] bArr) {
            return new TrackEncryptionBox[]{new TrackEncryptionBox(true, null, 8, r(bArr), 0, 0, null)};
        }

        private static String s(String str) {
            return (str.charAt(0) == '{' && str.charAt(str.length() - 1) == '}') ? str.substring(1, str.length() - 1) : str;
        }

        public ProtectionParser(ElementParser elementParser, String str) {
            super(elementParser, str, TAG);
        }

        private static byte[] r(byte[] bArr) {
            StringBuilder sb = new StringBuilder();
            for (int i10 = 0; i10 < bArr.length; i10 += 2) {
                sb.append((char) bArr[i10]);
            }
            String string = sb.toString();
            byte[] bArrDecode = Base64.decode(string.substring(string.indexOf("<KID>") + 5, string.indexOf("</KID>")), 0);
            t(bArrDecode, 0, 3);
            t(bArrDecode, 1, 2);
            t(bArrDecode, 4, 5);
            t(bArrDecode, 6, 7);
            return bArrDecode;
        }

        private static void t(byte[] bArr, int i10, int i11) {
            byte b7 = bArr[i10];
            bArr[i10] = bArr[i11];
            bArr[i11] = b7;
        }

        @Override // androidx.media3.exoplayer.smoothstreaming.manifest.SsManifestParser.ElementParser
        public Object b() {
            UUID uuid = this.uuid;
            return new SsManifest.ProtectionElement(uuid, PsshAtomUtil.a(uuid, this.initData), q(this.initData));
        }

        @Override // androidx.media3.exoplayer.smoothstreaming.manifest.SsManifestParser.ElementParser
        public boolean d(String str) {
            return TAG_PROTECTION_HEADER.equals(str);
        }

        @Override // androidx.media3.exoplayer.smoothstreaming.manifest.SsManifestParser.ElementParser
        public void h(XmlPullParser xmlPullParser) {
            if (TAG_PROTECTION_HEADER.equals(xmlPullParser.getName())) {
                this.inProtectionHeader = false;
            }
        }

        @Override // androidx.media3.exoplayer.smoothstreaming.manifest.SsManifestParser.ElementParser
        public void o(XmlPullParser xmlPullParser) {
            if (this.inProtectionHeader) {
                this.initData = Base64.decode(xmlPullParser.getText(), 0);
            }
        }

        @Override // androidx.media3.exoplayer.smoothstreaming.manifest.SsManifestParser.ElementParser
        public void n(XmlPullParser xmlPullParser) {
            if (TAG_PROTECTION_HEADER.equals(xmlPullParser.getName())) {
                this.inProtectionHeader = true;
                this.uuid = UUID.fromString(s(xmlPullParser.getAttributeValue(null, KEY_SYSTEM_ID)));
            }
        }
    }

    private static class QualityLevelParser extends ElementParser {
        private static final String KEY_BITRATE = "Bitrate";
        private static final String KEY_CHANNELS = "Channels";
        private static final String KEY_CODEC_PRIVATE_DATA = "CodecPrivateData";
        private static final String KEY_FOUR_CC = "FourCC";
        private static final String KEY_INDEX = "Index";
        private static final String KEY_LANGUAGE = "Language";
        private static final String KEY_MAX_HEIGHT = "MaxHeight";
        private static final String KEY_MAX_WIDTH = "MaxWidth";
        private static final String KEY_NAME = "Name";
        private static final String KEY_SAMPLING_RATE = "SamplingRate";
        private static final String KEY_SUB_TYPE = "Subtype";
        private static final String KEY_TYPE = "Type";
        public static final String TAG = "QualityLevel";
        private Format format;

        @Override // androidx.media3.exoplayer.smoothstreaming.manifest.SsManifestParser.ElementParser
        public Object b() {
            return this.format;
        }

        public QualityLevelParser(ElementParser elementParser, String str) {
            super(elementParser, str, TAG);
        }

        private static List<byte[]> q(String str) {
            ArrayList arrayList = new ArrayList();
            if (!TextUtils.isEmpty(str)) {
                byte[] bArrK = Util.K(str);
                byte[][] bArrI = CodecSpecificDataUtil.i(bArrK);
                if (bArrI == null) {
                    arrayList.add(bArrK);
                } else {
                    Collections.addAll(arrayList, bArrI);
                }
            }
            return arrayList;
        }

        @Nullable
        private static String r(String str) {
            if (str.equalsIgnoreCase("H264") || str.equalsIgnoreCase("X264") || str.equalsIgnoreCase("AVC1") || str.equalsIgnoreCase("DAVC")) {
                return "video/avc";
            }
            if (str.equalsIgnoreCase("AAC") || str.equalsIgnoreCase("AACL") || str.equalsIgnoreCase("AACH") || str.equalsIgnoreCase("AACP")) {
                return "audio/mp4a-latm";
            }
            if (str.equalsIgnoreCase("TTML") || str.equalsIgnoreCase("DFXP")) {
                return "application/ttml+xml";
            }
            if (str.equalsIgnoreCase("ac-3") || str.equalsIgnoreCase("dac3")) {
                return "audio/ac3";
            }
            if (str.equalsIgnoreCase("ec-3") || str.equalsIgnoreCase("dec3")) {
                return "audio/eac3";
            }
            if (str.equalsIgnoreCase("dtsc")) {
                return "audio/vnd.dts";
            }
            if (str.equalsIgnoreCase("dtsh") || str.equalsIgnoreCase("dtsl")) {
                return "audio/vnd.dts.hd";
            }
            if (str.equalsIgnoreCase("dtse")) {
                return "audio/vnd.dts.hd;profile=lbr";
            }
            if (str.equalsIgnoreCase("opus")) {
                return "audio/opus";
            }
            return null;
        }

        /* JADX WARN: Code duplicated, block: B:27:0x00b1  */
        @Override // androidx.media3.exoplayer.smoothstreaming.manifest.SsManifestParser.ElementParser
        public void n(XmlPullParser xmlPullParser) throws ParserException {
            int i10;
            Format.Builder builder = new Format.Builder();
            String strR = r(m(xmlPullParser, KEY_FOUR_CC));
            int iIntValue = ((Integer) c("Type")).intValue();
            if (iIntValue == 2) {
                builder.M("video/mp4").n0(k(xmlPullParser, KEY_MAX_WIDTH)).S(k(xmlPullParser, KEY_MAX_HEIGHT)).V(q(xmlPullParser.getAttributeValue(null, KEY_CODEC_PRIVATE_DATA)));
            } else if (iIntValue == 1) {
                if (strR == null) {
                    strR = "audio/mp4a-latm";
                }
                int iK = k(xmlPullParser, KEY_CHANNELS);
                int iK2 = k(xmlPullParser, KEY_SAMPLING_RATE);
                List<byte[]> listQ = q(xmlPullParser.getAttributeValue(null, KEY_CODEC_PRIVATE_DATA));
                if (listQ.isEmpty() && "audio/mp4a-latm".equals(strR)) {
                    listQ = Collections.singletonList(AacUtil.a(iK2, iK));
                }
                builder.M("audio/mp4").J(iK).h0(iK2).V(listQ);
            } else if (iIntValue == 3) {
                String str = (String) c(KEY_SUB_TYPE);
                if (str == null) {
                    i10 = 0;
                } else if (str.equals("CAPT")) {
                    i10 = 64;
                } else if (str.equals("DESC")) {
                    i10 = 1024;
                } else {
                    i10 = 0;
                }
                builder.M("application/mp4").e0(i10);
            } else {
                builder.M("application/mp4");
            }
            this.format = builder.U(xmlPullParser.getAttributeValue(null, KEY_INDEX)).W((String) c(KEY_NAME)).g0(strR).I(k(xmlPullParser, KEY_BITRATE)).X((String) c(KEY_LANGUAGE)).G();
        }
    }

    private static class SmoothStreamingMediaParser extends ElementParser {
        private static final String KEY_DURATION = "Duration";
        private static final String KEY_DVR_WINDOW_LENGTH = "DVRWindowLength";
        private static final String KEY_IS_LIVE = "IsLive";
        private static final String KEY_LOOKAHEAD_COUNT = "LookaheadCount";
        private static final String KEY_MAJOR_VERSION = "MajorVersion";
        private static final String KEY_MINOR_VERSION = "MinorVersion";
        private static final String KEY_TIME_SCALE = "TimeScale";
        public static final String TAG = "SmoothStreamingMedia";
        private long duration;
        private long dvrWindowLength;
        private boolean isLive;
        private int lookAheadCount;
        private int majorVersion;
        private int minorVersion;

        @Nullable
        private SsManifest.ProtectionElement protectionElement;
        private final List<SsManifest.StreamElement> streamElements;
        private long timescale;

        public SmoothStreamingMediaParser(ElementParser elementParser, String str) {
            super(elementParser, str, TAG);
            this.lookAheadCount = -1;
            this.protectionElement = null;
            this.streamElements = new LinkedList();
        }

        @Override // androidx.media3.exoplayer.smoothstreaming.manifest.SsManifestParser.ElementParser
        public void a(Object obj) {
            if (obj instanceof SsManifest.StreamElement) {
                this.streamElements.add((SsManifest.StreamElement) obj);
            } else if (obj instanceof SsManifest.ProtectionElement) {
                Assertions.g(this.protectionElement == null);
                this.protectionElement = (SsManifest.ProtectionElement) obj;
            }
        }

        @Override // androidx.media3.exoplayer.smoothstreaming.manifest.SsManifestParser.ElementParser
        public Object b() {
            int size = this.streamElements.size();
            SsManifest.StreamElement[] streamElementArr = new SsManifest.StreamElement[size];
            this.streamElements.toArray(streamElementArr);
            if (this.protectionElement != null) {
                SsManifest.ProtectionElement protectionElement = this.protectionElement;
                DrmInitData drmInitData = new DrmInitData(new DrmInitData.SchemeData(protectionElement.uuid, "video/mp4", protectionElement.data));
                for (int i10 = 0; i10 < size; i10++) {
                    SsManifest.StreamElement streamElement = streamElementArr[i10];
                    int i11 = streamElement.type;
                    if (i11 == 2 || i11 == 1) {
                        Format[] formatArr = streamElement.formats;
                        for (int i12 = 0; i12 < formatArr.length; i12++) {
                            formatArr[i12] = formatArr[i12].b().O(drmInitData).G();
                        }
                    }
                }
            }
            return new SsManifest(this.majorVersion, this.minorVersion, this.timescale, this.duration, this.dvrWindowLength, this.lookAheadCount, this.isLive, this.protectionElement, streamElementArr);
        }

        @Override // androidx.media3.exoplayer.smoothstreaming.manifest.SsManifestParser.ElementParser
        public void n(XmlPullParser xmlPullParser) throws ParserException {
            this.majorVersion = k(xmlPullParser, KEY_MAJOR_VERSION);
            this.minorVersion = k(xmlPullParser, KEY_MINOR_VERSION);
            this.timescale = j(xmlPullParser, KEY_TIME_SCALE, 10000000L);
            this.duration = l(xmlPullParser, KEY_DURATION);
            this.dvrWindowLength = j(xmlPullParser, KEY_DVR_WINDOW_LENGTH, 0L);
            this.lookAheadCount = i(xmlPullParser, KEY_LOOKAHEAD_COUNT, -1);
            this.isLive = g(xmlPullParser, KEY_IS_LIVE, false);
            p(KEY_TIME_SCALE, Long.valueOf(this.timescale));
        }
    }

    private static class StreamIndexParser extends ElementParser {
        private static final String KEY_DISPLAY_HEIGHT = "DisplayHeight";
        private static final String KEY_DISPLAY_WIDTH = "DisplayWidth";
        private static final String KEY_FRAGMENT_DURATION = "d";
        private static final String KEY_FRAGMENT_REPEAT_COUNT = "r";
        private static final String KEY_FRAGMENT_START_TIME = "t";
        private static final String KEY_LANGUAGE = "Language";
        private static final String KEY_MAX_HEIGHT = "MaxHeight";
        private static final String KEY_MAX_WIDTH = "MaxWidth";
        private static final String KEY_NAME = "Name";
        private static final String KEY_SUB_TYPE = "Subtype";
        private static final String KEY_TIME_SCALE = "TimeScale";
        private static final String KEY_TYPE = "Type";
        private static final String KEY_TYPE_AUDIO = "audio";
        private static final String KEY_TYPE_TEXT = "text";
        private static final String KEY_TYPE_VIDEO = "video";
        private static final String KEY_URL = "Url";
        public static final String TAG = "StreamIndex";
        private static final String TAG_STREAM_FRAGMENT = "c";
        private final String baseUri;
        private int displayHeight;
        private int displayWidth;
        private final List<Format> formats;
        private String language;
        private long lastChunkDuration;
        private int maxHeight;
        private int maxWidth;
        private String name;
        private ArrayList<Long> startTimes;
        private String subType;
        private long timescale;
        private int type;
        private String url;

        private int s(XmlPullParser xmlPullParser) throws ParserException {
            String attributeValue = xmlPullParser.getAttributeValue(null, "Type");
            if (attributeValue == null) {
                throw new MissingFieldException("Type");
            }
            if ("audio".equalsIgnoreCase(attributeValue)) {
                return 1;
            }
            if ("video".equalsIgnoreCase(attributeValue)) {
                return 2;
            }
            if ("text".equalsIgnoreCase(attributeValue)) {
                return 3;
            }
            throw ParserException.c("Invalid key value[" + attributeValue + "]", null);
        }

        public StreamIndexParser(ElementParser elementParser, String str) {
            super(elementParser, str, TAG);
            this.baseUri = str;
            this.formats = new LinkedList();
        }

        private void r(XmlPullParser xmlPullParser) throws ParserException {
            int size = this.startTimes.size();
            long j6 = j(xmlPullParser, KEY_FRAGMENT_START_TIME, -9223372036854775807L);
            int i10 = 1;
            if (j6 == -9223372036854775807L) {
                if (size == 0) {
                    j6 = 0;
                } else {
                    if (this.lastChunkDuration == -1) {
                        throw ParserException.c("Unable to infer start time", null);
                    }
                    j6 = this.lastChunkDuration + this.startTimes.get(size - 1).longValue();
                }
            }
            this.startTimes.add(Long.valueOf(j6));
            this.lastChunkDuration = j(xmlPullParser, "d", -9223372036854775807L);
            long j10 = j(xmlPullParser, KEY_FRAGMENT_REPEAT_COUNT, 1L);
            if (j10 > 1 && this.lastChunkDuration == -9223372036854775807L) {
                throw ParserException.c("Repeated chunk with unspecified duration", null);
            }
            while (true) {
                long j11 = i10;
                if (j11 >= j10) {
                    return;
                }
                this.startTimes.add(Long.valueOf((this.lastChunkDuration * j11) + j6));
                i10++;
            }
        }

        @Override // androidx.media3.exoplayer.smoothstreaming.manifest.SsManifestParser.ElementParser
        public void a(Object obj) {
            if (obj instanceof Format) {
                this.formats.add((Format) obj);
            }
        }

        @Override // androidx.media3.exoplayer.smoothstreaming.manifest.SsManifestParser.ElementParser
        public Object b() {
            Format[] formatArr = new Format[this.formats.size()];
            this.formats.toArray(formatArr);
            return new SsManifest.StreamElement(this.baseUri, this.url, this.type, this.subType, this.timescale, this.name, this.maxWidth, this.maxHeight, this.displayWidth, this.displayHeight, this.language, formatArr, this.startTimes, this.lastChunkDuration);
        }

        @Override // androidx.media3.exoplayer.smoothstreaming.manifest.SsManifestParser.ElementParser
        public boolean d(String str) {
            return TAG_STREAM_FRAGMENT.equals(str);
        }

        private void q(XmlPullParser xmlPullParser) throws ParserException {
            int iS = s(xmlPullParser);
            this.type = iS;
            p("Type", Integer.valueOf(iS));
            if (this.type == 3) {
                this.subType = m(xmlPullParser, KEY_SUB_TYPE);
            } else {
                this.subType = xmlPullParser.getAttributeValue(null, KEY_SUB_TYPE);
            }
            p(KEY_SUB_TYPE, this.subType);
            String attributeValue = xmlPullParser.getAttributeValue(null, KEY_NAME);
            this.name = attributeValue;
            p(KEY_NAME, attributeValue);
            this.url = m(xmlPullParser, KEY_URL);
            this.maxWidth = i(xmlPullParser, KEY_MAX_WIDTH, -1);
            this.maxHeight = i(xmlPullParser, KEY_MAX_HEIGHT, -1);
            this.displayWidth = i(xmlPullParser, KEY_DISPLAY_WIDTH, -1);
            this.displayHeight = i(xmlPullParser, KEY_DISPLAY_HEIGHT, -1);
            String attributeValue2 = xmlPullParser.getAttributeValue(null, KEY_LANGUAGE);
            this.language = attributeValue2;
            p(KEY_LANGUAGE, attributeValue2);
            long jI = i(xmlPullParser, KEY_TIME_SCALE, -1);
            this.timescale = jI;
            if (jI == -1) {
                this.timescale = ((Long) c(KEY_TIME_SCALE)).longValue();
            }
            this.startTimes = new ArrayList<>();
        }

        @Override // androidx.media3.exoplayer.smoothstreaming.manifest.SsManifestParser.ElementParser
        public void n(XmlPullParser xmlPullParser) throws ParserException {
            if (TAG_STREAM_FRAGMENT.equals(xmlPullParser.getName())) {
                r(xmlPullParser);
            } else {
                q(xmlPullParser);
            }
        }
    }

    @Override // androidx.media3.exoplayer.upstream.ParsingLoadable.Parser
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public SsManifest parse(Uri uri, InputStream inputStream) throws IOException {
        try {
            XmlPullParser xmlPullParserNewPullParser = this.xmlParserFactory.newPullParser();
            xmlPullParserNewPullParser.setInput(inputStream, null);
            return (SsManifest) new SmoothStreamingMediaParser(null, uri.toString()).f(xmlPullParserNewPullParser);
        } catch (XmlPullParserException e) {
            throw ParserException.c(null, e);
        }
    }

    public SsManifestParser() {
        try {
            this.xmlParserFactory = XmlPullParserFactory.newInstance();
        } catch (XmlPullParserException e) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e);
        }
    }
}
