package com.google.android.exoplayer2.audio;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.narvii.chat.video.RtcChatManager;
import com.narvii.media.MediaRecordManager;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes11.dex */
public final class e0 {
    public static final int DTS_HD_MAX_RATE_BYTES_PER_SECOND = 2250000;
    public static final int DTS_MAX_RATE_BYTES_PER_SECOND = 192000;
    private static final byte FIRST_BYTE_14B_BE = 31;
    private static final byte FIRST_BYTE_14B_LE = -1;
    private static final byte FIRST_BYTE_BE = 127;
    private static final byte FIRST_BYTE_LE = -2;
    private static final int SYNC_VALUE_14B_BE = 536864768;
    private static final int SYNC_VALUE_14B_LE = -14745368;
    private static final int SYNC_VALUE_BE = 2147385345;
    private static final int SYNC_VALUE_LE = -25230976;
    private static final int[] CHANNELS_BY_AMODE = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};
    private static final int[] SAMPLE_RATE_BY_SFREQ = {-1, 8000, 16000, 32000, -1, -1, 11025, MediaRecordManager.SAMPLING_RATE, RtcChatManager.SAMPLE_RATE, -1, -1, 12000, 24000, 48000, -1, -1};
    private static final int[] TWICE_BITRATE_KBPS_BY_RATE = {64, 112, 128, 192, 224, 256, 384, 448, 512, 640, 768, 896, 1024, 1152, 1280, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};

    /* JADX WARN: Code duplicated, block: B:15:0x0060  */
    /* JADX WARN: Code duplicated, block: B:17:? A[RETURN, SYNTHETIC] */
    public static int a(byte[] bArr) {
        int i10;
        byte b7;
        int i11;
        int i12;
        byte b10;
        boolean z6 = false;
        byte b11 = bArr[0];
        if (b11 != -2) {
            if (b11 == -1) {
                i12 = ((bArr[7] & 3) << 12) | ((bArr[6] & 255) << 4);
                b10 = bArr[9];
            } else if (b11 != 31) {
                i10 = ((bArr[5] & 3) << 12) | ((bArr[6] & 255) << 4);
                b7 = bArr[7];
            } else {
                i12 = ((bArr[6] & 3) << 12) | ((bArr[7] & 255) << 4);
                b10 = bArr[8];
            }
            i11 = (((b10 & 60) >> 2) | i12) + 1;
            z6 = true;
            if (z6) {
                return (i11 * 16) / 14;
            }
            return i11;
        }
        i10 = ((bArr[4] & 3) << 12) | ((bArr[7] & 255) << 4);
        b7 = bArr[6];
        i11 = (((b7 & 240) >> 4) | i10) + 1;
        if (z6) {
            return (i11 * 16) / 14;
        }
        return i11;
    }

    private static com.google.android.exoplayer2.util.b0 b(byte[] bArr) {
        if (bArr[0] == 127) {
            return new com.google.android.exoplayer2.util.b0(bArr);
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        if (c(bArrCopyOf)) {
            for (int i10 = 0; i10 < bArrCopyOf.length - 1; i10 += 2) {
                byte b7 = bArrCopyOf[i10];
                int i11 = i10 + 1;
                bArrCopyOf[i10] = bArrCopyOf[i11];
                bArrCopyOf[i11] = b7;
            }
        }
        com.google.android.exoplayer2.util.b0 b0Var = new com.google.android.exoplayer2.util.b0(bArrCopyOf);
        if (bArrCopyOf[0] == 31) {
            com.google.android.exoplayer2.util.b0 b0Var2 = new com.google.android.exoplayer2.util.b0(bArrCopyOf);
            while (b0Var2.b() >= 16) {
                b0Var2.r(2);
                b0Var.f(b0Var2.h(14), 14);
            }
        }
        b0Var.n(bArrCopyOf);
        return b0Var;
    }

    private static boolean c(byte[] bArr) {
        byte b7 = bArr[0];
        return b7 == -2 || b7 == -1;
    }

    public static boolean d(int i10) {
        return i10 == SYNC_VALUE_BE || i10 == SYNC_VALUE_LE || i10 == SYNC_VALUE_14B_BE || i10 == SYNC_VALUE_14B_LE;
    }

    public static int f(byte[] bArr) {
        int i10;
        byte b7;
        int i11;
        byte b10;
        byte b11 = bArr[0];
        if (b11 != -2) {
            if (b11 == -1) {
                i10 = (bArr[4] & 7) << 4;
                b10 = bArr[7];
            } else if (b11 != 31) {
                i10 = (bArr[4] & 1) << 6;
                b7 = bArr[5];
            } else {
                i10 = (bArr[5] & 7) << 4;
                b10 = bArr[6];
            }
            i11 = b10 & 60;
            return (((i11 >> 2) | i10) + 1) * 32;
        }
        i10 = (bArr[5] & 1) << 6;
        b7 = bArr[4];
        i11 = b7 & 252;
        return (((i11 >> 2) | i10) + 1) * 32;
    }

    public static int e(ByteBuffer byteBuffer) {
        int i10;
        byte b7;
        int i11;
        byte b10;
        int iPosition = byteBuffer.position();
        byte b11 = byteBuffer.get(iPosition);
        if (b11 != -2) {
            if (b11 != -1) {
                if (b11 != 31) {
                    i10 = (byteBuffer.get(iPosition + 4) & 1) << 6;
                    b7 = byteBuffer.get(iPosition + 5);
                } else {
                    i10 = (byteBuffer.get(iPosition + 5) & 7) << 4;
                    b10 = byteBuffer.get(iPosition + 6);
                }
            } else {
                i10 = (byteBuffer.get(iPosition + 4) & 7) << 4;
                b10 = byteBuffer.get(iPosition + 7);
            }
            i11 = b10 & 60;
            return (((i11 >> 2) | i10) + 1) * 32;
        }
        i10 = (byteBuffer.get(iPosition + 5) & 1) << 6;
        b7 = byteBuffer.get(iPosition + 4);
        i11 = b7 & 252;
        return (((i11 >> 2) | i10) + 1) * 32;
    }

    public static a2 g(byte[] bArr, @Nullable String str, @Nullable String str2, @Nullable DrmInitData drmInitData) {
        int i10;
        int i11;
        com.google.android.exoplayer2.util.b0 b0VarB = b(bArr);
        b0VarB.r(60);
        int i12 = CHANNELS_BY_AMODE[b0VarB.h(6)];
        int i13 = SAMPLE_RATE_BY_SFREQ[b0VarB.h(4)];
        int iH = b0VarB.h(5);
        int[] iArr = TWICE_BITRATE_KBPS_BY_RATE;
        if (iH >= iArr.length) {
            i10 = -1;
        } else {
            i10 = (iArr[iH] * 1000) / 2;
        }
        b0VarB.r(10);
        if (b0VarB.h(2) > 0) {
            i11 = 1;
        } else {
            i11 = 0;
        }
        return new a2.b().S(str).e0("audio/vnd.dts").G(i10).H(i12 + i11).f0(i13).M(drmInitData).V(str2).E();
    }
}
