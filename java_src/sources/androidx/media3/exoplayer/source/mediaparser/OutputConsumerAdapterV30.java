package androidx.media3.exoplayer.source.mediaparser;

import android.annotation.SuppressLint;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.media.MediaParser;
import android.media.MediaParser$InputReader;
import android.media.MediaParser$OutputConsumer;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.DataReader;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.MediaFormatUtil;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.ChunkIndex;
import androidx.media3.extractor.DummyExtractorOutput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;
import androidx.media3.extractor.TrackOutput;
import com.google.common.collect.a0;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.IntBuffer;
import java.nio.LongBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes8.dex */
@RequiresApi
@SuppressLint({"Override"})
@UnstableApi
public final class OutputConsumerAdapterV30 implements MediaParser$OutputConsumer {
    private static final String MEDIA_FORMAT_KEY_CHUNK_INDEX_DURATIONS = "chunk-index-long-us-durations";
    private static final String MEDIA_FORMAT_KEY_CHUNK_INDEX_OFFSETS = "chunk-index-long-offsets";
    private static final String MEDIA_FORMAT_KEY_CHUNK_INDEX_SIZES = "chunk-index-int-sizes";
    private static final String MEDIA_FORMAT_KEY_CHUNK_INDEX_TIMES = "chunk-index-long-us-times";
    private static final String MEDIA_FORMAT_KEY_TRACK_TYPE = "track-type-string";
    private static final String TAG = "OConsumerAdapterV30";

    @Nullable
    private String containerMimeType;

    @Nullable
    private MediaParser.SeekMap dummySeekMap;
    private final boolean expectDummySeekMap;
    private ExtractorOutput extractorOutput;

    @Nullable
    private ChunkIndex lastChunkIndex;
    private final ArrayList<TrackOutput.CryptoData> lastOutputCryptoDatas;
    private final ArrayList<MediaCodec.CryptoInfo> lastReceivedCryptoInfos;

    @Nullable
    private MediaParser.SeekMap lastSeekMap;
    private List<Format> muxedCaptionFormats;
    private int primaryTrackIndex;

    @Nullable
    private final Format primaryTrackManifestFormat;
    private final int primaryTrackType;
    private long sampleTimestampUpperLimitFilterUs;
    private final DataReaderAdapter scratchDataReaderAdapter;
    private boolean seekingDisabled;

    @Nullable
    private TimestampAdjuster timestampAdjuster;
    private final ArrayList<Format> trackFormats;
    private final ArrayList<TrackOutput> trackOutputs;
    private boolean tracksEnded;
    private boolean tracksFoundCalled;
    private static final Pair<MediaParser.SeekPoint, MediaParser.SeekPoint> SEEK_POINT_PAIR_START = Pair.create(MediaParser.SeekPoint.START, MediaParser.SeekPoint.START);
    private static final Pattern REGEX_CRYPTO_INFO_PATTERN = Pattern.compile("pattern \\(encrypt: (\\d+), skip: (\\d+)\\)");

    private static final class DataReaderAdapter implements DataReader {

        @Nullable
        public MediaParser$InputReader input;

        private DataReaderAdapter() {
        }

        @Override // androidx.media3.common.DataReader
        public int read(byte[] bArr, int i10, int i11) throws IOException {
            return n.a(Util.j(this.input)).read(bArr, i10, i11);
        }
    }

    private static final class SeekMapAdapter implements SeekMap {
        private final MediaParser.SeekMap adaptedSeekMap;

        private static SeekPoint b(MediaParser.SeekPoint seekPoint) {
            return new SeekPoint(seekPoint.timeMicros, seekPoint.position);
        }

        @Override // androidx.media3.extractor.SeekMap
        public long getDurationUs() {
            long durationMicros = this.adaptedSeekMap.getDurationMicros();
            if (durationMicros != -2147483648L) {
                return durationMicros;
            }
            return -9223372036854775807L;
        }

