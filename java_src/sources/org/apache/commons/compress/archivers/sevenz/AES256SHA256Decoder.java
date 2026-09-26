package org.apache.commons.compress.archivers.sevenz;

import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import l9.p;
import org.apache.commons.compress.PasswordRequiredException;

/* JADX INFO: loaded from: classes8.dex */
class AES256SHA256Decoder extends CoderBase {
    AES256SHA256Decoder() {
        super(new Class[0]);
    }

    @Override // org.apache.commons.compress.archivers.sevenz.CoderBase
    InputStream decode(final String str, final InputStream inputStream, long j6, final Coder coder, final byte[] bArr) throws IOException {
        return new InputStream() { // from class: org.apache.commons.compress.archivers.sevenz.AES256SHA256Decoder.1
            private boolean isInitialized = false;
            private CipherInputStream cipherInputStream = null;

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.InputStream
            public int read() throws IOException {
                return init().read();
            }

            private CipherInputStream init() throws IOException {
                byte[] bArrDigest;
                if (this.isInitialized) {
                    return this.cipherInputStream;
                }
                byte[] bArr2 = coder.properties;
                int i10 = bArr2[0];
                int i11 = i10 & 255;
                int i12 = i10 & 63;
                int i13 = bArr2[1];
                int i14 = ((i11 >> 6) & 1) + (i13 & 15);
                int i15 = ((i11 >> 7) & 1) + ((i13 & 255) >> 4);
                int i16 = i15 + 2;
                if (i16 + i14 > bArr2.length) {
                    throw new IOException("Salt size + IV size too long in " + str);
                }
                byte[] bArr3 = new byte[i15];
                System.arraycopy(bArr2, 2, bArr3, 0, i15);
                byte[] bArr4 = new byte[16];
                System.arraycopy(coder.properties, i16, bArr4, 0, i14);
                if (bArr == null) {
                    throw new PasswordRequiredException(str);
                }
                if (i12 == 63) {
                    bArrDigest = new byte[32];
                    System.arraycopy(bArr3, 0, bArrDigest, 0, i15);
                    byte[] bArr5 = bArr;
                    System.arraycopy(bArr5, 0, bArrDigest, i15, Math.min(bArr5.length, 32 - i15));
                } else {
                    try {
                        MessageDigest messageDigest = MessageDigest.getInstance(p.SHA_256);
                        byte[] bArr6 = new byte[8];
                        for (long j10 = 0; j10 < (1 << i12); j10++) {
                            messageDigest.update(bArr3);
                            messageDigest.update(bArr);
                            messageDigest.update(bArr6);
                            for (int i17 = 0; i17 < 8; i17++) {
                                byte b7 = (byte) (bArr6[i17] + 1);
                                bArr6[i17] = b7;
                                if (b7 != 0) {
                                    break;
                                }
                            }
                        }
                        bArrDigest = messageDigest.digest();
                    } catch (NoSuchAlgorithmException e) {
                        throw new IOException("SHA-256 is unsupported by your Java implementation", e);
                    }
                }
                SecretKeySpec secretKeySpec = new SecretKeySpec(bArrDigest, "AES");
                try {
                    Cipher cipher = Cipher.getInstance("AES/CBC/NoPadding");
                    cipher.init(2, secretKeySpec, new IvParameterSpec(bArr4));
                    CipherInputStream cipherInputStream = new CipherInputStream(inputStream, cipher);
                    this.cipherInputStream = cipherInputStream;
                    this.isInitialized = true;
                    return cipherInputStream;
                } catch (GeneralSecurityException e2) {
                    throw new IOException("Decryption error (do you have the JCE Unlimited Strength Jurisdiction Policy Files installed?)", e2);
                }
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr2, int i10, int i11) throws IOException {
                return init().read(bArr2, i10, i11);
            }
        };
    }
}
