package com.google.android.exoplayer2.extractor;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes7.dex */
public interface e0 {
    public static final int SAMPLE_DATA_PART_ENCRYPTION = 1;
    public static final int SAMPLE_DATA_PART_MAIN = 0;
    public static final int SAMPLE_DATA_PART_SUPPLEMENTAL = 2;

    public static final class a {
        public final int clearBlocks;
        public final int cryptoMode;
        public final int encryptedBlocks;
        public final byte[] encryptionKey;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.cryptoMode == aVar.cryptoMode && this.encryptedBlocks == aVar.encryptedBlocks && this.clearBlocks == aVar.clearBlocks && Arrays.equals(this.encryptionKey, aVar.encryptionKey);
        }

        public int hashCode() {
            return (((((this.cryptoMode * 31) + Arrays.hashCode(this.encryptionKey)) * 31) + this.encryptedBlocks) * 31) + this.clearBlocks;
        }

        public a(int i10, byte[] bArr, int i11, int i12) {
            this.cryptoMode = i10;
            this.encryptionKey = bArr;
            this.encryptedBlocks = i11;
            this.clearBlocks = i12;
        }
    }

    int a(com.google.android.exoplayer2.upstream.h hVar, int i10, boolean z6, int i11) throws IOException;

    int b(com.google.android.exoplayer2.upstream.h hVar, int i10, boolean z6) throws IOException;

    void c(com.google.android.exoplayer2.util.c0 c0Var, int i10);

    void d(a2 a2Var);

    void e(long j6, int i10, int i11, int i12, @Nullable a aVar);

    void f(com.google.android.exoplayer2.util.c0 c0Var, int i10, int i11);
}
