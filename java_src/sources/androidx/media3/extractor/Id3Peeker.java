package androidx.media3.extractor;

import androidx.annotation.Nullable;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.metadata.id3.Id3Decoder;
import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public final class Id3Peeker {
    private final ParsableByteArray scratch = new ParsableByteArray(10);

    @Nullable
    public Metadata a(ExtractorInput extractorInput, @Nullable Id3Decoder.FramePredicate framePredicate) throws IOException {
        Metadata metadataE = null;
        int i10 = 0;
        while (true) {
            try {
                extractorInput.peekFully(this.scratch.e(), 0, 10);
                this.scratch.U(0);
                if (this.scratch.K() != 4801587) {
                    break;
                }
                this.scratch.V(3);
                int iG = this.scratch.G();
                int i11 = iG + 10;
                if (metadataE == null) {
                    byte[] bArr = new byte[i11];
                    System.arraycopy(this.scratch.e(), 0, bArr, 0, 10);
                    extractorInput.peekFully(bArr, 10, iG);
                    metadataE = new Id3Decoder(framePredicate).e(bArr, i11);
                } else {
                    extractorInput.advancePeekPosition(iG);
                }
                i10 += i11;
            } catch (EOFException unused) {
            }
        }
        extractorInput.resetPeekPosition();
        extractorInput.advancePeekPosition(i10);
        return metadataE;
    }
}
