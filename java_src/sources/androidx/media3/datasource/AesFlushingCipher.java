package androidx.media3.datasource;

import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public final class AesFlushingCipher {
    private final int blockSize;
    private final Cipher cipher;
    private final byte[] flushedBlock;
    private int pendingXorBytes;
    private final byte[] zerosBlock;

    public AesFlushingCipher(int i10, byte[] bArr, @Nullable String str, long j6) {
        this(i10, bArr, a(str), j6);
    }

    public void d(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        int i13 = i10;
        do {
            int i14 = this.pendingXorBytes;
            if (i14 <= 0) {
                int iC = c(bArr, i13, i11, bArr2, i12);
                if (i11 == iC) {
                    return;
                }
                int i15 = i11 - iC;
                int i16 = 0;
                Assertions.g(i15 < this.blockSize);
                int i17 = i12 + iC;
                int i18 = this.blockSize - i15;
                this.pendingXorBytes = i18;
                Assertions.g(c(this.zerosBlock, 0, i18, this.flushedBlock, 0) == this.blockSize);
                while (i16 < i15) {
                    bArr2[i17] = this.flushedBlock[i16];
                    i16++;
                    i17++;
                }
                return;
            }
            bArr2[i12] = (byte) (bArr[i13] ^ this.flushedBlock[this.blockSize - i14]);
            i12++;
            i13++;
            this.pendingXorBytes = i14 - 1;
            i11--;
        } while (i11 != 0);
    }

    public void e(byte[] bArr, int i10, int i11) {
        d(bArr, i10, i11, bArr, i10);
    }

    public AesFlushingCipher(int i10, byte[] bArr, long j6, long j10) {
        try {
            Cipher cipher = Cipher.getInstance("AES/CTR/NoPadding");
            this.cipher = cipher;
            int blockSize = cipher.getBlockSize();
            this.blockSize = blockSize;
            this.zerosBlock = new byte[blockSize];
            this.flushedBlock = new byte[blockSize];
            long j11 = j10 / ((long) blockSize);
            int i11 = (int) (j10 % ((long) blockSize));
            cipher.init(i10, new SecretKeySpec(bArr, Util.e1(cipher.getAlgorithm(), com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING)[0]), new IvParameterSpec(b(j6, j11)));
            if (i11 != 0) {
                e(new byte[i11], 0, i11);
            }
        } catch (InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | NoSuchPaddingException e) {
            throw new RuntimeException(e);
        }
    }

    private static long a(@Nullable String str) {
        long j6 = 0;
        if (str == null) {
            return 0L;
        }
        for (int i10 = 0; i10 < str.length(); i10++) {
            long jCharAt = j6 ^ ((long) str.charAt(i10));
            j6 = jCharAt + (jCharAt << 1) + (jCharAt << 4) + (jCharAt << 5) + (jCharAt << 7) + (jCharAt << 8) + (jCharAt << 40);
        }
        return j6;
    }

    private byte[] b(long j6, long j10) {
        return ByteBuffer.allocate(16).putLong(j6).putLong(j10).array();
    }

    private int c(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        try {
            return this.cipher.update(bArr, i10, i11, bArr2, i12);
        } catch (ShortBufferException e) {
            throw new RuntimeException(e);
        }
    }
}
