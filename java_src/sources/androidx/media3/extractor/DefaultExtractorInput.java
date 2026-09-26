package androidx.media3.extractor;

import androidx.media3.common.DataReader;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public final class DefaultExtractorInput implements ExtractorInput {
    private static final int PEEK_MAX_FREE_SPACE = 524288;
    private static final int PEEK_MIN_FREE_SPACE_AFTER_RESIZE = 65536;
    private static final int SCRATCH_SPACE_SIZE = 4096;
    private final DataReader dataReader;
    private int peekBufferLength;
    private int peekBufferPosition;
    private long position;
    private final long streamLength;
    private byte[] peekBuffer = new byte[65536];
    private final byte[] scratchSpace = new byte[4096];

    private void d(int i10) {
        if (i10 != -1) {
            this.position += (long) i10;
        }
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public boolean advancePeekPosition(int i10, boolean z6) throws IOException {
        e(i10);
        int iG = this.peekBufferLength - this.peekBufferPosition;
        while (iG < i10) {
            iG = g(this.peekBuffer, this.peekBufferPosition, i10, iG, z6);
            if (iG == -1) {
                return false;
            }
            this.peekBufferLength = this.peekBufferPosition + iG;
        }
        this.peekBufferPosition += i10;
        return true;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public long getLength() {
        return this.streamLength;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public long getPeekPosition() {
        return this.position + ((long) this.peekBufferPosition);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public long getPosition() {
        return this.position;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public boolean peekFully(byte[] bArr, int i10, int i11, boolean z6) throws IOException {
        if (!advancePeekPosition(i11, z6)) {
            return false;
        }
        System.arraycopy(this.peekBuffer, this.peekBufferPosition - i11, bArr, i10, i11);
        return true;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public boolean readFully(byte[] bArr, int i10, int i11, boolean z6) throws IOException {
        int iF = f(bArr, i10, i11);
        while (iF < i11 && iF != -1) {
            iF = g(bArr, i10, i11, iF, z6);
        }
        d(iF);
        return iF != -1;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public void resetPeekPosition() {
        this.peekBufferPosition = 0;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public void skipFully(int i10) throws IOException {
        i(i10, false);
    }

    static {
        MediaLibraryInfo.a("media3.extractor");
    }

    private void e(int i10) {
        int i11 = this.peekBufferPosition + i10;
        byte[] bArr = this.peekBuffer;
        if (i11 > bArr.length) {
            this.peekBuffer = Arrays.copyOf(this.peekBuffer, Util.q(bArr.length * 2, 65536 + i11, i11 + 524288));
        }
    }

    private int f(byte[] bArr, int i10, int i11) {
        int i12 = this.peekBufferLength;
        if (i12 == 0) {
            return 0;
        }
        int iMin = Math.min(i12, i11);
        System.arraycopy(this.peekBuffer, 0, bArr, i10, iMin);
        j(iMin);
        return iMin;
    }

    private int h(int i10) {
        int iMin = Math.min(this.peekBufferLength, i10);
        j(iMin);
        return iMin;
    }

    private void j(int i10) {
        int i11 = this.peekBufferLength - i10;
        this.peekBufferLength = i11;
        this.peekBufferPosition = 0;
        byte[] bArr = this.peekBuffer;
        byte[] bArr2 = i11 < bArr.length - 524288 ? new byte[65536 + i11] : bArr;
        System.arraycopy(bArr, i10, bArr2, 0, i11);
        this.peekBuffer = bArr2;
    }

    public DefaultExtractorInput(DataReader dataReader, long j6, long j10) {
        this.dataReader = dataReader;
        this.position = j6;
        this.streamLength = j10;
    }

    private int g(byte[] bArr, int i10, int i11, int i12, boolean z6) throws IOException {
        if (!Thread.interrupted()) {
            int i13 = this.dataReader.read(bArr, i10 + i12, i11 - i12);
            if (i13 == -1) {
                if (i12 == 0 && z6) {
                    return -1;
                }
                throw new EOFException();
            }
            return i12 + i13;
        }
        throw new InterruptedIOException();
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public int a(byte[] bArr, int i10, int i11) throws IOException {
        int iMin;
        e(i11);
        int i12 = this.peekBufferLength;
        int i13 = this.peekBufferPosition;
        int i14 = i12 - i13;
        if (i14 == 0) {
            iMin = g(this.peekBuffer, i13, i11, 0, true);
            if (iMin == -1) {
                return -1;
            }
            this.peekBufferLength += iMin;
        } else {
            iMin = Math.min(i11, i14);
        }
        System.arraycopy(this.peekBuffer, this.peekBufferPosition, bArr, i10, iMin);
        this.peekBufferPosition += iMin;
        return iMin;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public void advancePeekPosition(int i10) throws IOException {
        advancePeekPosition(i10, false);
    }

    public boolean i(int i10, boolean z6) throws IOException {
        int iH = h(i10);
        while (iH < i10 && iH != -1) {
            iH = g(this.scratchSpace, -iH, Math.min(i10, this.scratchSpace.length + iH), iH, z6);
        }
        d(iH);
        if (iH != -1) {
            return true;
        }
        return false;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public void peekFully(byte[] bArr, int i10, int i11) throws IOException {
        peekFully(bArr, i10, i11, false);
    }

    @Override // androidx.media3.extractor.ExtractorInput, androidx.media3.common.DataReader
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int iF = f(bArr, i10, i11);
        if (iF == 0) {
            iF = g(bArr, i10, i11, 0, true);
        }
        d(iF);
        return iF;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public int skip(int i10) throws IOException {
        int iH = h(i10);
        if (iH == 0) {
            byte[] bArr = this.scratchSpace;
            iH = g(bArr, 0, Math.min(i10, bArr.length), 0, true);
        }
        d(iH);
        return iH;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public void readFully(byte[] bArr, int i10, int i11) throws IOException {
        readFully(bArr, i10, i11, false);
    }
}
