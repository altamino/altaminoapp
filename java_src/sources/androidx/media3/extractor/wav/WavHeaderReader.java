package androidx.media3.extractor.wav;

import android.util.Pair;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.ExtractorInput;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
final class WavHeaderReader {
    private static final String TAG = "WavHeaderReader";

    private static final class ChunkHeader {
        public static final int SIZE_IN_BYTES = 8;
        public final int id;
        public final long size;

        private ChunkHeader(int i10, long j6) {
            this.id = i10;
            this.size = j6;
        }

        public static ChunkHeader a(ExtractorInput extractorInput, ParsableByteArray parsableByteArray) throws IOException {
            extractorInput.peekFully(parsableByteArray.e(), 0, 8);
            parsableByteArray.U(0);
            return new ChunkHeader(parsableByteArray.q(), parsableByteArray.x());
        }
    }

    public static boolean a(ExtractorInput extractorInput) throws IOException {
        ParsableByteArray parsableByteArray = new ParsableByteArray(8);
        int i10 = ChunkHeader.a(extractorInput, parsableByteArray).id;
        if (i10 != 1380533830 && i10 != 1380333108) {
            return false;
        }
        extractorInput.peekFully(parsableByteArray.e(), 0, 4);
        parsableByteArray.U(0);
        int iQ = parsableByteArray.q();
        if (iQ == 1463899717) {
            return true;
        }
        Log.c(TAG, "Unsupported form type: " + iQ);
        return false;
    }

    public static WavFormat b(ExtractorInput extractorInput) throws IOException {
        byte[] bArr;
        ParsableByteArray parsableByteArray = new ParsableByteArray(16);
        ChunkHeader chunkHeaderD = d(1718449184, extractorInput, parsableByteArray);
        Assertions.g(chunkHeaderD.size >= 16);
        extractorInput.peekFully(parsableByteArray.e(), 0, 16);
        parsableByteArray.U(0);
        int iZ = parsableByteArray.z();
        int iZ2 = parsableByteArray.z();
        int iY = parsableByteArray.y();
        int iY2 = parsableByteArray.y();
        int iZ3 = parsableByteArray.z();
        int iZ4 = parsableByteArray.z();
        int i10 = ((int) chunkHeaderD.size) - 16;
        if (i10 > 0) {
            byte[] bArr2 = new byte[i10];
            extractorInput.peekFully(bArr2, 0, i10);
            bArr = bArr2;
        } else {
            bArr = Util.EMPTY_BYTE_ARRAY;
        }
        extractorInput.skipFully((int) (extractorInput.getPeekPosition() - extractorInput.getPosition()));
        return new WavFormat(iZ, iZ2, iY, iY2, iZ3, iZ4, bArr);
    }

    public static long c(ExtractorInput extractorInput) throws IOException {
        ParsableByteArray parsableByteArray = new ParsableByteArray(8);
        ChunkHeader chunkHeaderA = ChunkHeader.a(extractorInput, parsableByteArray);
        if (chunkHeaderA.id != 1685272116) {
            extractorInput.resetPeekPosition();
            return -1L;
        }
        extractorInput.advancePeekPosition(8);
        parsableByteArray.U(0);
        extractorInput.peekFully(parsableByteArray.e(), 0, 8);
        long jV = parsableByteArray.v();
        extractorInput.skipFully(((int) chunkHeaderA.size) + 8);
        return jV;
    }

    private WavHeaderReader() {
    }

    private static ChunkHeader d(int i10, ExtractorInput extractorInput, ParsableByteArray parsableByteArray) throws IOException {
        ChunkHeader chunkHeaderA = ChunkHeader.a(extractorInput, parsableByteArray);
        while (chunkHeaderA.id != i10) {
            Log.i(TAG, "Ignoring unknown WAV chunk: " + chunkHeaderA.id);
            long j6 = chunkHeaderA.size + 8;
            if (j6 <= 2147483647L) {
                extractorInput.skipFully((int) j6);
                chunkHeaderA = ChunkHeader.a(extractorInput, parsableByteArray);
            } else {
                throw ParserException.d("Chunk is too large (~2GB+) to skip; id: " + chunkHeaderA.id);
            }
        }
        return chunkHeaderA;
    }

    public static Pair<Long, Long> e(ExtractorInput extractorInput) throws IOException {
        extractorInput.resetPeekPosition();
        ChunkHeader chunkHeaderD = d(1684108385, extractorInput, new ParsableByteArray(8));
        extractorInput.skipFully(8);
        return Pair.create(Long.valueOf(extractorInput.getPosition()), Long.valueOf(chunkHeaderD.size));
    }
}
