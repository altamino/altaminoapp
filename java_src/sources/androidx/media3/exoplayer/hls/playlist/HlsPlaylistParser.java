package androidx.media3.exoplayer.hls.playlist;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.UriUtil;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.hls.HlsTrackMetadataEntry;
import androidx.media3.exoplayer.upstream.ParsingLoadable;
import androidx.media3.extractor.mp4.PsshAtomUtil;
import com.google.common.collect.h0;
import com.google.firebase.sessions.settings.c;
import com.narvii.chat.input.MentionedEditText;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Queue;
import java.util.TreeMap;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public final class HlsPlaylistParser implements ParsingLoadable.Parser<HlsPlaylist> {
    private static final String ATTR_CLOSED_CAPTIONS_NONE = "CLOSED-CAPTIONS=NONE";
    private static final String BOOLEAN_FALSE = "NO";
    private static final String BOOLEAN_TRUE = "YES";
    private static final String KEYFORMAT_IDENTITY = "identity";
    private static final String KEYFORMAT_PLAYREADY = "com.microsoft.playready";
    private static final String KEYFORMAT_WIDEVINE_PSSH_BINARY = "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed";
    private static final String KEYFORMAT_WIDEVINE_PSSH_JSON = "com.widevine";
    private static final String LOG_TAG = "HlsPlaylistParser";
    private static final String METHOD_AES_128 = "AES-128";
    private static final String METHOD_NONE = "NONE";
    private static final String METHOD_SAMPLE_AES = "SAMPLE-AES";
    private static final String METHOD_SAMPLE_AES_CENC = "SAMPLE-AES-CENC";
    private static final String METHOD_SAMPLE_AES_CTR = "SAMPLE-AES-CTR";
    private static final String PLAYLIST_HEADER = "#EXTM3U";
    private static final String TAG_BYTERANGE = "#EXT-X-BYTERANGE";
    private static final String TAG_DEFINE = "#EXT-X-DEFINE";
    private static final String TAG_DISCONTINUITY = "#EXT-X-DISCONTINUITY";
    private static final String TAG_DISCONTINUITY_SEQUENCE = "#EXT-X-DISCONTINUITY-SEQUENCE";
    private static final String TAG_ENDLIST = "#EXT-X-ENDLIST";
    private static final String TAG_GAP = "#EXT-X-GAP";
    private static final String TAG_IFRAME = "#EXT-X-I-FRAMES-ONLY";
    private static final String TAG_INDEPENDENT_SEGMENTS = "#EXT-X-INDEPENDENT-SEGMENTS";
    private static final String TAG_INIT_SEGMENT = "#EXT-X-MAP";
    private static final String TAG_I_FRAME_STREAM_INF = "#EXT-X-I-FRAME-STREAM-INF";
    private static final String TAG_KEY = "#EXT-X-KEY";
    private static final String TAG_MEDIA = "#EXT-X-MEDIA";
    private static final String TAG_MEDIA_DURATION = "#EXTINF";
    private static final String TAG_MEDIA_SEQUENCE = "#EXT-X-MEDIA-SEQUENCE";
    private static final String TAG_PART = "#EXT-X-PART";
    private static final String TAG_PART_INF = "#EXT-X-PART-INF";
    private static final String TAG_PLAYLIST_TYPE = "#EXT-X-PLAYLIST-TYPE";
    private static final String TAG_PREFIX = "#EXT";
    private static final String TAG_PRELOAD_HINT = "#EXT-X-PRELOAD-HINT";
    private static final String TAG_PROGRAM_DATE_TIME = "#EXT-X-PROGRAM-DATE-TIME";
    private static final String TAG_RENDITION_REPORT = "#EXT-X-RENDITION-REPORT";
    private static final String TAG_SERVER_CONTROL = "#EXT-X-SERVER-CONTROL";
    private static final String TAG_SESSION_KEY = "#EXT-X-SESSION-KEY";
    private static final String TAG_SKIP = "#EXT-X-SKIP";
    private static final String TAG_START = "#EXT-X-START";
    private static final String TAG_STREAM_INF = "#EXT-X-STREAM-INF";
    private static final String TAG_TARGET_DURATION = "#EXT-X-TARGETDURATION";
    private static final String TAG_VERSION = "#EXT-X-VERSION";
    private static final String TYPE_AUDIO = "AUDIO";
    private static final String TYPE_CLOSED_CAPTIONS = "CLOSED-CAPTIONS";
    private static final String TYPE_MAP = "MAP";
    private static final String TYPE_PART = "PART";
    private static final String TYPE_SUBTITLES = "SUBTITLES";
    private static final String TYPE_VIDEO = "VIDEO";
    private final HlsMultivariantPlaylist multivariantPlaylist;

    @Nullable
    private final HlsMediaPlaylist previousMediaPlaylist;
    private static final Pattern REGEX_AVERAGE_BANDWIDTH = Pattern.compile("AVERAGE-BANDWIDTH=(\\d+)\\b");
    private static final Pattern REGEX_VIDEO = Pattern.compile("VIDEO=\"(.+?)\"");
    private static final Pattern REGEX_AUDIO = Pattern.compile("AUDIO=\"(.+?)\"");
    private static final Pattern REGEX_SUBTITLES = Pattern.compile("SUBTITLES=\"(.+?)\"");
    private static final Pattern REGEX_CLOSED_CAPTIONS = Pattern.compile("CLOSED-CAPTIONS=\"(.+?)\"");
    private static final Pattern REGEX_BANDWIDTH = Pattern.compile("[^-]BANDWIDTH=(\\d+)\\b");
    private static final Pattern REGEX_CHANNELS = Pattern.compile("CHANNELS=\"(.+?)\"");
    private static final Pattern REGEX_CODECS = Pattern.compile("CODECS=\"(.+?)\"");
    private static final Pattern REGEX_RESOLUTION = Pattern.compile("RESOLUTION=(\\d+x\\d+)");
    private static final Pattern REGEX_FRAME_RATE = Pattern.compile("FRAME-RATE=([\\d\\.]+)\\b");
    private static final Pattern REGEX_TARGET_DURATION = Pattern.compile("#EXT-X-TARGETDURATION:(\\d+)\\b");
    private static final Pattern REGEX_ATTR_DURATION = Pattern.compile("DURATION=([\\d\\.]+)\\b");
    private static final Pattern REGEX_PART_TARGET_DURATION = Pattern.compile("PART-TARGET=([\\d\\.]+)\\b");
    private static final Pattern REGEX_VERSION = Pattern.compile("#EXT-X-VERSION:(\\d+)\\b");
    private static final Pattern REGEX_PLAYLIST_TYPE = Pattern.compile("#EXT-X-PLAYLIST-TYPE:(.+)\\b");
    private static final Pattern REGEX_CAN_SKIP_UNTIL = Pattern.compile("CAN-SKIP-UNTIL=([\\d\\.]+)\\b");
    private static final Pattern REGEX_CAN_SKIP_DATE_RANGES = b("CAN-SKIP-DATERANGES");
    private static final Pattern REGEX_SKIPPED_SEGMENTS = Pattern.compile("SKIPPED-SEGMENTS=(\\d+)\\b");
    private static final Pattern REGEX_HOLD_BACK = Pattern.compile("[:|,]HOLD-BACK=([\\d\\.]+)\\b");
    private static final Pattern REGEX_PART_HOLD_BACK = Pattern.compile("PART-HOLD-BACK=([\\d\\.]+)\\b");
    private static final Pattern REGEX_CAN_BLOCK_RELOAD = b("CAN-BLOCK-RELOAD");
    private static final Pattern REGEX_MEDIA_SEQUENCE = Pattern.compile("#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b");
    private static final Pattern REGEX_MEDIA_DURATION = Pattern.compile("#EXTINF:([\\d\\.]+)\\b");
    private static final Pattern REGEX_MEDIA_TITLE = Pattern.compile("#EXTINF:[\\d\\.]+\\b,(.+)");
    private static final Pattern REGEX_LAST_MSN = Pattern.compile("LAST-MSN=(\\d+)\\b");
    private static final Pattern REGEX_LAST_PART = Pattern.compile("LAST-PART=(\\d+)\\b");
    private static final Pattern REGEX_TIME_OFFSET = Pattern.compile("TIME-OFFSET=(-?[\\d\\.]+)\\b");
    private static final Pattern REGEX_BYTERANGE = Pattern.compile("#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b");
    private static final Pattern REGEX_ATTR_BYTERANGE = Pattern.compile("BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\"");
    private static final Pattern REGEX_BYTERANGE_START = Pattern.compile("BYTERANGE-START=(\\d+)\\b");
    private static final Pattern REGEX_BYTERANGE_LENGTH = Pattern.compile("BYTERANGE-LENGTH=(\\d+)\\b");
    private static final Pattern REGEX_METHOD = Pattern.compile("METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)");
    private static final Pattern REGEX_KEYFORMAT = Pattern.compile("KEYFORMAT=\"(.+?)\"");
    private static final Pattern REGEX_KEYFORMATVERSIONS = Pattern.compile("KEYFORMATVERSIONS=\"(.+?)\"");
    private static final Pattern REGEX_URI = Pattern.compile("URI=\"(.+?)\"");
    private static final Pattern REGEX_IV = Pattern.compile("IV=([^,.*]+)");
    private static final Pattern REGEX_TYPE = Pattern.compile("TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)");
    private static final Pattern REGEX_PRELOAD_HINT_TYPE = Pattern.compile("TYPE=(PART|MAP)");
    private static final Pattern REGEX_LANGUAGE = Pattern.compile("LANGUAGE=\"(.+?)\"");
    private static final Pattern REGEX_NAME = Pattern.compile("NAME=\"(.+?)\"");
    private static final Pattern REGEX_GROUP_ID = Pattern.compile("GROUP-ID=\"(.+?)\"");
    private static final Pattern REGEX_CHARACTERISTICS = Pattern.compile("CHARACTERISTICS=\"(.+?)\"");
    private static final Pattern REGEX_INSTREAM_ID = Pattern.compile("INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\"");
    private static final Pattern REGEX_AUTOSELECT = b("AUTOSELECT");
    private static final Pattern REGEX_DEFAULT = b("DEFAULT");
    private static final Pattern REGEX_FORCED = b("FORCED");
    private static final Pattern REGEX_INDEPENDENT = b("INDEPENDENT");
    private static final Pattern REGEX_GAP = b("GAP");
    private static final Pattern REGEX_PRECISE = b("PRECISE");
    private static final Pattern REGEX_VALUE = Pattern.compile("VALUE=\"(.+?)\"");
    private static final Pattern REGEX_IMPORT = Pattern.compile("IMPORT=\"(.+?)\"");
    private static final Pattern REGEX_VARIABLE_REFERENCE = Pattern.compile("\\{\\$([a-zA-Z0-9\\-_]+)\\}");

    public static final class DeltaUpdateException extends IOException {
    }

    private static class LineIterator {
        private final Queue<String> extraLines;

        @Nullable
        private String next;
        private final BufferedReader reader;

        public boolean a() throws IOException {
            String strTrim;
            if (this.next != null) {
                return true;
            }
            if (!this.extraLines.isEmpty()) {
                this.next = (String) Assertions.e(this.extraLines.poll());
                return true;
            }
            do {
                String line = this.reader.readLine();
                this.next = line;
                if (line == null) {
                    return false;
                }
                strTrim = line.trim();
                this.next = strTrim;
            } while (strTrim.isEmpty());
            return true;
        }

        public LineIterator(Queue<String> queue, BufferedReader bufferedReader) {
            this.extraLines = queue;
            this.reader = bufferedReader;
        }

        public String b() throws IOException {
            if (a()) {
                String str = this.next;
                this.next = null;
                return str;
            }
            throw new NoSuchElementException();
        }
    }

    public HlsPlaylistParser() {
        this(HlsMultivariantPlaylist.EMPTY, null);
    }

    private static int B(BufferedReader bufferedReader, boolean z6, int i10) throws IOException {
        while (i10 != -1 && Character.isWhitespace(i10) && (z6 || !Util.D0(i10))) {
            i10 = bufferedReader.read();
        }
        return i10;
    }

    private static DrmInitData c(@Nullable String str, DrmInitData.SchemeData[] schemeDataArr) {
        DrmInitData.SchemeData[] schemeDataArr2 = new DrmInitData.SchemeData[schemeDataArr.length];
        for (int i10 = 0; i10 < schemeDataArr.length; i10++) {
            schemeDataArr2[i10] = schemeDataArr[i10].c(null);
        }
        return new DrmInitData(str, schemeDataArr2);
    }

    @Nullable
    private static HlsMultivariantPlaylist.Variant e(ArrayList<HlsMultivariantPlaylist.Variant> arrayList, String str) {
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            HlsMultivariantPlaylist.Variant variant = arrayList.get(i10);
            if (str.equals(variant.audioGroupId)) {
                return variant;
            }
        }
        return null;
    }

    @Nullable
    private static HlsMultivariantPlaylist.Variant f(ArrayList<HlsMultivariantPlaylist.Variant> arrayList, String str) {
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            HlsMultivariantPlaylist.Variant variant = arrayList.get(i10);
            if (str.equals(variant.subtitleGroupId)) {
                return variant;
            }
        }
        return null;
    }

    @Nullable
    private static HlsMultivariantPlaylist.Variant g(ArrayList<HlsMultivariantPlaylist.Variant> arrayList, String str) {
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            HlsMultivariantPlaylist.Variant variant = arrayList.get(i10);
            if (str.equals(variant.videoGroupId)) {
                return variant;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static HlsMediaPlaylist n(HlsMultivariantPlaylist hlsMultivariantPlaylist, @Nullable HlsMediaPlaylist hlsMediaPlaylist, LineIterator lineIterator, String str) throws IOException {
        ArrayList arrayList;
        ArrayList arrayList2;
        String str2;
        boolean z6;
        int i10;
        HlsMediaPlaylist.Part part;
        String strU;
        long j6;
        long j10;
        long j11;
        long j12;
        boolean z10;
        Object drmInitData;
        hlsMultivariantPlaylist = hlsMultivariantPlaylist;
        hlsMediaPlaylist = hlsMediaPlaylist;
        boolean z11 = hlsMultivariantPlaylist.hasIndependentSegments;
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        HlsMediaPlaylist.ServerControl serverControl = new HlsMediaPlaylist.ServerControl(-9223372036854775807L, false, -9223372036854775807L, -9223372036854775807L, false);
        TreeMap treeMap = new TreeMap();
        boolean z12 = false;
        String str3 = "";
        boolean z13 = z11;
        HlsMediaPlaylist.ServerControl serverControlX = serverControl;
        int i11 = 0;
        boolean zP = false;
        boolean z14 = false;
        int i12 = 0;
        boolean z15 = false;
        boolean z16 = false;
        int i13 = 0;
        boolean z17 = false;
        String strT = str3;
        String strY = null;
        long jI = -9223372036854775807L;
        long jK0 = 0;
        long j13 = 0;
        int iL = 1;
        long jL = -9223372036854775807L;
        long jI2 = -9223372036854775807L;
        DrmInitData drmInitDataC = null;
        long j14 = 0;
        Object obj = null;
        long j15 = 0;
        long j16 = -1;
        String str4 = null;
        String strK = null;
        long j17 = 0;
        long jM = 0;
        HlsMediaPlaylist.Segment segment = null;
        long jZ = 0;
        long j18 = 0;
        ArrayList arrayList7 = arrayList4;
        HlsMediaPlaylist.Part part2 = null;
        while (lineIterator.a()) {
            String strB = lineIterator.b();
            if (strB.startsWith(TAG_PREFIX)) {
                arrayList6.add(strB);
            }
            if (strB.startsWith(TAG_PLAYLIST_TYPE)) {
                String strY2 = y(strB, REGEX_PLAYLIST_TYPE, map);
                if ("VOD".equals(strY2)) {
                    i11 = 1;
                } else if ("EVENT".equals(strY2)) {
                    i11 = 2;
                }
            } else if (strB.equals(TAG_IFRAME)) {
                z17 = true;
            } else if (strB.startsWith(TAG_START)) {
                jI = (long) (i(strB, REGEX_TIME_OFFSET) * 1000000.0d);
                zP = p(strB, REGEX_PRECISE, z12);
            } else if (strB.startsWith(TAG_SERVER_CONTROL)) {
                serverControlX = x(strB);
            } else if (strB.startsWith(TAG_PART_INF)) {
                jI2 = (long) (i(strB, REGEX_PART_TARGET_DURATION) * 1000000.0d);
            } else if (strB.startsWith(TAG_INIT_SEGMENT)) {
                String strY3 = y(strB, REGEX_URI, map);
                String strU2 = u(strB, REGEX_ATTR_BYTERANGE, map);
                if (strU2 != null) {
                    String[] strArrD1 = Util.d1(strU2, MentionedEditText.DEFAULT_METION_TAG);
                    j16 = Long.parseLong(strArrD1[z12 ? 1 : 0]);
                    if (strArrD1.length > 1) {
                        j14 = Long.parseLong(strArrD1[1]);
                    }
                }
                if (j16 == -1) {
                    j14 = 0;
                }
                String str5 = str4;
                if (strY != null && str5 == null) {
                    throw ParserException.c("The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128.", null);
                }
                segment = new HlsMediaPlaylist.Segment(strY3, j14, j16, strY, str5);
                if (j16 != -1) {
                    j14 += j16;
                }
                str4 = str5;
                j16 = -1;
            } else {
                String str6 = str4;
                if (strB.startsWith(TAG_TARGET_DURATION)) {
                    jL = 1000000 * ((long) l(strB, REGEX_TARGET_DURATION));
                } else {
                    if (strB.startsWith(TAG_MEDIA_SEQUENCE)) {
                        jM = m(strB, REGEX_MEDIA_SEQUENCE);
                        str4 = str6;
                        j13 = jM;
                    } else if (strB.startsWith(TAG_VERSION)) {
                        iL = l(strB, REGEX_VERSION);
                    } else {
                        if (strB.startsWith(TAG_DEFINE)) {
                            String strU3 = u(strB, REGEX_IMPORT, map);
                            if (strU3 != null) {
                                String str7 = hlsMultivariantPlaylist.variableDefinitions.get(strU3);
                                if (str7 != null) {
                                    map.put(strU3, str7);
                                }
                            } else {
                                map.put(y(strB, REGEX_NAME, map), y(strB, REGEX_VALUE, map));
                            }
                            arrayList = arrayList7;
                            arrayList2 = arrayList6;
                            str2 = strK;
                            z6 = false;
                            i10 = i11;
                        } else if (strB.startsWith(TAG_MEDIA_DURATION)) {
                            jZ = z(strB, REGEX_MEDIA_DURATION);
                            strT = t(strB, REGEX_MEDIA_TITLE, str3, map);
                        } else {
                            String str8 = str3;
                            if (strB.startsWith(TAG_SKIP)) {
                                int iL2 = l(strB, REGEX_SKIPPED_SEGMENTS);
                                Assertions.g(hlsMediaPlaylist != null && arrayList3.isEmpty());
                                int i14 = (int) (j13 - ((HlsMediaPlaylist) Util.j(hlsMediaPlaylist)).mediaSequence);
                                int i15 = iL2 + i14;
                                if (i14 < 0 || i15 > hlsMediaPlaylist.segments.size()) {
                                    throw new DeltaUpdateException();
                                }
                                str3 = str8;
                                String str9 = str6;
                                long j19 = j17;
                                while (i14 < i15) {
                                    HlsMediaPlaylist.Segment segmentB = hlsMediaPlaylist.segments.get(i14);
                                    ArrayList arrayList8 = arrayList7;
                                    ArrayList arrayList9 = arrayList6;
                                    if (j13 != hlsMediaPlaylist.mediaSequence) {
                                        segmentB = segmentB.b(j19, (hlsMediaPlaylist.discontinuitySequence - i12) + segmentB.relativeDiscontinuitySequence);
                                    }
                                    arrayList3.add(segmentB);
                                    j19 += segmentB.durationUs;
                                    long j20 = segmentB.byteRangeLength;
                                    if (j20 != -1) {
                                        j14 = segmentB.byteRangeOffset + j20;
                                    }
                                    int i16 = segmentB.relativeDiscontinuitySequence;
                                    HlsMediaPlaylist.Segment segment2 = segmentB.initializationSegment;
                                    DrmInitData drmInitData2 = segmentB.drmInitData;
                                    String str10 = segmentB.fullSegmentEncryptionKeyUri;
                                    String str11 = segmentB.encryptionIV;
                                    if (str11 == null || !str11.equals(Long.toHexString(jM))) {
                                        str9 = segmentB.encryptionIV;
                                    }
                                    jM++;
                                    i14++;
                                    hlsMediaPlaylist = hlsMediaPlaylist;
                                    obj = drmInitData2;
                                    strY = str10;
                                    j15 = j19;
                                    i15 = i15;
                                    i13 = i16;
                                    segment = segment2;
                                    arrayList7 = arrayList8;
                                    arrayList6 = arrayList9;
                                }
                                hlsMultivariantPlaylist = hlsMultivariantPlaylist;
                                hlsMediaPlaylist = hlsMediaPlaylist;
                                j17 = j19;
                                str4 = str9;
                            } else {
                                ArrayList arrayList10 = arrayList7;
                                arrayList2 = arrayList6;
                                str3 = str8;
                                if (strB.startsWith(TAG_KEY)) {
                                    String strY4 = y(strB, REGEX_METHOD, map);
                                    String strT2 = t(strB, REGEX_KEYFORMAT, KEYFORMAT_IDENTITY, map);
                                    if (METHOD_NONE.equals(strY4)) {
                                        treeMap.clear();
                                        strU = null;
                                        strY = null;
                                    } else {
                                        strU = u(strB, REGEX_IV, map);
                                        if (KEYFORMAT_IDENTITY.equals(strT2)) {
                                            if (METHOD_AES_128.equals(strY4)) {
                                                strY = y(strB, REGEX_URI, map);
                                            }
                                            str4 = strU;
                                        } else {
                                            String str12 = strK;
                                            strK = str12 == null ? k(strY4) : str12;
                                            DrmInitData.SchemeData schemeDataJ = j(strB, strT2, map);
                                            if (schemeDataJ != null) {
                                                treeMap.put(strT2, schemeDataJ);
                                                strY = null;
                                            }
                                            str4 = strU;
                                        }
                                        strY = null;
                                        str4 = strU;
                                    }
                                    obj = strY;
                                    str4 = strU;
                                } else {
                                    String str13 = strK;
                                    if (strB.startsWith(TAG_BYTERANGE)) {
                                        String[] strArrD2 = Util.d1(y(strB, REGEX_BYTERANGE, map), MentionedEditText.DEFAULT_METION_TAG);
                                        j16 = Long.parseLong(strArrD2[0]);
                                        if (strArrD2.length > 1) {
                                            j14 = Long.parseLong(strArrD2[1]);
                                        }
                                    } else if (strB.startsWith(TAG_DISCONTINUITY_SEQUENCE)) {
                                        i12 = Integer.parseInt(strB.substring(strB.indexOf(58) + 1));
                                        hlsMultivariantPlaylist = hlsMultivariantPlaylist;
                                        hlsMediaPlaylist = hlsMediaPlaylist;
                                        strK = str13;
                                        str4 = str6;
                                        arrayList7 = arrayList10;
                                        arrayList6 = arrayList2;
                                        z12 = false;
                                        z14 = true;
                                    } else if (strB.equals(TAG_DISCONTINUITY)) {
                                        i13++;
                                    } else {
                                        if (strB.startsWith(TAG_PROGRAM_DATE_TIME)) {
                                            if (jK0 == 0) {
                                                jK0 = Util.K0(Util.R0(strB.substring(strB.indexOf(58) + 1))) - j17;
                                            } else {
                                                i10 = i11;
                                                str2 = str13;
                                            }
                                        } else if (strB.equals(TAG_GAP)) {
                                            hlsMultivariantPlaylist = hlsMultivariantPlaylist;
                                            hlsMediaPlaylist = hlsMediaPlaylist;
                                            strK = str13;
                                            str4 = str6;
                                            arrayList7 = arrayList10;
                                            arrayList6 = arrayList2;
                                            z12 = false;
                                            z16 = true;
                                        } else if (strB.equals(TAG_INDEPENDENT_SEGMENTS)) {
                                            hlsMultivariantPlaylist = hlsMultivariantPlaylist;
                                            hlsMediaPlaylist = hlsMediaPlaylist;
                                            strK = str13;
                                            str4 = str6;
                                            arrayList7 = arrayList10;
                                            arrayList6 = arrayList2;
                                            z12 = false;
                                            z13 = true;
                                        } else if (strB.equals(TAG_ENDLIST)) {
                                            hlsMultivariantPlaylist = hlsMultivariantPlaylist;
                                            hlsMediaPlaylist = hlsMediaPlaylist;
                                            strK = str13;
                                            str4 = str6;
                                            arrayList7 = arrayList10;
                                            arrayList6 = arrayList2;
                                            z12 = false;
                                            z15 = true;
                                        } else if (strB.startsWith(TAG_RENDITION_REPORT)) {
                                            i10 = i11;
                                            str2 = str13;
                                            arrayList5.add(new HlsMediaPlaylist.RenditionReport(Uri.parse(UriUtil.d(str, y(strB, REGEX_URI, map))), s(strB, REGEX_LAST_MSN, -1L), r(strB, REGEX_LAST_PART, -1)));
                                        } else {
                                            i10 = i11;
                                            str2 = str13;
                                            if (!strB.startsWith(TAG_PRELOAD_HINT)) {
                                                jM = jM;
                                                if (strB.startsWith(TAG_PART)) {
                                                    String strD = d(jM, strY, str6);
                                                    String strY5 = y(strB, REGEX_URI, map);
                                                    long jI3 = (long) (i(strB, REGEX_ATTR_DURATION) * 1000000.0d);
                                                    HlsMediaPlaylist.Part part3 = part2;
                                                    boolean zP2 = p(strB, REGEX_INDEPENDENT, false) | (z13 && arrayList10.isEmpty());
                                                    boolean zP3 = p(strB, REGEX_GAP, false);
                                                    String strU4 = u(strB, REGEX_ATTR_BYTERANGE, map);
                                                    if (strU4 != null) {
                                                        String[] strArrD3 = Util.d1(strU4, MentionedEditText.DEFAULT_METION_TAG);
                                                        j10 = Long.parseLong(strArrD3[0]);
                                                        if (strArrD3.length > 1) {
                                                            j18 = Long.parseLong(strArrD3[1]);
                                                        }
                                                        j6 = -1;
                                                    } else {
                                                        j6 = -1;
                                                        j10 = -1;
                                                    }
                                                    if (j10 == j6) {
                                                        j18 = 0;
                                                    }
                                                    if (obj == null && !treeMap.isEmpty()) {
                                                        DrmInitData.SchemeData[] schemeDataArr = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                                                        DrmInitData drmInitData3 = new DrmInitData(str2, schemeDataArr);
                                                        if (drmInitDataC == null) {
                                                            drmInitDataC = c(str2, schemeDataArr);
                                                        }
                                                        obj = drmInitData3;
                                                    }
                                                    arrayList10.add(new HlsMediaPlaylist.Part(strY5, segment, jI3, i13, j15, obj, strY, strD, j18, j10, zP3, zP2, false));
                                                    j15 += jI3;
                                                    if (j10 != j6) {
                                                        j18 += j10;
                                                    }
                                                    hlsMultivariantPlaylist = hlsMultivariantPlaylist;
                                                    hlsMediaPlaylist = hlsMediaPlaylist;
                                                    str4 = str6;
                                                    i11 = i10;
                                                    part2 = part3;
                                                    jM = jM;
                                                    strK = str2;
                                                    arrayList7 = arrayList10;
                                                    arrayList6 = arrayList2;
                                                } else {
                                                    part = part2;
                                                    arrayList = arrayList10;
                                                    if (strB.startsWith("#")) {
                                                        z6 = false;
                                                        hlsMultivariantPlaylist = hlsMultivariantPlaylist;
                                                        str4 = str6;
                                                        i11 = i10;
                                                        part2 = part;
                                                        jM = jM;
                                                        strK = str2;
                                                        arrayList7 = arrayList;
                                                        arrayList6 = arrayList2;
                                                        z12 = z6;
                                                        hlsMediaPlaylist = hlsMediaPlaylist;
                                                    } else {
                                                        String strD2 = d(jM, strY, str6);
                                                        long j21 = jM + 1;
                                                        String strA = A(strB, map);
                                                        HlsMediaPlaylist.Segment segment3 = (HlsMediaPlaylist.Segment) map2.get(strA);
                                                        if (j16 == -1) {
                                                            j11 = 0;
                                                        } else {
                                                            if (z17 && segment == null && segment3 == null) {
                                                                segment3 = new HlsMediaPlaylist.Segment(strA, 0L, j14, null, null);
                                                                map2.put(strA, segment3);
                                                            }
                                                            j11 = j14;
                                                        }
                                                        if (obj != null || treeMap.isEmpty()) {
                                                            j12 = j21;
                                                            z10 = false;
                                                            drmInitData = obj;
                                                        } else {
                                                            j12 = j21;
                                                            z10 = false;
                                                            DrmInitData.SchemeData[] schemeDataArr2 = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                                                            drmInitData = new DrmInitData(str2, schemeDataArr2);
                                                            if (drmInitDataC == null) {
                                                                drmInitDataC = c(str2, schemeDataArr2);
                                                            }
                                                        }
                                                        arrayList3.add(new HlsMediaPlaylist.Segment(strA, segment != null ? segment : segment3, strT, jZ, i13, j17, drmInitData, strY, strD2, j11, j16, z16, arrayList));
                                                        j15 = j17 + jZ;
                                                        arrayList7 = new ArrayList();
                                                        if (j16 != -1) {
                                                            j11 += j16;
                                                        }
                                                        j14 = j11;
                                                        hlsMultivariantPlaylist = hlsMultivariantPlaylist;
                                                        z16 = z10;
                                                        str4 = str6;
                                                        obj = drmInitData;
                                                        strT = str3;
                                                        j17 = j15;
                                                        i11 = i10;
                                                        part2 = part;
                                                        arrayList6 = arrayList2;
                                                        j16 = -1;
                                                        jZ = 0;
                                                        strK = str2;
                                                        jM = j12;
                                                        hlsMediaPlaylist = hlsMediaPlaylist;
                                                        z12 = z16;
                                                    }
                                                }
                                            } else if (part2 == null && TYPE_PART.equals(y(strB, REGEX_PRELOAD_HINT_TYPE, map))) {
                                                String strY6 = y(strB, REGEX_URI, map);
                                                long jS = s(strB, REGEX_BYTERANGE_START, -1L);
                                                long jS2 = s(strB, REGEX_BYTERANGE_LENGTH, -1L);
                                                long j22 = jM;
                                                String strD3 = d(j22, strY, str6);
                                                if (obj == null && !treeMap.isEmpty()) {
                                                    DrmInitData.SchemeData[] schemeDataArr3 = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                                                    DrmInitData drmInitData4 = new DrmInitData(str2, schemeDataArr3);
                                                    if (drmInitDataC == null) {
                                                        drmInitDataC = c(str2, schemeDataArr3);
                                                    }
                                                    obj = drmInitData4;
                                                }
                                                if (jS == -1 || jS2 != -1) {
                                                    part2 = new HlsMediaPlaylist.Part(strY6, segment, 0L, i13, j15, obj, strY, strD3, jS != -1 ? jS : 0L, jS2, false, false, true);
                                                }
                                                hlsMultivariantPlaylist = hlsMultivariantPlaylist;
                                                hlsMediaPlaylist = hlsMediaPlaylist;
                                                jM = j22;
                                                str4 = str6;
                                                arrayList7 = arrayList10;
                                                i11 = i10;
                                                arrayList6 = arrayList2;
                                                strK = str2;
                                            }
                                        }
                                        arrayList = arrayList10;
                                        z6 = false;
                                    }
                                    strK = str13;
                                    str4 = str6;
                                }
                                arrayList7 = arrayList10;
                                arrayList6 = arrayList2;
                            }
                        }
                        part = part2;
                        hlsMultivariantPlaylist = hlsMultivariantPlaylist;
                        str4 = str6;
                        i11 = i10;
                        part2 = part;
                        jM = jM;
                        strK = str2;
                        arrayList7 = arrayList;
                        arrayList6 = arrayList2;
                        z12 = z6;
                        hlsMediaPlaylist = hlsMediaPlaylist;
                    }
                    z12 = false;
                }
                str4 = str6;
                z12 = false;
            }
        }
        int i17 = i11;
        HlsMediaPlaylist.Part part4 = part2;
        ArrayList arrayList11 = arrayList7;
        ArrayList arrayList12 = arrayList6;
        Object[] objArr = z12 ? 1 : 0;
        HashMap map3 = new HashMap();
        for (int i18 = objArr == true ? 1 : 0; i18 < arrayList5.size(); i18++) {
            HlsMediaPlaylist.RenditionReport renditionReport = (HlsMediaPlaylist.RenditionReport) arrayList5.get(i18);
            long size = renditionReport.lastMediaSequence;
            if (size == -1) {
                size = (j13 + ((long) arrayList3.size())) - (arrayList11.isEmpty() ? 1L : 0L);
            }
            int size2 = renditionReport.lastPartIndex;
            if (size2 == -1 && jI2 != -9223372036854775807L) {
                size2 = (arrayList11.isEmpty() ? ((HlsMediaPlaylist.Segment) h0.e(arrayList3)).parts : arrayList11).size() - 1;
            }
            Uri uri = renditionReport.playlistUri;
            map3.put(uri, new HlsMediaPlaylist.RenditionReport(uri, size, size2));
        }
        if (part4 != null) {
            arrayList11.add(part4);
        }
        return new HlsMediaPlaylist(i17, str, arrayList12, jI, zP, jK0, z14, i12, j13, iL, jL, jI2, z13, z15, jK0 != 0, drmInitDataC, arrayList3, arrayList11, serverControlX, map3);
    }

    @Nullable
    private static String u(String str, Pattern pattern, Map<String, String> map) {
        return t(str, pattern, null, map);
    }

    public HlsPlaylistParser(HlsMultivariantPlaylist hlsMultivariantPlaylist, @Nullable HlsMediaPlaylist hlsMediaPlaylist) {
        this.multivariantPlaylist = hlsMultivariantPlaylist;
        this.previousMediaPlaylist = hlsMediaPlaylist;
    }

    private static String A(String str, Map<String, String> map) {
        Matcher matcher = REGEX_VARIABLE_REFERENCE.matcher(str);
        StringBuffer stringBuffer = new StringBuffer();
        while (matcher.find()) {
            String strGroup = matcher.group(1);
            if (map.containsKey(strGroup)) {
                matcher.appendReplacement(stringBuffer, Matcher.quoteReplacement(map.get(strGroup)));
            }
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    private static Pattern b(String str) {
        return Pattern.compile(str + "=(" + BOOLEAN_FALSE + "|" + BOOLEAN_TRUE + ")");
    }

    @Nullable
    private static String d(long j6, @Nullable String str, @Nullable String str2) {
        if (str == null) {
            return null;
        }
        return str2 != null ? str2 : Long.toHexString(j6);
    }

    @Nullable
    private static DrmInitData.SchemeData j(String str, String str2, Map<String, String> map) throws ParserException {
        String strT = t(str, REGEX_KEYFORMATVERSIONS, "1", map);
        if (KEYFORMAT_WIDEVINE_PSSH_BINARY.equals(str2)) {
            String strY = y(str, REGEX_URI, map);
            return new DrmInitData.SchemeData(C.WIDEVINE_UUID, "video/mp4", Base64.decode(strY.substring(strY.indexOf(44)), 0));
        }
        if (KEYFORMAT_WIDEVINE_PSSH_JSON.equals(str2)) {
            return new DrmInitData.SchemeData(C.WIDEVINE_UUID, "hls", Util.q0(str));
        }
        if (!KEYFORMAT_PLAYREADY.equals(str2) || !"1".equals(strT)) {
            return null;
        }
        String strY2 = y(str, REGEX_URI, map);
        byte[] bArrDecode = Base64.decode(strY2.substring(strY2.indexOf(44)), 0);
        UUID uuid = C.PLAYREADY_UUID;
        return new DrmInitData.SchemeData(uuid, "video/mp4", PsshAtomUtil.a(uuid, bArrDecode));
    }

    private static String k(String str) {
        return (METHOD_SAMPLE_AES_CENC.equals(str) || METHOD_SAMPLE_AES_CTR.equals(str)) ? "cenc" : "cbcs";
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:80:0x0328  */
    private static HlsMultivariantPlaylist o(LineIterator lineIterator, String str) throws IOException {
        ArrayList arrayList;
        String strG;
        int i10;
        String str2;
        String strG2;
        int i11;
        int i12;
        Uri uriE;
        HashMap map;
        int i13;
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        ArrayList arrayList7 = new ArrayList();
        ArrayList arrayList8 = new ArrayList();
        ArrayList arrayList9 = new ArrayList();
        boolean z6 = false;
        boolean z10 = false;
        while (true) {
            String str3 = "application/x-mpegURL";
            if (!lineIterator.a()) {
                HashMap map4 = map2;
                ArrayList arrayList10 = arrayList7;
                ArrayList arrayList11 = arrayList3;
                ArrayList arrayList12 = arrayList4;
                ArrayList arrayList13 = arrayList5;
                ArrayList arrayList14 = arrayList6;
                ArrayList arrayList15 = arrayList9;
                boolean z11 = z6;
                ArrayList arrayList16 = arrayList8;
                ArrayList arrayList17 = new ArrayList();
                HashSet hashSet = new HashSet();
                for (int i14 = 0; i14 < arrayList2.size(); i14++) {
                    HlsMultivariantPlaylist.Variant variant = (HlsMultivariantPlaylist.Variant) arrayList2.get(i14);
                    if (hashSet.add(variant.url)) {
                        Assertions.g(variant.format.metadata == null);
                        arrayList17.add(variant.a(variant.format.b().Z(new Metadata(new HlsTrackMetadataEntry(null, null, (List) Assertions.e((ArrayList) map4.get(variant.url))))).G()));
                    }
                }
                Uri uri = null;
                ArrayList arrayList18 = null;
                Format formatG = null;
                int i15 = 0;
                while (i15 < arrayList10.size()) {
                    ArrayList arrayList19 = arrayList10;
                    String str4 = (String) arrayList19.get(i15);
                    String strY = y(str4, REGEX_GROUP_ID, map3);
                    String strY2 = y(str4, REGEX_NAME, map3);
                    Format.Builder builderX = new Format.Builder().U(strY + ":" + strY2).W(strY2).M(str3).i0(w(str4)).e0(v(str4, map3)).X(u(str4, REGEX_LANGUAGE, map3));
                    String strU = u(str4, REGEX_URI, map3);
                    Uri uriE2 = strU == null ? uri : UriUtil.e(str, strU);
                    arrayList10 = arrayList19;
                    String str5 = str3;
                    Metadata metadata = new Metadata(new HlsTrackMetadataEntry(strY, strY2, Collections.emptyList()));
                    String strY3 = y(str4, REGEX_TYPE, map3);
                    strY3.hashCode();
                    switch (strY3) {
                        case "SUBTITLES":
                            formatG = formatG;
                            arrayList12 = arrayList12;
                            arrayList = arrayList11;
                            HlsMultivariantPlaylist.Variant variantF = f(arrayList2, strY);
                            if (variantF != null) {
                                String strM = Util.M(variantF.format.codecs, 3);
                                builderX.K(strM);
                                strG = MimeTypes.g(strM);
                            } else {
                                strG = null;
                            }
                            if (strG == null) {
                                strG = "text/vtt";
                            }
                            builderX.g0(strG).Z(metadata);
                            if (uriE2 != null) {
                                HlsMultivariantPlaylist.Rendition rendition = new HlsMultivariantPlaylist.Rendition(uriE2, builderX.G(), strY, strY2);
                                arrayList13 = arrayList13;
                                arrayList13.add(rendition);
                                break;
                            } else {
                                arrayList13 = arrayList13;
                                Log.i(LOG_TAG, "EXT-X-MEDIA tag with missing mandatory URI attribute: skipping");
                                break;
                            }
                            break;
                        case "CLOSED-CAPTIONS":
                            formatG = formatG;
                            arrayList12 = arrayList12;
                            arrayList = arrayList11;
                            String strY4 = y(str4, REGEX_INSTREAM_ID, map3);
                            if (strY4.startsWith("CC")) {
                                i10 = Integer.parseInt(strY4.substring(2));
                                str2 = "application/cea-608";
                            } else {
                                i10 = Integer.parseInt(strY4.substring(7));
                                str2 = "application/cea-708";
                            }
                            if (arrayList18 == null) {
                                arrayList18 = new ArrayList();
                            }
                            builderX.g0(str2).H(i10);
                            arrayList18.add(builderX.G());
                            arrayList13 = arrayList13;
                            break;
                        case "AUDIO":
                            arrayList = arrayList11;
                            HlsMultivariantPlaylist.Variant variantE = e(arrayList2, strY);
                            if (variantE != null) {
                                String strM2 = Util.M(variantE.format.codecs, 1);
                                builderX.K(strM2);
                                strG2 = MimeTypes.g(strM2);
                            } else {
                                strG2 = null;
                            }
                            String strU2 = u(str4, REGEX_CHANNELS, map3);
                            if (strU2 != null) {
                                builderX.J(Integer.parseInt(Util.e1(strU2, c.FORWARD_SLASH_STRING)[0]));
                                if ("audio/eac3".equals(strG2) && strU2.endsWith("/JOC")) {
                                    builderX.K("ec+3");
                                    strG2 = "audio/eac3-joc";
                                }
                            }
                            builderX.g0(strG2);
                            if (uriE2 != null) {
                                builderX.Z(metadata);
                                arrayList12 = arrayList12;
                                arrayList12.add(new HlsMultivariantPlaylist.Rendition(uriE2, builderX.G(), strY, strY2));
                            } else {
                                arrayList12 = arrayList12;
                                if (variantE != null) {
                                    formatG = builderX.G();
                                }
                            }
                            arrayList13 = arrayList13;
                            break;
                        case "VIDEO":
                            HlsMultivariantPlaylist.Variant variantG = g(arrayList2, strY);
                            if (variantG != null) {
                                Format format = variantG.format;
                                String strM3 = Util.M(format.codecs, 2);
                                builderX.K(strM3).g0(MimeTypes.g(strM3)).n0(format.width).S(format.height).R(format.frameRate);
                            }
                            if (uriE2 != null) {
                                builderX.Z(metadata);
                                arrayList = arrayList11;
                                arrayList.add(new HlsMultivariantPlaylist.Rendition(uriE2, builderX.G(), strY, strY2));
                            }
                        default:
                            arrayList = arrayList11;
                            break;
                    }
                    i15++;
                    arrayList13 = arrayList13;
                    arrayList12 = arrayList12;
                    arrayList11 = arrayList;
                    str3 = str5;
                    formatG = formatG;
                    uri = null;
                }
                return new HlsMultivariantPlaylist(str, arrayList15, arrayList17, arrayList11, arrayList12, arrayList13, arrayList14, formatG, z10 ? Collections.emptyList() : arrayList18, z11, map3, arrayList16);
            }
            String strB = lineIterator.b();
            if (strB.startsWith(TAG_PREFIX)) {
                arrayList9.add(strB);
            }
            boolean zStartsWith = strB.startsWith(TAG_I_FRAME_STREAM_INF);
            boolean z12 = z6;
            if (strB.startsWith(TAG_DEFINE)) {
                map3.put(y(strB, REGEX_NAME, map3), y(strB, REGEX_VALUE, map3));
            } else {
                if (strB.equals(TAG_INDEPENDENT_SEGMENTS)) {
                    map = map2;
                    arrayList4 = arrayList4;
                    arrayList5 = arrayList5;
                    z6 = true;
                } else if (strB.startsWith(TAG_MEDIA)) {
                    arrayList7.add(strB);
                } else if (strB.startsWith(TAG_SESSION_KEY)) {
                    DrmInitData.SchemeData schemeDataJ = j(strB, t(strB, REGEX_KEYFORMAT, KEYFORMAT_IDENTITY, map3), map3);
                    if (schemeDataJ != null) {
                        arrayList8.add(new DrmInitData(k(y(strB, REGEX_METHOD, map3)), schemeDataJ));
                    }
                } else if (strB.startsWith(TAG_STREAM_INF) || zStartsWith) {
                    boolean zContains = z10 | strB.contains(ATTR_CLOSED_CAPTIONS_NONE);
                    int i16 = zStartsWith ? 16384 : 0;
                    int iL = l(strB, REGEX_BANDWIDTH);
                    int iR = r(strB, REGEX_AVERAGE_BANDWIDTH, -1);
                    String strU3 = u(strB, REGEX_CODECS, map3);
                    String strU4 = u(strB, REGEX_RESOLUTION, map3);
                    if (strU4 != null) {
                        String[] strArrD1 = Util.d1(strU4, "x");
                        int i17 = Integer.parseInt(strArrD1[0]);
                        int i18 = Integer.parseInt(strArrD1[1]);
                        if (i17 <= 0 || i18 <= 0) {
                            i18 = -1;
                            i13 = -1;
                        } else {
                            i13 = i17;
                        }
                        i12 = i18;
                        i11 = i13;
                    } else {
                        i11 = -1;
                        i12 = -1;
                    }
                    String strU5 = u(strB, REGEX_FRAME_RATE, map3);
                    float f = strU5 != null ? Float.parseFloat(strU5) : -1.0f;
                    String strU6 = u(strB, REGEX_VIDEO, map3);
                    String strU7 = u(strB, REGEX_AUDIO, map3);
                    HashMap map5 = map2;
                    String strU8 = u(strB, REGEX_SUBTITLES, map3);
                    String strU9 = u(strB, REGEX_CLOSED_CAPTIONS, map3);
                    if (zStartsWith) {
                        uriE = UriUtil.e(str, y(strB, REGEX_URI, map3));
                    } else {
                        if (!lineIterator.a()) {
                            throw ParserException.c("#EXT-X-STREAM-INF must be followed by another line", null);
                        }
                        uriE = UriUtil.e(str, A(lineIterator.b(), map3));
                    }
                    arrayList2.add(new HlsMultivariantPlaylist.Variant(uriE, new Format.Builder().T(arrayList2.size()).M("application/x-mpegURL").K(strU3).I(iR).b0(iL).n0(i11).S(i12).R(f).e0(i16).G(), strU6, strU7, strU8, strU9));
                    map = map5;
                    ArrayList arrayList20 = (ArrayList) map.get(uriE);
                    if (arrayList20 == null) {
                        arrayList20 = new ArrayList();
                        map.put(uriE, arrayList20);
                    }
                    arrayList20.add(new HlsTrackMetadataEntry.VariantInfo(iR, iL, strU6, strU7, strU8, strU9));
                    z6 = z12;
                    z10 = zContains;
                }
                map2 = map;
                arrayList8 = arrayList8;
                arrayList6 = arrayList6;
                arrayList9 = arrayList9;
                arrayList5 = arrayList5;
                arrayList4 = arrayList4;
                arrayList3 = arrayList3;
                arrayList7 = arrayList7;
            }
            map = map2;
            arrayList4 = arrayList4;
            arrayList5 = arrayList5;
            z6 = z12;
            map2 = map;
            arrayList8 = arrayList8;
            arrayList6 = arrayList6;
            arrayList9 = arrayList9;
            arrayList5 = arrayList5;
            arrayList4 = arrayList4;
            arrayList3 = arrayList3;
            arrayList7 = arrayList7;
        }
    }

    private static int v(String str, Map<String, String> map) {
        String strU = u(str, REGEX_CHARACTERISTICS, map);
        if (TextUtils.isEmpty(strU)) {
            return 0;
        }
        String[] strArrD1 = Util.d1(strU, ",");
        int i10 = Util.s(strArrD1, "public.accessibility.describes-video") ? 512 : 0;
        if (Util.s(strArrD1, "public.accessibility.transcribes-spoken-dialog")) {
            i10 |= 4096;
        }
        if (Util.s(strArrD1, "public.accessibility.describes-music-and-sound")) {
            i10 |= 1024;
        }
        return Util.s(strArrD1, "public.easy-to-read") ? i10 | 8192 : i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    private static int w(String str) {
        boolean zP = p(str, REGEX_DEFAULT, false);
        ?? r1 = zP;
        if (p(str, REGEX_FORCED, false)) {
            r1 = (zP ? 1 : 0) | 2;
        }
        return p(str, REGEX_AUTOSELECT, false) ? r1 | 4 : r1;
    }

    private static HlsMediaPlaylist.ServerControl x(String str) {
        double dQ = q(str, REGEX_CAN_SKIP_UNTIL, -9.223372036854776E18d);
        long j6 = dQ == -9.223372036854776E18d ? -9223372036854775807L : (long) (dQ * 1000000.0d);
        boolean zP = p(str, REGEX_CAN_SKIP_DATE_RANGES, false);
        double dQ2 = q(str, REGEX_HOLD_BACK, -9.223372036854776E18d);
        long j10 = dQ2 == -9.223372036854776E18d ? -9223372036854775807L : (long) (dQ2 * 1000000.0d);
        double dQ3 = q(str, REGEX_PART_HOLD_BACK, -9.223372036854776E18d);
        return new HlsMediaPlaylist.ServerControl(j6, zP, j10, dQ3 != -9.223372036854776E18d ? (long) (dQ3 * 1000000.0d) : -9223372036854775807L, p(str, REGEX_CAN_BLOCK_RELOAD, false));
    }

    @Override // androidx.media3.exoplayer.upstream.ParsingLoadable.Parser
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public HlsPlaylist parse(Uri uri, InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        ArrayDeque arrayDeque = new ArrayDeque();
        try {
            if (!a(bufferedReader)) {
                throw ParserException.c("Input does not start with the #EXTM3U header.", null);
            }
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    Util.n(bufferedReader);
                    throw ParserException.c("Failed to parse the playlist, could not identify any tags.", null);
                }
                String strTrim = line.trim();
                if (!strTrim.isEmpty()) {
                    if (strTrim.startsWith(TAG_STREAM_INF)) {
                        arrayDeque.add(strTrim);
                        HlsMultivariantPlaylist hlsMultivariantPlaylistO = o(new LineIterator(arrayDeque, bufferedReader), uri.toString());
                        Util.n(bufferedReader);
                        return hlsMultivariantPlaylistO;
                    }
                    if (!strTrim.startsWith(TAG_TARGET_DURATION) && !strTrim.startsWith(TAG_MEDIA_SEQUENCE) && !strTrim.startsWith(TAG_MEDIA_DURATION) && !strTrim.startsWith(TAG_KEY) && !strTrim.startsWith(TAG_BYTERANGE) && !strTrim.equals(TAG_DISCONTINUITY) && !strTrim.equals(TAG_DISCONTINUITY_SEQUENCE) && !strTrim.equals(TAG_ENDLIST)) {
                        arrayDeque.add(strTrim);
                    }
                    arrayDeque.add(strTrim);
                    HlsMediaPlaylist hlsMediaPlaylistN = n(this.multivariantPlaylist, this.previousMediaPlaylist, new LineIterator(arrayDeque, bufferedReader), uri.toString());
                    Util.n(bufferedReader);
                    return hlsMediaPlaylistN;
                }
            }
        } catch (Throwable th) {
            Util.n(bufferedReader);
            throw th;
        }
    }

    private static boolean a(BufferedReader bufferedReader) throws IOException {
        int i10 = bufferedReader.read();
        if (i10 == 239) {
            if (bufferedReader.read() != 187 || bufferedReader.read() != 191) {
                return false;
            }
            i10 = bufferedReader.read();
        }
        int iB = B(bufferedReader, true, i10);
        for (int i11 = 0; i11 < 7; i11++) {
            if (iB != PLAYLIST_HEADER.charAt(i11)) {
                return false;
            }
            iB = bufferedReader.read();
        }
        return Util.D0(B(bufferedReader, false, iB));
    }

    private static double i(String str, Pattern pattern) throws ParserException {
        return Double.parseDouble(y(str, pattern, Collections.emptyMap()));
    }

    private static int l(String str, Pattern pattern) throws ParserException {
        return Integer.parseInt(y(str, pattern, Collections.emptyMap()));
    }

    private static long m(String str, Pattern pattern) throws ParserException {
        return Long.parseLong(y(str, pattern, Collections.emptyMap()));
    }

    private static boolean p(String str, Pattern pattern, boolean z6) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            return BOOLEAN_TRUE.equals(matcher.group(1));
        }
        return z6;
    }

    private static double q(String str, Pattern pattern, double d) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            return Double.parseDouble((String) Assertions.e(matcher.group(1)));
        }
        return d;
    }

    private static int r(String str, Pattern pattern, int i10) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            return Integer.parseInt((String) Assertions.e(matcher.group(1)));
        }
        return i10;
    }

    private static long s(String str, Pattern pattern, long j6) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            return Long.parseLong((String) Assertions.e(matcher.group(1)));
        }
        return j6;
    }

    private static String t(String str, Pattern pattern, String str2, Map<String, String> map) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            str2 = (String) Assertions.e(matcher.group(1));
        }
        if (!map.isEmpty() && str2 != null) {
            return A(str2, map);
        }
        return str2;
    }

    private static String y(String str, Pattern pattern, Map<String, String> map) throws ParserException {
        String strU = u(str, pattern, map);
        if (strU != null) {
            return strU;
        }
        throw ParserException.c("Couldn't match " + pattern.pattern() + " in " + str, null);
    }

    private static long z(String str, Pattern pattern) throws ParserException {
        return new BigDecimal(y(str, pattern, Collections.emptyMap())).multiply(new BigDecimal(1000000L)).longValue();
    }
}