        @Override // androidx.media3.extractor.SeekMap
        public SeekMap.SeekPoints getSeekPoints(long j6) {
            Pair seekPoints = this.adaptedSeekMap.getSeekPoints(j6);
            Object obj = seekPoints.first;
            return obj == seekPoints.second ? new SeekMap.SeekPoints(b(androidx.media3.exoplayer.source.j.a(obj))) : new SeekMap.SeekPoints(b(androidx.media3.exoplayer.source.j.a(obj)), b(androidx.media3.exoplayer.source.j.a(seekPoints.second)));
        }

        @Override // androidx.media3.extractor.SeekMap
        public boolean isSeekable() {
            return this.adaptedSeekMap.isSeekable();
        }

        public SeekMapAdapter(MediaParser.SeekMap seekMap) {
            this.adaptedSeekMap = seekMap;
        }
    }

    public OutputConsumerAdapterV30() {
        this(null, -2, false);
    }

    private static int e(MediaFormat mediaFormat, String str, int i10) {
        if (mediaFormat.getInteger(str, 0) != 0) {
            return i10;
        }
        return 0;
    }

    private static int u(@Nullable String str) {
        if (str == null) {
            return -1;
        }
        switch (str) {
            case "metadata":
                return 5;
            case "unknown":
                return -1;
            case "text":
                return 3;
            case "audio":
                return 1;
            case "video":
                return 2;
            default:
                return MimeTypes.k(str);
        }
    }

    public void a() {
        this.seekingDisabled = true;
    }

    @Nullable
    public ChunkIndex c() {
        return this.lastChunkIndex;
    }

    @Nullable
    public MediaParser.SeekMap d() {
        return this.dummySeekMap;
    }

    public void m(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
    }

    public void n(List<Format> list) {
        this.muxedCaptionFormats = list;
    }

    public void o(long j6) {
        this.sampleTimestampUpperLimitFilterUs = j6;
    }

    public void onTrackCountFound(int i10) {
        this.tracksFoundCalled = true;
        k();
    }

    public void q(TimestampAdjuster timestampAdjuster) {
        this.timestampAdjuster = timestampAdjuster;
    }

    public OutputConsumerAdapterV30(@Nullable Format format, int i10, boolean z6) {
        this.expectDummySeekMap = z6;
        this.primaryTrackManifestFormat = format;
        this.primaryTrackType = i10;
        this.trackOutputs = new ArrayList<>();
        this.trackFormats = new ArrayList<>();
        this.lastReceivedCryptoInfos = new ArrayList<>();
        this.lastOutputCryptoDatas = new ArrayList<>();
        this.scratchDataReaderAdapter = new DataReaderAdapter();
        this.extractorOutput = new DummyExtractorOutput();
        this.sampleTimestampUpperLimitFilterUs = -9223372036854775807L;
        this.muxedCaptionFormats = a0.x();
    }

    private void b(int i10) {
        for (int size = this.trackOutputs.size(); size <= i10; size++) {
            this.trackOutputs.add(null);
            this.trackFormats.add(null);
            this.lastReceivedCryptoInfos.add(null);
            this.lastOutputCryptoDatas.add(null);
        }
    }

    private static List<byte[]> f(MediaFormat mediaFormat) {
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        while (true) {
            StringBuilder sb = new StringBuilder();
            sb.append("csd-");
            int i11 = i10 + 1;
            sb.append(i10);
            ByteBuffer byteBuffer = mediaFormat.getByteBuffer(sb.toString());
            if (byteBuffer == null) {
                return arrayList;
            }
            arrayList.add(MediaFormatUtil.a(byteBuffer));
            i10 = i11;
        }
    }

    private static int j(MediaFormat mediaFormat) {
        return e(mediaFormat, "is-forced-subtitle", 2) | e(mediaFormat, "is-autoselect", 4) | e(mediaFormat, "is-default", 1);
    }

