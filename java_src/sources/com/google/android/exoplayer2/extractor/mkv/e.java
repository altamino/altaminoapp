package com.google.android.exoplayer2.extractor.mkv;

import android.net.Uri;
import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.extractor.f0;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.extractor.n;
import com.google.android.exoplayer2.extractor.q;
import com.google.android.exoplayer2.extractor.r;
import com.google.android.exoplayer2.i;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.o0;
import com.google.android.exoplayer2.util.t;
import com.google.android.exoplayer2.util.u;
import com.google.android.exoplayer2.util.x;
import com.google.android.exoplayer2.util.y;
import com.google.android.exoplayer2.v2;
import com.google.common.collect.a0;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: loaded from: classes6.dex */
public class e implements l {
    private static final int BLOCK_ADDITIONAL_ID_VP9_ITU_T_35 = 4;
    private static final int BLOCK_ADD_ID_TYPE_DVCC = 1685480259;
    private static final int BLOCK_ADD_ID_TYPE_DVVC = 1685485123;
    private static final int BLOCK_STATE_DATA = 2;
    private static final int BLOCK_STATE_HEADER = 1;
    private static final int BLOCK_STATE_START = 0;
    private static final String CODEC_ID_AAC = "A_AAC";
    private static final String CODEC_ID_AC3 = "A_AC3";
    private static final String CODEC_ID_ACM = "A_MS/ACM";
    private static final String CODEC_ID_ASS = "S_TEXT/ASS";
    private static final String CODEC_ID_AV1 = "V_AV1";
    private static final String CODEC_ID_DTS = "A_DTS";
    private static final String CODEC_ID_DTS_EXPRESS = "A_DTS/EXPRESS";
    private static final String CODEC_ID_DTS_LOSSLESS = "A_DTS/LOSSLESS";
    private static final String CODEC_ID_DVBSUB = "S_DVBSUB";
    private static final String CODEC_ID_E_AC3 = "A_EAC3";
    private static final String CODEC_ID_FLAC = "A_FLAC";
    private static final String CODEC_ID_FOURCC = "V_MS/VFW/FOURCC";
    private static final String CODEC_ID_H264 = "V_MPEG4/ISO/AVC";
    private static final String CODEC_ID_H265 = "V_MPEGH/ISO/HEVC";
    private static final String CODEC_ID_MP2 = "A_MPEG/L2";
    private static final String CODEC_ID_MP3 = "A_MPEG/L3";
    private static final String CODEC_ID_MPEG2 = "V_MPEG2";
    private static final String CODEC_ID_MPEG4_AP = "V_MPEG4/ISO/AP";
    private static final String CODEC_ID_MPEG4_ASP = "V_MPEG4/ISO/ASP";
    private static final String CODEC_ID_MPEG4_SP = "V_MPEG4/ISO/SP";
    private static final String CODEC_ID_OPUS = "A_OPUS";
    private static final String CODEC_ID_PCM_FLOAT = "A_PCM/FLOAT/IEEE";
    private static final String CODEC_ID_PCM_INT_BIG = "A_PCM/INT/BIG";
    private static final String CODEC_ID_PCM_INT_LIT = "A_PCM/INT/LIT";
    private static final String CODEC_ID_PGS = "S_HDMV/PGS";
    private static final String CODEC_ID_SUBRIP = "S_TEXT/UTF8";
    private static final String CODEC_ID_THEORA = "V_THEORA";
    private static final String CODEC_ID_TRUEHD = "A_TRUEHD";
    private static final String CODEC_ID_VOBSUB = "S_VOBSUB";
    private static final String CODEC_ID_VORBIS = "A_VORBIS";
    private static final String CODEC_ID_VP8 = "V_VP8";
    private static final String CODEC_ID_VP9 = "V_VP9";
    private static final String CODEC_ID_VTT = "S_TEXT/WEBVTT";
    private static final String DOC_TYPE_MATROSKA = "matroska";
    private static final String DOC_TYPE_WEBM = "webm";
    private static final int ENCRYPTION_IV_SIZE = 8;
    public static final int FLAG_DISABLE_SEEK_FOR_CUES = 1;
    private static final int FOURCC_COMPRESSION_DIVX = 1482049860;
    private static final int FOURCC_COMPRESSION_H263 = 859189832;
    private static final int FOURCC_COMPRESSION_VC1 = 826496599;
    private static final int ID_AUDIO = 225;
    private static final int ID_AUDIO_BIT_DEPTH = 25188;
    private static final int ID_BLOCK = 161;
    private static final int ID_BLOCK_ADDITIONAL = 165;
    private static final int ID_BLOCK_ADDITIONS = 30113;
    private static final int ID_BLOCK_ADDITION_MAPPING = 16868;
    private static final int ID_BLOCK_ADD_ID = 238;
    private static final int ID_BLOCK_ADD_ID_EXTRA_DATA = 16877;
    private static final int ID_BLOCK_ADD_ID_TYPE = 16871;
    private static final int ID_BLOCK_DURATION = 155;
    private static final int ID_BLOCK_GROUP = 160;
    private static final int ID_BLOCK_MORE = 166;
    private static final int ID_CHANNELS = 159;
    private static final int ID_CLUSTER = 524531317;
    private static final int ID_CODEC_DELAY = 22186;
    private static final int ID_CODEC_ID = 134;
    private static final int ID_CODEC_PRIVATE = 25506;
    private static final int ID_COLOUR = 21936;
    private static final int ID_COLOUR_PRIMARIES = 21947;
    private static final int ID_COLOUR_RANGE = 21945;
    private static final int ID_COLOUR_TRANSFER = 21946;
    private static final int ID_CONTENT_COMPRESSION = 20532;
    private static final int ID_CONTENT_COMPRESSION_ALGORITHM = 16980;
    private static final int ID_CONTENT_COMPRESSION_SETTINGS = 16981;
    private static final int ID_CONTENT_ENCODING = 25152;
    private static final int ID_CONTENT_ENCODINGS = 28032;
    private static final int ID_CONTENT_ENCODING_ORDER = 20529;
    private static final int ID_CONTENT_ENCODING_SCOPE = 20530;
    private static final int ID_CONTENT_ENCRYPTION = 20533;
    private static final int ID_CONTENT_ENCRYPTION_AES_SETTINGS = 18407;
    private static final int ID_CONTENT_ENCRYPTION_AES_SETTINGS_CIPHER_MODE = 18408;
    private static final int ID_CONTENT_ENCRYPTION_ALGORITHM = 18401;
    private static final int ID_CONTENT_ENCRYPTION_KEY_ID = 18402;
    private static final int ID_CUES = 475249515;
    private static final int ID_CUE_CLUSTER_POSITION = 241;
    private static final int ID_CUE_POINT = 187;
    private static final int ID_CUE_TIME = 179;
    private static final int ID_CUE_TRACK_POSITIONS = 183;
    private static final int ID_DEFAULT_DURATION = 2352003;
    private static final int ID_DISCARD_PADDING = 30114;
    private static final int ID_DISPLAY_HEIGHT = 21690;
    private static final int ID_DISPLAY_UNIT = 21682;
    private static final int ID_DISPLAY_WIDTH = 21680;
    private static final int ID_DOC_TYPE = 17026;
    private static final int ID_DOC_TYPE_READ_VERSION = 17029;
    private static final int ID_DURATION = 17545;
    private static final int ID_EBML = 440786851;
    private static final int ID_EBML_READ_VERSION = 17143;
    private static final int ID_FLAG_DEFAULT = 136;
    private static final int ID_FLAG_FORCED = 21930;
    private static final int ID_INFO = 357149030;
    private static final int ID_LANGUAGE = 2274716;
    private static final int ID_LUMNINANCE_MAX = 21977;
    private static final int ID_LUMNINANCE_MIN = 21978;
    private static final int ID_MASTERING_METADATA = 21968;
    private static final int ID_MAX_BLOCK_ADDITION_ID = 21998;
    private static final int ID_MAX_CLL = 21948;
    private static final int ID_MAX_FALL = 21949;
    private static final int ID_NAME = 21358;
    private static final int ID_PIXEL_HEIGHT = 186;
    private static final int ID_PIXEL_WIDTH = 176;
    private static final int ID_PRIMARY_B_CHROMATICITY_X = 21973;
    private static final int ID_PRIMARY_B_CHROMATICITY_Y = 21974;
    private static final int ID_PRIMARY_G_CHROMATICITY_X = 21971;
    private static final int ID_PRIMARY_G_CHROMATICITY_Y = 21972;
    private static final int ID_PRIMARY_R_CHROMATICITY_X = 21969;
    private static final int ID_PRIMARY_R_CHROMATICITY_Y = 21970;
    private static final int ID_PROJECTION = 30320;
    private static final int ID_PROJECTION_POSE_PITCH = 30324;
    private static final int ID_PROJECTION_POSE_ROLL = 30325;
    private static final int ID_PROJECTION_POSE_YAW = 30323;
    private static final int ID_PROJECTION_PRIVATE = 30322;
    private static final int ID_PROJECTION_TYPE = 30321;
    private static final int ID_REFERENCE_BLOCK = 251;
    private static final int ID_SAMPLING_FREQUENCY = 181;
    private static final int ID_SEEK = 19899;
    private static final int ID_SEEK_HEAD = 290298740;
    private static final int ID_SEEK_ID = 21419;
    private static final int ID_SEEK_POSITION = 21420;
    private static final int ID_SEEK_PRE_ROLL = 22203;
    private static final int ID_SEGMENT = 408125543;
    private static final int ID_SEGMENT_INFO = 357149030;
    private static final int ID_SIMPLE_BLOCK = 163;
    private static final int ID_STEREO_MODE = 21432;
    private static final int ID_TIMECODE_SCALE = 2807729;
    private static final int ID_TIME_CODE = 231;
    private static final int ID_TRACKS = 374648427;
    private static final int ID_TRACK_ENTRY = 174;
    private static final int ID_TRACK_NUMBER = 215;
    private static final int ID_TRACK_TYPE = 131;
    private static final int ID_VIDEO = 224;
    private static final int ID_WHITE_POINT_CHROMATICITY_X = 21975;
    private static final int ID_WHITE_POINT_CHROMATICITY_Y = 21976;
    private static final int LACING_EBML = 3;
    private static final int LACING_FIXED_SIZE = 2;
    private static final int LACING_NONE = 0;
    private static final int LACING_XIPH = 1;
    private static final int OPUS_MAX_INPUT_SIZE = 5760;
    private static final int SSA_PREFIX_END_TIMECODE_OFFSET = 21;
    private static final String SSA_TIMECODE_FORMAT = "%01d:%02d:%02d:%02d";
    private static final long SSA_TIMECODE_LAST_VALUE_SCALING_FACTOR = 10000;
    private static final int SUBRIP_PREFIX_END_TIMECODE_OFFSET = 19;
    private static final String SUBRIP_TIMECODE_FORMAT = "%02d:%02d:%02d,%03d";
    private static final long SUBRIP_TIMECODE_LAST_VALUE_SCALING_FACTOR = 1000;
    private static final String TAG = "MatroskaExtractor";
    private static final Map<String, Integer> TRACK_NAME_TO_ROTATION_DEGREES;
    private static final int TRACK_TYPE_AUDIO = 2;
    private static final int UNSET_ENTRY_ID = -1;
    private static final int VORBIS_MAX_INPUT_SIZE = 8192;
    private static final int VTT_PREFIX_END_TIMECODE_OFFSET = 25;
    private static final String VTT_TIMECODE_FORMAT = "%02d:%02d:%02d.%03d";
    private static final long VTT_TIMECODE_LAST_VALUE_SCALING_FACTOR = 1000;
    private static final int WAVE_FORMAT_EXTENSIBLE = 65534;
    private static final int WAVE_FORMAT_PCM = 1;
    private static final int WAVE_FORMAT_SIZE = 18;
    private int blockAdditionalId;
    private long blockDurationUs;
    private int blockFlags;
    private long blockGroupDiscardPaddingNs;
    private boolean blockHasReferenceBlock;
    private int blockSampleCount;
    private int blockSampleIndex;
    private int[] blockSampleSizes;
    private int blockState;
    private long blockTimeUs;
    private int blockTrackNumber;
    private int blockTrackNumberLength;
    private long clusterTimecodeUs;

    @Nullable
    private u cueClusterPositions;

    @Nullable
    private u cueTimesUs;
    private long cuesContentPosition;

    @Nullable
    private c currentTrack;
    private long durationTimecode;
    private long durationUs;
    private final c0 encryptionInitializationVector;
    private final c0 encryptionSubsampleData;
    private ByteBuffer encryptionSubsampleDataBuffer;
    private n extractorOutput;
    private boolean haveOutputSample;
    private final c0 nalLength;
    private final c0 nalStartCode;
    private final com.google.android.exoplayer2.extractor.mkv.c reader;
    private int sampleBytesRead;
    private int sampleBytesWritten;
    private int sampleCurrentNalBytesRemaining;
    private boolean sampleEncodingHandled;
    private boolean sampleInitializationVectorRead;
    private int samplePartitionCount;
    private boolean samplePartitionCountRead;
    private byte sampleSignalByte;
    private boolean sampleSignalByteRead;
    private final c0 sampleStrippedBytes;
    private final c0 scratch;
    private int seekEntryId;
    private final c0 seekEntryIdBytes;
    private long seekEntryPosition;
    private boolean seekForCues;
    private final boolean seekForCuesEnabled;
    private long seekPositionAfterBuildingCues;
    private boolean seenClusterPositionForCurrentCuePoint;
    private long segmentContentPosition;
    private long segmentContentSize;
    private boolean sentSeekMap;
    private final c0 subtitleSample;
    private final c0 supplementalData;
    private long timecodeScale;
    private final SparseArray<c> tracks;
    private final g varintReader;
    private final c0 vorbisNumPageSamples;
    public static final r FACTORY = new r() { // from class: com.google.android.exoplayer2.extractor.mkv.d
        @Override // com.google.android.exoplayer2.extractor.r
        public /* synthetic */ l[] a(Uri uri, Map map) {
            return q.a(this, uri, map);
        }

        @Override // com.google.android.exoplayer2.extractor.r
        public final l[] createExtractors() {
            return e.z();
        }
    };
    private static final byte[] SUBRIP_PREFIX = {TarConstants.LF_LINK, 10, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 58, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 58, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 44, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 32, 45, 45, 62, 32, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 58, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 58, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 44, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 10};
    private static final byte[] SSA_DIALOGUE_FORMAT = o0.h0("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");
    private static final byte[] SSA_PREFIX = {68, 105, 97, 108, 111, TarConstants.LF_PAX_GLOBAL_EXTENDED_HEADER, 117, 101, 58, 32, TarConstants.LF_NORMAL, 58, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 58, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 58, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 44, TarConstants.LF_NORMAL, 58, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 58, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 58, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 44};
    private static final byte[] VTT_PREFIX = {87, 69, 66, 86, 84, 84, 10, 10, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 58, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 58, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 46, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 32, 45, 45, 62, 32, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 58, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 58, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 46, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 10};
    private static final UUID WAVE_SUBFORMAT_PCM = new UUID(72057594037932032L, -9223371306706625679L);

