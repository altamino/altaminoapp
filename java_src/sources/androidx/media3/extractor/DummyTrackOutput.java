package androidx.media3.extractor;

import androidx.annotation.Nullable;
import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: loaded from: classes11.dex */
@UnstableApi
public final class DummyTrackOutput implements TrackOutput {
    private final byte[] readBuffer = new byte[4096];

    @Override // androidx.media3.extractor.TrackOutput
    public /* synthetic */ void b(ParsableByteArray parsableByteArray, int i10) {
        f.b(this, parsableByteArray, i10);
    }

    @Override // androidx.media3.extractor.TrackOutput
    public void d(Format format) {
    }

    @Override // androidx.media3.extractor.TrackOutput
    public /* synthetic */ int e(DataReader dataReader, int i10, boolean z6) {
        return f.a(this, dataReader, i10, z6);
    }

    @Override // androidx.media3.extractor.TrackOutput
    public void f(long j6, int i10, int i11, int i12, @Nullable TrackOutput.CryptoData cryptoData) {
    }

    @Override // androidx.media3.extractor.TrackOutput
    public int c(DataReader dataReader, int i10, boolean z6, int i11) throws IOException {
        int i12 = dataReader.read(this.readBuffer, 0, Math.min(this.readBuffer.length, i10));
        if (i12 != -1) {
            return i12;
        }
        if (z6) {
            return -1;
        }
        throw new EOFException();
    }

    @Override // androidx.media3.extractor.TrackOutput
    public void a(ParsableByteArray parsableByteArray, int i10, int i11) {
        parsableByteArray.V(i10);
    }
}