    private void k() {
        if (!this.tracksFoundCalled || this.tracksEnded) {
            return;
        }
        int size = this.trackOutputs.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.trackOutputs.get(i10) == null) {
                return;
            }
        }
        this.extractorOutput.endTracks();
        this.tracksEnded = true;
    }

    private boolean l(MediaFormat mediaFormat) {
        ByteBuffer byteBuffer = mediaFormat.getByteBuffer(MEDIA_FORMAT_KEY_CHUNK_INDEX_SIZES);
        if (byteBuffer == null) {
            return false;
        }
        IntBuffer intBufferAsIntBuffer = byteBuffer.asIntBuffer();
        LongBuffer longBufferAsLongBuffer = ((ByteBuffer) Assertions.e(mediaFormat.getByteBuffer(MEDIA_FORMAT_KEY_CHUNK_INDEX_OFFSETS))).asLongBuffer();
        LongBuffer longBufferAsLongBuffer2 = ((ByteBuffer) Assertions.e(mediaFormat.getByteBuffer(MEDIA_FORMAT_KEY_CHUNK_INDEX_DURATIONS))).asLongBuffer();
        LongBuffer longBufferAsLongBuffer3 = ((ByteBuffer) Assertions.e(mediaFormat.getByteBuffer(MEDIA_FORMAT_KEY_CHUNK_INDEX_TIMES))).asLongBuffer();
        int[] iArr = new int[intBufferAsIntBuffer.remaining()];
        long[] jArr = new long[longBufferAsLongBuffer.remaining()];
        long[] jArr2 = new long[longBufferAsLongBuffer2.remaining()];
        long[] jArr3 = new long[longBufferAsLongBuffer3.remaining()];
        intBufferAsIntBuffer.get(iArr);
        longBufferAsLongBuffer.get(jArr);
        longBufferAsLongBuffer2.get(jArr2);
        longBufferAsLongBuffer3.get(jArr3);
        ChunkIndex chunkIndex = new ChunkIndex(iArr, jArr, jArr2, jArr3);
        this.lastChunkIndex = chunkIndex;
        this.extractorOutput.d(chunkIndex);
        return true;
    }

    @Nullable
    private TrackOutput.CryptoData r(int i10, @Nullable MediaCodec.CryptoInfo cryptoInfo) {
        int i11;
        int i12;
        if (cryptoInfo == null) {
            return null;
        }
        if (this.lastReceivedCryptoInfos.get(i10) == cryptoInfo) {
            return (TrackOutput.CryptoData) Assertions.e(this.lastOutputCryptoDatas.get(i10));
        }
        try {
            Matcher matcher = REGEX_CRYPTO_INFO_PATTERN.matcher(cryptoInfo.toString());
            matcher.find();
            i11 = Integer.parseInt((String) Util.j(matcher.group(1)));
            i12 = Integer.parseInt((String) Util.j(matcher.group(2)));
        } catch (RuntimeException e) {
            Log.d(TAG, "Unexpected error while parsing CryptoInfo: " + cryptoInfo, e);
            i11 = 0;
            i12 = 0;
        }
        TrackOutput.CryptoData cryptoData = new TrackOutput.CryptoData(cryptoInfo.mode, cryptoInfo.key, i11, i12);
        this.lastReceivedCryptoInfos.set(i10, cryptoInfo);
        this.lastOutputCryptoDatas.set(i10, cryptoData);
        return cryptoData;
    }

    @Nullable
    private static DrmInitData s(@Nullable String str, @Nullable android.media.DrmInitData drmInitData) {
        if (drmInitData == null) {
            return null;
        }
        int schemeInitDataCount = drmInitData.getSchemeInitDataCount();
        DrmInitData.SchemeData[] schemeDataArr = new DrmInitData.SchemeData[schemeInitDataCount];
        for (int i10 = 0; i10 < schemeInitDataCount; i10++) {
            android.media.DrmInitData.SchemeInitData schemeInitDataAt = drmInitData.getSchemeInitDataAt(i10);
            schemeDataArr[i10] = new DrmInitData.SchemeData(schemeInitDataAt.uuid, schemeInitDataAt.mimeType, schemeInitDataAt.data);
        }
        return new DrmInitData(str, schemeDataArr);
    }

    @Nullable
    public Format[] h() {
        if (!this.tracksFoundCalled) {
            return null;
        }
        Format[] formatArr = new Format[this.trackFormats.size()];
        for (int i10 = 0; i10 < this.trackFormats.size(); i10++) {
            formatArr[i10] = (Format) Assertions.e(this.trackFormats.get(i10));
        }
        return formatArr;
    }

    public Pair<MediaParser.SeekPoint, MediaParser.SeekPoint> i(long j6) {
        MediaParser.SeekMap seekMap = this.lastSeekMap;
        return seekMap != null ? seekMap.getSeekPoints(j6) : SEEK_POINT_PAIR_START;
    }

    public void onSampleCompleted(int i10, long j6, int i11, int i12, int i13, @Nullable MediaCodec.CryptoInfo cryptoInfo) {
        long j10 = this.sampleTimestampUpperLimitFilterUs;
        if (j10 == -9223372036854775807L || j6 < j10) {
            TimestampAdjuster timestampAdjuster = this.timestampAdjuster;
            if (timestampAdjuster != null) {
                j6 = timestampAdjuster.a(j6);
            }
            ((TrackOutput) Assertions.e(this.trackOutputs.get(i10))).f(j6, i11, i12, i13, r(i10, cryptoInfo));
        }
    }

    public void onSeekMapFound(MediaParser.SeekMap seekMap) {
        SeekMap seekMapAdapter;
        if (this.expectDummySeekMap && this.dummySeekMap == null) {
            this.dummySeekMap = seekMap;
            return;
        }
        this.lastSeekMap = seekMap;
        long durationMicros = seekMap.getDurationMicros();
        ExtractorOutput extractorOutput = this.extractorOutput;
        if (this.seekingDisabled) {
            if (durationMicros == -2147483648L) {
                durationMicros = -9223372036854775807L;
            }
            seekMapAdapter = new SeekMap.Unseekable(durationMicros);
        } else {
            seekMapAdapter = new SeekMapAdapter(seekMap);
        }
        extractorOutput.d(seekMapAdapter);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static String g(String str) {
        str.hashCode();
        byte b7 = -1;
        switch (str.hashCode()) {
            case -2063506020:
                if (str.equals("android.media.mediaparser.Mp4Parser")) {
                    b7 = 0;
                }
                break;
            case -1870824006:
                if (str.equals("android.media.mediaparser.OggParser")) {
                    b7 = 1;
                }
                break;
            case -1566427438:
                if (str.equals("android.media.mediaparser.TsParser")) {
                    b7 = 2;
                }
                break;
            case -900207883:
                if (str.equals("android.media.mediaparser.AdtsParser")) {
                    b7 = 3;
                }
                break;
            case -589864617:
                if (str.equals("android.media.mediaparser.WavParser")) {
                    b7 = 4;
                }
                break;
            case 52265814:
                if (str.equals("android.media.mediaparser.PsParser")) {
                    b7 = 5;
                }
                break;
            case 116768877:
                if (str.equals("android.media.mediaparser.FragmentedMp4Parser")) {
                    b7 = 6;
                }
                break;
            case 376876796:
                if (str.equals("android.media.mediaparser.Ac3Parser")) {
                    b7 = 7;
                }
                break;
            case 703268017:
                if (str.equals("android.media.mediaparser.AmrParser")) {
                    b7 = 8;
                }
                break;
            case 768643067:
                if (str.equals("android.media.mediaparser.FlacParser")) {
                    b7 = 9;
                }
                break;
            case 965962719:
                if (str.equals("android.media.mediaparser.MatroskaParser")) {
                    b7 = 10;
                }
                break;
            case 1264380477:
                if (str.equals("android.media.mediaparser.Ac4Parser")) {
                    b7 = com.google.common.base.c.VT;
                }
                break;
            case 1343957595:
                if (str.equals("android.media.mediaparser.Mp3Parser")) {
                    b7 = com.google.common.base.c.FF;
                }
                break;
            case 2063134683:
                if (str.equals("android.media.mediaparser.FlvParser")) {
                    b7 = com.google.common.base.c.CR;
                }
                break;
        }
        switch (b7) {
            case 0:
            case 6:
                return "video/mp4";
            case 1:
                return "audio/ogg";
            case 2:
                return "video/mp2t";
            case 3:
                return "audio/mp4a-latm";
            case 4:
                return "audio/raw";
            case 5:
                return "video/mp2p";
            case 7:
                return "audio/ac3";
            case 8:
                return "audio/amr";
            case 9:
                return "audio/flac";
            case 10:
                return "video/webm";
            case 11:
                return "audio/ac4";
            case 12:
                return "audio/mpeg";
            case 13:
                return "video/x-flv";
            default:
                throw new IllegalArgumentException("Illegal parser name: " + str);
        }
    }

    private Format t(MediaParser.TrackData trackData) {
        MediaFormat mediaFormat = trackData.mediaFormat;
        String string = mediaFormat.getString("mime");
        int integer = mediaFormat.getInteger("caption-service-number", -1);
        Format.Builder builderH = new Format.Builder().O(s(mediaFormat.getString("crypto-mode-fourcc"), trackData.drmInitData)).M(this.containerMimeType).b0(mediaFormat.getInteger("bitrate", -1)).J(mediaFormat.getInteger("channel-count", -1)).L(MediaFormatUtil.b(mediaFormat)).g0(string).K(mediaFormat.getString("codecs-string")).R(mediaFormat.getFloat("frame-rate", -1.0f)).n0(mediaFormat.getInteger("width", -1)).S(mediaFormat.getInteger("height", -1)).V(f(mediaFormat)).X(mediaFormat.getString("language")).Y(mediaFormat.getInteger("max-input-size", -1)).a0(mediaFormat.getInteger("exo-pcm-encoding", -1)).f0(mediaFormat.getInteger("rotation-degrees", 0)).h0(mediaFormat.getInteger("sample-rate", -1)).i0(j(mediaFormat)).P(mediaFormat.getInteger("encoder-delay", 0)).Q(mediaFormat.getInteger("encoder-padding", 0)).c0(mediaFormat.getFloat("pixel-width-height-ratio-float", 1.0f)).k0(mediaFormat.getLong("subsample-offset-us-long", Long.MAX_VALUE)).H(integer);
        for (int i10 = 0; i10 < this.muxedCaptionFormats.size(); i10++) {
            Format format = this.muxedCaptionFormats.get(i10);
            if (Util.c(format.sampleMimeType, string) && format.accessibilityChannel == integer) {
                builderH.X(format.language).e0(format.roleFlags).i0(format.selectionFlags).W(format.label).Z(format.metadata);
                break;
            }
        }
        return builderH.G();
    }

    public void onSampleDataFound(int i10, MediaParser$InputReader mediaParser$InputReader) throws IOException {
        b(i10);
        this.scratchDataReaderAdapter.input = mediaParser$InputReader;
        TrackOutput trackOutputTrack = this.trackOutputs.get(i10);
        if (trackOutputTrack == null) {
            trackOutputTrack = this.extractorOutput.track(i10, -1);
            this.trackOutputs.set(i10, trackOutputTrack);
        }
        trackOutputTrack.e(this.scratchDataReaderAdapter, (int) mediaParser$InputReader.getLength(), true);
    }

    public void onTrackDataFound(int i10, MediaParser.TrackData trackData) {
        Format formatK;
        String string;
        if (l(trackData.mediaFormat)) {
            return;
        }
        b(i10);
        TrackOutput trackOutput = this.trackOutputs.get(i10);
        if (trackOutput == null) {
            String string2 = trackData.mediaFormat.getString(MEDIA_FORMAT_KEY_TRACK_TYPE);
            if (string2 != null) {
                string = string2;
            } else {
                string = trackData.mediaFormat.getString("mime");
            }
            int iU = u(string);
            if (iU == this.primaryTrackType) {
                this.primaryTrackIndex = i10;
            }
            TrackOutput trackOutputTrack = this.extractorOutput.track(i10, iU);
            this.trackOutputs.set(i10, trackOutputTrack);
            if (string2 != null) {
                return;
            } else {
                trackOutput = trackOutputTrack;
            }
        }
        Format formatT = t(trackData);
        Format format = this.primaryTrackManifestFormat;
        if (format != null && i10 == this.primaryTrackIndex) {
            formatK = formatT.k(format);
        } else {
            formatK = formatT;
        }
        trackOutput.d(formatK);
        this.trackFormats.set(i10, formatT);
        k();
    }

    public void p(String str) {
        this.containerMimeType = g(str);
    }
}
