package com.google.android.gms.internal.ads;

import com.tonyodev.fetch.FetchService;
import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes2.dex */
public final class zzdrp {
    private final ByteBuffer zzaxl;
    private zzdni zzhnm;
    private int zzhnn;

    private zzdrp(byte[] bArr, int i, int i2) {
        this(ByteBuffer.wrap(bArr, i, i2));
    }

    public static int zzfw(long j) {
        if (((-128) & j) == 0) {
            return 1;
        }
        if (((-16384) & j) == 0) {
            return 2;
        }
        if (((-2097152) & j) == 0) {
            return 3;
        }
        if (((-268435456) & j) == 0) {
            return 4;
        }
        if (((-34359738368L) & j) == 0) {
            return 5;
        }
        if (((-4398046511104L) & j) == 0) {
            return 6;
        }
        if (((-562949953421312L) & j) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & j) == 0) {
            return 8;
        }
        return (j & Long.MIN_VALUE) == 0 ? 9 : 10;
    }

    private static int zzgl(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    private zzdrp(ByteBuffer byteBuffer) {
        this.zzaxl = byteBuffer;
        this.zzaxl.order(ByteOrder.LITTLE_ENDIAN);
    }

    public static zzdrp zzaf(byte[] bArr) {
        return zzp(bArr, 0, bArr.length);
    }

    public static zzdrp zzp(byte[] bArr, int i, int i2) {
        return new zzdrp(bArr, 0, i2);
    }

    public final void zzx(int i, int i2) throws IOException {
        zzw(i, 0);
        if (i2 >= 0) {
            zzhe(i2);
        } else {
            zzfv(i2);
        }
    }

    public final void zzi(int i, boolean z) throws IOException {
        zzw(3, 0);
        byte b = z ? (byte) 1 : (byte) 0;
        if (!this.zzaxl.hasRemaining()) {
            throw new zzdrq(this.zzaxl.position(), this.zzaxl.limit());
        }
        this.zzaxl.put(b);
    }

    public final void zzf(int i, String str) throws IOException {
        zzw(i, 2);
        try {
            int iZzgl = zzgl(str.length());
            if (iZzgl == zzgl(str.length() * 3)) {
                int iPosition = this.zzaxl.position();
                if (this.zzaxl.remaining() < iZzgl) {
                    throw new zzdrq(iPosition + iZzgl, this.zzaxl.limit());
                }
                this.zzaxl.position(iPosition + iZzgl);
                zzd(str, this.zzaxl);
                int iPosition2 = this.zzaxl.position();
                this.zzaxl.position(iPosition);
                zzhe((iPosition2 - iPosition) - iZzgl);
                this.zzaxl.position(iPosition2);
                return;
            }
            zzhe(zza(str));
            zzd(str, this.zzaxl);
        } catch (BufferOverflowException e) {
            zzdrq zzdrqVar = new zzdrq(this.zzaxl.position(), this.zzaxl.limit());
            zzdrqVar.initCause(e);
            throw zzdrqVar;
        }
    }

    public final void zza(int i, zzdrw zzdrwVar) throws IOException {
        zzw(i, 2);
        if (zzdrwVar.zzhnx < 0) {
            zzdrwVar.zzaxj();
        }
        zzhe(zzdrwVar.zzhnx);
        zzdrwVar.zza(this);
    }

    public final void zze(int i, zzdpk zzdpkVar) throws IOException {
        if (this.zzhnm == null) {
            this.zzhnm = zzdni.zzm(this.zzaxl);
            this.zzhnn = this.zzaxl.position();
        } else if (this.zzhnn != this.zzaxl.position()) {
            this.zzhnm.write(this.zzaxl.array(), this.zzhnn, this.zzaxl.position() - this.zzhnn);
            this.zzhnn = this.zzaxl.position();
        }
        zzdni zzdniVar = this.zzhnm;
        zzdniVar.zza(i, zzdpkVar);
        zzdniVar.flush();
        this.zzhnn = this.zzaxl.position();
    }

    public final void zza(int i, byte[] bArr) throws IOException {
        zzw(i, 2);
        zzhe(bArr.length);
        int length = bArr.length;
        if (this.zzaxl.remaining() >= length) {
            this.zzaxl.put(bArr, 0, length);
            return;
        }
        throw new zzdrq(this.zzaxl.position(), this.zzaxl.limit());
    }

    private static int zza(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        int i2 = 0;
        while (i2 < length && charSequence.charAt(i2) < 128) {
            i2++;
        }
        int i3 = length;
        while (true) {
            if (i2 >= length) {
                break;
            }
            char cCharAt = charSequence.charAt(i2);
            if (cCharAt < 2048) {
                i3 += (127 - cCharAt) >>> 31;
                i2++;
            } else {
                int length2 = charSequence.length();
                while (i2 < length2) {
                    char cCharAt2 = charSequence.charAt(i2);
                    if (cCharAt2 < 2048) {
                        i += (127 - cCharAt2) >>> 31;
                    } else {
                        i += 2;
                        if (55296 <= cCharAt2 && cCharAt2 <= 57343) {
                            if (Character.codePointAt(charSequence, i2) < 65536) {
                                StringBuilder sb = new StringBuilder(39);
                                sb.append("Unpaired surrogate at index ");
                                sb.append(i2);
                                throw new IllegalArgumentException(sb.toString());
                            }
                            i2++;
                        }
                    }
                    i2++;
                }
                i3 += i;
            }
        }
        if (i3 >= length) {
            return i3;
        }
        long j = i3 + IjkMediaMeta.AV_CH_WIDE_RIGHT;
        StringBuilder sb2 = new StringBuilder(54);
        sb2.append("UTF-8 length does not fit in int: ");
        sb2.append(j);
        throw new IllegalArgumentException(sb2.toString());
    }

    private static void zzd(CharSequence charSequence, ByteBuffer byteBuffer) {
        int i;
        int i2;
        char cCharAt;
        if (byteBuffer.isReadOnly()) {
            throw new ReadOnlyBufferException();
        }
        int i3 = 0;
        if (byteBuffer.hasArray()) {
            try {
                byte[] bArrArray = byteBuffer.array();
                int iArrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
                int iRemaining = byteBuffer.remaining();
                int length = charSequence.length();
                int i4 = iRemaining + iArrayOffset;
                while (i3 < length) {
                    int i5 = i3 + iArrayOffset;
                    if (i5 >= i4 || (cCharAt = charSequence.charAt(i3)) >= 128) {
                        break;
                    }
                    bArrArray[i5] = (byte) cCharAt;
                    i3++;
                }
                if (i3 == length) {
                    i = iArrayOffset + length;
                } else {
                    i = iArrayOffset + i3;
                    while (i3 < length) {
                        char cCharAt2 = charSequence.charAt(i3);
                        if (cCharAt2 >= 128 || i >= i4) {
                            if (cCharAt2 < 2048 && i <= i4 - 2) {
                                int i6 = i + 1;
                                bArrArray[i] = (byte) ((cCharAt2 >>> 6) | 960);
                                i = i6 + 1;
                                bArrArray[i6] = (byte) ((cCharAt2 & '?') | 128);
                            } else {
                                if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || i > i4 - 3) {
                                    if (i <= i4 - 4) {
                                        int i7 = i3 + 1;
                                        if (i7 != charSequence.length()) {
                                            char cCharAt3 = charSequence.charAt(i7);
                                            if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                                int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                                int i8 = i + 1;
                                                bArrArray[i] = (byte) ((codePoint >>> 18) | 240);
                                                int i9 = i8 + 1;
                                                bArrArray[i8] = (byte) (((codePoint >>> 12) & 63) | 128);
                                                int i10 = i9 + 1;
                                                bArrArray[i9] = (byte) (((codePoint >>> 6) & 63) | 128);
                                                i = i10 + 1;
                                                bArrArray[i10] = (byte) ((codePoint & 63) | 128);
                                                i3 = i7;
                                            } else {
                                                i3 = i7;
                                            }
                                        }
                                        StringBuilder sb = new StringBuilder(39);
                                        sb.append("Unpaired surrogate at index ");
                                        sb.append(i3 - 1);
                                        throw new IllegalArgumentException(sb.toString());
                                    }
                                    StringBuilder sb2 = new StringBuilder(37);
                                    sb2.append("Failed writing ");
                                    sb2.append(cCharAt2);
                                    sb2.append(" at index ");
                                    sb2.append(i);
                                    throw new ArrayIndexOutOfBoundsException(sb2.toString());
                                }
                                int i11 = i + 1;
                                bArrArray[i] = (byte) ((cCharAt2 >>> '\f') | FetchService.QUERY_SINGLE);
                                int i12 = i11 + 1;
                                bArrArray[i11] = (byte) (((cCharAt2 >>> 6) & 63) | 128);
                                i2 = i12 + 1;
                                bArrArray[i12] = (byte) ((cCharAt2 & '?') | 128);
                            }
                            i3++;
                        } else {
                            i2 = i + 1;
                            bArrArray[i] = (byte) cCharAt2;
                        }
                        i = i2;
                        i3++;
                    }
                }
                byteBuffer.position(i - byteBuffer.arrayOffset());
                return;
            } catch (ArrayIndexOutOfBoundsException e) {
                BufferOverflowException bufferOverflowException = new BufferOverflowException();
                bufferOverflowException.initCause(e);
                throw bufferOverflowException;
            }
        }
        int length2 = charSequence.length();
        while (i3 < length2) {
            char cCharAt4 = charSequence.charAt(i3);
            if (cCharAt4 < 128) {
                byteBuffer.put((byte) cCharAt4);
            } else if (cCharAt4 < 2048) {
                byteBuffer.put((byte) ((cCharAt4 >>> 6) | 960));
                byteBuffer.put((byte) ((cCharAt4 & '?') | 128));
            } else if (cCharAt4 < 55296 || 57343 < cCharAt4) {
                byteBuffer.put((byte) ((cCharAt4 >>> '\f') | FetchService.QUERY_SINGLE));
                byteBuffer.put((byte) (((cCharAt4 >>> 6) & 63) | 128));
                byteBuffer.put((byte) ((cCharAt4 & '?') | 128));
            } else {
                int i13 = i3 + 1;
                if (i13 != charSequence.length()) {
                    char cCharAt5 = charSequence.charAt(i13);
                    if (Character.isSurrogatePair(cCharAt4, cCharAt5)) {
                        int codePoint2 = Character.toCodePoint(cCharAt4, cCharAt5);
                        byteBuffer.put((byte) ((codePoint2 >>> 18) | 240));
                        byteBuffer.put((byte) (((codePoint2 >>> 12) & 63) | 128));
                        byteBuffer.put((byte) (((codePoint2 >>> 6) & 63) | 128));
                        byteBuffer.put((byte) ((codePoint2 & 63) | 128));
                        i3 = i13;
                    } else {
                        i3 = i13;
                    }
                }
                StringBuilder sb3 = new StringBuilder(39);
                sb3.append("Unpaired surrogate at index ");
                sb3.append(i3 - 1);
                throw new IllegalArgumentException(sb3.toString());
            }
            i3++;
        }
    }

    public static int zzab(int i, int i2) {
        return zzgd(i) + zzge(i2);
    }

    public static int zzg(int i, String str) {
        return zzgd(i) + zzgx(str);
    }

    public static int zzb(int i, zzdrw zzdrwVar) {
        int iZzgd = zzgd(i);
        int iZzaxj = zzdrwVar.zzaxj();
        return iZzgd + zzgl(iZzaxj) + iZzaxj;
    }

    public static int zzb(int i, byte[] bArr) {
        return zzgd(i) + zzgl(bArr.length) + bArr.length;
    }

    public static int zzge(int i) {
        if (i >= 0) {
            return zzgl(i);
        }
        return 10;
    }

    public static int zzgx(String str) {
        int iZza = zza(str);
        return zzgl(iZza) + iZza;
    }

    public final void zzawv() {
        if (this.zzaxl.remaining() != 0) {
            throw new IllegalStateException(String.format("Did not write as much data as expected, %s bytes remaining.", Integer.valueOf(this.zzaxl.remaining())));
        }
    }

    private final void zzhd(int i) throws IOException {
        byte b = (byte) i;
        if (!this.zzaxl.hasRemaining()) {
            throw new zzdrq(this.zzaxl.position(), this.zzaxl.limit());
        }
        this.zzaxl.put(b);
    }

    public final void zzw(int i, int i2) throws IOException {
        zzhe((i << 3) | i2);
    }

    public static int zzgd(int i) {
        return zzgl(i << 3);
    }

    private final void zzhe(int i) throws IOException {
        while ((i & (-128)) != 0) {
            zzhd((i & 127) | 128);
            i >>>= 7;
        }
        zzhd(i);
    }

    public final void zzfv(long j) throws IOException {
        while (((-128) & j) != 0) {
            zzhd((((int) j) & 127) | 128);
            j >>>= 7;
        }
        zzhd((int) j);
    }
}
