package androidx.media3.extractor.mkv;

import android.net.Uri;
import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.LongArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.AvcConfig;
import androidx.media3.extractor.ChunkIndex;
import androidx.media3.extractor.DolbyVisionConfig;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.HevcConfig;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.TrueHdSampleRechunker;
import androidx.media3.extractor.e;
import com.google.common.base.c;
import com.google.common.collect.a0;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
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

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public class MatroskaExtractor implements Extractor {
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
    private LongArray cueClusterPositions;

    @Nullable
    private LongArray cueTimesUs;
    private long cuesContentPosition;

    @Nullable
    private Track currentTrack;
    private long durationTimecode;
    private long durationUs;
    private final ParsableByteArray encryptionInitializationVector;
    private final ParsableByteArray encryptionSubsampleData;
    private ByteBuffer encryptionSubsampleDataBuffer;
    private ExtractorOutput extractorOutput;
    private boolean haveOutputSample;
    private final ParsableByteArray nalLength;
    private final ParsableByteArray nalStartCode;
    private final EbmlReader reader;
    private int sampleBytesRead;
    private int sampleBytesWritten;
    private int sampleCurrentNalBytesRemaining;
    private boolean sampleEncodingHandled;
    private boolean sampleInitializationVectorRead;
    private int samplePartitionCount;
    private boolean samplePartitionCountRead;
    private byte sampleSignalByte;
    private boolean sampleSignalByteRead;
    private final ParsableByteArray sampleStrippedBytes;
    private final ParsableByteArray scratch;
    private int seekEntryId;
    private final ParsableByteArray seekEntryIdBytes;
    private long seekEntryPosition;
    private boolean seekForCues;
    private final boolean seekForCuesEnabled;
    private long seekPositionAfterBuildingCues;
    private boolean seenClusterPositionForCurrentCuePoint;
    private long segmentContentPosition;
    private long segmentContentSize;
    private boolean sentSeekMap;
    private final ParsableByteArray subtitleSample;
    private final ParsableByteArray supplementalData;
    private long timecodeScale;
    private final SparseArray<Track> tracks;
    private final VarintReader varintReader;
    private final ParsableByteArray vorbisNumPageSamples;
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: androidx.media3.extractor.mkv.a
        @Override // androidx.media3.extractor.ExtractorsFactory
        public /* synthetic */ Extractor[] a(Uri uri, Map map) {
            return e.a(this, uri, map);
        }

        @Override // androidx.media3.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            return MatroskaExtractor.z();
        }
    };
    private static final byte[] SUBRIP_PREFIX = {TarConstants.LF_LINK, 10, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 58, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 58, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 44, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 32, 45, 45, 62, 32, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 58, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 58, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 44, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 10};
    private static final byte[] SSA_DIALOGUE_FORMAT = Util.q0("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");
    private static final byte[] SSA_PREFIX = {68, 105, 97, 108, 111, TarConstants.LF_PAX_GLOBAL_EXTENDED_HEADER, 117, 101, 58, 32, TarConstants.LF_NORMAL, 58, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 58, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 58, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 44, TarConstants.LF_NORMAL, 58, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 58, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 58, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 44};
    private static final byte[] VTT_PREFIX = {87, 69, 66, 86, 84, 84, 10, 10, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 58, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 58, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 46, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 32, 45, 45, 62, 32, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 58, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 58, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 46, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, TarConstants.LF_NORMAL, 10};
    private static final UUID WAVE_SUBFORMAT_PCM = new UUID(72057594037932032L, -9223371306706625679L);

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    private final class InnerEbmlProcessor implements EbmlProcessor {
        private InnerEbmlProcessor() {
        }

        @Override // androidx.media3.extractor.mkv.EbmlProcessor
        public void a(int i10, int i11, ExtractorInput extractorInput) throws IOException {
            MatroskaExtractor.this.k(i10, i11, extractorInput);
        }

        @Override // androidx.media3.extractor.mkv.EbmlProcessor
        public void endMasterElement(int i10) throws ParserException {
            MatroskaExtractor.this.n(i10);
        }

        @Override // androidx.media3.extractor.mkv.EbmlProcessor
        public void floatElement(int i10, double d) throws ParserException {
            MatroskaExtractor.this.q(i10, d);
        }

        @Override // androidx.media3.extractor.mkv.EbmlProcessor
        public int getElementType(int i10) {
            return MatroskaExtractor.this.t(i10);
        }

        @Override // androidx.media3.extractor.mkv.EbmlProcessor
        public void integerElement(int i10, long j6) throws ParserException {
            MatroskaExtractor.this.w(i10, j6);
        }

        @Override // androidx.media3.extractor.mkv.EbmlProcessor
        public boolean isLevel1Element(int i10) {
            return MatroskaExtractor.this.y(i10);
        }

        @Override // androidx.media3.extractor.mkv.EbmlProcessor
        public void startMasterElement(int i10, long j6, long j10) throws ParserException {
            MatroskaExtractor.this.F(i10, j6, j10);
        }

        @Override // androidx.media3.extractor.mkv.EbmlProcessor
        public void stringElement(int i10, String str) throws ParserException {
            MatroskaExtractor.this.G(i10, str);
        }
    }

    protected static final class Track {
        private static final int DEFAULT_MAX_CLL = 1000;
        private static final int DEFAULT_MAX_FALL = 200;
        private static final int DISPLAY_UNIT_PIXELS = 0;
        private static final int MAX_CHROMATICITY = 50000;
        private int blockAddIdType;
        public String codecId;
        public byte[] codecPrivate;
        public TrackOutput.CryptoData cryptoData;
        public int defaultSampleDurationNs;
        public byte[] dolbyVisionConfigBytes;
        public DrmInitData drmInitData;
        public boolean flagForced;
        public boolean hasContentEncryption;
        public int maxBlockAdditionId;
        public int nalUnitLengthFieldLength;
        public String name;
        public int number;
        public TrackOutput output;
        public byte[] sampleStrippedBytes;
        public TrueHdSampleRechunker trueHdSampleRechunker;
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
            Assertions.e(this.output);
        }

        private byte[] g(String str) throws ParserException {
            byte[] bArr = this.codecPrivate;
            if (bArr != null) {
                return bArr;
            }
            throw ParserException.a("Missing CodecPrivate for codec " + str, null);
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

        private static Pair<String, List<byte[]>> k(ParsableByteArray parsableByteArray) throws ParserException {
            try {
                parsableByteArray.V(16);
                long jX = parsableByteArray.x();
                if (jX == 1482049860) {
                    return new Pair<>("video/divx", null);
                }
                if (jX == 859189832) {
                    return new Pair<>("video/3gpp", null);
                }
                if (jX != 826496599) {
                    Log.i(MatroskaExtractor.TAG, "Unknown FourCC. Setting mimeType to video/x-unknown");
                    return new Pair<>("video/x-unknown", null);
                }
                byte[] bArrE = parsableByteArray.e();
                for (int iF = parsableByteArray.f() + 20; iF < bArrE.length - 4; iF++) {
                    if (bArrE[iF] == 0 && bArrE[iF + 1] == 0 && bArrE[iF + 2] == 1 && bArrE[iF + 3] == 15) {
                        return new Pair<>("video/wvc1", Collections.singletonList(Arrays.copyOfRange(bArrE, iF, bArrE.length)));
                    }
                }
                throw ParserException.a("Failed to find FourCC VC1 initialization data", null);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw ParserException.a("Error parsing FourCC private data", null);
            }
        }

        private static List<byte[]> m(byte[] bArr) throws ParserException {
            int i10;
            int i11;
            try {
                if (bArr[0] != 2) {
                    throw ParserException.a("Error parsing vorbis codec private", null);
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
                    throw ParserException.a("Error parsing vorbis codec private", null);
                }
                byte[] bArr2 = new byte[i15];
                System.arraycopy(bArr, i17, bArr2, 0, i15);
                int i19 = i17 + i15;
                if (bArr[i19] != 3) {
                    throw ParserException.a("Error parsing vorbis codec private", null);
                }
                int i20 = i19 + i18;
                if (bArr[i20] != 5) {
                    throw ParserException.a("Error parsing vorbis codec private", null);
                }
                byte[] bArr3 = new byte[bArr.length - i20];
                System.arraycopy(bArr, i20, bArr3, 0, bArr.length - i20);
                ArrayList arrayList = new ArrayList(2);
                arrayList.add(bArr2);
                arrayList.add(bArr3);
                return arrayList;
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw ParserException.a("Error parsing vorbis codec private", null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean o(boolean z6) {
            if (MatroskaExtractor.CODEC_ID_OPUS.equals(this.codecId)) {
                return z6;
            }
            return this.maxBlockAdditionId > 0;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:206:0x0439  */
        /* JADX WARN: Code duplicated, block: B:211:0x0453  */
        /* JADX WARN: Code duplicated, block: B:212:0x0455  */
        /* JADX WARN: Code duplicated, block: B:215:0x0462  */
        /* JADX WARN: Code duplicated, block: B:216:0x0474  */
        /* JADX WARN: Code duplicated, block: B:218:0x047a  */
        /* JADX WARN: Code duplicated, block: B:220:0x047e  */
        /* JADX WARN: Code duplicated, block: B:222:0x0483  */
        /* JADX WARN: Code duplicated, block: B:225:0x048b  */
        /* JADX WARN: Code duplicated, block: B:227:0x0490  */
        /* JADX WARN: Code duplicated, block: B:230:0x0495  */
        /* JADX WARN: Code duplicated, block: B:233:0x04a3  */
        /* JADX WARN: Code duplicated, block: B:236:0x04a9  */
        /* JADX WARN: Code duplicated, block: B:239:0x04bc  */
        /* JADX WARN: Code duplicated, block: B:244:0x04dc  */
        /* JADX WARN: Code duplicated, block: B:250:0x04f5  */
        /* JADX WARN: Code duplicated, block: B:251:0x04f7  */
        /* JADX WARN: Code duplicated, block: B:253:0x0501  */
        /* JADX WARN: Code duplicated, block: B:254:0x0504  */
        /* JADX WARN: Code duplicated, block: B:256:0x050e  */
        /* JADX WARN: Code duplicated, block: B:262:0x0526  */
        /* JADX WARN: Code duplicated, block: B:264:0x054d  */
        /* JADX WARN: Code duplicated, block: B:266:0x0553  */
        /* JADX WARN: Code duplicated, block: B:282:0x057e  */
        /* JADX WARN: Code duplicated, block: B:4:0x0015  */
        public void i(ExtractorOutput extractorOutput, int i10) throws ParserException {
            byte b7;
            List<byte[]> listSingletonList;
            String str;
            int i11;
            int i12;
            List<byte[]> list;
            String str2;
            int iF0;
            String str3;
            int i13;
            Format.Builder builder;
            int i14;
            int iIntValue;
            int i15;
            float f;
            int i16;
            int i17;
            int i18;
            DolbyVisionConfig dolbyVisionConfigA;
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
                    b7 = c.VT;
                    break;
                case "A_DTS/LOSSLESS":
                    b7 = c.FF;
                    break;
                case "A_AAC":
                    b7 = c.CR;
                    break;
                case "A_AC3":
                    b7 = c.SO;
                    break;
                case "A_DTS":
                    b7 = c.SI;
                    break;
                case "V_AV1":
                    b7 = 16;
                    break;
                case "V_VP8":
                    b7 = 17;
                    break;
                case "V_VP9":
                    b7 = c.DC2;
                    break;
                case "S_HDMV/PGS":
                    b7 = 19;
                    break;
                case "V_THEORA":
                    b7 = c.DC4;
                    break;
                case "A_DTS/EXPRESS":
                    b7 = c.NAK;
                    break;
                case "A_PCM/FLOAT/IEEE":
                    b7 = c.SYN;
                    break;
                case "A_PCM/INT/BIG":
                    b7 = c.ETB;
                    break;
                case "A_PCM/INT/LIT":
                    b7 = c.CAN;
                    break;
                case "S_TEXT/ASS":
                    b7 = c.EM;
                    break;
                case "V_MPEGH/ISO/HEVC":
                    b7 = c.SUB;
                    break;
                case "S_TEXT/WEBVTT":
                    b7 = c.ESC;
                    break;
                case "S_TEXT/UTF8":
                    b7 = c.FS;
                    break;
                case "V_MPEG2":
                    b7 = c.GS;
                    break;
                case "A_EAC3":
                    b7 = c.RS;
                    break;
                case "A_FLAC":
                    b7 = c.US;
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
                    byte[] bArr = this.codecPrivate;
                    listSingletonList = bArr == null ? null : Collections.singletonList(bArr);
                    str5 = "video/mp4v-es";
                    str = null;
                    i12 = -1;
                    i11 = -1;
                    if (this.dolbyVisionConfigBytes != null && (dolbyVisionConfigA = DolbyVisionConfig.a(new ParsableByteArray(this.dolbyVisionConfigBytes))) != null) {
                        str = dolbyVisionConfigA.codecs;
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
                    builder = new Format.Builder();
                    if (MimeTypes.o(str3)) {
                        builder.J(this.channelCount).h0(this.sampleRate).a0(i11);
                        i14 = 1;
                    } else if (MimeTypes.s(str3)) {
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
                        ColorInfo colorInfo = this.hasColorInfo ? new ColorInfo(this.colorSpace, this.colorRange, this.colorTransfer, h()) : null;
                        if (this.name != null && MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.containsKey(this.name)) {
                            iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
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
                        builder.n0(this.width).S(this.height).c0(f).f0(iIntValue).d0(this.projectionData).j0(this.stereoMode).L(colorInfo);
                        i14 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3) && !"text/x-ssa".equals(str3) && !"text/vtt".equals(str3) && !"application/vobsub".equals(str3) && !"application/pgs".equals(str3) && !"application/dvbsubs".equals(str3)) {
                            throw ParserException.a("Unexpected MIME type.", null);
                        }
                        i14 = 3;
                    }
                    if (this.name != null && !MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.containsKey(this.name)) {
                        builder.W(this.name);
                    }
                    Format formatG = builder.T(i10).g0(str3).Y(i12).X(this.language).i0(i19).V(listSingletonList).K(str).O(this.drmInitData).G();
                    TrackOutput trackOutputTrack = extractorOutput.track(this.number, i14);
                    this.output = trackOutputTrack;
                    trackOutputTrack.d(formatG);
                    return;
                case 2:
                    if (l(new ParsableByteArray(g(this.codecId)))) {
                        int iF1 = Util.f0(this.audioBitDepth);
                        if (iF1 == 0) {
                            Log.i(MatroskaExtractor.TAG, "Unsupported PCM bit depth: " + this.audioBitDepth + ". Setting mimeType to audio/x-unknown");
                        } else {
                            i11 = iF1;
                            listSingletonList = null;
                            str = null;
                            i12 = -1;
                        }
                        if (this.dolbyVisionConfigBytes != null) {
                            str = dolbyVisionConfigA.codecs;
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
                        builder = new Format.Builder();
                        if (MimeTypes.o(str3)) {
                            if (MimeTypes.s(str3)) {
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
                                    iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
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
                                builder.n0(this.width).S(this.height).c0(f).f0(iIntValue).d0(this.projectionData).j0(this.stereoMode).L(colorInfo);
                                i14 = 2;
                            } else {
                                if ("application/x-subrip".equals(str3)) {
                                }
                                i14 = 3;
                            }
                            break;
                        } else {
                            builder.J(this.channelCount).h0(this.sampleRate).a0(i11);
                            i14 = 1;
                        }
                        if (this.name != null) {
                            builder.W(this.name);
                        }
                        Format formatG2 = builder.T(i10).g0(str3).Y(i12).X(this.language).i0(i110).V(listSingletonList).K(str).O(this.drmInitData).G();
                        TrackOutput trackOutputTrack2 = extractorOutput.track(this.number, i14);
                        this.output = trackOutputTrack2;
                        trackOutputTrack2.d(formatG2);
                        return;
                    }
                    Log.i(MatroskaExtractor.TAG, "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown");
                    listSingletonList = null;
                    str = null;
                    str5 = "audio/x-unknown";
                    i12 = -1;
                    i11 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfigA.codecs;
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
                    builder = new Format.Builder();
                    if (MimeTypes.o(str3)) {
                        if (MimeTypes.s(str3)) {
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
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
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
                            builder.n0(this.width).S(this.height).c0(f).f0(iIntValue).d0(this.projectionData).j0(this.stereoMode).L(colorInfo);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        builder.J(this.channelCount).h0(this.sampleRate).a0(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        builder.W(this.name);
                    }
                    Format formatG3 = builder.T(i10).g0(str3).Y(i12).X(this.language).i0(i111).V(listSingletonList).K(str).O(this.drmInitData).G();
                    TrackOutput trackOutputTrack3 = extractorOutput.track(this.number, i14);
                    this.output = trackOutputTrack3;
                    trackOutputTrack3.d(formatG3);
                    return;
                case 3:
                    this.trueHdSampleRechunker = new TrueHdSampleRechunker();
                    str5 = "audio/true-hd";
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i11 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfigA.codecs;
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
                    builder = new Format.Builder();
                    if (MimeTypes.o(str3)) {
                        if (MimeTypes.s(str3)) {
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
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
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
                            builder.n0(this.width).S(this.height).c0(f).f0(iIntValue).d0(this.projectionData).j0(this.stereoMode).L(colorInfo);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        builder.J(this.channelCount).h0(this.sampleRate).a0(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        builder.W(this.name);
                    }
                    Format formatG4 = builder.T(i10).g0(str3).Y(i12).X(this.language).i0(i112).V(listSingletonList).K(str).O(this.drmInitData).G();
                    TrackOutput trackOutputTrack4 = extractorOutput.track(this.number, i14);
                    this.output = trackOutputTrack4;
                    trackOutputTrack4.d(formatG4);
                    return;
                case 4:
                    listSingletonList = m(g(this.codecId));
                    str5 = "audio/vorbis";
                    i12 = 8192;
                    str = null;
                    i11 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfigA.codecs;
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
                    builder = new Format.Builder();
                    if (MimeTypes.o(str3)) {
                        if (MimeTypes.s(str3)) {
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
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
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
                            builder.n0(this.width).S(this.height).c0(f).f0(iIntValue).d0(this.projectionData).j0(this.stereoMode).L(colorInfo);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        builder.J(this.channelCount).h0(this.sampleRate).a0(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        builder.W(this.name);
                    }
                    Format formatG5 = builder.T(i10).g0(str3).Y(i12).X(this.language).i0(i113).V(listSingletonList).K(str).O(this.drmInitData).G();
                    TrackOutput trackOutputTrack5 = extractorOutput.track(this.number, i14);
                    this.output = trackOutputTrack5;
                    trackOutputTrack5.d(formatG5);
                    return;
                case 5:
                    str5 = "audio/mpeg-L2";
                    listSingletonList = null;
                    str = null;
                    i12 = 4096;
                    i11 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfigA.codecs;
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
                    builder = new Format.Builder();
                    if (MimeTypes.o(str3)) {
                        if (MimeTypes.s(str3)) {
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
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
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
                            builder.n0(this.width).S(this.height).c0(f).f0(iIntValue).d0(this.projectionData).j0(this.stereoMode).L(colorInfo);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        builder.J(this.channelCount).h0(this.sampleRate).a0(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        builder.W(this.name);
                    }
                    Format formatG6 = builder.T(i10).g0(str3).Y(i12).X(this.language).i0(i114).V(listSingletonList).K(str).O(this.drmInitData).G();
                    TrackOutput trackOutputTrack6 = extractorOutput.track(this.number, i14);
                    this.output = trackOutputTrack6;
                    trackOutputTrack6.d(formatG6);
                    return;
                case 6:
                    str5 = "audio/mpeg";
                    listSingletonList = null;
                    str = null;
                    i12 = 4096;
                    i11 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfigA.codecs;
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
                    builder = new Format.Builder();
                    if (MimeTypes.o(str3)) {
                        if (MimeTypes.s(str3)) {
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
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
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
                            builder.n0(this.width).S(this.height).c0(f).f0(iIntValue).d0(this.projectionData).j0(this.stereoMode).L(colorInfo);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        builder.J(this.channelCount).h0(this.sampleRate).a0(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        builder.W(this.name);
                    }
                    Format formatG7 = builder.T(i10).g0(str3).Y(i12).X(this.language).i0(i115).V(listSingletonList).K(str).O(this.drmInitData).G();
                    TrackOutput trackOutputTrack7 = extractorOutput.track(this.number, i14);
                    this.output = trackOutputTrack7;
                    trackOutputTrack7.d(formatG7);
                    return;
                case 7:
                    Pair<String, List<byte[]>> pairK = k(new ParsableByteArray(g(this.codecId)));
                    str5 = (String) pairK.first;
                    listSingletonList = (List) pairK.second;
                    str = null;
                    i12 = -1;
                    i11 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfigA.codecs;
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
                    builder = new Format.Builder();
                    if (MimeTypes.o(str3)) {
                        if (MimeTypes.s(str3)) {
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
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
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
                            builder.n0(this.width).S(this.height).c0(f).f0(iIntValue).d0(this.projectionData).j0(this.stereoMode).L(colorInfo);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        builder.J(this.channelCount).h0(this.sampleRate).a0(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        builder.W(this.name);
                    }
                    Format formatG8 = builder.T(i10).g0(str3).Y(i12).X(this.language).i0(i116).V(listSingletonList).K(str).O(this.drmInitData).G();
                    TrackOutput trackOutputTrack8 = extractorOutput.track(this.number, i14);
                    this.output = trackOutputTrack8;
                    trackOutputTrack8.d(formatG8);
                    return;
                case 8:
                    byte[] bArr2 = new byte[4];
                    System.arraycopy(g(this.codecId), 0, bArr2, 0, 4);
                    listSingletonList = a0.y(bArr2);
                    str = null;
                    str5 = "application/dvbsubs";
                    i12 = -1;
                    i11 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfigA.codecs;
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
                    builder = new Format.Builder();
                    if (MimeTypes.o(str3)) {
                        if (MimeTypes.s(str3)) {
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
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
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
                            builder.n0(this.width).S(this.height).c0(f).f0(iIntValue).d0(this.projectionData).j0(this.stereoMode).L(colorInfo);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        builder.J(this.channelCount).h0(this.sampleRate).a0(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        builder.W(this.name);
                    }
                    Format formatG9 = builder.T(i10).g0(str3).Y(i12).X(this.language).i0(i117).V(listSingletonList).K(str).O(this.drmInitData).G();
                    TrackOutput trackOutputTrack9 = extractorOutput.track(this.number, i14);
                    this.output = trackOutputTrack9;
                    trackOutputTrack9.d(formatG9);
                    return;
                case 10:
                    AvcConfig avcConfigB = AvcConfig.b(new ParsableByteArray(g(this.codecId)));
                    list = avcConfigB.initializationData;
                    this.nalUnitLengthFieldLength = avcConfigB.nalUnitLengthFieldLength;
                    str2 = avcConfigB.codecs;
                    str5 = "video/avc";
                    i12 = -1;
                    i11 = -1;
                    List<byte[]> list2 = list;
                    str = str2;
                    listSingletonList = list2;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfigA.codecs;
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
                    builder = new Format.Builder();
                    if (MimeTypes.o(str3)) {
                        if (MimeTypes.s(str3)) {
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
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
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
                            builder.n0(this.width).S(this.height).c0(f).f0(iIntValue).d0(this.projectionData).j0(this.stereoMode).L(colorInfo);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        builder.J(this.channelCount).h0(this.sampleRate).a0(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        builder.W(this.name);
                    }
                    Format formatG10 = builder.T(i10).g0(str3).Y(i12).X(this.language).i0(i118).V(listSingletonList).K(str).O(this.drmInitData).G();
                    TrackOutput trackOutputTrack10 = extractorOutput.track(this.number, i14);
                    this.output = trackOutputTrack10;
                    trackOutputTrack10.d(formatG10);
                    return;
                case 11:
                    listSingletonList = a0.y(g(this.codecId));
                    str = null;
                    str5 = "application/vobsub";
                    i12 = -1;
                    i11 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfigA.codecs;
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
                    builder = new Format.Builder();
                    if (MimeTypes.o(str3)) {
                        if (MimeTypes.s(str3)) {
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
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
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
                            builder.n0(this.width).S(this.height).c0(f).f0(iIntValue).d0(this.projectionData).j0(this.stereoMode).L(colorInfo);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        builder.J(this.channelCount).h0(this.sampleRate).a0(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        builder.W(this.name);
                    }
                    Format formatG11 = builder.T(i10).g0(str3).Y(i12).X(this.language).i0(i119).V(listSingletonList).K(str).O(this.drmInitData).G();
                    TrackOutput trackOutputTrack11 = extractorOutput.track(this.number, i14);
                    this.output = trackOutputTrack11;
                    trackOutputTrack11.d(formatG11);
                    return;
                case 12:
                    str5 = "audio/vnd.dts.hd";
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i11 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfigA.codecs;
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
                    builder = new Format.Builder();
                    if (MimeTypes.o(str3)) {
                        if (MimeTypes.s(str3)) {
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
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
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
                            builder.n0(this.width).S(this.height).c0(f).f0(iIntValue).d0(this.projectionData).j0(this.stereoMode).L(colorInfo);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        builder.J(this.channelCount).h0(this.sampleRate).a0(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        builder.W(this.name);
                    }
                    Format formatG12 = builder.T(i10).g0(str3).Y(i12).X(this.language).i0(i1110).V(listSingletonList).K(str).O(this.drmInitData).G();
                    TrackOutput trackOutputTrack12 = extractorOutput.track(this.number, i14);
                    this.output = trackOutputTrack12;
                    trackOutputTrack12.d(formatG12);
                    return;
                case 13:
                    listSingletonList = Collections.singletonList(g(this.codecId));
                    AacUtil.Config configF = AacUtil.f(this.codecPrivate);
                    this.sampleRate = configF.sampleRateHz;
                    this.channelCount = configF.channelCount;
                    str = configF.codecs;
                    str5 = "audio/mp4a-latm";
                    i12 = -1;
                    i11 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfigA.codecs;
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
                    builder = new Format.Builder();
                    if (MimeTypes.o(str3)) {
                        if (MimeTypes.s(str3)) {
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
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
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
                            builder.n0(this.width).S(this.height).c0(f).f0(iIntValue).d0(this.projectionData).j0(this.stereoMode).L(colorInfo);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        builder.J(this.channelCount).h0(this.sampleRate).a0(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        builder.W(this.name);
                    }
                    Format formatG13 = builder.T(i10).g0(str3).Y(i12).X(this.language).i0(i1111).V(listSingletonList).K(str).O(this.drmInitData).G();
                    TrackOutput trackOutputTrack13 = extractorOutput.track(this.number, i14);
                    this.output = trackOutputTrack13;
                    trackOutputTrack13.d(formatG13);
                    return;
                case 14:
                    str5 = "audio/ac3";
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i11 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfigA.codecs;
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
                    builder = new Format.Builder();
                    if (MimeTypes.o(str3)) {
                        if (MimeTypes.s(str3)) {
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
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
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
                            builder.n0(this.width).S(this.height).c0(f).f0(iIntValue).d0(this.projectionData).j0(this.stereoMode).L(colorInfo);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        builder.J(this.channelCount).h0(this.sampleRate).a0(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        builder.W(this.name);
                    }
                    Format formatG14 = builder.T(i10).g0(str3).Y(i12).X(this.language).i0(i1112).V(listSingletonList).K(str).O(this.drmInitData).G();
                    TrackOutput trackOutputTrack14 = extractorOutput.track(this.number, i14);
                    this.output = trackOutputTrack14;
                    trackOutputTrack14.d(formatG14);
                    return;
                case 15:
                case 21:
                    str5 = "audio/vnd.dts";
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i11 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfigA.codecs;
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
                    builder = new Format.Builder();
                    if (MimeTypes.o(str3)) {
                        if (MimeTypes.s(str3)) {
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
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
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
                            builder.n0(this.width).S(this.height).c0(f).f0(iIntValue).d0(this.projectionData).j0(this.stereoMode).L(colorInfo);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        builder.J(this.channelCount).h0(this.sampleRate).a0(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        builder.W(this.name);
                    }
                    Format formatG15 = builder.T(i10).g0(str3).Y(i12).X(this.language).i0(i1113).V(listSingletonList).K(str).O(this.drmInitData).G();
                    TrackOutput trackOutputTrack15 = extractorOutput.track(this.number, i14);
                    this.output = trackOutputTrack15;
                    trackOutputTrack15.d(formatG15);
                    return;
                case 16:
                    str5 = "video/av01";
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i11 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfigA.codecs;
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
                    builder = new Format.Builder();
                    if (MimeTypes.o(str3)) {
                        if (MimeTypes.s(str3)) {
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
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
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
                            builder.n0(this.width).S(this.height).c0(f).f0(iIntValue).d0(this.projectionData).j0(this.stereoMode).L(colorInfo);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        builder.J(this.channelCount).h0(this.sampleRate).a0(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        builder.W(this.name);
                    }
                    Format formatG16 = builder.T(i10).g0(str3).Y(i12).X(this.language).i0(i1114).V(listSingletonList).K(str).O(this.drmInitData).G();
                    TrackOutput trackOutputTrack16 = extractorOutput.track(this.number, i14);
                    this.output = trackOutputTrack16;
                    trackOutputTrack16.d(formatG16);
                    return;
                case 17:
                    str5 = "video/x-vnd.on2.vp8";
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i11 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfigA.codecs;
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
                    builder = new Format.Builder();
                    if (MimeTypes.o(str3)) {
                        if (MimeTypes.s(str3)) {
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
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
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
                            builder.n0(this.width).S(this.height).c0(f).f0(iIntValue).d0(this.projectionData).j0(this.stereoMode).L(colorInfo);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        builder.J(this.channelCount).h0(this.sampleRate).a0(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        builder.W(this.name);
                    }
                    Format formatG17 = builder.T(i10).g0(str3).Y(i12).X(this.language).i0(i1115).V(listSingletonList).K(str).O(this.drmInitData).G();
                    TrackOutput trackOutputTrack17 = extractorOutput.track(this.number, i14);
                    this.output = trackOutputTrack17;
                    trackOutputTrack17.d(formatG17);
                    return;
                case 18:
                    str5 = "video/x-vnd.on2.vp9";
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i11 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfigA.codecs;
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
                    builder = new Format.Builder();
                    if (MimeTypes.o(str3)) {
                        if (MimeTypes.s(str3)) {
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
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
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
                            builder.n0(this.width).S(this.height).c0(f).f0(iIntValue).d0(this.projectionData).j0(this.stereoMode).L(colorInfo);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        builder.J(this.channelCount).h0(this.sampleRate).a0(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        builder.W(this.name);
                    }
                    Format formatG18 = builder.T(i10).g0(str3).Y(i12).X(this.language).i0(i1116).V(listSingletonList).K(str).O(this.drmInitData).G();
                    TrackOutput trackOutputTrack18 = extractorOutput.track(this.number, i14);
                    this.output = trackOutputTrack18;
                    trackOutputTrack18.d(formatG18);
                    return;
                case 19:
                    listSingletonList = null;
                    str = null;
                    str5 = "application/pgs";
                    i12 = -1;
                    i11 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfigA.codecs;
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
                    builder = new Format.Builder();
                    if (MimeTypes.o(str3)) {
                        if (MimeTypes.s(str3)) {
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
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
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
                            builder.n0(this.width).S(this.height).c0(f).f0(iIntValue).d0(this.projectionData).j0(this.stereoMode).L(colorInfo);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        builder.J(this.channelCount).h0(this.sampleRate).a0(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        builder.W(this.name);
                    }
                    Format formatG19 = builder.T(i10).g0(str3).Y(i12).X(this.language).i0(i1117).V(listSingletonList).K(str).O(this.drmInitData).G();
                    TrackOutput trackOutputTrack19 = extractorOutput.track(this.number, i14);
                    this.output = trackOutputTrack19;
                    trackOutputTrack19.d(formatG19);
                    return;
                case 20:
                    str5 = "video/x-unknown";
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i11 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfigA.codecs;
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
                    builder = new Format.Builder();
                    if (MimeTypes.o(str3)) {
                        if (MimeTypes.s(str3)) {
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
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
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
                            builder.n0(this.width).S(this.height).c0(f).f0(iIntValue).d0(this.projectionData).j0(this.stereoMode).L(colorInfo);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        builder.J(this.channelCount).h0(this.sampleRate).a0(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        builder.W(this.name);
                    }
                    Format formatG110 = builder.T(i10).g0(str3).Y(i12).X(this.language).i0(i1118).V(listSingletonList).K(str).O(this.drmInitData).G();
                    TrackOutput trackOutputTrack110 = extractorOutput.track(this.number, i14);
                    this.output = trackOutputTrack110;
                    trackOutputTrack110.d(formatG110);
                    return;
                case 22:
                    if (this.audioBitDepth == 32) {
                        listSingletonList = null;
                        str = null;
                        i12 = -1;
                        i11 = 4;
                    } else {
                        Log.i(MatroskaExtractor.TAG, "Unsupported floating point PCM bit depth: " + this.audioBitDepth + ". Setting mimeType to audio/x-unknown");
                        listSingletonList = null;
                        str = null;
                        str5 = "audio/x-unknown";
                        i12 = -1;
                        i11 = -1;
                    }
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfigA.codecs;
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
                    builder = new Format.Builder();
                    if (MimeTypes.o(str3)) {
                        if (MimeTypes.s(str3)) {
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
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
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
                            builder.n0(this.width).S(this.height).c0(f).f0(iIntValue).d0(this.projectionData).j0(this.stereoMode).L(colorInfo);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        builder.J(this.channelCount).h0(this.sampleRate).a0(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        builder.W(this.name);
                    }
                    Format formatG111 = builder.T(i10).g0(str3).Y(i12).X(this.language).i0(i1119).V(listSingletonList).K(str).O(this.drmInitData).G();
                    TrackOutput trackOutputTrack111 = extractorOutput.track(this.number, i14);
                    this.output = trackOutputTrack111;
                    trackOutputTrack111.d(formatG111);
                    return;
                case 23:
                    int i20 = this.audioBitDepth;
                    if (i20 == 8) {
                        listSingletonList = null;
                        str = null;
                        i11 = 3;
                    } else {
                        if (i20 != 16) {
                            Log.i(MatroskaExtractor.TAG, "Unsupported big endian PCM bit depth: " + this.audioBitDepth + ". Setting mimeType to audio/x-unknown");
                            listSingletonList = null;
                            str = null;
                            str5 = "audio/x-unknown";
                            i12 = -1;
                            i11 = -1;
                            if (this.dolbyVisionConfigBytes != null) {
                                str = dolbyVisionConfigA.codecs;
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
                            builder = new Format.Builder();
                            if (MimeTypes.o(str3)) {
                                if (MimeTypes.s(str3)) {
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
                                        iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
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
                                    builder.n0(this.width).S(this.height).c0(f).f0(iIntValue).d0(this.projectionData).j0(this.stereoMode).L(colorInfo);
                                    i14 = 2;
                                } else {
                                    if ("application/x-subrip".equals(str3)) {
                                    }
                                    i14 = 3;
                                }
                                break;
                            } else {
                                builder.J(this.channelCount).h0(this.sampleRate).a0(i11);
                                i14 = 1;
                            }
                            if (this.name != null) {
                                builder.W(this.name);
                            }
                            Format formatG112 = builder.T(i10).g0(str3).Y(i12).X(this.language).i0(i11110).V(listSingletonList).K(str).O(this.drmInitData).G();
                            TrackOutput trackOutputTrack112 = extractorOutput.track(this.number, i14);
                            this.output = trackOutputTrack112;
                            trackOutputTrack112.d(formatG112);
                            return;
                        }
                        iF0 = 268435456;
                        i11 = iF0;
                        listSingletonList = null;
                        str = null;
                    }
                    i12 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfigA.codecs;
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
                    builder = new Format.Builder();
                    if (MimeTypes.o(str3)) {
                        if (MimeTypes.s(str3)) {
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
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
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
                            builder.n0(this.width).S(this.height).c0(f).f0(iIntValue).d0(this.projectionData).j0(this.stereoMode).L(colorInfo);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        builder.J(this.channelCount).h0(this.sampleRate).a0(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        builder.W(this.name);
                    }
                    Format formatG113 = builder.T(i10).g0(str3).Y(i12).X(this.language).i0(i11111).V(listSingletonList).K(str).O(this.drmInitData).G();
                    TrackOutput trackOutputTrack113 = extractorOutput.track(this.number, i14);
                    this.output = trackOutputTrack113;
                    trackOutputTrack113.d(formatG113);
                    return;
                case 24:
                    iF0 = Util.f0(this.audioBitDepth);
                    if (iF0 == 0) {
                        Log.i(MatroskaExtractor.TAG, "Unsupported little endian PCM bit depth: " + this.audioBitDepth + ". Setting mimeType to audio/x-unknown");
                        listSingletonList = null;
                        str = null;
                        str5 = "audio/x-unknown";
                        i12 = -1;
                        i11 = -1;
                        if (this.dolbyVisionConfigBytes != null) {
                            str = dolbyVisionConfigA.codecs;
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
                        builder = new Format.Builder();
                        if (MimeTypes.o(str3)) {
                            if (MimeTypes.s(str3)) {
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
                                    iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
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
                                builder.n0(this.width).S(this.height).c0(f).f0(iIntValue).d0(this.projectionData).j0(this.stereoMode).L(colorInfo);
                                i14 = 2;
                            } else {
                                if ("application/x-subrip".equals(str3)) {
                                }
                                i14 = 3;
                            }
                            break;
                        } else {
                            builder.J(this.channelCount).h0(this.sampleRate).a0(i11);
                            i14 = 1;
                        }
                        if (this.name != null) {
                            builder.W(this.name);
                        }
                        Format formatG114 = builder.T(i10).g0(str3).Y(i12).X(this.language).i0(i11112).V(listSingletonList).K(str).O(this.drmInitData).G();
                        TrackOutput trackOutputTrack114 = extractorOutput.track(this.number, i14);
                        this.output = trackOutputTrack114;
                        trackOutputTrack114.d(formatG114);
                        return;
                    }
                    i11 = iF0;
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfigA.codecs;
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
                    builder = new Format.Builder();
                    if (MimeTypes.o(str3)) {
                        if (MimeTypes.s(str3)) {
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
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
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
                            builder.n0(this.width).S(this.height).c0(f).f0(iIntValue).d0(this.projectionData).j0(this.stereoMode).L(colorInfo);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        builder.J(this.channelCount).h0(this.sampleRate).a0(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        builder.W(this.name);
                    }
                    Format formatG115 = builder.T(i10).g0(str3).Y(i12).X(this.language).i0(i11113).V(listSingletonList).K(str).O(this.drmInitData).G();
                    TrackOutput trackOutputTrack115 = extractorOutput.track(this.number, i14);
                    this.output = trackOutputTrack115;
                    trackOutputTrack115.d(formatG115);
                    return;
                case 25:
                    listSingletonList = a0.z(MatroskaExtractor.SSA_DIALOGUE_FORMAT, g(this.codecId));
                    str = null;
                    str5 = "text/x-ssa";
                    i12 = -1;
                    i11 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfigA.codecs;
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
                    builder = new Format.Builder();
                    if (MimeTypes.o(str3)) {
                        if (MimeTypes.s(str3)) {
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
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
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
                            builder.n0(this.width).S(this.height).c0(f).f0(iIntValue).d0(this.projectionData).j0(this.stereoMode).L(colorInfo);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        builder.J(this.channelCount).h0(this.sampleRate).a0(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        builder.W(this.name);
                    }
                    Format formatG116 = builder.T(i10).g0(str3).Y(i12).X(this.language).i0(i11114).V(listSingletonList).K(str).O(this.drmInitData).G();
                    TrackOutput trackOutputTrack116 = extractorOutput.track(this.number, i14);
                    this.output = trackOutputTrack116;
                    trackOutputTrack116.d(formatG116);
                    return;
                case 26:
                    HevcConfig hevcConfigA = HevcConfig.a(new ParsableByteArray(g(this.codecId)));
                    list = hevcConfigA.initializationData;
                    this.nalUnitLengthFieldLength = hevcConfigA.nalUnitLengthFieldLength;
                    str2 = hevcConfigA.codecs;
                    str5 = "video/hevc";
                    i12 = -1;
                    i11 = -1;
                    List<byte[]> list3 = list;
                    str = str2;
                    listSingletonList = list3;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfigA.codecs;
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
                    builder = new Format.Builder();
                    if (MimeTypes.o(str3)) {
                        if (MimeTypes.s(str3)) {
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
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
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
                            builder.n0(this.width).S(this.height).c0(f).f0(iIntValue).d0(this.projectionData).j0(this.stereoMode).L(colorInfo);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        builder.J(this.channelCount).h0(this.sampleRate).a0(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        builder.W(this.name);
                    }
                    Format formatG117 = builder.T(i10).g0(str3).Y(i12).X(this.language).i0(i11115).V(listSingletonList).K(str).O(this.drmInitData).G();
                    TrackOutput trackOutputTrack117 = extractorOutput.track(this.number, i14);
                    this.output = trackOutputTrack117;
                    trackOutputTrack117.d(formatG117);
                    return;
                case 27:
                    str5 = "text/vtt";
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i11 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfigA.codecs;
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
                    builder = new Format.Builder();
                    if (MimeTypes.o(str3)) {
                        if (MimeTypes.s(str3)) {
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
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
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
                            builder.n0(this.width).S(this.height).c0(f).f0(iIntValue).d0(this.projectionData).j0(this.stereoMode).L(colorInfo);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        builder.J(this.channelCount).h0(this.sampleRate).a0(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        builder.W(this.name);
                    }
                    Format formatG118 = builder.T(i10).g0(str3).Y(i12).X(this.language).i0(i11116).V(listSingletonList).K(str).O(this.drmInitData).G();
                    TrackOutput trackOutputTrack118 = extractorOutput.track(this.number, i14);
                    this.output = trackOutputTrack118;
                    trackOutputTrack118.d(formatG118);
                    return;
                case 28:
                    str5 = "application/x-subrip";
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i11 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfigA.codecs;
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
                    builder = new Format.Builder();
                    if (MimeTypes.o(str3)) {
                        if (MimeTypes.s(str3)) {
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
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
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
                            builder.n0(this.width).S(this.height).c0(f).f0(iIntValue).d0(this.projectionData).j0(this.stereoMode).L(colorInfo);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        builder.J(this.channelCount).h0(this.sampleRate).a0(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        builder.W(this.name);
                    }
                    Format formatG119 = builder.T(i10).g0(str3).Y(i12).X(this.language).i0(i11117).V(listSingletonList).K(str).O(this.drmInitData).G();
                    TrackOutput trackOutputTrack119 = extractorOutput.track(this.number, i14);
                    this.output = trackOutputTrack119;
                    trackOutputTrack119.d(formatG119);
                    return;
                case 29:
                    str5 = "video/mpeg2";
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i11 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfigA.codecs;
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
                    builder = new Format.Builder();
                    if (MimeTypes.o(str3)) {
                        if (MimeTypes.s(str3)) {
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
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
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
                            builder.n0(this.width).S(this.height).c0(f).f0(iIntValue).d0(this.projectionData).j0(this.stereoMode).L(colorInfo);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        builder.J(this.channelCount).h0(this.sampleRate).a0(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        builder.W(this.name);
                    }
                    Format formatG1110 = builder.T(i10).g0(str3).Y(i12).X(this.language).i0(i11118).V(listSingletonList).K(str).O(this.drmInitData).G();
                    TrackOutput trackOutputTrack1110 = extractorOutput.track(this.number, i14);
                    this.output = trackOutputTrack1110;
                    trackOutputTrack1110.d(formatG1110);
                    return;
                case 30:
                    str5 = "audio/eac3";
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i11 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfigA.codecs;
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
                    builder = new Format.Builder();
                    if (MimeTypes.o(str3)) {
                        if (MimeTypes.s(str3)) {
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
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
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
                            builder.n0(this.width).S(this.height).c0(f).f0(iIntValue).d0(this.projectionData).j0(this.stereoMode).L(colorInfo);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        builder.J(this.channelCount).h0(this.sampleRate).a0(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        builder.W(this.name);
                    }
                    Format formatG1111 = builder.T(i10).g0(str3).Y(i12).X(this.language).i0(i11119).V(listSingletonList).K(str).O(this.drmInitData).G();
                    TrackOutput trackOutputTrack1111 = extractorOutput.track(this.number, i14);
                    this.output = trackOutputTrack1111;
                    trackOutputTrack1111.d(formatG1111);
                    return;
                case 31:
                    listSingletonList = Collections.singletonList(g(this.codecId));
                    str5 = "audio/flac";
                    str = null;
                    i12 = -1;
                    i11 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfigA.codecs;
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
                    builder = new Format.Builder();
                    if (MimeTypes.o(str3)) {
                        if (MimeTypes.s(str3)) {
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
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
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
                            builder.n0(this.width).S(this.height).c0(f).f0(iIntValue).d0(this.projectionData).j0(this.stereoMode).L(colorInfo);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        builder.J(this.channelCount).h0(this.sampleRate).a0(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        builder.W(this.name);
                    }
                    Format formatG1112 = builder.T(i10).g0(str3).Y(i12).X(this.language).i0(i111110).V(listSingletonList).K(str).O(this.drmInitData).G();
                    TrackOutput trackOutputTrack1112 = extractorOutput.track(this.number, i14);
                    this.output = trackOutputTrack1112;
                    trackOutputTrack1112.d(formatG1112);
                    return;
                case 32:
                    listSingletonList = new ArrayList<>(3);
                    listSingletonList.add(g(this.codecId));
                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
                    ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                    listSingletonList.add(byteBufferAllocate.order(byteOrder).putLong(this.codecDelayNs).array());
                    listSingletonList.add(ByteBuffer.allocate(8).order(byteOrder).putLong(this.seekPreRollNs).array());
                    str5 = "audio/opus";
                    i12 = MatroskaExtractor.OPUS_MAX_INPUT_SIZE;
                    str = null;
                    i11 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfigA.codecs;
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
                    builder = new Format.Builder();
                    if (MimeTypes.o(str3)) {
                        if (MimeTypes.s(str3)) {
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
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
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
                            builder.n0(this.width).S(this.height).c0(f).f0(iIntValue).d0(this.projectionData).j0(this.stereoMode).L(colorInfo);
                            i14 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i14 = 3;
                        }
                        break;
                    } else {
                        builder.J(this.channelCount).h0(this.sampleRate).a0(i11);
                        i14 = 1;
                    }
                    if (this.name != null) {
                        builder.W(this.name);
                    }
                    Format formatG1113 = builder.T(i10).g0(str3).Y(i12).X(this.language).i0(i111111).V(listSingletonList).K(str).O(this.drmInitData).G();
                    TrackOutput trackOutputTrack1113 = extractorOutput.track(this.number, i14);
                    this.output = trackOutputTrack1113;
                    trackOutputTrack1113.d(formatG1113);
                    return;
                default:
                    throw ParserException.a("Unrecognized codec identifier.", null);
            }
        }

        public void j() {
            TrueHdSampleRechunker trueHdSampleRechunker = this.trueHdSampleRechunker;
            if (trueHdSampleRechunker != null) {
                trueHdSampleRechunker.a(this.output, this.cryptoData);
            }
        }

        public void n() {
            TrueHdSampleRechunker trueHdSampleRechunker = this.trueHdSampleRechunker;
            if (trueHdSampleRechunker != null) {
                trueHdSampleRechunker.b();
            }
        }

        protected Track() {
        }

        private static boolean l(ParsableByteArray parsableByteArray) throws ParserException {
            try {
                int iZ = parsableByteArray.z();
                if (iZ == 1) {
                    return true;
                }
                if (iZ != 65534) {
                    return false;
                }
                parsableByteArray.U(24);
                if (parsableByteArray.A() == MatroskaExtractor.WAVE_SUBFORMAT_PCM.getMostSignificantBits() && parsableByteArray.A() == MatroskaExtractor.WAVE_SUBFORMAT_PCM.getLeastSignificantBits()) {
                    return true;
                }
                return false;
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw ParserException.a("Error parsing MS/ACM codec private", null);
            }
        }
    }

    public MatroskaExtractor() {
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
        this.sampleStrippedBytes.Q(0);
    }

    private void I(ExtractorInput extractorInput, byte[] bArr, int i10) throws IOException {
        int length = bArr.length + i10;
        if (this.subtitleSample.b() < length) {
            this.subtitleSample.R(Arrays.copyOf(bArr, length + i10));
        } else {
            System.arraycopy(bArr, 0, this.subtitleSample.e(), 0, bArr.length);
        }
        extractorInput.readFully(this.subtitleSample.e(), bArr.length, i10);
        this.subtitleSample.U(0);
        this.subtitleSample.T(length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Extractor[] z() {
        return new Extractor[]{new MatroskaExtractor()};
    }

    @Override // androidx.media3.extractor.Extractor
    public final void b(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
    }

    @Override // androidx.media3.extractor.Extractor
    public final int c(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        this.haveOutputSample = false;
        boolean zA = true;
        while (zA && !this.haveOutputSample) {
            zA = this.reader.a(extractorInput);
            if (zA && A(positionHolder, extractorInput.getPosition())) {
                return 1;
            }
        }
        if (zA) {
            return 0;
        }
        for (int i10 = 0; i10 < this.tracks.size(); i10++) {
            Track trackValueAt = this.tracks.valueAt(i10);
            trackValueAt.f();
            trackValueAt.j();
        }
        return -1;
    }

    @Override // androidx.media3.extractor.Extractor
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

    protected void v(Track track, int i10, ExtractorInput extractorInput, int i11) throws IOException {
        if (i10 != 4 || !CODEC_ID_VP9.equals(track.codecId)) {
            extractorInput.skipFully(i11);
        } else {
            this.supplementalData.Q(i11);
            extractorInput.readFully(this.supplementalData.e(), 0, i11);
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

    public MatroskaExtractor(int i10) {
        this(new DefaultEbmlReader(), i10);
    }

    private boolean A(PositionHolder positionHolder, long j6) {
        if (this.seekForCues) {
            this.seekPositionAfterBuildingCues = j6;
            positionHolder.position = this.cuesContentPosition;
            this.seekForCues = false;
            return true;
        }
        if (this.sentSeekMap) {
            long j10 = this.seekPositionAfterBuildingCues;
            if (j10 != -1) {
                positionHolder.position = j10;
                this.seekPositionAfterBuildingCues = -1L;
                return true;
            }
        }
        return false;
    }

    private void B(ExtractorInput extractorInput, int i10) throws IOException {
        if (this.scratch.g() >= i10) {
            return;
        }
        if (this.scratch.b() < i10) {
            ParsableByteArray parsableByteArray = this.scratch;
            parsableByteArray.c(Math.max(parsableByteArray.b() * 2, i10));
        }
        extractorInput.readFully(this.scratch.e(), this.scratch.g(), i10 - this.scratch.g());
        this.scratch.T(i10);
    }

    private long D(long j6) throws ParserException {
        long j10 = this.timecodeScale;
        if (j10 != -9223372036854775807L) {
            return Util.X0(j6, j10, 1000L);
        }
        throw ParserException.a("Can't scale timecode prior to timecodeScale being set.", null);
    }

    private int H(ExtractorInput extractorInput, Track track, int i10, boolean z6) throws IOException {
        int i11;
        if (CODEC_ID_SUBRIP.equals(track.codecId)) {
            I(extractorInput, SUBRIP_PREFIX, i10);
            return p();
        }
        if (CODEC_ID_ASS.equals(track.codecId)) {
            I(extractorInput, SSA_PREFIX, i10);
            return p();
        }
        if (CODEC_ID_VTT.equals(track.codecId)) {
            I(extractorInput, VTT_PREFIX, i10);
            return p();
        }
        TrackOutput trackOutput = track.output;
        if (!this.sampleEncodingHandled) {
            if (track.hasContentEncryption) {
                this.blockFlags &= -1073741825;
                if (!this.sampleSignalByteRead) {
                    extractorInput.readFully(this.scratch.e(), 0, 1);
                    this.sampleBytesRead++;
                    if ((this.scratch.e()[0] & 128) == 128) {
                        throw ParserException.a("Extension bit is set in signal byte", null);
                    }
                    this.sampleSignalByte = this.scratch.e()[0];
                    this.sampleSignalByteRead = true;
                }
                byte b7 = this.sampleSignalByte;
                if ((b7 & 1) == 1) {
                    boolean z10 = (b7 & 2) == 2;
                    this.blockFlags |= 1073741824;
                    if (!this.sampleInitializationVectorRead) {
                        extractorInput.readFully(this.encryptionInitializationVector.e(), 0, 8);
                        this.sampleBytesRead += 8;
                        this.sampleInitializationVectorRead = true;
                        this.scratch.e()[0] = (byte) ((z10 ? 128 : 0) | 8);
                        this.scratch.U(0);
                        trackOutput.a(this.scratch, 1, 1);
                        this.sampleBytesWritten++;
                        this.encryptionInitializationVector.U(0);
                        trackOutput.a(this.encryptionInitializationVector, 8, 1);
                        this.sampleBytesWritten += 8;
                    }
                    if (z10) {
                        if (!this.samplePartitionCountRead) {
                            extractorInput.readFully(this.scratch.e(), 0, 1);
                            this.sampleBytesRead++;
                            this.scratch.U(0);
                            this.samplePartitionCount = this.scratch.H();
                            this.samplePartitionCountRead = true;
                        }
                        int i12 = this.samplePartitionCount * 4;
                        this.scratch.Q(i12);
                        extractorInput.readFully(this.scratch.e(), 0, i12);
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
                            int iL = this.scratch.L();
                            if (i14 % 2 == 0) {
                                this.encryptionSubsampleDataBuffer.putShort((short) (iL - i15));
                            } else {
                                this.encryptionSubsampleDataBuffer.putInt(iL - i15);
                            }
                            i14++;
                            i15 = iL;
                        }
                        int i16 = (i10 - this.sampleBytesRead) - i15;
                        if (i11 % 2 == 1) {
                            this.encryptionSubsampleDataBuffer.putInt(i16);
                        } else {
                            this.encryptionSubsampleDataBuffer.putShort((short) i16);
                            this.encryptionSubsampleDataBuffer.putInt(0);
                        }
                        this.encryptionSubsampleData.S(this.encryptionSubsampleDataBuffer.array(), i13);
                        trackOutput.a(this.encryptionSubsampleData, i13, 1);
                        this.sampleBytesWritten += i13;
                    }
                }
            } else {
                byte[] bArr = track.sampleStrippedBytes;
                if (bArr != null) {
                    this.sampleStrippedBytes.S(bArr, bArr.length);
                }
            }
            if (track.o(z6)) {
                this.blockFlags |= 268435456;
                this.supplementalData.Q(0);
                int iG = (this.sampleStrippedBytes.g() + i10) - this.sampleBytesRead;
                this.scratch.Q(4);
                this.scratch.e()[0] = (byte) ((iG >> 24) & 255);
                this.scratch.e()[1] = (byte) ((iG >> 16) & 255);
                this.scratch.e()[2] = (byte) ((iG >> 8) & 255);
                this.scratch.e()[3] = (byte) (iG & 255);
                trackOutput.a(this.scratch, 4, 2);
                this.sampleBytesWritten += 4;
            }
            this.sampleEncodingHandled = true;
        }
        int iG2 = i10 + this.sampleStrippedBytes.g();
        if (!CODEC_ID_H264.equals(track.codecId) && !CODEC_ID_H265.equals(track.codecId)) {
            if (track.trueHdSampleRechunker != null) {
                Assertions.g(this.sampleStrippedBytes.g() == 0);
                track.trueHdSampleRechunker.d(extractorInput);
            }
            while (true) {
                int i17 = this.sampleBytesRead;
                if (i17 >= iG2) {
                    break;
                }
                int iJ = J(extractorInput, trackOutput, iG2 - i17);
                this.sampleBytesRead += iJ;
                this.sampleBytesWritten += iJ;
            }
        } else {
            byte[] bArrE = this.nalLength.e();
            bArrE[0] = 0;
            bArrE[1] = 0;
            bArrE[2] = 0;
            int i18 = track.nalUnitLengthFieldLength;
            int i19 = 4 - i18;
            while (this.sampleBytesRead < iG2) {
                int i20 = this.sampleCurrentNalBytesRemaining;
                if (i20 == 0) {
                    K(extractorInput, bArrE, i19, i18);
                    this.sampleBytesRead += i18;
                    this.nalLength.U(0);
                    this.sampleCurrentNalBytesRemaining = this.nalLength.L();
                    this.nalStartCode.U(0);
                    trackOutput.b(this.nalStartCode, 4);
                    this.sampleBytesWritten += 4;
                } else {
                    int iJ2 = J(extractorInput, trackOutput, i20);
                    this.sampleBytesRead += iJ2;
                    this.sampleBytesWritten += iJ2;
                    this.sampleCurrentNalBytesRemaining -= iJ2;
                }
            }
        }
        if (CODEC_ID_VORBIS.equals(track.codecId)) {
            this.vorbisNumPageSamples.U(0);
            trackOutput.b(this.vorbisNumPageSamples, 4);
            this.sampleBytesWritten += 4;
        }
        return p();
    }

    private int J(ExtractorInput extractorInput, TrackOutput trackOutput, int i10) throws IOException {
        int iA = this.sampleStrippedBytes.a();
        if (iA <= 0) {
            return trackOutput.e(extractorInput, i10, false);
        }
        int iMin = Math.min(i10, iA);
        trackOutput.b(this.sampleStrippedBytes, iMin);
        return iMin;
    }

    private void K(ExtractorInput extractorInput, byte[] bArr, int i10, int i11) throws IOException {
        int iMin = Math.min(i11, this.sampleStrippedBytes.a());
        extractorInput.readFully(bArr, i10 + iMin, i11 - iMin);
        if (iMin > 0) {
            this.sampleStrippedBytes.l(bArr, i10, iMin);
        }
    }

    private void h(int i10) throws ParserException {
        if (this.cueTimesUs == null || this.cueClusterPositions == null) {
            throw ParserException.a("Element " + i10 + " must be in a Cues", null);
        }
    }

    private void i(int i10) throws ParserException {
        if (this.currentTrack != null) {
            return;
        }
        throw ParserException.a("Element " + i10 + " must be in a TrackEntry", null);
    }

    private void j() {
        Assertions.i(this.extractorOutput);
    }

    private SeekMap l(@Nullable LongArray longArray, @Nullable LongArray longArray2) {
        int i10;
        if (this.segmentContentPosition == -1 || this.durationUs == -9223372036854775807L || longArray == null || longArray.c() == 0 || longArray2 == null || longArray2.c() != longArray.c()) {
            return new SeekMap.Unseekable(this.durationUs);
        }
        int iC = longArray.c();
        int[] iArrCopyOf = new int[iC];
        long[] jArrCopyOf = new long[iC];
        long[] jArrCopyOf2 = new long[iC];
        long[] jArrCopyOf3 = new long[iC];
        int i11 = 0;
        for (int i12 = 0; i12 < iC; i12++) {
            jArrCopyOf3[i12] = longArray.b(i12);
            jArrCopyOf[i12] = this.segmentContentPosition + longArray2.b(i12);
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
            Log.i(TAG, "Discarding last cue point with unexpected duration: " + j6);
            iArrCopyOf = Arrays.copyOf(iArrCopyOf, i10);
            jArrCopyOf = Arrays.copyOf(jArrCopyOf, i10);
            jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i10);
            jArrCopyOf3 = Arrays.copyOf(jArrCopyOf3, i10);
        }
        return new ChunkIndex(iArrCopyOf, jArrCopyOf, jArrCopyOf2, jArrCopyOf3);
    }

    private void m(Track track, long j6, int i10, int i11, int i12) {
        TrueHdSampleRechunker trueHdSampleRechunker = track.trueHdSampleRechunker;
        if (trueHdSampleRechunker != null) {
            trueHdSampleRechunker.c(track.output, j6, i10, i11, i12, track.cryptoData);
        } else {
            if (CODEC_ID_SUBRIP.equals(track.codecId) || CODEC_ID_ASS.equals(track.codecId) || CODEC_ID_VTT.equals(track.codecId)) {
                if (this.blockSampleCount > 1) {
                    Log.i(TAG, "Skipping subtitle sample in laced block.");
                } else {
                    long j10 = this.blockDurationUs;
                    if (j10 == -9223372036854775807L) {
                        Log.i(TAG, "Skipping subtitle sample with no duration.");
                    } else {
                        E(track.codecId, j10, this.subtitleSample.e());
                        for (int iF = this.subtitleSample.f(); iF < this.subtitleSample.g(); iF++) {
                            if (this.subtitleSample.e()[iF] == 0) {
                                this.subtitleSample.T(iF);
                                break;
                            }
                        }
                        TrackOutput trackOutput = track.output;
                        ParsableByteArray parsableByteArray = this.subtitleSample;
                        trackOutput.b(parsableByteArray, parsableByteArray.g());
                        i11 += this.subtitleSample.g();
                    }
                }
            }
            if ((268435456 & i10) != 0) {
                if (this.blockSampleCount > 1) {
                    this.supplementalData.Q(0);
                } else {
                    int iG = this.supplementalData.g();
                    track.output.a(this.supplementalData, iG, 2);
                    i11 += iG;
                }
            }
            track.output.f(j6, i10, i11, i12, track.cryptoData);
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
    protected void G(int i10, String str) throws ParserException {
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
        throw ParserException.a("DocType " + str + " not supported", null);
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean d(ExtractorInput extractorInput) throws IOException {
        return new Sniffer().b(extractorInput);
    }

    /* JADX WARN: Code duplicated, block: B:97:0x0282  */
    @CallSuper
    protected void k(int i10, int i11, ExtractorInput extractorInput) throws IOException {
        Track track;
        int i12;
        Track track2;
        Track track3;
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
                v(this.tracks.get(this.blockTrackNumber), this.blockAdditionalId, extractorInput, i11);
                return;
            }
            if (i10 == 16877) {
                u(s(i10), extractorInput, i11);
                return;
            }
            if (i10 == ID_CONTENT_COMPRESSION_SETTINGS) {
                i(i10);
                byte[] bArr = new byte[i11];
                this.currentTrack.sampleStrippedBytes = bArr;
                extractorInput.readFully(bArr, 0, i11);
                return;
            }
            if (i10 == ID_CONTENT_ENCRYPTION_KEY_ID) {
                byte[] bArr2 = new byte[i11];
                extractorInput.readFully(bArr2, 0, i11);
                s(i10).cryptoData = new TrackOutput.CryptoData(1, bArr2, 0, 0);
                return;
            }
            if (i10 == ID_SEEK_ID) {
                Arrays.fill(this.seekEntryIdBytes.e(), (byte) 0);
                extractorInput.readFully(this.seekEntryIdBytes.e(), 4 - i11, i11);
                this.seekEntryIdBytes.U(0);
                this.seekEntryId = (int) this.seekEntryIdBytes.J();
                return;
            }
            if (i10 == ID_CODEC_PRIVATE) {
                i(i10);
                byte[] bArr3 = new byte[i11];
                this.currentTrack.codecPrivate = bArr3;
                extractorInput.readFully(bArr3, 0, i11);
                return;
            }
            if (i10 != ID_PROJECTION_PRIVATE) {
                throw ParserException.a("Unexpected id: " + i10, null);
            }
            i(i10);
            byte[] bArr4 = new byte[i11];
            this.currentTrack.projectionData = bArr4;
            extractorInput.readFully(bArr4, 0, i11);
            return;
        }
        if (this.blockState == 0) {
            this.blockTrackNumber = (int) this.varintReader.d(extractorInput, false, true, 8);
            this.blockTrackNumberLength = this.varintReader.b();
            this.blockDurationUs = -9223372036854775807L;
            this.blockState = 1;
            this.scratch.Q(0);
        }
        Track track4 = this.tracks.get(this.blockTrackNumber);
        if (track4 == null) {
            extractorInput.skipFully(i11 - this.blockTrackNumberLength);
            this.blockState = 0;
            return;
        }
        track4.f();
        if (this.blockState == 1) {
            B(extractorInput, 3);
            int i19 = (this.scratch.e()[2] & 6) >> 1;
            byte b7 = 255;
            if (i19 == 0) {
                this.blockSampleCount = 1;
                int[] iArrO = o(this.blockSampleSizes, 1);
                this.blockSampleSizes = iArrO;
                iArrO[0] = (i11 - this.blockTrackNumberLength) - 3;
            } else {
                int i20 = 4;
                B(extractorInput, 4);
                int i21 = (this.scratch.e()[3] & 255) + 1;
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
                                B(extractorInput, i14);
                                int i26 = this.scratch.e()[i20] & 255;
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
                            throw ParserException.a("Unexpected lacing value: " + i19, null);
                        }
                        int i27 = 0;
                        int i28 = 0;
                        while (true) {
                            int i29 = this.blockSampleCount;
                            if (i27 >= i29 - 1) {
                                track2 = track4;
                                this.blockSampleSizes[i29 - 1] = ((i11 - this.blockTrackNumberLength) - i20) - i28;
                                break;
                            }
                            this.blockSampleSizes[i27] = i17;
                            int i30 = i20 + 1;
                            B(extractorInput, i30);
                            if (this.scratch.e()[i20] == 0) {
                                throw ParserException.a("No valid varint length mask found", null);
                            }
                            int i31 = i17;
                            while (true) {
                                if (i31 >= 8) {
                                    track3 = track4;
                                    j6 = 0;
                                    break;
                                }
                                int i32 = i18 << (7 - i31);
                                if ((this.scratch.e()[i20] & i32) != 0) {
                                    i30 += i31;
                                    B(extractorInput, i30);
                                    track3 = track4;
                                    j6 = (~i32) & this.scratch.e()[i20] & b7;
                                    int i33 = i20 + 1;
                                    while (i33 < i30) {
                                        j6 = (j6 << 8) | ((long) (this.scratch.e()[i33] & b7));
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
                                throw ParserException.a("EBML lacing sample size out of range.", null);
                            }
                            int i34 = (int) j6;
                            int[] iArr2 = this.blockSampleSizes;
                            if (i27 != 0) {
                                i34 += iArr2[i27 - 1];
                            }
                            iArr2[i27] = i34;
                            i28 += i34;
                            i27++;
                            track4 = track3;
                            i17 = 0;
                            i18 = 1;
                            b7 = 255;
                        }
                    }
                    this.blockTimeUs = this.clusterTimecodeUs + D((this.scratch.e()[0] << 8) | (this.scratch.e()[1] & 255));
                    track = track2;
                    if (track.type != 2 || (i10 == ID_SIMPLE_BLOCK && (this.scratch.e()[2] & 128) == 128)) {
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
            track2 = track4;
            this.blockTimeUs = this.clusterTimecodeUs + D((this.scratch.e()[0] << 8) | (this.scratch.e()[1] & 255));
            track = track2;
            if (track.type != 2) {
                i16 = 1;
            } else {
                i16 = 1;
            }
            this.blockFlags = i16;
            this.blockState = 2;
            this.blockSampleIndex = 0;
            i12 = ID_SIMPLE_BLOCK;
        } else {
            track = track4;
            i12 = ID_SIMPLE_BLOCK;
        }
        if (i10 == i12) {
            while (true) {
                int i35 = this.blockSampleIndex;
                if (i35 >= this.blockSampleCount) {
                    this.blockState = 0;
                    return;
                }
                m(track, ((long) ((this.blockSampleIndex * track.defaultSampleDurationNs) / 1000)) + this.blockTimeUs, this.blockFlags, H(extractorInput, track, this.blockSampleSizes[i35], false), 0);
                this.blockSampleIndex++;
            }
        } else {
            while (true) {
                int i36 = this.blockSampleIndex;
                if (i36 >= this.blockSampleCount) {
                    return;
                }
                int[] iArr3 = this.blockSampleSizes;
                iArr3[i36] = H(extractorInput, track, iArr3[i36], true);
                this.blockSampleIndex++;
            }
        }
    }

    @CallSuper
    protected void q(int i10, double d) throws ParserException {
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
    protected void w(int i10, long j6) throws ParserException {
        if (i10 == ID_CONTENT_ENCODING_ORDER) {
            if (j6 == 0) {
                return;
            }
            throw ParserException.a("ContentEncodingOrder " + j6 + " not supported", null);
        }
        if (i10 == ID_CONTENT_ENCODING_SCOPE) {
            if (j6 == 1) {
                return;
            }
            throw ParserException.a("ContentEncodingScope " + j6 + " not supported", null);
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
                throw ParserException.a("ContentCompAlgo " + j6 + " not supported", null);
            case ID_DOC_TYPE_READ_VERSION /* 17029 */:
                if (j6 < 1 || j6 > 2) {
                    throw ParserException.a("DocTypeReadVersion " + j6 + " not supported", null);
                }
                return;
            case ID_EBML_READ_VERSION /* 17143 */:
                if (j6 == 1) {
                    return;
                }
                throw ParserException.a("EBMLReadVersion " + j6 + " not supported", null);
            case ID_CONTENT_ENCRYPTION_ALGORITHM /* 18401 */:
                if (j6 == 5) {
                    return;
                }
                throw ParserException.a("ContentEncAlgo " + j6 + " not supported", null);
            case ID_CONTENT_ENCRYPTION_AES_SETTINGS_CIPHER_MODE /* 18408 */:
                if (j6 == 1) {
                    return;
                }
                throw ParserException.a("AESSettingsCipherMode " + j6 + " not supported", null);
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
                        int i14 = ColorInfo.i((int) j6);
                        if (i14 != -1) {
                            this.currentTrack.colorTransfer = i14;
                            return;
                        }
                        return;
                    case ID_COLOUR_PRIMARIES /* 21947 */:
                        i(i10);
                        this.currentTrack.hasColorInfo = true;
                        int iH = ColorInfo.h((int) j6);
                        if (iH != -1) {
                            this.currentTrack.colorSpace = iH;
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

    MatroskaExtractor(EbmlReader ebmlReader, int i10) {
        this.segmentContentPosition = -1L;
        this.timecodeScale = -9223372036854775807L;
        this.durationTimecode = -9223372036854775807L;
        this.durationUs = -9223372036854775807L;
        this.cuesContentPosition = -1L;
        this.seekPositionAfterBuildingCues = -1L;
        this.clusterTimecodeUs = -9223372036854775807L;
        this.reader = ebmlReader;
        ebmlReader.b(new InnerEbmlProcessor());
        this.seekForCuesEnabled = (i10 & 1) == 0;
        this.varintReader = new VarintReader();
        this.tracks = new SparseArray<>();
        this.scratch = new ParsableByteArray(4);
        this.vorbisNumPageSamples = new ParsableByteArray(ByteBuffer.allocate(4).putInt(-1).array());
        this.seekEntryIdBytes = new ParsableByteArray(4);
        this.nalStartCode = new ParsableByteArray(NalUnitUtil.NAL_START_CODE);
        this.nalLength = new ParsableByteArray(4);
        this.sampleStrippedBytes = new ParsableByteArray();
        this.subtitleSample = new ParsableByteArray();
        this.encryptionInitializationVector = new ParsableByteArray(8);
        this.encryptionSubsampleData = new ParsableByteArray();
        this.supplementalData = new ParsableByteArray();
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
                    b7 = c.VT;
                }
                break;
            case -356037306:
                if (str.equals(CODEC_ID_DTS_LOSSLESS)) {
                    b7 = c.FF;
                }
                break;
            case 62923557:
                if (str.equals(CODEC_ID_AAC)) {
                    b7 = c.CR;
                }
                break;
            case 62923603:
                if (str.equals(CODEC_ID_AC3)) {
                    b7 = c.SO;
                }
                break;
            case 62927045:
                if (str.equals(CODEC_ID_DTS)) {
                    b7 = c.SI;
                }
                break;
            case 82318131:
                if (str.equals(CODEC_ID_AV1)) {
                    b7 = c.DLE;
                }
                break;
            case 82338133:
                if (str.equals(CODEC_ID_VP8)) {
                    b7 = 17;
                }
                break;
            case 82338134:
                if (str.equals(CODEC_ID_VP9)) {
                    b7 = c.DC2;
                }
                break;
            case 99146302:
                if (str.equals(CODEC_ID_PGS)) {
                    b7 = 19;
                }
                break;
            case 444813526:
                if (str.equals(CODEC_ID_THEORA)) {
                    b7 = c.DC4;
                }
                break;
            case 542569478:
                if (str.equals(CODEC_ID_DTS_EXPRESS)) {
                    b7 = c.NAK;
                }
                break;
            case 635596514:
                if (str.equals(CODEC_ID_PCM_FLOAT)) {
                    b7 = c.SYN;
                }
                break;
            case 725948237:
                if (str.equals(CODEC_ID_PCM_INT_BIG)) {
                    b7 = c.ETB;
                }
                break;
            case 725957860:
                if (str.equals(CODEC_ID_PCM_INT_LIT)) {
                    b7 = c.CAN;
                }
                break;
            case 738597099:
                if (str.equals(CODEC_ID_ASS)) {
                    b7 = c.EM;
                }
                break;
            case 855502857:
                if (str.equals(CODEC_ID_H265)) {
                    b7 = c.SUB;
                }
                break;
            case 1045209816:
                if (str.equals(CODEC_ID_VTT)) {
                    b7 = c.ESC;
                }
                break;
            case 1422270023:
                if (str.equals(CODEC_ID_SUBRIP)) {
                    b7 = c.FS;
                }
                break;
            case 1809237540:
                if (str.equals(CODEC_ID_MPEG2)) {
                    b7 = c.GS;
                }
                break;
            case 1950749482:
                if (str.equals(CODEC_ID_E_AC3)) {
                    b7 = c.RS;
                }
                break;
            case 1950789798:
                if (str.equals(CODEC_ID_FLAC)) {
                    b7 = c.US;
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
    protected void F(int i10, long j6, long j10) throws ParserException {
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
                                                this.extractorOutput.d(new SeekMap.Unseekable(this.durationUs));
                                                this.sentSeekMap = true;
                                                return;
                                            }
                                        }
                                        return;
                                    }
                                    this.cueTimesUs = new LongArray();
                                    this.cueClusterPositions = new LongArray();
                                    return;
                                }
                                long j11 = this.segmentContentPosition;
                                if (j11 != -1 && j11 != j6) {
                                    throw ParserException.a("Multiple Segment elements not supported", null);
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
            this.currentTrack = new Track();
            return;
        }
        this.blockHasReferenceBlock = false;
        this.blockGroupDiscardPaddingNs = 0L;
    }

    @CallSuper
    protected void n(int i10) throws ParserException {
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
                                            this.extractorOutput.d(l(this.cueTimesUs, this.cueClusterPositions));
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
                                throw ParserException.a("No valid tracks were found", null);
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
                        Track track = this.currentTrack;
                        if (track.hasContentEncryption && track.sampleStrippedBytes != null) {
                            throw ParserException.a("Combining encryption and compression is not supported", null);
                        }
                        return;
                    }
                    i(i10);
                    Track track2 = this.currentTrack;
                    if (track2.hasContentEncryption) {
                        if (track2.cryptoData != null) {
                            track2.drmInitData = new DrmInitData(new DrmInitData.SchemeData(C.UUID_NIL, "video/webm", this.currentTrack.cryptoData.encryptionKey));
                            return;
                        }
                        throw ParserException.a("Encrypted Track found but ContentEncKeyID was not found", null);
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
                throw ParserException.a("Mandatory element SeekID or SeekPosition not found", null);
            }
            Track track3 = (Track) Assertions.i(this.currentTrack);
            String str = track3.codecId;
            if (str != null) {
                if (x(str)) {
                    track3.i(this.extractorOutput, track3.number);
                    this.tracks.put(track3.number, track3);
                }
                this.currentTrack = null;
                return;
            }
            throw ParserException.a("CodecId is missing in TrackEntry element", null);
        }
        if (this.blockState != 2) {
            return;
        }
        Track track4 = this.tracks.get(this.blockTrackNumber);
        track4.f();
        if (this.blockGroupDiscardPaddingNs > 0 && CODEC_ID_OPUS.equals(track4.codecId)) {
            this.supplementalData.R(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.blockGroupDiscardPaddingNs).array());
        }
        int i12 = 0;
        for (int i13 = 0; i13 < this.blockSampleCount; i13++) {
            i12 += this.blockSampleSizes[i13];
        }
        int i14 = 0;
        while (i14 < this.blockSampleCount) {
            long j11 = this.blockTimeUs + ((long) ((track4.defaultSampleDurationNs * i14) / 1000));
            int i15 = this.blockFlags;
            if (i14 == 0 && !this.blockHasReferenceBlock) {
                i15 |= 1;
            }
            int i16 = this.blockSampleSizes[i14];
            int i17 = i12 - i16;
            m(track4, j11, i15, i16, i17);
            i14++;
            i12 = i17;
        }
        this.blockState = 0;
    }

    protected Track s(int i10) throws ParserException {
        i(i10);
        return this.currentTrack;
    }

    protected void u(Track track, ExtractorInput extractorInput, int i10) throws IOException {
        if (track.blockAddIdType != 1685485123 && track.blockAddIdType != 1685480259) {
            extractorInput.skipFully(i10);
            return;
        }
        byte[] bArr = new byte[i10];
        track.dolbyVisionConfigBytes = bArr;
        extractorInput.readFully(bArr, 0, i10);
    }

    private static byte[] r(long j6, String str, long j10) {
        boolean z6;
        if (j6 != -9223372036854775807L) {
            z6 = true;
        } else {
            z6 = false;
        }
        Assertions.a(z6);
        int i10 = (int) (j6 / 3600000000L);
        long j11 = j6 - (((long) i10) * 3600000000L);
        int i11 = (int) (j11 / 60000000);
        long j12 = j11 - (((long) i11) * 60000000);
        int i12 = (int) (j12 / 1000000);
        return Util.q0(String.format(Locale.US, str, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf((int) ((j12 - (((long) i12) * 1000000)) / j10))));
    }

    @Override // androidx.media3.extractor.Extractor
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
