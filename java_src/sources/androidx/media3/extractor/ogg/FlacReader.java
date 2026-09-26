package androidx.media3.extractor.ogg;

import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.FlacFrameReader;
import androidx.media3.extractor.FlacMetadataReader;
import androidx.media3.extractor.FlacSeekTableSeekMap;
import androidx.media3.extractor.FlacStreamMetadata;
import androidx.media3.extractor.SeekMap;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
final class FlacReader extends StreamReader {
    private static final byte AUDIO_PACKET_TYPE = -1;
    private static final int FRAME_HEADER_SAMPLE_NUMBER_OFFSET = 4;

    @Nullable
    private FlacOggSeeker flacOggSeeker;

    @Nullable
    private FlacStreamMetadata streamMetadata;

    private static final class FlacOggSeeker implements OggSeeker {
        private long firstFrameOffset = -1;
        private long pendingSeekGranule = -1;
        private FlacStreamMetadata.SeekTable seekTable;
        private FlacStreamMetadata streamMetadata;

        @Override // androidx.media3.extractor.ogg.OggSeeker
        public long a(ExtractorInput extractorInput) {
            long j6 = this.pendingSeekGranule;
            if (j6 < 0) {
                return -1L;
            }
            long j10 = -(j6 + 2);
            this.pendingSeekGranule = -1L;
            return j10;
        }

        public void b(long j6) {
            this.firstFrameOffset = j6;
        }

        @Override // androidx.media3.extractor.ogg.OggSeeker
        public SeekMap createSeekMap() {
            Assertions.g(this.firstFrameOffset != -1);
            return new FlacSeekTableSeekMap(this.streamMetadata, this.firstFrameOffset);
        }

        @Override // androidx.media3.extractor.ogg.OggSeeker
        public void startSeek(long j6) {
            long[] jArr = this.seekTable.pointSampleNumbers;
            this.pendingSeekGranule = jArr[Util.i(jArr, j6, true, true)];
        }

        public FlacOggSeeker(FlacStreamMetadata flacStreamMetadata, FlacStreamMetadata.SeekTable seekTable) {
            this.streamMetadata = flacStreamMetadata;
            this.seekTable = seekTable;
        }
    }

    private static boolean o(byte[] bArr) {
        return bArr[0] == -1;
    }

    FlacReader() {
    }

    private int n(ParsableByteArray parsableByteArray) {
        int i10 = (parsableByteArray.e()[2] & 255) >> 4;
        if (i10 == 6 || i10 == 7) {
            parsableByteArray.V(4);
            parsableByteArray.O();
        }
        int iJ = FlacFrameReader.j(parsableByteArray, i10);
        parsableByteArray.U(0);
        return iJ;
    }

    public static boolean p(ParsableByteArray parsableByteArray) {
        if (parsableByteArray.a() >= 5 && parsableByteArray.H() == 127 && parsableByteArray.J() == 1179402563) {
            return true;
        }
        return false;
    }

    @Override // androidx.media3.extractor.ogg.StreamReader
    protected long f(ParsableByteArray parsableByteArray) {
        if (!o(parsableByteArray.e())) {
            return -1L;
        }
        return n(parsableByteArray);
    }

    @Override // androidx.media3.extractor.ogg.StreamReader
    protected boolean h(ParsableByteArray parsableByteArray, long j6, StreamReader.SetupData setupData) {
        byte[] bArrE = parsableByteArray.e();
        FlacStreamMetadata flacStreamMetadata = this.streamMetadata;
        if (flacStreamMetadata == null) {
            FlacStreamMetadata flacStreamMetadata2 = new FlacStreamMetadata(bArrE, 17);
            this.streamMetadata = flacStreamMetadata2;
            setupData.format = flacStreamMetadata2.h(Arrays.copyOfRange(bArrE, 9, parsableByteArray.g()), null);
            return true;
        }
        if ((bArrE[0] & 127) == 3) {
            FlacStreamMetadata.SeekTable seekTableF = FlacMetadataReader.f(parsableByteArray);
            FlacStreamMetadata flacStreamMetadataC = flacStreamMetadata.c(seekTableF);
            this.streamMetadata = flacStreamMetadataC;
            this.flacOggSeeker = new FlacOggSeeker(flacStreamMetadataC, seekTableF);
            return true;
        }
        if (!o(bArrE)) {
            return true;
        }
        FlacOggSeeker flacOggSeeker = this.flacOggSeeker;
        if (flacOggSeeker != null) {
            flacOggSeeker.b(j6);
            setupData.oggSeeker = this.flacOggSeeker;
        }
        Assertions.e(setupData.format);
        return false;
    }

    @Override // androidx.media3.extractor.ogg.StreamReader
    protected void l(boolean z6) {
        super.l(z6);
        if (z6) {
            this.streamMetadata = null;
            this.flacOggSeeker = null;
        }
    }
}
