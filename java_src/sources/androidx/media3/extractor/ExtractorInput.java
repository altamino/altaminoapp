package androidx.media3.extractor;

import androidx.media3.common.DataReader;
import androidx.media3.common.util.UnstableApi;
import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public interface ExtractorInput extends DataReader {
    int a(byte[] bArr, int i10, int i11) throws IOException;

    void advancePeekPosition(int i10) throws IOException;

    boolean advancePeekPosition(int i10, boolean z6) throws IOException;

    long getLength();

    long getPeekPosition();

    long getPosition();

    void peekFully(byte[] bArr, int i10, int i11) throws IOException;

    boolean peekFully(byte[] bArr, int i10, int i11, boolean z6) throws IOException;

    @Override // androidx.media3.common.DataReader
    int read(byte[] bArr, int i10, int i11) throws IOException;

    void readFully(byte[] bArr, int i10, int i11) throws IOException;

    boolean readFully(byte[] bArr, int i10, int i11, boolean z6) throws IOException;

    void resetPeekPosition();

    int skip(int i10) throws IOException;

    void skipFully(int i10) throws IOException;
}