    private final class b implements com.google.android.exoplayer2.extractor.mkv.b {
        private b() {
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.b
        public void a(int i10, int i11, m mVar) throws IOException {
            e.this.k(i10, i11, mVar);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.b
        public void endMasterElement(int i10) throws v2 {
            e.this.n(i10);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.b
        public void floatElement(int i10, double d) throws v2 {
            e.this.q(i10, d);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.b
        public int getElementType(int i10) {
            return e.this.t(i10);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.b
        public void integerElement(int i10, long j6) throws v2 {
            e.this.w(i10, j6);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.b
        public boolean isLevel1Element(int i10) {
            return e.this.y(i10);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.b
        public void startMasterElement(int i10, long j6, long j10) throws v2 {
            e.this.F(i10, j6, j10);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.b
        public void stringElement(int i10, String str) throws v2 {
            e.this.G(i10, str);
        }
    }

    protected static final class c {
        private static final int DEFAULT_MAX_CLL = 1000;
        private static final int DEFAULT_MAX_FALL = 200;
        private static final int DISPLAY_UNIT_PIXELS = 0;
        private static final int MAX_CHROMATICITY = 50000;
        private int blockAddIdType;
        public String codecId;
        public byte[] codecPrivate;
        public e0.a cryptoData;
        public int defaultSampleDurationNs;
        public byte[] dolbyVisionConfigBytes;
        public DrmInitData drmInitData;
        public boolean flagForced;
        public boolean hasContentEncryption;
        public int maxBlockAdditionId;
        public int nalUnitLengthFieldLength;
        public String name;
        public int number;
        public e0 output;
        public byte[] sampleStrippedBytes;
        public f0 trueHdSampleRechunker;
        public int type;
        public int width = -1;
        public int height = -1;
        public int displayWidth = -1;
        public int displayHeight = -1;
        public int displayUnit = 0;
        public int projectionType = -1;
        public float projectionPoseYaw = 0.0f;
        public float projectionPosePitch = 0.0f;
        public float projectionPoseRoll = 0.0f;
        public byte[] projectionData = null;
        public int stereoMode = -1;
        public boolean hasColorInfo = false;
        public int colorSpace = -1;
        public int colorTransfer = -1;
        public int colorRange = -1;
        public int maxContentLuminance = 1000;
        public int maxFrameAverageLuminance = 200;
        public float primaryRChromaticityX = -1.0f;
        public float primaryRChromaticityY = -1.0f;
        public float primaryGChromaticityX = -1.0f;
        public float primaryGChromaticityY = -1.0f;
        public float primaryBChromaticityX = -1.0f;
        public float primaryBChromaticityY = -1.0f;
        public float whitePointChromaticityX = -1.0f;
        public float whitePointChromaticityY = -1.0f;
        public float maxMasteringLuminance = -1.0f;
        public float minMasteringLuminance = -1.0f;
        public int channelCount = 1;
        public int audioBitDepth = -1;
        public int sampleRate = 8000;
        public long codecDelayNs = 0;
        public long seekPreRollNs = 0;
        public boolean flagDefault = true;
        private String language = "eng";

        /* JADX INFO: Access modifiers changed from: private */
        public void f() {
            com.google.android.exoplayer2.util.a.e(this.output);
        }

        private byte[] g(String str) throws v2 {
            byte[] bArr = this.codecPrivate;
            if (bArr != null) {
                return bArr;
            }
            throw v2.a("Missing CodecPrivate for codec " + str, null);
        }

        @Nullable
        private byte[] h() {
            if (this.primaryRChromaticityX == -1.0f || this.primaryRChromaticityY == -1.0f || this.primaryGChromaticityX == -1.0f || this.primaryGChromaticityY == -1.0f || this.primaryBChromaticityX == -1.0f || this.primaryBChromaticityY == -1.0f || this.whitePointChromaticityX == -1.0f || this.whitePointChromaticityY == -1.0f || this.maxMasteringLuminance == -1.0f || this.minMasteringLuminance == -1.0f) {
                return null;
            }
            byte[] bArr = new byte[25];
            ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
            byteBufferOrder.put((byte) 0);
            byteBufferOrder.putShort((short) ((this.primaryRChromaticityX * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.primaryRChromaticityY * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.primaryGChromaticityX * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.primaryGChromaticityY * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.primaryBChromaticityX * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.primaryBChromaticityY * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.whitePointChromaticityX * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.whitePointChromaticityY * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) (this.maxMasteringLuminance + 0.5f));
            byteBufferOrder.putShort((short) (this.minMasteringLuminance + 0.5f));
            byteBufferOrder.putShort((short) this.maxContentLuminance);
            byteBufferOrder.putShort((short) this.maxFrameAverageLuminance);
            return bArr;
        }

        private static Pair<String, List<byte[]>> k(c0 c0Var) throws v2 {
            try {
                c0Var.Q(16);
                long jT = c0Var.t();
                if (jT == 1482049860) {
                    return new Pair<>("video/divx", null);
                }
                if (jT == 859189832) {
                    return new Pair<>("video/3gpp", null);
                }
                if (jT != 826496599) {
                    t.i(e.TAG, "Unknown FourCC. Setting mimeType to video/x-unknown");
                    return new Pair<>("video/x-unknown", null);
                }
                byte[] bArrD = c0Var.d();
                for (int iE = c0Var.e() + 20; iE < bArrD.length - 4; iE++) {
                    if (bArrD[iE] == 0 && bArrD[iE + 1] == 0 && bArrD[iE + 2] == 1 && bArrD[iE + 3] == 15) {
                        return new Pair<>("video/wvc1", Collections.singletonList(Arrays.copyOfRange(bArrD, iE, bArrD.length)));
                    }
                }
                throw v2.a("Failed to find FourCC VC1 initialization data", null);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw v2.a("Error parsing FourCC private data", null);
            }
        }

        private static List<byte[]> m(byte[] bArr) throws v2 {
            int i10;
            int i11;
            try {
                if (bArr[0] != 2) {
                    throw v2.a("Error parsing vorbis codec private", null);
                }
                int i12 = 0;
                int i13 = 1;
                while (true) {
                    i10 = bArr[i13];
                    if ((i10 & 255) != 255) {
                        break;
                    }
                    i12 += 255;
                    i13++;
                }
                int i14 = i13 + 1;
                int i15 = i12 + (i10 & 255);
                int i16 = 0;
                while (true) {
                    i11 = bArr[i14];
                    if ((i11 & 255) != 255) {
                        break;
                    }
                    i16 += 255;
                    i14++;
                }
                int i17 = i14 + 1;
                int i18 = i16 + (i11 & 255);
                if (bArr[i17] != 1) {
                    throw v2.a("Error parsing vorbis codec private", null);
                }
                byte[] bArr2 = new byte[i15];
                System.arraycopy(bArr, i17, bArr2, 0, i15);
                int i19 = i17 + i15;
                if (bArr[i19] != 3) {
                    throw v2.a("Error parsing vorbis codec private", null);
                }
                int i20 = i19 + i18;
                if (bArr[i20] != 5) {
                    throw v2.a("Error parsing vorbis codec private", null);
                }
                byte[] bArr3 = new byte[bArr.length - i20];
                System.arraycopy(bArr, i20, bArr3, 0, bArr.length - i20);
                ArrayList arrayList = new ArrayList(2);
                arrayList.add(bArr2);
                arrayList.add(bArr3);
                return arrayList;
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw v2.a("Error parsing vorbis codec private", null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean o(boolean z6) {
            if (e.CODEC_ID_OPUS.equals(this.codecId)) {
                return z6;
            }
            return this.maxBlockAdditionId > 0;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:206:0x042f  */
        /* JADX WARN: Code duplicated, block: B:211:0x0446  */
        /* JADX WARN: Code duplicated, block: B:212:0x0448  */
        /* JADX WARN: Code duplicated, block: B:215:0x0455  */
        /* JADX WARN: Code duplicated, block: B:216:0x0467  */
        /* JADX WARN: Code duplicated, block: B:218:0x046d  */
        /* JADX WARN: Code duplicated, block: B:220:0x0471  */
        /* JADX WARN: Code duplicated, block: B:222:0x0476  */
        /* JADX WARN: Code duplicated, block: B:225:0x047e  */
        /* JADX WARN: Code duplicated, block: B:227:0x0483  */
        /* JADX WARN: Code duplicated, block: B:230:0x0488  */
        /* JADX WARN: Code duplicated, block: B:233:0x0496  */
        /* JADX WARN: Code duplicated, block: B:236:0x049c  */
        /* JADX WARN: Code duplicated, block: B:239:0x04af  */
        /* JADX WARN: Code duplicated, block: B:244:0x04cf  */
        /* JADX WARN: Code duplicated, block: B:250:0x04e8  */
        /* JADX WARN: Code duplicated, block: B:251:0x04ea  */
        /* JADX WARN: Code duplicated, block: B:253:0x04f4  */
        /* JADX WARN: Code duplicated, block: B:254:0x04f7  */
        /* JADX WARN: Code duplicated, block: B:256:0x0501  */
        /* JADX WARN: Code duplicated, block: B:262:0x0519  */
        /* JADX WARN: Code duplicated, block: B:264:0x0540  */
        /* JADX WARN: Code duplicated, block: B:266:0x0546  */
        /* JADX WARN: Code duplicated, block: B:282:0x0571  */
        /* JADX WARN: Code duplicated, block: B:4:0x0015  */
        public void i(n nVar, int i10) throws v2 {
            byte b7;
            List<byte[]> listSingletonList;
            String str;
            int i11;
            int i12;
            List<byte[]> list;
            String str2;
            int iW;
            byte[] bArr;
            String str3;
            int i13;
            a2.b bVar;
            int i14;
            int iIntValue;
            int i15;
            float f;
            int i16;
            int i17;
            int i18;
            com.google.android.exoplayer2.video.d dVarA;
            String str4 = this.codecId;
            str4.hashCode();
            switch (str4) {
                case "V_MPEG4/ISO/AP":
                    b7 = 0;
                    break;
                case "V_MPEG4/ISO/SP":
                    b7 = 1;
                    break;
                case "A_MS/ACM":
                    b7 = 2;
                    break;
                case "A_TRUEHD":
                    b7 = 3;
                    break;
                case "A_VORBIS":
                    b7 = 4;
                    break;
                case "A_MPEG/L2":
                    b7 = 5;
                    break;
                case "A_MPEG/L3":
                    b7 = 6;
                    break;
                case "V_MS/VFW/FOURCC":
                    b7 = 7;
                    break;
                case "S_DVBSUB":
                    b7 = 8;
                    break;
                case "V_MPEG4/ISO/ASP":
                    b7 = 9;
                    break;
                case "V_MPEG4/ISO/AVC":
                    b7 = 10;
                    break;
                case "S_VOBSUB":
                    b7 = com.google.common.base.c.VT;
                    break;
                case "A_DTS/LOSSLESS":
                    b7 = com.google.common.base.c.FF;
                    break;
                case "A_AAC":
                    b7 = com.google.common.base.c.CR;
                    break;
                case "A_AC3":
                    b7 = com.google.common.base.c.SO;
                    break;
                case "A_DTS":
                    b7 = com.google.common.base.c.SI;
                    break;
                case "V_AV1":
                    b7 = 16;
                    break;
                case "V_VP8":
                    b7 = 17;
                    break;
                case "V_VP9":
                    b7 = com.google.common.base.c.DC2;
                    break;
                case "S_HDMV/PGS":
                    b7 = 19;
                    break;
                case "V_THEORA":
                    b7 = com.google.common.base.c.DC4;
                    break;
                case "A_DTS/EXPRESS":
                    b7 = com.google.common.base.c.NAK;
                    break;
                case "A_PCM/FLOAT/IEEE":
                    b7 = com.google.common.base.c.SYN;
                    break;
                case "A_PCM/INT/BIG":
                    b7 = com.google.common.base.c.ETB;
                    break;
                case "A_PCM/INT/LIT":
                    b7 = com.google.common.base.c.CAN;
                    break;
                case "S_TEXT/ASS":
                    b7 = com.google.common.base.c.EM;
                    break;
                case "V_MPEGH/ISO/HEVC":
                    b7 = com.google.common.base.c.SUB;
                    break;
                case "S_TEXT/WEBVTT":
                    b7 = com.google.common.base.c.ESC;
                    break;
                case "S_TEXT/UTF8":
                    b7 = com.google.common.base.c.FS;
                    break;
                case "V_MPEG2":
                    b7 = com.google.common.base.c.GS;
                    break;
                case "A_EAC3":
                    b7 = com.google.common.base.c.RS;
                    break;
                case "A_FLAC":
                    b7 = com.google.common.base.c.US;
                    break;
                case "A_OPUS":
                    b7 = 32;
                    break;
                default:
                    b7 = -1;
                    break;
            }
            String str5 = "audio/raw";
            switch (b7) {
                case 0:
                case 1:
                case 9:
                    byte[] bArr2 = this.codecPrivate;
                    listSingletonList = bArr2 == null ? null : Collections.singletonList(bArr2);
                    str5 = "video/mp4v-es";
                    str = null;
                    i12 = -1;
                    i11 = -1;
                    bArr = this.dolbyVisionConfigBytes;
                    if (bArr != null && (dVarA = com.google.android.exoplayer2.video.d.a(new c0(bArr))) != null) {
                        str = dVarA.codecs;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z6 = this.flagDefault;
                    if (this.flagForced) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i19 = i13 | (z6 ? 1 : 0);
                    bVar = new a2.b();
                    if (x.l(str3)) {
                        bVar.H(this.channelCount).f0(this.sampleRate).Y(i11);
                        i14 = 1;
                    } else if (x.o(str3)) {
                        if (this.displayUnit == 0) {
                            i17 = this.displayWidth;
                            iIntValue = -1;
                            if (i17 == -1) {
                                i17 = this.width;
                            }
                            this.displayWidth = i17;
                            i18 = this.displayHeight;
                            if (i18 == -1) {
                                i18 = this.height;
                            }
                            this.displayHeight = i18;
                        } else {
                            iIntValue = -1;
                        }
                        i15 = this.displayWidth;
                        if (i15 != iIntValue || (i16 = this.displayHeight) == iIntValue) {
                            f = -1.0f;
                        } else {
                            f = (this.height * i15) / (this.width * i16);
                        }
                        com.google.android.exoplayer2.video.c cVar = this.hasColorInfo ? new com.google.android.exoplayer2.video.c(this.colorSpace, this.colorRange, this.colorTransfer, h()) : null;
                        if (this.name != null && e.TRACK_NAME_TO_ROTATION_DEGREES.containsKey(this.name)) {
                            iIntValue = ((Integer) e.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                        }
                        if (this.projectionType == 0 && Float.compare(this.projectionPoseYaw, 0.0f) == 0 && Float.compare(this.projectionPosePitch, 0.0f) == 0) {
                            if (Float.compare(this.projectionPoseRoll, 0.0f) == 0) {
                                iIntValue = 0;
                            } else if (Float.compare(this.projectionPosePitch, 90.0f) == 0) {
                                iIntValue = 90;
                            } else if (Float.compare(this.projectionPosePitch, -180.0f) != 0 || Float.compare(this.projectionPosePitch, 180.0f) == 0) {
                                iIntValue = 180;
                            } else if (Float.compare(this.projectionPosePitch, -90.0f) == 0) {
                                iIntValue = 270;
                            }
                        }
                        bVar.j0(this.width).Q(this.height).a0(f).d0(iIntValue).b0(this.projectionData).h0(this.stereoMode).J(cVar);
                        i14 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3) && !"text/x-ssa".equals(str3) && !"text/vtt".equals(str3) && !"application/vobsub".equals(str3) && !"application/pgs".equals(str3) && !"application/dvbsubs".equals(str3)) {
                            throw v2.a("Unexpected MIME type.", null);
                        }
                        i14 = 3;
                    }
                    if (this.name != null && !e.TRACK_NAME_TO_ROTATION_DEGREES.containsKey(this.name)) {
                        bVar.U(this.name);
                    }
                    a2 a2VarE = bVar.R(i10).e0(str3).W(i12).V(this.language).g0(i19).T(listSingletonList).I(str).M(this.drmInitData).E();
                    e0 e0VarTrack = nVar.track(this.number, i14);
                    this.output = e0VarTrack;
                    e0VarTrack.d(a2VarE);
                    return;
                case 2:
                    if (l(new c0(g(this.codecId)))) {
                        int iW2 = o0.W(this.audioBitDepth);
                        if (iW2 == 0) {
                            t.i(e.TAG, "Unsupported PCM bit depth: " + this.audioBitDepth + ". Setting mimeType to audio/x-unknown");
                        } else {
                            i11 = iW2;
                            listSingletonList = null;
                            str = null;
                            i12 = -1;
                        }
                        bArr = this.dolbyVisionConfigBytes;
                        if (bArr != null) {
                            str = dVarA.codecs;
                            str5 = "video/dolby-vision";
                        }
                        str3 = str5;
                        boolean z10 = this.flagDefault;
                        if (this.flagForced) {
                            i13 = 2;
                        } else {
                            i13 = 0;
                        }
                        int i110 = i13 | (z10 ? 1 : 0);
                        bVar = new a2.b();
                        if (x.l(str3)) {
                            if (x.o(str3)) {
                                if (this.displayUnit == 0) {
                                    i17 = this.displayWidth;
                                    iIntValue = -1;
                                    if (i17 == -1) {
                                        i17 = this.width;
                                    }
                                    this.displayWidth = i17;
                                    i18 = this.displayHeight;
                                    if (i18 == -1) {
                                        i18 = this.height;
                                    }
                                    this.displayHeight = i18;
                                } else {
                                    iIntValue = -1;
                                }
                                i15 = this.displayWidth;
                                if (i15 != iIntValue) {
                                    f = -1.0f;
                                } else {
                                    f = -1.0f;
                                }
                                if (this.hasColorInfo) {
                                }
                                if (this.name != null) {
                                    iIntValue = ((Integer) e.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                                }
                                if (this.projectionType == 0) {
                                    if (Float.compare(this.projectionPoseRoll, 0.0f) == 0) {
                                        iIntValue = 0;
                                    } else if (Float.compare(this.projectionPosePitch, 90.0f) == 0) {
                                        iIntValue = 90;
                                    } else if (Float.compare(this.projectionPosePitch, -180.0f) != 0) {
                                        iIntValue = 180;
                                    } else {
                                        iIntValue = 180;
                                    }
                                }
                                bVar.j0(this.width).Q(this.height).a0(f).d0(iIntValue).b0(this.projectionData).h0(this.stereoMode).J(cVar);
                                i14 = 2;
                            } else {
                                if ("application/x-subrip".equals(str3)) {
                                }
                                i14 = 3;
                            }
                            break;
                        } else {
                            bVar.H(this.channelCount).f0(this.sampleRate).Y(i11);
                            i14 = 1;
                        }
                        if (this.name != null) {
                            bVar.U(this.name);
                        }
                        a2 a2VarE2 = bVar.R(i10).e0(str3).W(i12).V(this.language).g0(i110).T(listSingletonList).I(str).M(this.drmInitData).E();
                        e0 e0VarTrack2 = nVar.track(this.number, i14);
                        this.output = e0VarTrack2;
                        e0VarTrack2.d(a2VarE2);
                        return;
                    }
                    t.i(e.TAG, "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown");
                    listSingletonList = null;
                    str = null;
                    str5 = "audio/x-unknown";
                    i12 = -1;
                    i11 = -1;
                    bArr = this.dolbyVisionConfigBytes;
                    if (bArr != null) {
                        str = dVarA.codecs;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z11 = this.flagDefault;
                    if (this.flagForced) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i111 = i13 | (z11 ? 1 : 0);
                    bVar = new a2.b();
                    if (x.l(str3)) {
                        if (x.o(str3)) {
                            if (this.displayUnit == 0) {
                                i17 = this.displayWidth;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.width;
                                }
                                this.displayWidth = i17;
                                i18 = this.displayHeight;
                                if (i18 == -1) {
                                    i18 = this.height;
                                }
                                this.displayHeight = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.displayWidth;
                            if (i15 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) e.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                if (Float.compare(this.projectionPoseRoll, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.projectionPosePitch, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.projectionPosePitch, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.width).Q(this.height).a0(f).d0(iIntValue).b0(this.projectionData).h0(this.stereoMode).J(cVar);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.channelCount).f0(this.sampleRate).Y(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        bVar.U(this.name);
                    }
                    a2 a2VarE3 = bVar.R(i10).e0(str3).W(i12).V(this.language).g0(i111).T(listSingletonList).I(str).M(this.drmInitData).E();
                    e0 e0VarTrack3 = nVar.track(this.number, i14);
                    this.output = e0VarTrack3;
                    e0VarTrack3.d(a2VarE3);
                    return;
                case 3:
                    this.trueHdSampleRechunker = new f0();
                    str5 = "audio/true-hd";
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i11 = -1;
                    bArr = this.dolbyVisionConfigBytes;
                    if (bArr != null) {
                        str = dVarA.codecs;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z12 = this.flagDefault;
                    if (this.flagForced) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i112 = i13 | (z12 ? 1 : 0);
                    bVar = new a2.b();
                    if (x.l(str3)) {
                        if (x.o(str3)) {
                            if (this.displayUnit == 0) {
                                i17 = this.displayWidth;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.width;
                                }
                                this.displayWidth = i17;
                                i18 = this.displayHeight;
                                if (i18 == -1) {
                                    i18 = this.height;
                                }
                                this.displayHeight = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.displayWidth;
                            if (i15 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) e.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                if (Float.compare(this.projectionPoseRoll, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.projectionPosePitch, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.projectionPosePitch, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.width).Q(this.height).a0(f).d0(iIntValue).b0(this.projectionData).h0(this.stereoMode).J(cVar);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.channelCount).f0(this.sampleRate).Y(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        bVar.U(this.name);
                    }
                    a2 a2VarE4 = bVar.R(i10).e0(str3).W(i12).V(this.language).g0(i112).T(listSingletonList).I(str).M(this.drmInitData).E();
                    e0 e0VarTrack4 = nVar.track(this.number, i14);
                    this.output = e0VarTrack4;
                    e0VarTrack4.d(a2VarE4);
                    return;
                case 4:
                    listSingletonList = m(g(this.codecId));
                    str5 = "audio/vorbis";
                    i12 = 8192;
                    str = null;
                    i11 = -1;
                    bArr = this.dolbyVisionConfigBytes;
                    if (bArr != null) {
                        str = dVarA.codecs;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z13 = this.flagDefault;
                    if (this.flagForced) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i113 = i13 | (z13 ? 1 : 0);
                    bVar = new a2.b();
                    if (x.l(str3)) {
                        if (x.o(str3)) {
                            if (this.displayUnit == 0) {
                                i17 = this.displayWidth;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.width;
                                }
                                this.displayWidth = i17;
                                i18 = this.displayHeight;
                                if (i18 == -1) {
                                    i18 = this.height;
                                }
                                this.displayHeight = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.displayWidth;
                            if (i15 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) e.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                if (Float.compare(this.projectionPoseRoll, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.projectionPosePitch, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.projectionPosePitch, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.width).Q(this.height).a0(f).d0(iIntValue).b0(this.projectionData).h0(this.stereoMode).J(cVar);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.channelCount).f0(this.sampleRate).Y(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        bVar.U(this.name);
                    }
                    a2 a2VarE5 = bVar.R(i10).e0(str3).W(i12).V(this.language).g0(i113).T(listSingletonList).I(str).M(this.drmInitData).E();
                    e0 e0VarTrack5 = nVar.track(this.number, i14);
                    this.output = e0VarTrack5;
                    e0VarTrack5.d(a2VarE5);
                    return;
                case 5:
                    str5 = "audio/mpeg-L2";
                    listSingletonList = null;
                    str = null;
                    i12 = 4096;
                    i11 = -1;
                    bArr = this.dolbyVisionConfigBytes;
                    if (bArr != null) {
                        str = dVarA.codecs;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z14 = this.flagDefault;
                    if (this.flagForced) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i114 = i13 | (z14 ? 1 : 0);
                    bVar = new a2.b();
                    if (x.l(str3)) {
                        if (x.o(str3)) {
                            if (this.displayUnit == 0) {
                                i17 = this.displayWidth;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.width;
                                }
                                this.displayWidth = i17;
                                i18 = this.displayHeight;
                                if (i18 == -1) {
                                    i18 = this.height;
                                }
                                this.displayHeight = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.displayWidth;
                            if (i15 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) e.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                if (Float.compare(this.projectionPoseRoll, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.projectionPosePitch, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.projectionPosePitch, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.width).Q(this.height).a0(f).d0(iIntValue).b0(this.projectionData).h0(this.stereoMode).J(cVar);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.channelCount).f0(this.sampleRate).Y(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        bVar.U(this.name);
                    }
                    a2 a2VarE6 = bVar.R(i10).e0(str3).W(i12).V(this.language).g0(i114).T(listSingletonList).I(str).M(this.drmInitData).E();
                    e0 e0VarTrack6 = nVar.track(this.number, i14);
                    this.output = e0VarTrack6;
                    e0VarTrack6.d(a2VarE6);
                    return;
                case 6:
                    str5 = "audio/mpeg";
                    listSingletonList = null;
                    str = null;
                    i12 = 4096;
                    i11 = -1;
                    bArr = this.dolbyVisionConfigBytes;
                    if (bArr != null) {
                        str = dVarA.codecs;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z15 = this.flagDefault;
                    if (this.flagForced) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i115 = i13 | (z15 ? 1 : 0);
                    bVar = new a2.b();
                    if (x.l(str3)) {
                        if (x.o(str3)) {
                            if (this.displayUnit == 0) {
                                i17 = this.displayWidth;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.width;
                                }
                                this.displayWidth = i17;
                                i18 = this.displayHeight;
                                if (i18 == -1) {
                                    i18 = this.height;
                                }
                                this.displayHeight = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.displayWidth;
                            if (i15 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) e.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                if (Float.compare(this.projectionPoseRoll, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.projectionPosePitch, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.projectionPosePitch, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.width).Q(this.height).a0(f).d0(iIntValue).b0(this.projectionData).h0(this.stereoMode).J(cVar);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.channelCount).f0(this.sampleRate).Y(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        bVar.U(this.name);
                    }
                    a2 a2VarE7 = bVar.R(i10).e0(str3).W(i12).V(this.language).g0(i115).T(listSingletonList).I(str).M(this.drmInitData).E();
                    e0 e0VarTrack7 = nVar.track(this.number, i14);
                    this.output = e0VarTrack7;
                    e0VarTrack7.d(a2VarE7);
                    return;
                case 7:
                    Pair<String, List<byte[]>> pairK = k(new c0(g(this.codecId)));
                    str5 = (String) pairK.first;
                    listSingletonList = (List) pairK.second;
                    str = null;
                    i12 = -1;
                    i11 = -1;
                    bArr = this.dolbyVisionConfigBytes;
                    if (bArr != null) {
                        str = dVarA.codecs;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z16 = this.flagDefault;
                    if (this.flagForced) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i116 = i13 | (z16 ? 1 : 0);
                    bVar = new a2.b();
                    if (x.l(str3)) {
                        if (x.o(str3)) {
                            if (this.displayUnit == 0) {
                                i17 = this.displayWidth;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.width;
                                }
                                this.displayWidth = i17;
                                i18 = this.displayHeight;
                                if (i18 == -1) {
                                    i18 = this.height;
                                }
                                this.displayHeight = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.displayWidth;
                            if (i15 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) e.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                if (Float.compare(this.projectionPoseRoll, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.projectionPosePitch, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.projectionPosePitch, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.width).Q(this.height).a0(f).d0(iIntValue).b0(this.projectionData).h0(this.stereoMode).J(cVar);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.channelCount).f0(this.sampleRate).Y(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        bVar.U(this.name);
                    }
                    a2 a2VarE8 = bVar.R(i10).e0(str3).W(i12).V(this.language).g0(i116).T(listSingletonList).I(str).M(this.drmInitData).E();
                    e0 e0VarTrack8 = nVar.track(this.number, i14);
                    this.output = e0VarTrack8;
                    e0VarTrack8.d(a2VarE8);
                    return;
                case 8:
                    byte[] bArr3 = new byte[4];
                    System.arraycopy(g(this.codecId), 0, bArr3, 0, 4);
                    listSingletonList = a0.y(bArr3);
                    str = null;
                    str5 = "application/dvbsubs";
                    i12 = -1;
                    i11 = -1;
                    bArr = this.dolbyVisionConfigBytes;
                    if (bArr != null) {
                        str = dVarA.codecs;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z17 = this.flagDefault;
                    if (this.flagForced) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i117 = i13 | (z17 ? 1 : 0);
                    bVar = new a2.b();
                    if (x.l(str3)) {
                        if (x.o(str3)) {
                            if (this.displayUnit == 0) {
                                i17 = this.displayWidth;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.width;
                                }
                                this.displayWidth = i17;
                                i18 = this.displayHeight;
                                if (i18 == -1) {
                                    i18 = this.height;
                                }
                                this.displayHeight = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.displayWidth;
                            if (i15 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) e.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                if (Float.compare(this.projectionPoseRoll, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.projectionPosePitch, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.projectionPosePitch, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.width).Q(this.height).a0(f).d0(iIntValue).b0(this.projectionData).h0(this.stereoMode).J(cVar);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.channelCount).f0(this.sampleRate).Y(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        bVar.U(this.name);
                    }
                    a2 a2VarE9 = bVar.R(i10).e0(str3).W(i12).V(this.language).g0(i117).T(listSingletonList).I(str).M(this.drmInitData).E();
                    e0 e0VarTrack9 = nVar.track(this.number, i14);
                    this.output = e0VarTrack9;
                    e0VarTrack9.d(a2VarE9);
                    return;
                case 10:
                    com.google.android.exoplayer2.video.a aVarB = com.google.android.exoplayer2.video.a.b(new c0(g(this.codecId)));
                    list = aVarB.initializationData;
                    this.nalUnitLengthFieldLength = aVarB.nalUnitLengthFieldLength;
                    str2 = aVarB.codecs;
                    str5 = "video/avc";
                    i12 = -1;
                    i11 = -1;
                    List<byte[]> list2 = list;
                    str = str2;
                    listSingletonList = list2;
                    bArr = this.dolbyVisionConfigBytes;
                    if (bArr != null) {
                        str = dVarA.codecs;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z18 = this.flagDefault;
                    if (this.flagForced) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i118 = i13 | (z18 ? 1 : 0);
                    bVar = new a2.b();
                    if (x.l(str3)) {
                        if (x.o(str3)) {
                            if (this.displayUnit == 0) {
                                i17 = this.displayWidth;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.width;
                                }
                                this.displayWidth = i17;
                                i18 = this.displayHeight;
                                if (i18 == -1) {
                                    i18 = this.height;
                                }
                                this.displayHeight = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.displayWidth;
                            if (i15 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) e.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                if (Float.compare(this.projectionPoseRoll, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.projectionPosePitch, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.projectionPosePitch, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.width).Q(this.height).a0(f).d0(iIntValue).b0(this.projectionData).h0(this.stereoMode).J(cVar);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.channelCount).f0(this.sampleRate).Y(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        bVar.U(this.name);
                    }
                    a2 a2VarE10 = bVar.R(i10).e0(str3).W(i12).V(this.language).g0(i118).T(listSingletonList).I(str).M(this.drmInitData).E();
                    e0 e0VarTrack10 = nVar.track(this.number, i14);
                    this.output = e0VarTrack10;
                    e0VarTrack10.d(a2VarE10);
                    return;
                case 11:
                    listSingletonList = a0.y(g(this.codecId));
                    str = null;
                    str5 = "application/vobsub";
                    i12 = -1;
                    i11 = -1;
                    bArr = this.dolbyVisionConfigBytes;
                    if (bArr != null) {
                        str = dVarA.codecs;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z19 = this.flagDefault;
                    if (this.flagForced) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i119 = i13 | (z19 ? 1 : 0);
                    bVar = new a2.b();
                    if (x.l(str3)) {
                        if (x.o(str3)) {
                            if (this.displayUnit == 0) {
                                i17 = this.displayWidth;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.width;
                                }
                                this.displayWidth = i17;
                                i18 = this.displayHeight;
                                if (i18 == -1) {
                                    i18 = this.height;
                                }
                                this.displayHeight = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.displayWidth;
                            if (i15 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) e.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                if (Float.compare(this.projectionPoseRoll, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.projectionPosePitch, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.projectionPosePitch, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.width).Q(this.height).a0(f).d0(iIntValue).b0(this.projectionData).h0(this.stereoMode).J(cVar);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.channelCount).f0(this.sampleRate).Y(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        bVar.U(this.name);
                    }
                    a2 a2VarE11 = bVar.R(i10).e0(str3).W(i12).V(this.language).g0(i119).T(listSingletonList).I(str).M(this.drmInitData).E();
                    e0 e0VarTrack11 = nVar.track(this.number, i14);
                    this.output = e0VarTrack11;
                    e0VarTrack11.d(a2VarE11);
                    return;
                case 12:
                    str5 = "audio/vnd.dts.hd";
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i11 = -1;
                    bArr = this.dolbyVisionConfigBytes;
                    if (bArr != null) {
                        str = dVarA.codecs;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z110 = this.flagDefault;
                    if (this.flagForced) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i1110 = i13 | (z110 ? 1 : 0);
                    bVar = new a2.b();
                    if (x.l(str3)) {
                        if (x.o(str3)) {
                            if (this.displayUnit == 0) {
                                i17 = this.displayWidth;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.width;
                                }
                                this.displayWidth = i17;
                                i18 = this.displayHeight;
                                if (i18 == -1) {
                                    i18 = this.height;
                                }
                                this.displayHeight = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.displayWidth;
                            if (i15 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) e.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                if (Float.compare(this.projectionPoseRoll, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.projectionPosePitch, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.projectionPosePitch, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.width).Q(this.height).a0(f).d0(iIntValue).b0(this.projectionData).h0(this.stereoMode).J(cVar);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.channelCount).f0(this.sampleRate).Y(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        bVar.U(this.name);
                    }
                    a2 a2VarE12 = bVar.R(i10).e0(str3).W(i12).V(this.language).g0(i1110).T(listSingletonList).I(str).M(this.drmInitData).E();
                    e0 e0VarTrack12 = nVar.track(this.number, i14);
                    this.output = e0VarTrack12;
                    e0VarTrack12.d(a2VarE12);
                    return;
                case 13:
                    listSingletonList = Collections.singletonList(g(this.codecId));
                    com.google.android.exoplayer2.audio.a.b bVarE = com.google.android.exoplayer2.audio.a.e(this.codecPrivate);
                    this.sampleRate = bVarE.sampleRateHz;
                    this.channelCount = bVarE.channelCount;
                    str = bVarE.codecs;
                    str5 = "audio/mp4a-latm";
                    i12 = -1;
                    i11 = -1;
                    bArr = this.dolbyVisionConfigBytes;
                    if (bArr != null) {
                        str = dVarA.codecs;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z111 = this.flagDefault;
                    if (this.flagForced) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i1111 = i13 | (z111 ? 1 : 0);
                    bVar = new a2.b();
                    if (x.l(str3)) {
                        if (x.o(str3)) {
                            if (this.displayUnit == 0) {
                                i17 = this.displayWidth;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.width;
                                }
                                this.displayWidth = i17;
                                i18 = this.displayHeight;
                                if (i18 == -1) {
                                    i18 = this.height;
                                }
                                this.displayHeight = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.displayWidth;
                            if (i15 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) e.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                if (Float.compare(this.projectionPoseRoll, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.projectionPosePitch, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.projectionPosePitch, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.width).Q(this.height).a0(f).d0(iIntValue).b0(this.projectionData).h0(this.stereoMode).J(cVar);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.channelCount).f0(this.sampleRate).Y(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        bVar.U(this.name);
                    }
                    a2 a2VarE13 = bVar.R(i10).e0(str3).W(i12).V(this.language).g0(i1111).T(listSingletonList).I(str).M(this.drmInitData).E();
                    e0 e0VarTrack13 = nVar.track(this.number, i14);
                    this.output = e0VarTrack13;
                    e0VarTrack13.d(a2VarE13);
                    return;
                case 14:
                    str5 = "audio/ac3";
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i11 = -1;
                    bArr = this.dolbyVisionConfigBytes;
                    if (bArr != null) {
                        str = dVarA.codecs;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z112 = this.flagDefault;
                    if (this.flagForced) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i1112 = i13 | (z112 ? 1 : 0);
                    bVar = new a2.b();
                    if (x.l(str3)) {
                        if (x.o(str3)) {
                            if (this.displayUnit == 0) {
                                i17 = this.displayWidth;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.width;
                                }
                                this.displayWidth = i17;
                                i18 = this.displayHeight;
                                if (i18 == -1) {
                                    i18 = this.height;
                                }
                                this.displayHeight = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.displayWidth;
                            if (i15 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) e.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                if (Float.compare(this.projectionPoseRoll, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.projectionPosePitch, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.projectionPosePitch, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.width).Q(this.height).a0(f).d0(iIntValue).b0(this.projectionData).h0(this.stereoMode).J(cVar);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.channelCount).f0(this.sampleRate).Y(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        bVar.U(this.name);
                    }
                    a2 a2VarE14 = bVar.R(i10).e0(str3).W(i12).V(this.language).g0(i1112).T(listSingletonList).I(str).M(this.drmInitData).E();
                    e0 e0VarTrack14 = nVar.track(this.number, i14);
                    this.output = e0VarTrack14;
                    e0VarTrack14.d(a2VarE14);
                    return;
                case 15:
                case 21:
                    str5 = "audio/vnd.dts";
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i11 = -1;
                    bArr = this.dolbyVisionConfigBytes;
                    if (bArr != null) {
                        str = dVarA.codecs;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z113 = this.flagDefault;
                    if (this.flagForced) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i1113 = i13 | (z113 ? 1 : 0);
                    bVar = new a2.b();
                    if (x.l(str3)) {
                        if (x.o(str3)) {
                            if (this.displayUnit == 0) {
                                i17 = this.displayWidth;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.width;
                                }
                                this.displayWidth = i17;
                                i18 = this.displayHeight;
                                if (i18 == -1) {
                                    i18 = this.height;
                                }
                                this.displayHeight = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.displayWidth;
                            if (i15 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) e.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                if (Float.compare(this.projectionPoseRoll, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.projectionPosePitch, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.projectionPosePitch, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.width).Q(this.height).a0(f).d0(iIntValue).b0(this.projectionData).h0(this.stereoMode).J(cVar);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.channelCount).f0(this.sampleRate).Y(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        bVar.U(this.name);
                    }
                    a2 a2VarE15 = bVar.R(i10).e0(str3).W(i12).V(this.language).g0(i1113).T(listSingletonList).I(str).M(this.drmInitData).E();
                    e0 e0VarTrack15 = nVar.track(this.number, i14);
                    this.output = e0VarTrack15;
                    e0VarTrack15.d(a2VarE15);
                    return;
                case 16:
                    str5 = "video/av01";
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i11 = -1;
                    bArr = this.dolbyVisionConfigBytes;
                    if (bArr != null) {
                        str = dVarA.codecs;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z114 = this.flagDefault;
                    if (this.flagForced) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i1114 = i13 | (z114 ? 1 : 0);
                    bVar = new a2.b();
                    if (x.l(str3)) {
                        if (x.o(str3)) {
                            if (this.displayUnit == 0) {
                                i17 = this.displayWidth;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.width;
                                }
                                this.displayWidth = i17;
                                i18 = this.displayHeight;
                                if (i18 == -1) {
                                    i18 = this.height;
                                }
                                this.displayHeight = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.displayWidth;
                            if (i15 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) e.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                if (Float.compare(this.projectionPoseRoll, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.projectionPosePitch, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.projectionPosePitch, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.width).Q(this.height).a0(f).d0(iIntValue).b0(this.projectionData).h0(this.stereoMode).J(cVar);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.channelCount).f0(this.sampleRate).Y(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        bVar.U(this.name);
                    }
                    a2 a2VarE16 = bVar.R(i10).e0(str3).W(i12).V(this.language).g0(i1114).T(listSingletonList).I(str).M(this.drmInitData).E();
                    e0 e0VarTrack16 = nVar.track(this.number, i14);
                    this.output = e0VarTrack16;
                    e0VarTrack16.d(a2VarE16);
                    return;
                case 17:
                    str5 = "video/x-vnd.on2.vp8";
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i11 = -1;
                    bArr = this.dolbyVisionConfigBytes;
                    if (bArr != null) {
                        str = dVarA.codecs;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z115 = this.flagDefault;
                    if (this.flagForced) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i1115 = i13 | (z115 ? 1 : 0);
                    bVar = new a2.b();
                    if (x.l(str3)) {
                        if (x.o(str3)) {
                            if (this.displayUnit == 0) {
                                i17 = this.displayWidth;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.width;
                                }
                                this.displayWidth = i17;
                                i18 = this.displayHeight;
                                if (i18 == -1) {
                                    i18 = this.height;
                                }
                                this.displayHeight = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.displayWidth;
                            if (i15 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) e.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                if (Float.compare(this.projectionPoseRoll, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.projectionPosePitch, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.projectionPosePitch, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.width).Q(this.height).a0(f).d0(iIntValue).b0(this.projectionData).h0(this.stereoMode).J(cVar);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.channelCount).f0(this.sampleRate).Y(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        bVar.U(this.name);
                    }
                    a2 a2VarE17 = bVar.R(i10).e0(str3).W(i12).V(this.language).g0(i1115).T(listSingletonList).I(str).M(this.drmInitData).E();
                    e0 e0VarTrack17 = nVar.track(this.number, i14);
                    this.output = e0VarTrack17;
                    e0VarTrack17.d(a2VarE17);
                    return;
                case 18:
                    str5 = "video/x-vnd.on2.vp9";
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i11 = -1;
                    bArr = this.dolbyVisionConfigBytes;
                    if (bArr != null) {
                        str = dVarA.codecs;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z116 = this.flagDefault;
                    if (this.flagForced) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i1116 = i13 | (z116 ? 1 : 0);
                    bVar = new a2.b();
                    if (x.l(str3)) {
                        if (x.o(str3)) {
                            if (this.displayUnit == 0) {
                                i17 = this.displayWidth;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.width;
                                }
                                this.displayWidth = i17;
                                i18 = this.displayHeight;
                                if (i18 == -1) {
                                    i18 = this.height;
                                }
                                this.displayHeight = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.displayWidth;
                            if (i15 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) e.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                if (Float.compare(this.projectionPoseRoll, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.projectionPosePitch, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.projectionPosePitch, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.width).Q(this.height).a0(f).d0(iIntValue).b0(this.projectionData).h0(this.stereoMode).J(cVar);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.channelCount).f0(this.sampleRate).Y(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        bVar.U(this.name);
                    }
                    a2 a2VarE18 = bVar.R(i10).e0(str3).W(i12).V(this.language).g0(i1116).T(listSingletonList).I(str).M(this.drmInitData).E();
                    e0 e0VarTrack18 = nVar.track(this.number, i14);
                    this.output = e0VarTrack18;
                    e0VarTrack18.d(a2VarE18);
                    return;
                case 19:
                    listSingletonList = null;
                    str = null;
                    str5 = "application/pgs";
                    i12 = -1;
                    i11 = -1;
                    bArr = this.dolbyVisionConfigBytes;
                    if (bArr != null) {
                        str = dVarA.codecs;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z117 = this.flagDefault;
                    if (this.flagForced) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i1117 = i13 | (z117 ? 1 : 0);
                    bVar = new a2.b();
                    if (x.l(str3)) {
                        if (x.o(str3)) {
                            if (this.displayUnit == 0) {
                                i17 = this.displayWidth;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.width;
                                }
                                this.displayWidth = i17;
                                i18 = this.displayHeight;
                                if (i18 == -1) {
                                    i18 = this.height;
                                }
                                this.displayHeight = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.displayWidth;
                            if (i15 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) e.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                if (Float.compare(this.projectionPoseRoll, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.projectionPosePitch, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.projectionPosePitch, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.width).Q(this.height).a0(f).d0(iIntValue).b0(this.projectionData).h0(this.stereoMode).J(cVar);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.channelCount).f0(this.sampleRate).Y(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        bVar.U(this.name);
                    }
                    a2 a2VarE19 = bVar.R(i10).e0(str3).W(i12).V(this.language).g0(i1117).T(listSingletonList).I(str).M(this.drmInitData).E();
                    e0 e0VarTrack19 = nVar.track(this.number, i14);
                    this.output = e0VarTrack19;
                    e0VarTrack19.d(a2VarE19);
                    return;
                case 20:
                    str5 = "video/x-unknown";
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i11 = -1;
                    bArr = this.dolbyVisionConfigBytes;
                    if (bArr != null) {
                        str = dVarA.codecs;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z118 = this.flagDefault;
                    if (this.flagForced) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i1118 = i13 | (z118 ? 1 : 0);
                    bVar = new a2.b();
                    if (x.l(str3)) {
                        if (x.o(str3)) {
                            if (this.displayUnit == 0) {
                                i17 = this.displayWidth;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.width;
                                }
                                this.displayWidth = i17;
                                i18 = this.displayHeight;
                                if (i18 == -1) {
                                    i18 = this.height;
                                }
                                this.displayHeight = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.displayWidth;
                            if (i15 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) e.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                if (Float.compare(this.projectionPoseRoll, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.projectionPosePitch, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.projectionPosePitch, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.width).Q(this.height).a0(f).d0(iIntValue).b0(this.projectionData).h0(this.stereoMode).J(cVar);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.channelCount).f0(this.sampleRate).Y(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        bVar.U(this.name);
                    }
                    a2 a2VarE110 = bVar.R(i10).e0(str3).W(i12).V(this.language).g0(i1118).T(listSingletonList).I(str).M(this.drmInitData).E();
                    e0 e0VarTrack110 = nVar.track(this.number, i14);
                    this.output = e0VarTrack110;
                    e0VarTrack110.d(a2VarE110);
                    return;
                case 22:
                    if (this.audioBitDepth == 32) {
                        listSingletonList = null;
                        str = null;
                        i12 = -1;
                        i11 = 4;
                    } else {
                        t.i(e.TAG, "Unsupported floating point PCM bit depth: " + this.audioBitDepth + ". Setting mimeType to audio/x-unknown");
                        listSingletonList = null;
                        str = null;
                        str5 = "audio/x-unknown";
                        i12 = -1;
                        i11 = -1;
                    }
                    bArr = this.dolbyVisionConfigBytes;
                    if (bArr != null) {
                        str = dVarA.codecs;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z119 = this.flagDefault;
                    if (this.flagForced) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i1119 = i13 | (z119 ? 1 : 0);
                    bVar = new a2.b();
                    if (x.l(str3)) {
                        if (x.o(str3)) {
                            if (this.displayUnit == 0) {
                                i17 = this.displayWidth;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.width;
                                }
                                this.displayWidth = i17;
                                i18 = this.displayHeight;
                                if (i18 == -1) {
                                    i18 = this.height;
                                }
                                this.displayHeight = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.displayWidth;
                            if (i15 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) e.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                if (Float.compare(this.projectionPoseRoll, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.projectionPosePitch, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.projectionPosePitch, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.width).Q(this.height).a0(f).d0(iIntValue).b0(this.projectionData).h0(this.stereoMode).J(cVar);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.channelCount).f0(this.sampleRate).Y(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        bVar.U(this.name);
                    }
                    a2 a2VarE111 = bVar.R(i10).e0(str3).W(i12).V(this.language).g0(i1119).T(listSingletonList).I(str).M(this.drmInitData).E();
                    e0 e0VarTrack111 = nVar.track(this.number, i14);
                    this.output = e0VarTrack111;
                    e0VarTrack111.d(a2VarE111);
                    return;
                case 23:
                    int i20 = this.audioBitDepth;
                    if (i20 == 8) {
                        listSingletonList = null;
                        str = null;
                        i11 = 3;
                    } else {
                        if (i20 != 16) {
                            t.i(e.TAG, "Unsupported big endian PCM bit depth: " + this.audioBitDepth + ". Setting mimeType to audio/x-unknown");
                            listSingletonList = null;
                            str = null;
                            str5 = "audio/x-unknown";
                            i12 = -1;
                            i11 = -1;
                            bArr = this.dolbyVisionConfigBytes;
                            if (bArr != null) {
                                str = dVarA.codecs;
                                str5 = "video/dolby-vision";
                            }
                            str3 = str5;
                            boolean z1110 = this.flagDefault;
                            if (this.flagForced) {
                                i13 = 2;
                            } else {
                                i13 = 0;
                            }
                            int i11110 = i13 | (z1110 ? 1 : 0);
                            bVar = new a2.b();
                            if (x.l(str3)) {
                                if (x.o(str3)) {
                                    if (this.displayUnit == 0) {
                                        i17 = this.displayWidth;
                                        iIntValue = -1;
                                        if (i17 == -1) {
                                            i17 = this.width;
                                        }
                                        this.displayWidth = i17;
                                        i18 = this.displayHeight;
                                        if (i18 == -1) {
                                            i18 = this.height;
                                        }
                                        this.displayHeight = i18;
                                    } else {
                                        iIntValue = -1;
                                    }
                                    i15 = this.displayWidth;
                                    if (i15 != iIntValue) {
                                        f = -1.0f;
                                    } else {
                                        f = -1.0f;
                                    }
                                    if (this.hasColorInfo) {
                                    }
                                    if (this.name != null) {
                                        iIntValue = ((Integer) e.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                                    }
                                    if (this.projectionType == 0) {
                                        if (Float.compare(this.projectionPoseRoll, 0.0f) == 0) {
                                            iIntValue = 0;
                                        } else if (Float.compare(this.projectionPosePitch, 90.0f) == 0) {
                                            iIntValue = 90;
                                        } else if (Float.compare(this.projectionPosePitch, -180.0f) != 0) {
                                            iIntValue = 180;
                                        } else {
                                            iIntValue = 180;
                                        }
                                    }
                                    bVar.j0(this.width).Q(this.height).a0(f).d0(iIntValue).b0(this.projectionData).h0(this.stereoMode).J(cVar);
                                    i14 = 2;
                                } else {
                                    if ("application/x-subrip".equals(str3)) {
                                    }
                                    i14 = 3;
                                }
                                break;
                            } else {
                                bVar.H(this.channelCount).f0(this.sampleRate).Y(i11);
                                i14 = 1;
                            }
                            if (this.name != null) {
                                bVar.U(this.name);
                            }
                            a2 a2VarE112 = bVar.R(i10).e0(str3).W(i12).V(this.language).g0(i11110).T(listSingletonList).I(str).M(this.drmInitData).E();
                            e0 e0VarTrack112 = nVar.track(this.number, i14);
                            this.output = e0VarTrack112;
                            e0VarTrack112.d(a2VarE112);
                            return;
                        }
                        iW = 268435456;
                        i11 = iW;
                        listSingletonList = null;
                        str = null;
                    }
                    i12 = -1;
                    bArr = this.dolbyVisionConfigBytes;
                    if (bArr != null) {
                        str = dVarA.codecs;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z1111 = this.flagDefault;
                    if (this.flagForced) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i11111 = i13 | (z1111 ? 1 : 0);
                    bVar = new a2.b();
                    if (x.l(str3)) {
                        if (x.o(str3)) {
                            if (this.displayUnit == 0) {
                                i17 = this.displayWidth;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.width;
                                }
                                this.displayWidth = i17;
                                i18 = this.displayHeight;
                                if (i18 == -1) {
                                    i18 = this.height;
                                }
                                this.displayHeight = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.displayWidth;
                            if (i15 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) e.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                if (Float.compare(this.projectionPoseRoll, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.projectionPosePitch, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.projectionPosePitch, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.width).Q(this.height).a0(f).d0(iIntValue).b0(this.projectionData).h0(this.stereoMode).J(cVar);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.channelCount).f0(this.sampleRate).Y(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        bVar.U(this.name);
                    }
                    a2 a2VarE113 = bVar.R(i10).e0(str3).W(i12).V(this.language).g0(i11111).T(listSingletonList).I(str).M(this.drmInitData).E();
                    e0 e0VarTrack113 = nVar.track(this.number, i14);
                    this.output = e0VarTrack113;
                    e0VarTrack113.d(a2VarE113);
                    return;
                case 24:
                    iW = o0.W(this.audioBitDepth);
                    if (iW == 0) {
                        t.i(e.TAG, "Unsupported little endian PCM bit depth: " + this.audioBitDepth + ". Setting mimeType to audio/x-unknown");
                        listSingletonList = null;
                        str = null;
                        str5 = "audio/x-unknown";
                        i12 = -1;
                        i11 = -1;
                        bArr = this.dolbyVisionConfigBytes;
                        if (bArr != null) {
                            str = dVarA.codecs;
                            str5 = "video/dolby-vision";
                        }
                        str3 = str5;
                        boolean z1112 = this.flagDefault;
                        if (this.flagForced) {
                            i13 = 2;
                        } else {
                            i13 = 0;
                        }
                        int i11112 = i13 | (z1112 ? 1 : 0);
                        bVar = new a2.b();
                        if (x.l(str3)) {
                            if (x.o(str3)) {
                                if (this.displayUnit == 0) {
                                    i17 = this.displayWidth;
                                    iIntValue = -1;
                                    if (i17 == -1) {
                                        i17 = this.width;
                                    }
                                    this.displayWidth = i17;
                                    i18 = this.displayHeight;
                                    if (i18 == -1) {
                                        i18 = this.height;
                                    }
                                    this.displayHeight = i18;
                                } else {
                                    iIntValue = -1;
                                }
                                i15 = this.displayWidth;
                                if (i15 != iIntValue) {
                                    f = -1.0f;
                                } else {
                                    f = -1.0f;
                                }
                                if (this.hasColorInfo) {
                                }
                                if (this.name != null) {
                                    iIntValue = ((Integer) e.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                                }
                                if (this.projectionType == 0) {
                                    if (Float.compare(this.projectionPoseRoll, 0.0f) == 0) {
                                        iIntValue = 0;
                                    } else if (Float.compare(this.projectionPosePitch, 90.0f) == 0) {
                                        iIntValue = 90;
                                    } else if (Float.compare(this.projectionPosePitch, -180.0f) != 0) {
                                        iIntValue = 180;
                                    } else {
                                        iIntValue = 180;
                                    }
                                }
                                bVar.j0(this.width).Q(this.height).a0(f).d0(iIntValue).b0(this.projectionData).h0(this.stereoMode).J(cVar);
                                i14 = 2;
                            } else {
                                if ("application/x-subrip".equals(str3)) {
                                }
                                i14 = 3;
                            }
                            break;
                        } else {
                            bVar.H(this.channelCount).f0(this.sampleRate).Y(i11);
                            i14 = 1;
                        }
                        if (this.name != null) {
                            bVar.U(this.name);
                        }
                        a2 a2VarE114 = bVar.R(i10).e0(str3).W(i12).V(this.language).g0(i11112).T(listSingletonList).I(str).M(this.drmInitData).E();
                        e0 e0VarTrack114 = nVar.track(this.number, i14);
                        this.output = e0VarTrack114;
                        e0VarTrack114.d(a2VarE114);
                        return;
                    }
                    i11 = iW;
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    bArr = this.dolbyVisionConfigBytes;
                    if (bArr != null) {
                        str = dVarA.codecs;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z1113 = this.flagDefault;
                    if (this.flagForced) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i11113 = i13 | (z1113 ? 1 : 0);
                    bVar = new a2.b();
                    if (x.l(str3)) {
                        if (x.o(str3)) {
                            if (this.displayUnit == 0) {
                                i17 = this.displayWidth;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.width;
                                }
                                this.displayWidth = i17;
                                i18 = this.displayHeight;
                                if (i18 == -1) {
                                    i18 = this.height;
                                }
                                this.displayHeight = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.displayWidth;
                            if (i15 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) e.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                if (Float.compare(this.projectionPoseRoll, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.projectionPosePitch, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.projectionPosePitch, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.width).Q(this.height).a0(f).d0(iIntValue).b0(this.projectionData).h0(this.stereoMode).J(cVar);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.channelCount).f0(this.sampleRate).Y(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        bVar.U(this.name);
                    }
                    a2 a2VarE115 = bVar.R(i10).e0(str3).W(i12).V(this.language).g0(i11113).T(listSingletonList).I(str).M(this.drmInitData).E();
                    e0 e0VarTrack115 = nVar.track(this.number, i14);
                    this.output = e0VarTrack115;
                    e0VarTrack115.d(a2VarE115);
                    return;
                case 25:
                    listSingletonList = a0.z(e.SSA_DIALOGUE_FORMAT, g(this.codecId));
                    str = null;
                    str5 = "text/x-ssa";
                    i12 = -1;
                    i11 = -1;
                    bArr = this.dolbyVisionConfigBytes;
                    if (bArr != null) {
                        str = dVarA.codecs;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z1114 = this.flagDefault;
                    if (this.flagForced) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i11114 = i13 | (z1114 ? 1 : 0);
                    bVar = new a2.b();
                    if (x.l(str3)) {
                        if (x.o(str3)) {
                            if (this.displayUnit == 0) {
                                i17 = this.displayWidth;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.width;
                                }
                                this.displayWidth = i17;
                                i18 = this.displayHeight;
                                if (i18 == -1) {
                                    i18 = this.height;
                                }
                                this.displayHeight = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.displayWidth;
                            if (i15 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) e.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                if (Float.compare(this.projectionPoseRoll, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.projectionPosePitch, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.projectionPosePitch, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.width).Q(this.height).a0(f).d0(iIntValue).b0(this.projectionData).h0(this.stereoMode).J(cVar);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.channelCount).f0(this.sampleRate).Y(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        bVar.U(this.name);
                    }
                    a2 a2VarE116 = bVar.R(i10).e0(str3).W(i12).V(this.language).g0(i11114).T(listSingletonList).I(str).M(this.drmInitData).E();
                    e0 e0VarTrack116 = nVar.track(this.number, i14);
                    this.output = e0VarTrack116;
                    e0VarTrack116.d(a2VarE116);
                    return;
                case 26:
                    com.google.android.exoplayer2.video.f fVarA = com.google.android.exoplayer2.video.f.a(new c0(g(this.codecId)));
                    list = fVarA.initializationData;
                    this.nalUnitLengthFieldLength = fVarA.nalUnitLengthFieldLength;
                    str2 = fVarA.codecs;
                    str5 = "video/hevc";
                    i12 = -1;
                    i11 = -1;
                    List<byte[]> list3 = list;
                    str = str2;
                    listSingletonList = list3;
                    bArr = this.dolbyVisionConfigBytes;
                    if (bArr != null) {
                        str = dVarA.codecs;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z1115 = this.flagDefault;
                    if (this.flagForced) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i11115 = i13 | (z1115 ? 1 : 0);
                    bVar = new a2.b();
                    if (x.l(str3)) {
                        if (x.o(str3)) {
                            if (this.displayUnit == 0) {
                                i17 = this.displayWidth;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.width;
                                }
                                this.displayWidth = i17;
                                i18 = this.displayHeight;
                                if (i18 == -1) {
                                    i18 = this.height;
                                }
                                this.displayHeight = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.displayWidth;
                            if (i15 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) e.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                if (Float.compare(this.projectionPoseRoll, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.projectionPosePitch, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.projectionPosePitch, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.width).Q(this.height).a0(f).d0(iIntValue).b0(this.projectionData).h0(this.stereoMode).J(cVar);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.channelCount).f0(this.sampleRate).Y(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        bVar.U(this.name);
                    }
                    a2 a2VarE117 = bVar.R(i10).e0(str3).W(i12).V(this.language).g0(i11115).T(listSingletonList).I(str).M(this.drmInitData).E();
                    e0 e0VarTrack117 = nVar.track(this.number, i14);
                    this.output = e0VarTrack117;
                    e0VarTrack117.d(a2VarE117);
                    return;
                case 27:
                    str5 = "text/vtt";
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i11 = -1;
                    bArr = this.dolbyVisionConfigBytes;
                    if (bArr != null) {
                        str = dVarA.codecs;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z1116 = this.flagDefault;
                    if (this.flagForced) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i11116 = i13 | (z1116 ? 1 : 0);
                    bVar = new a2.b();
                    if (x.l(str3)) {
                        if (x.o(str3)) {
                            if (this.displayUnit == 0) {
                                i17 = this.displayWidth;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.width;
                                }
                                this.displayWidth = i17;
                                i18 = this.displayHeight;
                                if (i18 == -1) {
                                    i18 = this.height;
                                }
                                this.displayHeight = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.displayWidth;
                            if (i15 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) e.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                if (Float.compare(this.projectionPoseRoll, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.projectionPosePitch, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.projectionPosePitch, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.width).Q(this.height).a0(f).d0(iIntValue).b0(this.projectionData).h0(this.stereoMode).J(cVar);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.channelCount).f0(this.sampleRate).Y(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        bVar.U(this.name);
                    }
                    a2 a2VarE118 = bVar.R(i10).e0(str3).W(i12).V(this.language).g0(i11116).T(listSingletonList).I(str).M(this.drmInitData).E();
                    e0 e0VarTrack118 = nVar.track(this.number, i14);
                    this.output = e0VarTrack118;
                    e0VarTrack118.d(a2VarE118);
                    return;
                case 28:
                    str5 = "application/x-subrip";
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i11 = -1;
                    bArr = this.dolbyVisionConfigBytes;
                    if (bArr != null) {
                        str = dVarA.codecs;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z1117 = this.flagDefault;
                    if (this.flagForced) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i11117 = i13 | (z1117 ? 1 : 0);
                    bVar = new a2.b();
                    if (x.l(str3)) {
                        if (x.o(str3)) {
                            if (this.displayUnit == 0) {
                                i17 = this.displayWidth;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.width;
                                }
                                this.displayWidth = i17;
                                i18 = this.displayHeight;
                                if (i18 == -1) {
                                    i18 = this.height;
                                }
                                this.displayHeight = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.displayWidth;
                            if (i15 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) e.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                if (Float.compare(this.projectionPoseRoll, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.projectionPosePitch, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.projectionPosePitch, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.width).Q(this.height).a0(f).d0(iIntValue).b0(this.projectionData).h0(this.stereoMode).J(cVar);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.channelCount).f0(this.sampleRate).Y(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        bVar.U(this.name);
                    }
                    a2 a2VarE119 = bVar.R(i10).e0(str3).W(i12).V(this.language).g0(i11117).T(listSingletonList).I(str).M(this.drmInitData).E();
                    e0 e0VarTrack119 = nVar.track(this.number, i14);
                    this.output = e0VarTrack119;
                    e0VarTrack119.d(a2VarE119);
                    return;
                case 29:
                    str5 = "video/mpeg2";
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i11 = -1;
                    bArr = this.dolbyVisionConfigBytes;
                    if (bArr != null) {
                        str = dVarA.codecs;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z1118 = this.flagDefault;
                    if (this.flagForced) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i11118 = i13 | (z1118 ? 1 : 0);
                    bVar = new a2.b();
                    if (x.l(str3)) {
                        if (x.o(str3)) {
                            if (this.displayUnit == 0) {
                                i17 = this.displayWidth;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.width;
                                }
                                this.displayWidth = i17;
                                i18 = this.displayHeight;
                                if (i18 == -1) {
                                    i18 = this.height;
                                }
                                this.displayHeight = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.displayWidth;
                            if (i15 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) e.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                if (Float.compare(this.projectionPoseRoll, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.projectionPosePitch, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.projectionPosePitch, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.width).Q(this.height).a0(f).d0(iIntValue).b0(this.projectionData).h0(this.stereoMode).J(cVar);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.channelCount).f0(this.sampleRate).Y(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        bVar.U(this.name);
                    }
                    a2 a2VarE1110 = bVar.R(i10).e0(str3).W(i12).V(this.language).g0(i11118).T(listSingletonList).I(str).M(this.drmInitData).E();
                    e0 e0VarTrack1110 = nVar.track(this.number, i14);
                    this.output = e0VarTrack1110;
                    e0VarTrack1110.d(a2VarE1110);
                    return;
                case 30:
                    str5 = "audio/eac3";
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i11 = -1;
                    bArr = this.dolbyVisionConfigBytes;
                    if (bArr != null) {
                        str = dVarA.codecs;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z1119 = this.flagDefault;
                    if (this.flagForced) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i11119 = i13 | (z1119 ? 1 : 0);
                    bVar = new a2.b();
                    if (x.l(str3)) {
                        if (x.o(str3)) {
                            if (this.displayUnit == 0) {
                                i17 = this.displayWidth;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.width;
                                }
                                this.displayWidth = i17;
                                i18 = this.displayHeight;
                                if (i18 == -1) {
                                    i18 = this.height;
                                }
                                this.displayHeight = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.displayWidth;
                            if (i15 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) e.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                if (Float.compare(this.projectionPoseRoll, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.projectionPosePitch, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.projectionPosePitch, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.width).Q(this.height).a0(f).d0(iIntValue).b0(this.projectionData).h0(this.stereoMode).J(cVar);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.channelCount).f0(this.sampleRate).Y(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        bVar.U(this.name);
                    }
                    a2 a2VarE1111 = bVar.R(i10).e0(str3).W(i12).V(this.language).g0(i11119).T(listSingletonList).I(str).M(this.drmInitData).E();
                    e0 e0VarTrack1111 = nVar.track(this.number, i14);
                    this.output = e0VarTrack1111;
                    e0VarTrack1111.d(a2VarE1111);
                    return;
                case 31:
                    listSingletonList = Collections.singletonList(g(this.codecId));
                    str5 = "audio/flac";
                    str = null;
                    i12 = -1;
                    i11 = -1;
                    bArr = this.dolbyVisionConfigBytes;
                    if (bArr != null) {
                        str = dVarA.codecs;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z11110 = this.flagDefault;
                    if (this.flagForced) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i111110 = i13 | (z11110 ? 1 : 0);
                    bVar = new a2.b();
                    if (x.l(str3)) {
                        if (x.o(str3)) {
                            if (this.displayUnit == 0) {
                                i17 = this.displayWidth;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.width;
                                }
                                this.displayWidth = i17;
                                i18 = this.displayHeight;
                                if (i18 == -1) {
                                    i18 = this.height;
                                }
                                this.displayHeight = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.displayWidth;
                            if (i15 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) e.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                if (Float.compare(this.projectionPoseRoll, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.projectionPosePitch, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.projectionPosePitch, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.width).Q(this.height).a0(f).d0(iIntValue).b0(this.projectionData).h0(this.stereoMode).J(cVar);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.channelCount).f0(this.sampleRate).Y(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        bVar.U(this.name);
                    }
                    a2 a2VarE1112 = bVar.R(i10).e0(str3).W(i12).V(this.language).g0(i111110).T(listSingletonList).I(str).M(this.drmInitData).E();
                    e0 e0VarTrack1112 = nVar.track(this.number, i14);
                    this.output = e0VarTrack1112;
                    e0VarTrack1112.d(a2VarE1112);
                    return;
                case 32:
                    listSingletonList = new ArrayList<>(3);
                    listSingletonList.add(g(this.codecId));
                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
                    ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                    listSingletonList.add(byteBufferAllocate.order(byteOrder).putLong(this.codecDelayNs).array());
                    listSingletonList.add(ByteBuffer.allocate(8).order(byteOrder).putLong(this.seekPreRollNs).array());
                    str5 = "audio/opus";
                    i12 = e.OPUS_MAX_INPUT_SIZE;
                    str = null;
                    i11 = -1;
                    bArr = this.dolbyVisionConfigBytes;
                    if (bArr != null) {
                        str = dVarA.codecs;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z11111 = this.flagDefault;
                    if (this.flagForced) {
                        i13 = 2;
                    } else {
                        i13 = 0;
                    }
                    int i111111 = i13 | (z11111 ? 1 : 0);
                    bVar = new a2.b();
                    if (x.l(str3)) {
                        if (x.o(str3)) {
                            if (this.displayUnit == 0) {
                                i17 = this.displayWidth;
                                iIntValue = -1;
                                if (i17 == -1) {
                                    i17 = this.width;
                                }
                                this.displayWidth = i17;
                                i18 = this.displayHeight;
                                if (i18 == -1) {
                                    i18 = this.height;
                                }
                                this.displayHeight = i18;
                            } else {
                                iIntValue = -1;
                            }
                            i15 = this.displayWidth;
                            if (i15 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) e.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                if (Float.compare(this.projectionPoseRoll, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.projectionPosePitch, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.projectionPosePitch, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.width).Q(this.height).a0(f).d0(iIntValue).b0(this.projectionData).h0(this.stereoMode).J(cVar);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.channelCount).f0(this.sampleRate).Y(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        bVar.U(this.name);
                    }
                    a2 a2VarE1113 = bVar.R(i10).e0(str3).W(i12).V(this.language).g0(i111111).T(listSingletonList).I(str).M(this.drmInitData).E();
                    e0 e0VarTrack1113 = nVar.track(this.number, i14);
                    this.output = e0VarTrack1113;
                    e0VarTrack1113.d(a2VarE1113);
                    return;
                default:
                    throw v2.a("Unrecognized codec identifier.", null);
            }
        }

        public void j() {
            f0 f0Var = this.trueHdSampleRechunker;
            if (f0Var != null) {
                f0Var.a(this.output, this.cryptoData);
            }
        }

        public void n() {
            f0 f0Var = this.trueHdSampleRechunker;
            if (f0Var != null) {
                f0Var.b();
            }
        }

        protected c() {
        }

        private static boolean l(c0 c0Var) throws v2 {
            try {
                int iV = c0Var.v();
                if (iV == 1) {
                    return true;
                }
                if (iV != 65534) {
                    return false;
                }
                c0Var.P(24);
                if (c0Var.w() == e.WAVE_SUBFORMAT_PCM.getMostSignificantBits() && c0Var.w() == e.WAVE_SUBFORMAT_PCM.getLeastSignificantBits()) {
                    return true;
                }
                return false;
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw v2.a("Error parsing MS/ACM codec private", null);
            }
        }
    }

    public e() {
        this(0);
    }

    private void C() {
        this.sampleBytesRead = 0;
        this.sampleBytesWritten = 0;
        this.sampleCurrentNalBytesRemaining = 0;
        this.sampleEncodingHandled = false;
        this.sampleSignalByteRead = false;
        this.samplePartitionCountRead = false;
        this.samplePartitionCount = 0;
        this.sampleSignalByte = (byte) 0;
        this.sampleInitializationVectorRead = false;
        this.sampleStrippedBytes.L(0);
    }

    private void I(m mVar, byte[] bArr, int i10) throws IOException {
        int length = bArr.length + i10;
        if (this.subtitleSample.b() < length) {
            this.subtitleSample.M(Arrays.copyOf(bArr, length + i10));
        } else {
            System.arraycopy(bArr, 0, this.subtitleSample.d(), 0, bArr.length);
        }
        mVar.readFully(this.subtitleSample.d(), bArr.length, i10);
        this.subtitleSample.P(0);
        this.subtitleSample.O(length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l[] z() {
        return new l[]{new e()};
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public final int c(m mVar, com.google.android.exoplayer2.extractor.a0 a0Var) throws IOException {
        this.haveOutputSample = false;
        boolean zA = true;
        while (zA && !this.haveOutputSample) {
            zA = this.reader.a(mVar);
            if (zA && A(a0Var, mVar.getPosition())) {
                return 1;
            }
        }
        if (zA) {
            return 0;
        }
        for (int i10 = 0; i10 < this.tracks.size(); i10++) {
            c cVarValueAt = this.tracks.valueAt(i10);
            cVarValueAt.f();
            cVarValueAt.j();
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public final void d(n nVar) {
        this.extractorOutput = nVar;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public final void release() {
    }

    @CallSuper
    protected int t(int i10) {
        switch (i10) {
            case 131:
            case 136:
            case 155:
            case ID_CHANNELS /* 159 */:
            case ID_PIXEL_WIDTH /* 176 */:
            case ID_CUE_TIME /* 179 */:
            case ID_PIXEL_HEIGHT /* 186 */:
            case 215:
            case ID_TIME_CODE /* 231 */:
            case ID_BLOCK_ADD_ID /* 238 */:
            case 241:
            case 251:
            case ID_BLOCK_ADD_ID_TYPE /* 16871 */:
            case ID_CONTENT_COMPRESSION_ALGORITHM /* 16980 */:
            case ID_DOC_TYPE_READ_VERSION /* 17029 */:
            case ID_EBML_READ_VERSION /* 17143 */:
            case ID_CONTENT_ENCRYPTION_ALGORITHM /* 18401 */:
            case ID_CONTENT_ENCRYPTION_AES_SETTINGS_CIPHER_MODE /* 18408 */:
            case ID_CONTENT_ENCODING_ORDER /* 20529 */:
            case ID_CONTENT_ENCODING_SCOPE /* 20530 */:
            case ID_SEEK_POSITION /* 21420 */:
            case ID_STEREO_MODE /* 21432 */:
            case ID_DISPLAY_WIDTH /* 21680 */:
            case ID_DISPLAY_UNIT /* 21682 */:
            case ID_DISPLAY_HEIGHT /* 21690 */:
            case ID_FLAG_FORCED /* 21930 */:
            case ID_COLOUR_RANGE /* 21945 */:
            case ID_COLOUR_TRANSFER /* 21946 */:
            case ID_COLOUR_PRIMARIES /* 21947 */:
            case ID_MAX_CLL /* 21948 */:
            case ID_MAX_FALL /* 21949 */:
            case ID_MAX_BLOCK_ADDITION_ID /* 21998 */:
            case ID_CODEC_DELAY /* 22186 */:
            case ID_SEEK_PRE_ROLL /* 22203 */:
            case ID_AUDIO_BIT_DEPTH /* 25188 */:
            case ID_DISCARD_PADDING /* 30114 */:
            case ID_PROJECTION_TYPE /* 30321 */:
            case ID_DEFAULT_DURATION /* 2352003 */:
            case ID_TIMECODE_SCALE /* 2807729 */:
                return 2;
            case 134:
            case ID_DOC_TYPE /* 17026 */:
            case ID_NAME /* 21358 */:
            case ID_LANGUAGE /* 2274716 */:
                return 3;
            case ID_BLOCK_GROUP /* 160 */:
            case ID_BLOCK_MORE /* 166 */:
            case ID_TRACK_ENTRY /* 174 */:
            case ID_CUE_TRACK_POSITIONS /* 183 */:
            case ID_CUE_POINT /* 187 */:
            case 224:
            case ID_AUDIO /* 225 */:
            case ID_BLOCK_ADDITION_MAPPING /* 16868 */:
            case ID_CONTENT_ENCRYPTION_AES_SETTINGS /* 18407 */:
            case ID_SEEK /* 19899 */:
            case ID_CONTENT_COMPRESSION /* 20532 */:
            case ID_CONTENT_ENCRYPTION /* 20533 */:
            case ID_COLOUR /* 21936 */:
            case ID_MASTERING_METADATA /* 21968 */:
            case ID_CONTENT_ENCODING /* 25152 */:
            case ID_CONTENT_ENCODINGS /* 28032 */:
            case ID_BLOCK_ADDITIONS /* 30113 */:
            case ID_PROJECTION /* 30320 */:
            case ID_SEEK_HEAD /* 290298740 */:
            case 357149030:
            case ID_TRACKS /* 374648427 */:
            case ID_SEGMENT /* 408125543 */:
            case ID_EBML /* 440786851 */:
            case ID_CUES /* 475249515 */:
            case ID_CLUSTER /* 524531317 */:
                return 1;
            case ID_BLOCK /* 161 */:
            case ID_SIMPLE_BLOCK /* 163 */:
            case ID_BLOCK_ADDITIONAL /* 165 */:
            case 16877:
            case ID_CONTENT_COMPRESSION_SETTINGS /* 16981 */:
            case ID_CONTENT_ENCRYPTION_KEY_ID /* 18402 */:
            case ID_SEEK_ID /* 21419 */:
            case ID_CODEC_PRIVATE /* 25506 */:
            case ID_PROJECTION_PRIVATE /* 30322 */:
                return 4;
            case ID_SAMPLING_FREQUENCY /* 181 */:
            case ID_DURATION /* 17545 */:
            case ID_PRIMARY_R_CHROMATICITY_X /* 21969 */:
            case ID_PRIMARY_R_CHROMATICITY_Y /* 21970 */:
            case ID_PRIMARY_G_CHROMATICITY_X /* 21971 */:
            case ID_PRIMARY_G_CHROMATICITY_Y /* 21972 */:
            case ID_PRIMARY_B_CHROMATICITY_X /* 21973 */:
            case ID_PRIMARY_B_CHROMATICITY_Y /* 21974 */:
            case ID_WHITE_POINT_CHROMATICITY_X /* 21975 */:
            case ID_WHITE_POINT_CHROMATICITY_Y /* 21976 */:
            case ID_LUMNINANCE_MAX /* 21977 */:
            case ID_LUMNINANCE_MIN /* 21978 */:
            case ID_PROJECTION_POSE_YAW /* 30323 */:
            case ID_PROJECTION_POSE_PITCH /* 30324 */:
            case ID_PROJECTION_POSE_ROLL /* 30325 */:
                return 5;
            default:
                return 0;
        }
    }

    protected void v(c cVar, int i10, m mVar, int i11) throws IOException {
        if (i10 != 4 || !CODEC_ID_VP9.equals(cVar.codecId)) {
            mVar.skipFully(i11);
        } else {
            this.supplementalData.L(i11);
            mVar.readFully(this.supplementalData.d(), 0, i11);
        }
    }

    @CallSuper
    protected boolean y(int i10) {
        return i10 == 357149030 || i10 == ID_CLUSTER || i10 == ID_CUES || i10 == ID_TRACKS;
    }

    static {
        HashMap map = new HashMap();
        map.put("htc_video_rotA-000", 0);
        map.put("htc_video_rotA-090", 90);
        map.put("htc_video_rotA-180", 180);
        map.put("htc_video_rotA-270", 270);
        TRACK_NAME_TO_ROTATION_DEGREES = Collections.unmodifiableMap(map);
    }

    public e(int i10) {
        this(new com.google.android.exoplayer2.extractor.mkv.a(), i10);
    }

    private boolean A(com.google.android.exoplayer2.extractor.a0 a0Var, long j6) {
        if (this.seekForCues) {
            this.seekPositionAfterBuildingCues = j6;
            a0Var.position = this.cuesContentPosition;
            this.seekForCues = false;
            return true;
        }
        if (this.sentSeekMap) {
            long j10 = this.seekPositionAfterBuildingCues;
            if (j10 != -1) {
                a0Var.position = j10;
                this.seekPositionAfterBuildingCues = -1L;
                return true;
            }
        }
        return false;
    }

    private void B(m mVar, int i10) throws IOException {
        if (this.scratch.f() >= i10) {
            return;
        }
        if (this.scratch.b() < i10) {
            c0 c0Var = this.scratch;
            c0Var.c(Math.max(c0Var.b() * 2, i10));
        }
        mVar.readFully(this.scratch.d(), this.scratch.f(), i10 - this.scratch.f());
        this.scratch.O(i10);
    }

    private long D(long j6) throws v2 {
        long j10 = this.timecodeScale;
        if (j10 != -9223372036854775807L) {
            return o0.F0(j6, j10, 1000L);
        }
        throw v2.a("Can't scale timecode prior to timecodeScale being set.", null);
    }

    private int H(m mVar, c cVar, int i10, boolean z6) throws IOException {
        int i11;
        if (CODEC_ID_SUBRIP.equals(cVar.codecId)) {
            I(mVar, SUBRIP_PREFIX, i10);
            return p();
        }
        if (CODEC_ID_ASS.equals(cVar.codecId)) {
            I(mVar, SSA_PREFIX, i10);
            return p();
        }
        if (CODEC_ID_VTT.equals(cVar.codecId)) {
            I(mVar, VTT_PREFIX, i10);
            return p();
        }
        e0 e0Var = cVar.output;
        if (!this.sampleEncodingHandled) {
            if (cVar.hasContentEncryption) {
                this.blockFlags &= -1073741825;
                if (!this.sampleSignalByteRead) {
                    mVar.readFully(this.scratch.d(), 0, 1);
                    this.sampleBytesRead++;
                    if ((this.scratch.d()[0] & 128) == 128) {
                        throw v2.a("Extension bit is set in signal byte", null);
                    }
                    this.sampleSignalByte = this.scratch.d()[0];
                    this.sampleSignalByteRead = true;
                }
                byte b7 = this.sampleSignalByte;
                if ((b7 & 1) == 1) {
                    boolean z10 = (b7 & 2) == 2;
                    this.blockFlags |= 1073741824;
                    if (!this.sampleInitializationVectorRead) {
                        mVar.readFully(this.encryptionInitializationVector.d(), 0, 8);
                        this.sampleBytesRead += 8;
                        this.sampleInitializationVectorRead = true;
                        this.scratch.d()[0] = (byte) ((z10 ? 128 : 0) | 8);
                        this.scratch.P(0);
                        e0Var.f(this.scratch, 1, 1);
                        this.sampleBytesWritten++;
                        this.encryptionInitializationVector.P(0);
                        e0Var.f(this.encryptionInitializationVector, 8, 1);
                        this.sampleBytesWritten += 8;
                    }
                    if (z10) {
                        if (!this.samplePartitionCountRead) {
                            mVar.readFully(this.scratch.d(), 0, 1);
                            this.sampleBytesRead++;
                            this.scratch.P(0);
                            this.samplePartitionCount = this.scratch.D();
                            this.samplePartitionCountRead = true;
                        }
                        int i12 = this.samplePartitionCount * 4;
                        this.scratch.L(i12);
                        mVar.readFully(this.scratch.d(), 0, i12);
                        this.sampleBytesRead += i12;
                        short s = (short) ((this.samplePartitionCount / 2) + 1);
                        int i13 = (s * 6) + 2;
                        ByteBuffer byteBuffer = this.encryptionSubsampleDataBuffer;
                        if (byteBuffer == null || byteBuffer.capacity() < i13) {
                            this.encryptionSubsampleDataBuffer = ByteBuffer.allocate(i13);
                        }
                        this.encryptionSubsampleDataBuffer.position(0);
                        this.encryptionSubsampleDataBuffer.putShort(s);
                        int i14 = 0;
                        int i15 = 0;
                        while (true) {
                            i11 = this.samplePartitionCount;
                            if (i14 >= i11) {
                                break;
                            }
                            int iH = this.scratch.H();
                            if (i14 % 2 == 0) {
                                this.encryptionSubsampleDataBuffer.putShort((short) (iH - i15));
                            } else {
                                this.encryptionSubsampleDataBuffer.putInt(iH - i15);
                            }
                            i14++;
                            i15 = iH;
                        }
                        int i16 = (i10 - this.sampleBytesRead) - i15;
                        if (i11 % 2 == 1) {
                            this.encryptionSubsampleDataBuffer.putInt(i16);
                        } else {
                            this.encryptionSubsampleDataBuffer.putShort((short) i16);
                            this.encryptionSubsampleDataBuffer.putInt(0);
                        }
                        this.encryptionSubsampleData.N(this.encryptionSubsampleDataBuffer.array(), i13);
                        e0Var.f(this.encryptionSubsampleData, i13, 1);
                        this.sampleBytesWritten += i13;
                    }
                }
            } else {
                byte[] bArr = cVar.sampleStrippedBytes;
                if (bArr != null) {
                    this.sampleStrippedBytes.N(bArr, bArr.length);
                }
            }
            if (cVar.o(z6)) {
                this.blockFlags |= 268435456;
                this.supplementalData.L(0);
                int iF = (this.sampleStrippedBytes.f() + i10) - this.sampleBytesRead;
                this.scratch.L(4);
                this.scratch.d()[0] = (byte) ((iF >> 24) & 255);
                this.scratch.d()[1] = (byte) ((iF >> 16) & 255);
                this.scratch.d()[2] = (byte) ((iF >> 8) & 255);
                this.scratch.d()[3] = (byte) (iF & 255);
                e0Var.f(this.scratch, 4, 2);
                this.sampleBytesWritten += 4;
            }
            this.sampleEncodingHandled = true;
        }
        int iF2 = i10 + this.sampleStrippedBytes.f();
        if (!CODEC_ID_H264.equals(cVar.codecId) && !CODEC_ID_H265.equals(cVar.codecId)) {
            if (cVar.trueHdSampleRechunker != null) {
                com.google.android.exoplayer2.util.a.g(this.sampleStrippedBytes.f() == 0);
                cVar.trueHdSampleRechunker.d(mVar);
            }
            while (true) {
                int i17 = this.sampleBytesRead;
                if (i17 >= iF2) {
                    break;
                }
                int iJ = J(mVar, e0Var, iF2 - i17);
                this.sampleBytesRead += iJ;
                this.sampleBytesWritten += iJ;
            }
        } else {
            byte[] bArrD = this.nalLength.d();
            bArrD[0] = 0;
            bArrD[1] = 0;
            bArrD[2] = 0;
            int i18 = cVar.nalUnitLengthFieldLength;
            int i19 = 4 - i18;
            while (this.sampleBytesRead < iF2) {
                int i20 = this.sampleCurrentNalBytesRemaining;
                if (i20 == 0) {
                    K(mVar, bArrD, i19, i18);
                    this.sampleBytesRead += i18;
                    this.nalLength.P(0);
                    this.sampleCurrentNalBytesRemaining = this.nalLength.H();
                    this.nalStartCode.P(0);
                    e0Var.c(this.nalStartCode, 4);
                    this.sampleBytesWritten += 4;
                } else {
                    int iJ2 = J(mVar, e0Var, i20);
                    this.sampleBytesRead += iJ2;
                    this.sampleBytesWritten += iJ2;
                    this.sampleCurrentNalBytesRemaining -= iJ2;
                }
            }
        }
        if (CODEC_ID_VORBIS.equals(cVar.codecId)) {
            this.vorbisNumPageSamples.P(0);
            e0Var.c(this.vorbisNumPageSamples, 4);
            this.sampleBytesWritten += 4;
        }
        return p();
    }

    private int J(m mVar, e0 e0Var, int i10) throws IOException {
        int iA = this.sampleStrippedBytes.a();
        if (iA <= 0) {
            return e0Var.b(mVar, i10, false);
        }
        int iMin = Math.min(i10, iA);
        e0Var.c(this.sampleStrippedBytes, iMin);
        return iMin;
    }

    private void K(m mVar, byte[] bArr, int i10, int i11) throws IOException {
        int iMin = Math.min(i11, this.sampleStrippedBytes.a());
        mVar.readFully(bArr, i10 + iMin, i11 - iMin);
        if (iMin > 0) {
            this.sampleStrippedBytes.j(bArr, i10, iMin);
        }
    }

    private void h(int i10) throws v2 {
        if (this.cueTimesUs == null || this.cueClusterPositions == null) {
            throw v2.a("Element " + i10 + " must be in a Cues", null);
        }
    }

    private void i(int i10) throws v2 {
        if (this.currentTrack != null) {
            return;
        }
        throw v2.a("Element " + i10 + " must be in a TrackEntry", null);
    }

    private void j() {
        com.google.android.exoplayer2.util.a.i(this.extractorOutput);
    }

    private b0 l(@Nullable u uVar, @Nullable u uVar2) {
        int i10;
        if (this.segmentContentPosition == -1 || this.durationUs == -9223372036854775807L || uVar == null || uVar.c() == 0 || uVar2 == null || uVar2.c() != uVar.c()) {
            return new b0.b(this.durationUs);
        }
        int iC = uVar.c();
        int[] iArrCopyOf = new int[iC];
        long[] jArrCopyOf = new long[iC];
        long[] jArrCopyOf2 = new long[iC];
        long[] jArrCopyOf3 = new long[iC];
        int i11 = 0;
        for (int i12 = 0; i12 < iC; i12++) {
            jArrCopyOf3[i12] = uVar.b(i12);
            jArrCopyOf[i12] = this.segmentContentPosition + uVar2.b(i12);
        }
        while (true) {
            i10 = iC - 1;
            if (i11 >= i10) {
                break;
            }
            int i13 = i11 + 1;
            iArrCopyOf[i11] = (int) (jArrCopyOf[i13] - jArrCopyOf[i11]);
            jArrCopyOf2[i11] = jArrCopyOf3[i13] - jArrCopyOf3[i11];
            i11 = i13;
        }
        iArrCopyOf[i10] = (int) ((this.segmentContentPosition + this.segmentContentSize) - jArrCopyOf[i10]);
        long j6 = this.durationUs - jArrCopyOf3[i10];
        jArrCopyOf2[i10] = j6;
        if (j6 <= 0) {
            t.i(TAG, "Discarding last cue point with unexpected duration: " + j6);
            iArrCopyOf = Arrays.copyOf(iArrCopyOf, i10);
            jArrCopyOf = Arrays.copyOf(jArrCopyOf, i10);
            jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i10);
            jArrCopyOf3 = Arrays.copyOf(jArrCopyOf3, i10);
        }
        return new com.google.android.exoplayer2.extractor.d(iArrCopyOf, jArrCopyOf, jArrCopyOf2, jArrCopyOf3);
    }

    private void m(c cVar, long j6, int i10, int i11, int i12) {
        f0 f0Var = cVar.trueHdSampleRechunker;
        if (f0Var != null) {
            f0Var.c(cVar.output, j6, i10, i11, i12, cVar.cryptoData);
        } else {
            if (CODEC_ID_SUBRIP.equals(cVar.codecId) || CODEC_ID_ASS.equals(cVar.codecId) || CODEC_ID_VTT.equals(cVar.codecId)) {
                if (this.blockSampleCount > 1) {
                    t.i(TAG, "Skipping subtitle sample in laced block.");
                } else {
                    long j10 = this.blockDurationUs;
                    if (j10 == -9223372036854775807L) {
                        t.i(TAG, "Skipping subtitle sample with no duration.");
                    } else {
                        E(cVar.codecId, j10, this.subtitleSample.d());
                        for (int iE = this.subtitleSample.e(); iE < this.subtitleSample.f(); iE++) {
                            if (this.subtitleSample.d()[iE] == 0) {
                                this.subtitleSample.O(iE);
                                break;
                            }
                        }
                        e0 e0Var = cVar.output;
                        c0 c0Var = this.subtitleSample;
                        e0Var.c(c0Var, c0Var.f());
                        i11 += this.subtitleSample.f();
                    }
                }
            }
            if ((268435456 & i10) != 0) {
                if (this.blockSampleCount > 1) {
                    this.supplementalData.L(0);
                } else {
                    int iF = this.supplementalData.f();
                    cVar.output.f(this.supplementalData, iF, 2);
                    i11 += iF;
                }
            }
            cVar.output.e(j6, i10, i11, i12, cVar.cryptoData);
        }
        this.haveOutputSample = true;
    }

    private static int[] o(@Nullable int[] iArr, int i10) {
        if (iArr == null) {
            return new int[i10];
        }
        return iArr.length >= i10 ? iArr : new int[Math.max(iArr.length * 2, i10)];
    }

    private int p() {
        int i10 = this.sampleBytesWritten;
        C();
        return i10;
    }

    @CallSuper
    protected void G(int i10, String str) throws v2 {
        if (i10 == 134) {
            s(i10).codecId = str;
            return;
        }
        if (i10 != ID_DOC_TYPE) {
            if (i10 == ID_NAME) {
                s(i10).name = str;
                return;
            } else {
                if (i10 != ID_LANGUAGE) {
                    return;
                }
                s(i10).language = str;
                return;
            }
        }
        if (DOC_TYPE_WEBM.equals(str) || DOC_TYPE_MATROSKA.equals(str)) {
            return;
        }
        throw v2.a("DocType " + str + " not supported", null);
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public final boolean b(m mVar) throws IOException {
        return new f().b(mVar);
    }

    /* JADX WARN: Code duplicated, block: B:97:0x0282  */
    @CallSuper
    protected void k(int i10, int i11, m mVar) throws IOException {
        c cVar;
        int i12;
        c cVar2;
        c cVar3;
        long j6;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17 = 0;
        int i18 = 1;
        if (i10 != ID_BLOCK && i10 != ID_SIMPLE_BLOCK) {
            if (i10 == ID_BLOCK_ADDITIONAL) {
                if (this.blockState != 2) {
                    return;
                }
                v(this.tracks.get(this.blockTrackNumber), this.blockAdditionalId, mVar, i11);
                return;
            }
            if (i10 == 16877) {
                u(s(i10), mVar, i11);
                return;
            }
            if (i10 == ID_CONTENT_COMPRESSION_SETTINGS) {
                i(i10);
                byte[] bArr = new byte[i11];
                this.currentTrack.sampleStrippedBytes = bArr;
                mVar.readFully(bArr, 0, i11);
                return;
            }
            if (i10 == ID_CONTENT_ENCRYPTION_KEY_ID) {
                byte[] bArr2 = new byte[i11];
                mVar.readFully(bArr2, 0, i11);
                s(i10).cryptoData = new e0.a(1, bArr2, 0, 0);
                return;
            }
            if (i10 == ID_SEEK_ID) {
                Arrays.fill(this.seekEntryIdBytes.d(), (byte) 0);
                mVar.readFully(this.seekEntryIdBytes.d(), 4 - i11, i11);
                this.seekEntryIdBytes.P(0);
                this.seekEntryId = (int) this.seekEntryIdBytes.F();
                return;
            }
            if (i10 == ID_CODEC_PRIVATE) {
                i(i10);
                byte[] bArr3 = new byte[i11];
                this.currentTrack.codecPrivate = bArr3;
                mVar.readFully(bArr3, 0, i11);
                return;
            }
            if (i10 != ID_PROJECTION_PRIVATE) {
                throw v2.a("Unexpected id: " + i10, null);
            }
            i(i10);
            byte[] bArr4 = new byte[i11];
            this.currentTrack.projectionData = bArr4;
            mVar.readFully(bArr4, 0, i11);
            return;
        }
        if (this.blockState == 0) {
            this.blockTrackNumber = (int) this.varintReader.d(mVar, false, true, 8);
            this.blockTrackNumberLength = this.varintReader.b();
            this.blockDurationUs = -9223372036854775807L;
            this.blockState = 1;
            this.scratch.L(0);
        }
        c cVar4 = this.tracks.get(this.blockTrackNumber);
        if (cVar4 == null) {
            mVar.skipFully(i11 - this.blockTrackNumberLength);
            this.blockState = 0;
            return;
        }
        cVar4.f();
        if (this.blockState == 1) {
            B(mVar, 3);
            int i19 = (this.scratch.d()[2] & 6) >> 1;
            byte b7 = 255;
            if (i19 == 0) {
                this.blockSampleCount = 1;
                int[] iArrO = o(this.blockSampleSizes, 1);
                this.blockSampleSizes = iArrO;
                iArrO[0] = (i11 - this.blockTrackNumberLength) - 3;
            } else {
                int i20 = 4;
                B(mVar, 4);
                int i21 = (this.scratch.d()[3] & 255) + 1;
                this.blockSampleCount = i21;
                int[] iArrO2 = o(this.blockSampleSizes, i21);
                this.blockSampleSizes = iArrO2;
                if (i19 == 2) {
                    int i22 = (i11 - this.blockTrackNumberLength) - 4;
                    int i23 = this.blockSampleCount;
                    Arrays.fill(iArrO2, 0, i23, i22 / i23);
                } else {
                    if (i19 == 1) {
                        int i24 = 0;
                        int i25 = 0;
                        while (true) {
                            i13 = this.blockSampleCount;
                            if (i24 >= i13 - 1) {
                                break;
                            }
                            this.blockSampleSizes[i24] = 0;
                            while (true) {
                                i14 = i20 + 1;
                                B(mVar, i14);
                                int i26 = this.scratch.d()[i20] & 255;
                                int[] iArr = this.blockSampleSizes;
                                i15 = iArr[i24] + i26;
                                iArr[i24] = i15;
                                if (i26 != 255) {
                                    break;
                                } else {
                                    i20 = i14;
                                }
                            }
                            i25 += i15;
                            i24++;
                            i20 = i14;
                        }
                        this.blockSampleSizes[i13 - 1] = ((i11 - this.blockTrackNumberLength) - i20) - i25;
                    } else {
                        if (i19 != 3) {
                            throw v2.a("Unexpected lacing value: " + i19, null);
                        }
                        int i27 = 0;
                        int i28 = 0;
                        while (true) {
                            int i29 = this.blockSampleCount;
                            if (i27 >= i29 - 1) {
                                cVar2 = cVar4;
                                this.blockSampleSizes[i29 - 1] = ((i11 - this.blockTrackNumberLength) - i20) - i28;
                                break;
                            }
                            this.blockSampleSizes[i27] = i17;
                            int i30 = i20 + 1;
                            B(mVar, i30);
                            if (this.scratch.d()[i20] == 0) {
                                throw v2.a("No valid varint length mask found", null);
                            }
                            int i31 = i17;
                            while (true) {
                                if (i31 >= 8) {
                                    cVar3 = cVar4;
                                    j6 = 0;
                                    break;
                                }
                                int i32 = i18 << (7 - i31);
                                if ((this.scratch.d()[i20] & i32) != 0) {
                                    i30 += i31;
                                    B(mVar, i30);
                                    cVar3 = cVar4;
                                    j6 = (~i32) & this.scratch.d()[i20] & b7;
                                    int i33 = i20 + 1;
                                    while (i33 < i30) {
                                        j6 = (j6 << 8) | ((long) (this.scratch.d()[i33] & b7));
                                        i33++;
                                        b7 = 255;
                                    }
                                    if (i27 <= 0) {
                                        break;
                                    }
                                    j6 -= (1 << ((i31 * 7) + 6)) - 1;
                                    break;
                                }
                                i31++;
                                i18 = 1;
                                b7 = 255;
                            }
                            i20 = i30;
                            if (j6 < -2147483648L || j6 > 2147483647L) {
                                throw v2.a("EBML lacing sample size out of range.", null);
                            }
                            int i34 = (int) j6;
                            int[] iArr2 = this.blockSampleSizes;
                            if (i27 != 0) {
                                i34 += iArr2[i27 - 1];
                            }
                            iArr2[i27] = i34;
                            i28 += i34;
                            i27++;
                            cVar4 = cVar3;
                            i17 = 0;
                            i18 = 1;
                            b7 = 255;
                        }
                    }
                    this.blockTimeUs = this.clusterTimecodeUs + D((this.scratch.d()[0] << 8) | (this.scratch.d()[1] & 255));
                    cVar = cVar2;
                    if (cVar.type != 2 || (i10 == ID_SIMPLE_BLOCK && (this.scratch.d()[2] & 128) == 128)) {
                        i16 = 1;
                    } else {
                        i16 = 0;
                    }
                    this.blockFlags = i16;
                    this.blockState = 2;
                    this.blockSampleIndex = 0;
                    i12 = ID_SIMPLE_BLOCK;
                }
            }
            cVar2 = cVar4;
            this.blockTimeUs = this.clusterTimecodeUs + D((this.scratch.d()[0] << 8) | (this.scratch.d()[1] & 255));
            cVar = cVar2;
            if (cVar.type != 2) {
                i16 = 1;
            } else {
                i16 = 1;
            }
            this.blockFlags = i16;
            this.blockState = 2;
            this.blockSampleIndex = 0;
            i12 = ID_SIMPLE_BLOCK;
        } else {
            cVar = cVar4;
            i12 = ID_SIMPLE_BLOCK;
        }
        if (i10 == i12) {
            while (true) {
                int i35 = this.blockSampleIndex;
                if (i35 >= this.blockSampleCount) {
                    this.blockState = 0;
                    return;
                }
                m(cVar, ((long) ((this.blockSampleIndex * cVar.defaultSampleDurationNs) / 1000)) + this.blockTimeUs, this.blockFlags, H(mVar, cVar, this.blockSampleSizes[i35], false), 0);
                this.blockSampleIndex++;
            }
        } else {
            while (true) {
                int i36 = this.blockSampleIndex;
                if (i36 >= this.blockSampleCount) {
                    return;
                }
                int[] iArr3 = this.blockSampleSizes;
                iArr3[i36] = H(mVar, cVar, iArr3[i36], true);
                this.blockSampleIndex++;
            }
        }
    }

    @CallSuper
    protected void q(int i10, double d) throws v2 {
        if (i10 == ID_SAMPLING_FREQUENCY) {
            s(i10).sampleRate = (int) d;
        }
        if (i10 == ID_DURATION) {
            this.durationTimecode = (long) d;
            return;
        }
        switch (i10) {
            case ID_PRIMARY_R_CHROMATICITY_X /* 21969 */:
                s(i10).primaryRChromaticityX = (float) d;
                break;
            case ID_PRIMARY_R_CHROMATICITY_Y /* 21970 */:
                s(i10).primaryRChromaticityY = (float) d;
                break;
            case ID_PRIMARY_G_CHROMATICITY_X /* 21971 */:
                s(i10).primaryGChromaticityX = (float) d;
                break;
            case ID_PRIMARY_G_CHROMATICITY_Y /* 21972 */:
                s(i10).primaryGChromaticityY = (float) d;
                break;
            case ID_PRIMARY_B_CHROMATICITY_X /* 21973 */:
                s(i10).primaryBChromaticityX = (float) d;
                break;
            case ID_PRIMARY_B_CHROMATICITY_Y /* 21974 */:
                s(i10).primaryBChromaticityY = (float) d;
                break;
            case ID_WHITE_POINT_CHROMATICITY_X /* 21975 */:
                s(i10).whitePointChromaticityX = (float) d;
                break;
            case ID_WHITE_POINT_CHROMATICITY_Y /* 21976 */:
                s(i10).whitePointChromaticityY = (float) d;
                break;
            case ID_LUMNINANCE_MAX /* 21977 */:
                s(i10).maxMasteringLuminance = (float) d;
                break;
            case ID_LUMNINANCE_MIN /* 21978 */:
                s(i10).minMasteringLuminance = (float) d;
                break;
            default:
                switch (i10) {
                    case ID_PROJECTION_POSE_YAW /* 30323 */:
                        s(i10).projectionPoseYaw = (float) d;
                        break;
                    case ID_PROJECTION_POSE_PITCH /* 30324 */:
                        s(i10).projectionPosePitch = (float) d;
                        break;
                    case ID_PROJECTION_POSE_ROLL /* 30325 */:
                        s(i10).projectionPoseRoll = (float) d;
                        break;
                }
                break;
        }
    }

    @CallSuper
    protected void w(int i10, long j6) throws v2 {
        if (i10 == ID_CONTENT_ENCODING_ORDER) {
            if (j6 == 0) {
                return;
            }
            throw v2.a("ContentEncodingOrder " + j6 + " not supported", null);
        }
        if (i10 == ID_CONTENT_ENCODING_SCOPE) {
            if (j6 == 1) {
                return;
            }
            throw v2.a("ContentEncodingScope " + j6 + " not supported", null);
        }
        switch (i10) {
            case 131:
                s(i10).type = (int) j6;
                return;
            case 136:
                s(i10).flagDefault = j6 == 1;
                return;
            case 155:
                this.blockDurationUs = D(j6);
                return;
            case ID_CHANNELS /* 159 */:
                s(i10).channelCount = (int) j6;
                return;
            case ID_PIXEL_WIDTH /* 176 */:
                s(i10).width = (int) j6;
                return;
            case ID_CUE_TIME /* 179 */:
                h(i10);
                this.cueTimesUs.a(D(j6));
                return;
            case ID_PIXEL_HEIGHT /* 186 */:
                s(i10).height = (int) j6;
                return;
            case 215:
                s(i10).number = (int) j6;
                return;
            case ID_TIME_CODE /* 231 */:
                this.clusterTimecodeUs = D(j6);
                return;
            case ID_BLOCK_ADD_ID /* 238 */:
                this.blockAdditionalId = (int) j6;
                return;
            case 241:
                if (this.seenClusterPositionForCurrentCuePoint) {
                    return;
                }
                h(i10);
                this.cueClusterPositions.a(j6);
                this.seenClusterPositionForCurrentCuePoint = true;
                return;
            case 251:
                this.blockHasReferenceBlock = true;
                return;
            case ID_BLOCK_ADD_ID_TYPE /* 16871 */:
                s(i10).blockAddIdType = (int) j6;
                return;
            case ID_CONTENT_COMPRESSION_ALGORITHM /* 16980 */:
                if (j6 == 3) {
                    return;
                }
                throw v2.a("ContentCompAlgo " + j6 + " not supported", null);
            case ID_DOC_TYPE_READ_VERSION /* 17029 */:
                if (j6 < 1 || j6 > 2) {
                    throw v2.a("DocTypeReadVersion " + j6 + " not supported", null);
                }
                return;
            case ID_EBML_READ_VERSION /* 17143 */:
                if (j6 == 1) {
                    return;
                }
                throw v2.a("EBMLReadVersion " + j6 + " not supported", null);
            case ID_CONTENT_ENCRYPTION_ALGORITHM /* 18401 */:
                if (j6 == 5) {
                    return;
                }
                throw v2.a("ContentEncAlgo " + j6 + " not supported", null);
            case ID_CONTENT_ENCRYPTION_AES_SETTINGS_CIPHER_MODE /* 18408 */:
                if (j6 == 1) {
                    return;
                }
                throw v2.a("AESSettingsCipherMode " + j6 + " not supported", null);
            case ID_SEEK_POSITION /* 21420 */:
                this.seekEntryPosition = j6 + this.segmentContentPosition;
                return;
            case ID_STEREO_MODE /* 21432 */:
                int i11 = (int) j6;
                i(i10);
                if (i11 == 0) {
                    this.currentTrack.stereoMode = 0;
                    return;
                }
                if (i11 == 1) {
                    this.currentTrack.stereoMode = 2;
                    return;
                } else if (i11 == 3) {
                    this.currentTrack.stereoMode = 1;
                    return;
                } else {
                    if (i11 != 15) {
                        return;
                    }
                    this.currentTrack.stereoMode = 3;
                    return;
                }
            case ID_DISPLAY_WIDTH /* 21680 */:
                s(i10).displayWidth = (int) j6;
                return;
            case ID_DISPLAY_UNIT /* 21682 */:
                s(i10).displayUnit = (int) j6;
                return;
            case ID_DISPLAY_HEIGHT /* 21690 */:
                s(i10).displayHeight = (int) j6;
                return;
            case ID_FLAG_FORCED /* 21930 */:
                s(i10).flagForced = j6 == 1;
                return;
            case ID_MAX_BLOCK_ADDITION_ID /* 21998 */:
                s(i10).maxBlockAdditionId = (int) j6;
                return;
            case ID_CODEC_DELAY /* 22186 */:
                s(i10).codecDelayNs = j6;
                return;
            case ID_SEEK_PRE_ROLL /* 22203 */:
                s(i10).seekPreRollNs = j6;
                return;
            case ID_AUDIO_BIT_DEPTH /* 25188 */:
                s(i10).audioBitDepth = (int) j6;
                return;
            case ID_DISCARD_PADDING /* 30114 */:
                this.blockGroupDiscardPaddingNs = j6;
                return;
            case ID_PROJECTION_TYPE /* 30321 */:
                i(i10);
                int i12 = (int) j6;
                if (i12 == 0) {
                    this.currentTrack.projectionType = 0;
                    return;
                }
                if (i12 == 1) {
                    this.currentTrack.projectionType = 1;
                    return;
                } else if (i12 == 2) {
                    this.currentTrack.projectionType = 2;
                    return;
                } else {
                    if (i12 != 3) {
                        return;
                    }
                    this.currentTrack.projectionType = 3;
                    return;
                }
            case ID_DEFAULT_DURATION /* 2352003 */:
                s(i10).defaultSampleDurationNs = (int) j6;
                return;
            case ID_TIMECODE_SCALE /* 2807729 */:
                this.timecodeScale = j6;
                return;
            default:
                switch (i10) {
                    case ID_COLOUR_RANGE /* 21945 */:
                        i(i10);
                        int i13 = (int) j6;
                        if (i13 == 1) {
                            this.currentTrack.colorRange = 2;
                            return;
                        } else {
                            if (i13 != 2) {
                                return;
                            }
                            this.currentTrack.colorRange = 1;
                            return;
                        }
                    case ID_COLOUR_TRANSFER /* 21946 */:
                        i(i10);
                        int iC = com.google.android.exoplayer2.video.c.c((int) j6);
                        if (iC != -1) {
                            this.currentTrack.colorTransfer = iC;
                            return;
                        }
                        return;
                    case ID_COLOUR_PRIMARIES /* 21947 */:
                        i(i10);
                        this.currentTrack.hasColorInfo = true;
                        int iB = com.google.android.exoplayer2.video.c.b((int) j6);
                        if (iB != -1) {
                            this.currentTrack.colorSpace = iB;
                            return;
                        }
                        return;
                    case ID_MAX_CLL /* 21948 */:
                        s(i10).maxContentLuminance = (int) j6;
                        return;
                    case ID_MAX_FALL /* 21949 */:
                        s(i10).maxFrameAverageLuminance = (int) j6;
                        return;
                    default:
                        return;
                }
        }
    }

    e(com.google.android.exoplayer2.extractor.mkv.c cVar, int i10) {
        this.segmentContentPosition = -1L;
        this.timecodeScale = -9223372036854775807L;
        this.durationTimecode = -9223372036854775807L;
        this.durationUs = -9223372036854775807L;
        this.cuesContentPosition = -1L;
        this.seekPositionAfterBuildingCues = -1L;
        this.clusterTimecodeUs = -9223372036854775807L;
        this.reader = cVar;
        cVar.b(new b());
        this.seekForCuesEnabled = (i10 & 1) == 0;
        this.varintReader = new g();
        this.tracks = new SparseArray<>();
        this.scratch = new c0(4);
        this.vorbisNumPageSamples = new c0(ByteBuffer.allocate(4).putInt(-1).array());
        this.seekEntryIdBytes = new c0(4);
        this.nalStartCode = new c0(y.NAL_START_CODE);
        this.nalLength = new c0(4);
        this.sampleStrippedBytes = new c0();
        this.subtitleSample = new c0();
        this.encryptionInitializationVector = new c0(8);
        this.encryptionSubsampleData = new c0();
        this.supplementalData = new c0();
        this.blockSampleSizes = new int[1];
    }

    private static void E(String str, long j6, byte[] bArr) {
        byte[] bArrR;
        int i10;
        str.hashCode();
        switch (str) {
            case "S_TEXT/ASS":
                bArrR = r(j6, SSA_TIMECODE_FORMAT, 10000L);
                i10 = 21;
                break;
            case "S_TEXT/WEBVTT":
                bArrR = r(j6, VTT_TIMECODE_FORMAT, 1000L);
                i10 = 25;
                break;
            case "S_TEXT/UTF8":
                bArrR = r(j6, SUBRIP_TIMECODE_FORMAT, 1000L);
                i10 = 19;
                break;
            default:
                throw new IllegalArgumentException();
        }
        System.arraycopy(bArrR, 0, bArr, i10, bArrR.length);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static boolean x(String str) {
        str.hashCode();
        byte b7 = -1;
        switch (str.hashCode()) {
            case -2095576542:
                if (str.equals(CODEC_ID_MPEG4_AP)) {
                    b7 = 0;
                }
                break;
            case -2095575984:
                if (str.equals(CODEC_ID_MPEG4_SP)) {
                    b7 = 1;
                }
                break;
            case -1985379776:
                if (str.equals(CODEC_ID_ACM)) {
                    b7 = 2;
                }
                break;
            case -1784763192:
                if (str.equals(CODEC_ID_TRUEHD)) {
                    b7 = 3;
                }
                break;
            case -1730367663:
                if (str.equals(CODEC_ID_VORBIS)) {
                    b7 = 4;
                }
                break;
            case -1482641358:
                if (str.equals(CODEC_ID_MP2)) {
                    b7 = 5;
                }
                break;
            case -1482641357:
                if (str.equals(CODEC_ID_MP3)) {
                    b7 = 6;
                }
                break;
            case -1373388978:
                if (str.equals(CODEC_ID_FOURCC)) {
                    b7 = 7;
                }
                break;
            case -933872740:
                if (str.equals(CODEC_ID_DVBSUB)) {
                    b7 = 8;
                }
                break;
            case -538363189:
                if (str.equals(CODEC_ID_MPEG4_ASP)) {
                    b7 = 9;
                }
                break;
            case -538363109:
                if (str.equals(CODEC_ID_H264)) {
                    b7 = 10;
                }
                break;
            case -425012669:
                if (str.equals(CODEC_ID_VOBSUB)) {
                    b7 = com.google.common.base.c.VT;
                }
                break;
            case -356037306:
                if (str.equals(CODEC_ID_DTS_LOSSLESS)) {
                    b7 = com.google.common.base.c.FF;
                }
                break;
            case 62923557:
                if (str.equals(CODEC_ID_AAC)) {
                    b7 = com.google.common.base.c.CR;
                }
                break;
            case 62923603:
                if (str.equals(CODEC_ID_AC3)) {
                    b7 = com.google.common.base.c.SO;
                }
                break;
            case 62927045:
                if (str.equals(CODEC_ID_DTS)) {
                    b7 = com.google.common.base.c.SI;
                }
                break;
            case 82318131:
                if (str.equals(CODEC_ID_AV1)) {
                    b7 = com.google.common.base.c.DLE;
                }
                break;
            case 82338133:
                if (str.equals(CODEC_ID_VP8)) {
                    b7 = 17;
                }
                break;
            case 82338134:
                if (str.equals(CODEC_ID_VP9)) {
                    b7 = com.google.common.base.c.DC2;
                }
                break;
            case 99146302:
                if (str.equals(CODEC_ID_PGS)) {
                    b7 = 19;
                }
                break;
            case 444813526:
                if (str.equals(CODEC_ID_THEORA)) {
                    b7 = com.google.common.base.c.DC4;
                }
                break;
            case 542569478:
                if (str.equals(CODEC_ID_DTS_EXPRESS)) {
                    b7 = com.google.common.base.c.NAK;
                }
                break;
            case 635596514:
                if (str.equals(CODEC_ID_PCM_FLOAT)) {
                    b7 = com.google.common.base.c.SYN;
                }
                break;
            case 725948237:
                if (str.equals(CODEC_ID_PCM_INT_BIG)) {
                    b7 = com.google.common.base.c.ETB;
                }
                break;
            case 725957860:
                if (str.equals(CODEC_ID_PCM_INT_LIT)) {
                    b7 = com.google.common.base.c.CAN;
                }
                break;
            case 738597099:
                if (str.equals(CODEC_ID_ASS)) {
                    b7 = com.google.common.base.c.EM;
                }
                break;
            case 855502857:
                if (str.equals(CODEC_ID_H265)) {
                    b7 = com.google.common.base.c.SUB;
                }
                break;
            case 1045209816:
                if (str.equals(CODEC_ID_VTT)) {
                    b7 = com.google.common.base.c.ESC;
                }
                break;
            case 1422270023:
                if (str.equals(CODEC_ID_SUBRIP)) {
                    b7 = com.google.common.base.c.FS;
                }
                break;
            case 1809237540:
                if (str.equals(CODEC_ID_MPEG2)) {
                    b7 = com.google.common.base.c.GS;
                }
                break;
            case 1950749482:
                if (str.equals(CODEC_ID_E_AC3)) {
                    b7 = com.google.common.base.c.RS;
                }
                break;
            case 1950789798:
                if (str.equals(CODEC_ID_FLAC)) {
                    b7 = com.google.common.base.c.US;
                }
                break;
            case 1951062397:
                if (str.equals(CODEC_ID_OPUS)) {
                    b7 = 32;
                }
                break;
        }
        switch (b7) {
            case 0:
            case 1:
            case 2:
            case 3:
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
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
                return true;
            default:
                return false;
        }
    }

    @CallSuper
    protected void F(int i10, long j6, long j10) throws v2 {
        j();
        if (i10 != ID_BLOCK_GROUP) {
            if (i10 != ID_TRACK_ENTRY) {
                if (i10 != ID_CUE_POINT) {
                    if (i10 != ID_SEEK) {
                        if (i10 != ID_CONTENT_ENCRYPTION) {
                            if (i10 != ID_MASTERING_METADATA) {
                                if (i10 != ID_SEGMENT) {
                                    if (i10 != ID_CUES) {
                                        if (i10 == ID_CLUSTER && !this.sentSeekMap) {
                                            if (this.seekForCuesEnabled && this.cuesContentPosition != -1) {
                                                this.seekForCues = true;
                                                return;
                                            } else {
                                                this.extractorOutput.h(new b0.b(this.durationUs));
                                                this.sentSeekMap = true;
                                                return;
                                            }
                                        }
                                        return;
                                    }
                                    this.cueTimesUs = new u();
                                    this.cueClusterPositions = new u();
                                    return;
                                }
                                long j11 = this.segmentContentPosition;
                                if (j11 != -1 && j11 != j6) {
                                    throw v2.a("Multiple Segment elements not supported", null);
                                }
                                this.segmentContentPosition = j6;
                                this.segmentContentSize = j10;
                                return;
                            }
                            s(i10).hasColorInfo = true;
                            return;
                        }
                        s(i10).hasContentEncryption = true;
                        return;
                    }
                    this.seekEntryId = -1;
                    this.seekEntryPosition = -1L;
                    return;
                }
                this.seenClusterPositionForCurrentCuePoint = false;
                return;
            }
            this.currentTrack = new c();
            return;
        }
        this.blockHasReferenceBlock = false;
        this.blockGroupDiscardPaddingNs = 0L;
    }

    @CallSuper
    protected void n(int i10) throws v2 {
        j();
        if (i10 != ID_BLOCK_GROUP) {
            if (i10 != ID_TRACK_ENTRY) {
                if (i10 != ID_SEEK) {
                    if (i10 != ID_CONTENT_ENCODING) {
                        if (i10 != ID_CONTENT_ENCODINGS) {
                            if (i10 != 357149030) {
                                if (i10 != ID_TRACKS) {
                                    if (i10 == ID_CUES) {
                                        if (!this.sentSeekMap) {
                                            this.extractorOutput.h(l(this.cueTimesUs, this.cueClusterPositions));
                                            this.sentSeekMap = true;
                                        }
                                        this.cueTimesUs = null;
                                        this.cueClusterPositions = null;
                                        return;
                                    }
                                    return;
                                }
                                if (this.tracks.size() != 0) {
                                    this.extractorOutput.endTracks();
                                    return;
                                }
                                throw v2.a("No valid tracks were found", null);
                            }
                            if (this.timecodeScale == -9223372036854775807L) {
                                this.timecodeScale = 1000000L;
                            }
                            long j6 = this.durationTimecode;
                            if (j6 != -9223372036854775807L) {
                                this.durationUs = D(j6);
                                return;
                            }
                            return;
                        }
                        i(i10);
                        c cVar = this.currentTrack;
                        if (cVar.hasContentEncryption && cVar.sampleStrippedBytes != null) {
                            throw v2.a("Combining encryption and compression is not supported", null);
                        }
                        return;
                    }
                    i(i10);
                    c cVar2 = this.currentTrack;
                    if (cVar2.hasContentEncryption) {
                        if (cVar2.cryptoData != null) {
                            cVar2.drmInitData = new DrmInitData(new DrmInitData.SchemeData(i.UUID_NIL, "video/webm", this.currentTrack.cryptoData.encryptionKey));
                            return;
                        }
                        throw v2.a("Encrypted Track found but ContentEncKeyID was not found", null);
                    }
                    return;
                }
                int i11 = this.seekEntryId;
                if (i11 != -1) {
                    long j10 = this.seekEntryPosition;
                    if (j10 != -1) {
                        if (i11 == ID_CUES) {
                            this.cuesContentPosition = j10;
                            return;
                        }
                        return;
                    }
                }
                throw v2.a("Mandatory element SeekID or SeekPosition not found", null);
            }
            c cVar3 = (c) com.google.android.exoplayer2.util.a.i(this.currentTrack);
            String str = cVar3.codecId;
            if (str != null) {
                if (x(str)) {
                    cVar3.i(this.extractorOutput, cVar3.number);
                    this.tracks.put(cVar3.number, cVar3);
                }
                this.currentTrack = null;
                return;
            }
            throw v2.a("CodecId is missing in TrackEntry element", null);
        }
        if (this.blockState != 2) {
            return;
        }
        c cVar4 = this.tracks.get(this.blockTrackNumber);
        cVar4.f();
        if (this.blockGroupDiscardPaddingNs > 0 && CODEC_ID_OPUS.equals(cVar4.codecId)) {
            this.supplementalData.M(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.blockGroupDiscardPaddingNs).array());
        }
        int i12 = 0;
        for (int i13 = 0; i13 < this.blockSampleCount; i13++) {
            i12 += this.blockSampleSizes[i13];
        }
        int i14 = 0;
        while (i14 < this.blockSampleCount) {
            long j11 = this.blockTimeUs + ((long) ((cVar4.defaultSampleDurationNs * i14) / 1000));
            int i15 = this.blockFlags;
            if (i14 == 0 && !this.blockHasReferenceBlock) {
                i15 |= 1;
            }
            int i16 = this.blockSampleSizes[i14];
            int i17 = i12 - i16;
            m(cVar4, j11, i15, i16, i17);
            i14++;
            i12 = i17;
        }
        this.blockState = 0;
    }

    protected c s(int i10) throws v2 {
        i(i10);
        return this.currentTrack;
    }

    protected void u(c cVar, m mVar, int i10) throws IOException {
        if (cVar.blockAddIdType != 1685485123 && cVar.blockAddIdType != 1685480259) {
            mVar.skipFully(i10);
            return;
        }
        byte[] bArr = new byte[i10];
        cVar.dolbyVisionConfigBytes = bArr;
        mVar.readFully(bArr, 0, i10);
    }

    private static byte[] r(long j6, String str, long j10) {
        boolean z6;
        if (j6 != -9223372036854775807L) {
            z6 = true;
        } else {
            z6 = false;
        }
        com.google.android.exoplayer2.util.a.a(z6);
        int i10 = (int) (j6 / 3600000000L);
        long j11 = j6 - (((long) i10) * 3600000000L);
        int i11 = (int) (j11 / 60000000);
        long j12 = j11 - (((long) i11) * 60000000);
        int i12 = (int) (j12 / 1000000);
        return o0.h0(String.format(Locale.US, str, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf((int) ((j12 - (((long) i12) * 1000000)) / j10))));
    }

    @Override // com.google.android.exoplayer2.extractor.l
    @CallSuper
    public void seek(long j6, long j10) {
        this.clusterTimecodeUs = -9223372036854775807L;
        this.blockState = 0;
        this.reader.reset();
        this.varintReader.e();
        C();
        for (int i10 = 0; i10 < this.tracks.size(); i10++) {
            this.tracks.valueAt(i10).n();
        }
    }
}
