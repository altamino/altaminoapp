package androidx.media3.extractor;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.metadata.flac.PictureFrame;
import com.narvii.chat.video.RtcChatManager;
import com.narvii.media.MediaRecordManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public final class FlacStreamMetadata {
    public static final int NOT_IN_LOOKUP_TABLE = -1;
    private static final String TAG = "FlacStreamMetadata";
    public final int bitsPerSample;
    public final int bitsPerSampleLookupKey;
    public final int channels;
    public final int maxBlockSizeSamples;
    public final int maxFrameSize;

    @Nullable
    private final Metadata metadata;
    public final int minBlockSizeSamples;
    public final int minFrameSize;
    public final int sampleRate;
    public final int sampleRateLookupKey;

    @Nullable
    public final SeekTable seekTable;
    public final long totalSamples;

    public FlacStreamMetadata(byte[] bArr, int i10) {
        ParsableBitArray parsableBitArray = new ParsableBitArray(bArr);
        parsableBitArray.p(i10 * 8);
        this.minBlockSizeSamples = parsableBitArray.h(16);
        this.maxBlockSizeSamples = parsableBitArray.h(16);
        this.minFrameSize = parsableBitArray.h(24);
        this.maxFrameSize = parsableBitArray.h(24);
        int iH = parsableBitArray.h(20);
        this.sampleRate = iH;
        this.sampleRateLookupKey = k(iH);
        this.channels = parsableBitArray.h(3) + 1;
        int iH2 = parsableBitArray.h(5) + 1;
        this.bitsPerSample = iH2;
        this.bitsPerSampleLookupKey = f(iH2);
        this.totalSamples = parsableBitArray.j(36);
        this.seekTable = null;
        this.metadata = null;
    }

    private static int f(int i10) {
        if (i10 == 8) {
            return 1;
        }
        if (i10 == 12) {
            return 2;
        }
        if (i10 == 16) {
            return 4;
        }
        if (i10 != 20) {
            return i10 != 24 ? -1 : 6;
        }
        return 5;
    }

    private static int k(int i10) {
        switch (i10) {
            case 8000:
                return 4;
            case 16000:
                return 5;
            case MediaRecordManager.SAMPLING_RATE /* 22050 */:
                return 6;
            case 24000:
                return 7;
            case 32000:
                return 8;
            case RtcChatManager.SAMPLE_RATE /* 44100 */:
                return 9;
            case 48000:
                return 10;
            case 88200:
                return 1;
            case 96000:
                return 11;
            case 176400:
                return 2;
            case 192000:
                return 3;
            default:
                return -1;
        }
    }

    public Format h(byte[] bArr, @Nullable Metadata metadata) {
        bArr[4] = -128;
        int i10 = this.maxFrameSize;
        if (i10 <= 0) {
            i10 = -1;
        }
        return new Format.Builder().g0("audio/flac").Y(i10).J(this.channels).h0(this.sampleRate).V(Collections.singletonList(bArr)).Z(i(metadata)).G();
    }

    public static class SeekTable {
        public final long[] pointOffsets;
        public final long[] pointSampleNumbers;

        public SeekTable(long[] jArr, long[] jArr2) {
            this.pointSampleNumbers = jArr;
            this.pointOffsets = jArr2;
        }
    }

    public FlacStreamMetadata b(List<PictureFrame> list) {
        return new FlacStreamMetadata(this.minBlockSizeSamples, this.maxBlockSizeSamples, this.minFrameSize, this.maxFrameSize, this.sampleRate, this.channels, this.bitsPerSample, this.totalSamples, this.seekTable, i(new Metadata(list)));
    }

    public FlacStreamMetadata c(@Nullable SeekTable seekTable) {
        return new FlacStreamMetadata(this.minBlockSizeSamples, this.maxBlockSizeSamples, this.minFrameSize, this.maxFrameSize, this.sampleRate, this.channels, this.bitsPerSample, this.totalSamples, seekTable, this.metadata);
    }

    public long e() {
        long j6;
        long j10;
        int i10 = this.maxFrameSize;
        if (i10 > 0) {
            j6 = (((long) i10) + ((long) this.minFrameSize)) / 2;
            j10 = 1;
        } else {
            int i11 = this.minBlockSizeSamples;
            j6 = ((((i11 != this.maxBlockSizeSamples || i11 <= 0) ? PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM : i11) * ((long) this.channels)) * ((long) this.bitsPerSample)) / 8;
            j10 = 64;
        }
        return j6 + j10;
    }

    public long g() {
        long j6 = this.totalSamples;
        if (j6 == 0) {
            return -9223372036854775807L;
        }
        return (j6 * 1000000) / ((long) this.sampleRate);
    }

    @Nullable
    public Metadata i(@Nullable Metadata metadata) {
        Metadata metadata2 = this.metadata;
        return metadata2 == null ? metadata : metadata2.c(metadata);
    }

    public long j(long j6) {
        return Util.r((j6 * ((long) this.sampleRate)) / 1000000, 0L, this.totalSamples - 1);
    }

    @Nullable
    private static Metadata a(List<String> list, List<PictureFrame> list2) {
        Metadata metadataC = VorbisUtil.c(list);
        if (metadataC == null && list2.isEmpty()) {
            return null;
        }
        return new Metadata(list2).c(metadataC);
    }

    public FlacStreamMetadata d(List<String> list) {
        return new FlacStreamMetadata(this.minBlockSizeSamples, this.maxBlockSizeSamples, this.minFrameSize, this.maxFrameSize, this.sampleRate, this.channels, this.bitsPerSample, this.totalSamples, this.seekTable, i(VorbisUtil.c(list)));
    }

    public FlacStreamMetadata(int i10, int i11, int i12, int i13, int i14, int i15, int i16, long j6, ArrayList<String> arrayList, ArrayList<PictureFrame> arrayList2) {
        this(i10, i11, i12, i13, i14, i15, i16, j6, (SeekTable) null, a(arrayList, arrayList2));
    }

    private FlacStreamMetadata(int i10, int i11, int i12, int i13, int i14, int i15, int i16, long j6, @Nullable SeekTable seekTable, @Nullable Metadata metadata) {
        this.minBlockSizeSamples = i10;
        this.maxBlockSizeSamples = i11;
        this.minFrameSize = i12;
        this.maxFrameSize = i13;
        this.sampleRate = i14;
        this.sampleRateLookupKey = k(i14);
        this.channels = i15;
        this.bitsPerSample = i16;
        this.bitsPerSampleLookupKey = f(i16);
        this.totalSamples = j6;
        this.seekTable = seekTable;
        this.metadata = metadata;
    }
}
