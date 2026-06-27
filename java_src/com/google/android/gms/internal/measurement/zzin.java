package com.google.android.gms.internal.measurement;

import com.tonyodev.fetch.FetchService;
import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes2.dex */
public final class zzin {
    private final ByteBuffer zzada;
    private zzeg zzanb;
    private int zzanc;

    private zzin(byte[] bArr, int i, int i2) {
        this(ByteBuffer.wrap(bArr, i, i2));
    }

    public static int zzar(int i) {
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

    private zzin(ByteBuffer byteBuffer) {
        this.zzada = byteBuffer;
        this.zzada.order(ByteOrder.LITTLE_ENDIAN);
    }

    public static zzin zzl(byte[] bArr) {
        return zzk(bArr, 0, bArr.length);
    }

    public static zzin zzk(byte[] bArr, int i, int i2) {
        return new zzin(bArr, 0, i2);
    }

    public final void zzi(int i, long j) throws IOException {
        zzb(i, 0);
        zzbc(j);
    }

    public final void zzc(int i, int i2) throws IOException {
        zzb(i, 0);
        if (i2 >= 0) {
            zzbl(i2);
        } else {
            zzbc(i2);
        }
    }

    public final void zzb(int i, boolean z) throws IOException {
        zzb(i, 0);
        byte b = z ? (byte) 1 : (byte) 0;
        if (!this.zzada.hasRemaining()) {
            throw new zzio(this.zzada.position(), this.zzada.limit());
        }
        this.zzada.put(b);
    }

    public final void zzb(int i, String str) throws IOException {
        zzb(i, 2);
        try {
            int iZzar = zzar(str.length());
            if (iZzar == zzar(str.length() * 3)) {
                int iPosition = this.zzada.position();
                if (this.zzada.remaining() < iZzar) {
                    throw new zzio(iPosition + iZzar, this.zzada.limit());
                }
                this.zzada.position(iPosition + iZzar);
                zzd(str, this.zzada);
                int iPosition2 = this.zzada.position();
                this.zzada.position(iPosition);
                zzbl((iPosition2 - iPosition) - iZzar);
                this.zzada.position(iPosition2);
                return;
            }
            zzbl(zza(str));
            zzd(str, this.zzada);
        } catch (BufferOverflowException e) {
            zzio zzioVar = new zzio(this.zzada.position(), this.zzada.limit());
            zzioVar.initCause(e);
            throw zzioVar;
        }
    }

    public final void zza(int i, zziv zzivVar) throws IOException {
        zzb(i, 2);
        if (zzivVar.zzanm < 0) {
            zzivVar.zzly();
        }
        zzbl(zzivVar.zzanm);
        zzivVar.zza(this);
    }

    public final void zze(int i, zzgh zzghVar) throws IOException {
        if (this.zzanb == null) {
            this.zzanb = zzeg.zza(this.zzada);
            this.zzanc = this.zzada.position();
        } else if (this.zzanc != this.zzada.position()) {
            this.zzanb.write(this.zzada.array(), this.zzanc, this.zzada.position() - this.zzanc);
            this.zzanc = this.zzada.position();
        }
        zzeg zzegVar = this.zzanb;
        zzegVar.zza(i, zzghVar);
        zzegVar.flush();
        this.zzanc = this.zzada.position();
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

    public static int zzd(int i, long j) {
        return zzaj(i) + (((-128) & j) == 0 ? 1 : ((-16384) & j) == 0 ? 2 : ((-2097152) & j) == 0 ? 3 : ((-268435456) & j) == 0 ? 4 : ((-34359738368L) & j) == 0 ? 5 : ((-4398046511104L) & j) == 0 ? 6 : ((-562949953421312L) & j) == 0 ? 7 : ((-72057594037927936L) & j) == 0 ? 8 : (j & Long.MIN_VALUE) == 0 ? 9 : 10);
    }

    public static int zzg(int i, int i2) {
        return zzaj(i) + zzak(i2);
    }

    public static int zzc(int i, String str) {
        return zzaj(i) + zzcp(str);
    }

    public static int zzb(int i, zziv zzivVar) {
        int iZzaj = zzaj(i);
        int iZzly = zzivVar.zzly();
        return iZzaj + zzar(iZzly) + iZzly;
    }

    public static int zzak(int i) {
        if (i >= 0) {
            return zzar(i);
        }
        return 10;
    }

    public static int zzcp(String str) {
        int iZza = zza(str);
        return zzar(iZza) + iZza;
    }

    public final void zzlk() {
        if (this.zzada.remaining() != 0) {
            throw new IllegalStateException(String.format("Did not write as much data as expected, %s bytes remaining.", Integer.valueOf(this.zzada.remaining())));
        }
    }

    private final void zzbk(int i) throws IOException {
        byte b = (byte) i;
        if (!this.zzada.hasRemaining()) {
            throw new zzio(this.zzada.position(), this.zzada.limit());
        }
        this.zzada.put(b);
    }

    public final void zzm(byte[] bArr) throws IOException {
        int length = bArr.length;
        if (this.zzada.remaining() >= length) {
            this.zzada.put(bArr, 0, length);
            return;
        }
        throw new zzio(this.zzada.position(), this.zzada.limit());
    }

    public final void zzb(int i, int i2) throws IOException {
        zzbl((i << 3) | i2);
    }

    public static int zzaj(int i) {
        return zzar(i << 3);
    }

    public final void zzbl(int i) throws IOException {
        while ((i & (-128)) != 0) {
            zzbk((i & 127) | 128);
            i >>>= 7;
        }
        zzbk(i);
    }

    private final void zzbc(long j) throws IOException {
        while (((-128) & j) != 0) {
            zzbk((((int) j) & 127) | 128);
            j >>>= 7;
        }
        zzbk((int) j);
    }
}
