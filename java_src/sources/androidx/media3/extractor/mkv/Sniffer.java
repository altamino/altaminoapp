package androidx.media3.extractor.mkv;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.ExtractorInput;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
final class Sniffer {
    private static final int ID_EBML = 440786851;
    private static final int SEARCH_LENGTH = 1024;
    private int peekLength;
    private final ParsableByteArray scratch = new ParsableByteArray(8);

    private long a(ExtractorInput extractorInput) throws IOException {
        int i10 = 0;
        extractorInput.peekFully(this.scratch.e(), 0, 1);
        int i11 = this.scratch.e()[0] & 255;
        if (i11 == 0) {
            return Long.MIN_VALUE;
        }
        int i12 = 128;
        int i13 = 0;
        while ((i11 & i12) == 0) {
            i12 >>= 1;
            i13++;
        }
        int i14 = i11 & (~i12);
        extractorInput.peekFully(this.scratch.e(), 1, i13);
        while (i10 < i13) {
            i10++;
            i14 = (this.scratch.e()[i10] & 255) + (i14 << 8);
        }
        this.peekLength += i13 + 1;
        return i14;
    }

    public boolean b(ExtractorInput extractorInput) throws IOException {
        long length = extractorInput.getLength();
        long j6 = 1024;
        if (length != -1 && length <= 1024) {
            j6 = length;
        }
        int i10 = (int) j6;
        extractorInput.peekFully(this.scratch.e(), 0, 4);
        long J = this.scratch.J();
        this.peekLength = 4;
        while (J != 440786851) {
            int i11 = this.peekLength + 1;
            this.peekLength = i11;
            if (i11 == i10) {
                return false;
            }
            extractorInput.peekFully(this.scratch.e(), 0, 1);
            J = ((J << 8) & (-256)) | ((long) (this.scratch.e()[0] & 255));
        }
        long jA = a(extractorInput);
        long j10 = this.peekLength;
        if (jA == Long.MIN_VALUE) {
            return false;
        }
        if (length != -1 && j10 + jA >= length) {
            return false;
        }
        while (true) {
            int i12 = this.peekLength;
            long j11 = j10 + jA;
            if (i12 < j11) {
                if (a(extractorInput) == Long.MIN_VALUE) {
                    return false;
                }
                long jA2 = a(extractorInput);
                if (jA2 < 0 || jA2 > 2147483647L) {
                    return false;
                }
                if (jA2 != 0) {
                    int i13 = (int) jA2;
                    extractorInput.advancePeekPosition(i13);
                    this.peekLength += i13;
                }
            } else {
                if (i12 != j11) {
                    return false;
                }
                return true;
            }
        }
    }
}
