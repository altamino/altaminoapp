package com.google.android.gms.internal.measurement;

import com.tonyodev.fetch.FetchService;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
final class zzid extends zzia {
    zzid() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0061, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x008e, code lost:
    
        return -1;
     */
    @Override // com.google.android.gms.internal.measurement.zzia
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final int zzb(int r16, byte[] r17, int r18, int r19) {
        /*
            Method dump skipped, instructions count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzid.zzb(int, byte[], int, int):int");
    }

    @Override // com.google.android.gms.internal.measurement.zzia
    final String zzh(byte[] bArr, int i, int i2) throws zzfh {
        if ((i | i2 | ((bArr.length - i) - i2)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
        }
        int i3 = i + i2;
        char[] cArr = new char[i2];
        int i4 = 0;
        while (i < i3) {
            byte bZza = zzhw.zza(bArr, i);
            if (!zzhz.zzd(bZza)) {
                break;
            }
            i++;
            zzhz.zza(bZza, cArr, i4);
            i4++;
        }
        int i5 = i4;
        while (i < i3) {
            int i6 = i + 1;
            byte bZza2 = zzhw.zza(bArr, i);
            if (zzhz.zzd(bZza2)) {
                int i7 = i5 + 1;
                zzhz.zza(bZza2, cArr, i5);
                while (i6 < i3) {
                    byte bZza3 = zzhw.zza(bArr, i6);
                    if (!zzhz.zzd(bZza3)) {
                        break;
                    }
                    i6++;
                    zzhz.zza(bZza3, cArr, i7);
                    i7++;
                }
                i = i6;
                i5 = i7;
            } else if (zzhz.zze(bZza2)) {
                if (i6 < i3) {
                    zzhz.zza(bZza2, zzhw.zza(bArr, i6), cArr, i5);
                    i = i6 + 1;
                    i5++;
                } else {
                    throw zzfh.zznc();
                }
            } else if (zzhz.zzf(bZza2)) {
                if (i6 < i3 - 1) {
                    int i8 = i6 + 1;
                    zzhz.zza(bZza2, zzhw.zza(bArr, i6), zzhw.zza(bArr, i8), cArr, i5);
                    i = i8 + 1;
                    i5++;
                } else {
                    throw zzfh.zznc();
                }
            } else {
                if (i6 >= i3 - 2) {
                    throw zzfh.zznc();
                }
                int i9 = i6 + 1;
                byte bZza4 = zzhw.zza(bArr, i6);
                int i10 = i9 + 1;
                zzhz.zza(bZza2, bZza4, zzhw.zza(bArr, i9), zzhw.zza(bArr, i10), cArr, i5);
                i = i10 + 1;
                i5 = i5 + 1 + 1;
            }
        }
        return new String(cArr, 0, i5);
    }

    @Override // com.google.android.gms.internal.measurement.zzia
    final int zzb(CharSequence charSequence, byte[] bArr, int i, int i2) {
        char c;
        long j;
        long j2;
        long j3;
        int i3;
        char cCharAt;
        long j4 = i;
        long j5 = i2 + j4;
        int length = charSequence.length();
        if (length > i2 || bArr.length - i2 < i) {
            char cCharAt2 = charSequence.charAt(length - 1);
            StringBuilder sb = new StringBuilder(37);
            sb.append("Failed writing ");
            sb.append(cCharAt2);
            sb.append(" at index ");
            sb.append(i + i2);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        int i4 = 0;
        while (true) {
            c = 128;
            j = 1;
            if (i4 >= length || (cCharAt = charSequence.charAt(i4)) >= 128) {
                break;
            }
            zzhw.zza(bArr, j4, (byte) cCharAt);
            i4++;
            j4 = 1 + j4;
        }
        if (i4 == length) {
            return (int) j4;
        }
        while (i4 < length) {
            char cCharAt3 = charSequence.charAt(i4);
            if (cCharAt3 >= c || j4 >= j5) {
                if (cCharAt3 < 2048 && j4 <= j5 - 2) {
                    long j6 = j4 + j;
                    zzhw.zza(bArr, j4, (byte) ((cCharAt3 >>> 6) | 960));
                    zzhw.zza(bArr, j6, (byte) ((cCharAt3 & '?') | 128));
                    j2 = j6 + j;
                    j3 = j;
                } else {
                    if ((cCharAt3 >= 55296 && 57343 >= cCharAt3) || j4 > j5 - 3) {
                        if (j4 <= j5 - 4) {
                            int i5 = i4 + 1;
                            if (i5 != length) {
                                char cCharAt4 = charSequence.charAt(i5);
                                if (Character.isSurrogatePair(cCharAt3, cCharAt4)) {
                                    int codePoint = Character.toCodePoint(cCharAt3, cCharAt4);
                                    long j7 = j4 + 1;
                                    zzhw.zza(bArr, j4, (byte) ((codePoint >>> 18) | 240));
                                    long j8 = j7 + 1;
                                    zzhw.zza(bArr, j7, (byte) (((codePoint >>> 12) & 63) | 128));
                                    long j9 = j8 + 1;
                                    zzhw.zza(bArr, j8, (byte) (((codePoint >>> 6) & 63) | 128));
                                    j3 = 1;
                                    j2 = j9 + 1;
                                    zzhw.zza(bArr, j9, (byte) ((codePoint & 63) | 128));
                                    i4 = i5;
                                } else {
                                    i4 = i5;
                                }
                            }
                            throw new zzic(i4 - 1, length);
                        }
                        if (55296 <= cCharAt3 && cCharAt3 <= 57343 && ((i3 = i4 + 1) == length || !Character.isSurrogatePair(cCharAt3, charSequence.charAt(i3)))) {
                            throw new zzic(i4, length);
                        }
                        StringBuilder sb2 = new StringBuilder(46);
                        sb2.append("Failed writing ");
                        sb2.append(cCharAt3);
                        sb2.append(" at index ");
                        sb2.append(j4);
                        throw new ArrayIndexOutOfBoundsException(sb2.toString());
                    }
                    long j10 = j4 + j;
                    zzhw.zza(bArr, j4, (byte) ((cCharAt3 >>> '\f') | FetchService.QUERY_SINGLE));
                    long j11 = j10 + j;
                    zzhw.zza(bArr, j10, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                    zzhw.zza(bArr, j11, (byte) ((cCharAt3 & '?') | 128));
                    j2 = j11 + 1;
                    j3 = 1;
                }
                i4++;
                c = 128;
                long j12 = j3;
                j4 = j2;
                j = j12;
            } else {
                long j13 = j4 + j;
                zzhw.zza(bArr, j4, (byte) cCharAt3);
                j3 = j;
                j2 = j13;
            }
            i4++;
            c = 128;
            long j122 = j3;
            j4 = j2;
            j = j122;
        }
        return (int) j4;
    }

    @Override // com.google.android.gms.internal.measurement.zzia
    final void zzb(CharSequence charSequence, ByteBuffer byteBuffer) {
        char c;
        long j;
        int i;
        char cCharAt;
        long jZzb = zzhw.zzb(byteBuffer);
        long jPosition = byteBuffer.position() + jZzb;
        long jLimit = byteBuffer.limit() + jZzb;
        int length = charSequence.length();
        if (length > jLimit - jPosition) {
            char cCharAt2 = charSequence.charAt(length - 1);
            int iLimit = byteBuffer.limit();
            StringBuilder sb = new StringBuilder(37);
            sb.append("Failed writing ");
            sb.append(cCharAt2);
            sb.append(" at index ");
            sb.append(iLimit);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        int i2 = 0;
        while (true) {
            c = 128;
            if (i2 >= length || (cCharAt = charSequence.charAt(i2)) >= 128) {
                break;
            }
            zzhw.zza(jPosition, (byte) cCharAt);
            i2++;
            jPosition = 1 + jPosition;
        }
        if (i2 == length) {
            byteBuffer.position((int) (jPosition - jZzb));
            return;
        }
        while (i2 < length) {
            char cCharAt3 = charSequence.charAt(i2);
            if (cCharAt3 < c && jPosition < jLimit) {
                zzhw.zza(jPosition, (byte) cCharAt3);
                jPosition++;
                j = jZzb;
            } else if (cCharAt3 >= 2048 || jPosition > jLimit - 2) {
                j = jZzb;
                if ((cCharAt3 >= 55296 && 57343 >= cCharAt3) || jPosition > jLimit - 3) {
                    if (jPosition <= jLimit - 4) {
                        int i3 = i2 + 1;
                        if (i3 != length) {
                            char cCharAt4 = charSequence.charAt(i3);
                            if (Character.isSurrogatePair(cCharAt3, cCharAt4)) {
                                int codePoint = Character.toCodePoint(cCharAt3, cCharAt4);
                                long j2 = jPosition + 1;
                                zzhw.zza(jPosition, (byte) ((codePoint >>> 18) | 240));
                                long j3 = j2 + 1;
                                zzhw.zza(j2, (byte) (((codePoint >>> 12) & 63) | 128));
                                long j4 = j3 + 1;
                                zzhw.zza(j3, (byte) (((codePoint >>> 6) & 63) | 128));
                                long j5 = j4 + 1;
                                zzhw.zza(j4, (byte) ((codePoint & 63) | 128));
                                i2 = i3;
                                jPosition = j5;
                            }
                        } else {
                            i3 = i2;
                        }
                        throw new zzic(i3 - 1, length);
                    }
                    if (55296 <= cCharAt3 && cCharAt3 <= 57343 && ((i = i2 + 1) == length || !Character.isSurrogatePair(cCharAt3, charSequence.charAt(i)))) {
                        throw new zzic(i2, length);
                    }
                    StringBuilder sb2 = new StringBuilder(46);
                    sb2.append("Failed writing ");
                    sb2.append(cCharAt3);
                    sb2.append(" at index ");
                    sb2.append(jPosition);
                    throw new ArrayIndexOutOfBoundsException(sb2.toString());
                }
                long j6 = jPosition + 1;
                zzhw.zza(jPosition, (byte) ((cCharAt3 >>> '\f') | FetchService.QUERY_SINGLE));
                long j7 = j6 + 1;
                zzhw.zza(j6, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                zzhw.zza(j7, (byte) ((cCharAt3 & '?') | 128));
                jPosition = j7 + 1;
            } else {
                j = jZzb;
                long j8 = jPosition + 1;
                zzhw.zza(jPosition, (byte) ((cCharAt3 >>> 6) | 960));
                zzhw.zza(j8, (byte) ((cCharAt3 & '?') | 128));
                jPosition = j8 + 1;
            }
            i2++;
            jZzb = j;
            c = 128;
        }
        byteBuffer.position((int) (jPosition - jZzb));
    }

    private static int zza(byte[] bArr, int i, long j, int i2) {
        if (i2 == 0) {
            return zzhy.zzbh(i);
        }
        if (i2 == 1) {
            return zzhy.zzr(i, zzhw.zza(bArr, j));
        }
        if (i2 == 2) {
            return zzhy.zzc(i, zzhw.zza(bArr, j), zzhw.zza(bArr, j + 1));
        }
        throw new AssertionError();
    }
}
