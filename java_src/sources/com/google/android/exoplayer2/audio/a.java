package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.v2;
import com.narvii.chat.video.RtcChatManager;
import com.narvii.media.MediaRecordManager;

/* JADX INFO: loaded from: classes5.dex */
public final class a {
    public static final int AAC_ELD_MAX_RATE_BYTES_PER_SECOND = 8000;
    public static final int AAC_HE_AUDIO_SAMPLE_COUNT = 2048;
    public static final int AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND = 16000;
    public static final int AAC_HE_V2_MAX_RATE_BYTES_PER_SECOND = 7000;
    public static final int AAC_LC_AUDIO_SAMPLE_COUNT = 1024;
    public static final int AAC_LC_MAX_RATE_BYTES_PER_SECOND = 100000;
    public static final int AAC_LD_AUDIO_SAMPLE_COUNT = 512;
    public static final int AAC_XHE_AUDIO_SAMPLE_COUNT = 1024;
    public static final int AAC_XHE_MAX_RATE_BYTES_PER_SECOND = 256000;
    public static final int AUDIO_OBJECT_TYPE_AAC_ELD = 23;
    public static final int AUDIO_OBJECT_TYPE_AAC_ER_BSAC = 22;
    public static final int AUDIO_OBJECT_TYPE_AAC_LC = 2;
    public static final int AUDIO_OBJECT_TYPE_AAC_PS = 29;
    public static final int AUDIO_OBJECT_TYPE_AAC_SBR = 5;
    public static final int AUDIO_OBJECT_TYPE_AAC_XHE = 42;
    private static final int AUDIO_OBJECT_TYPE_ESCAPE = 31;
    private static final int AUDIO_SPECIFIC_CONFIG_CHANNEL_CONFIGURATION_INVALID = -1;
    private static final int AUDIO_SPECIFIC_CONFIG_FREQUENCY_INDEX_ARBITRARY = 15;
    private static final String CODECS_STRING_PREFIX = "mp4a.40.";
    private static final String TAG = "AacUtil";
    private static final int[] AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE = {96000, 88200, 64000, 48000, RtcChatManager.SAMPLE_RATE, 32000, 24000, MediaRecordManager.SAMPLING_RATE, 16000, 12000, 11025, 8000, 7350};
    private static final int[] AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    public static final class b {
        public final int channelCount;
        public final String codecs;
        public final int sampleRateHz;

        private b(int i10, int i11, String str) {
            this.sampleRateHz = i10;
            this.channelCount = i11;
            this.codecs = str;
        }
    }

    public static byte[] a(int i10, int i11, int i12) {
        return new byte[]{(byte) (((i10 << 3) & 248) | ((i11 >> 1) & 7)), (byte) (((i11 << 7) & 128) | ((i12 << 3) & 120))};
    }

    private static int b(com.google.android.exoplayer2.util.b0 b0Var) {
        int iH = b0Var.h(5);
        return iH == 31 ? b0Var.h(6) + 32 : iH;
    }

    private static int c(com.google.android.exoplayer2.util.b0 b0Var) throws v2 {
        int iH = b0Var.h(4);
        if (iH == 15) {
            return b0Var.h(24);
        }
        if (iH < 13) {
            return AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE[iH];
        }
        throw v2.a(null, null);
    }

    public static b e(byte[] bArr) throws v2 {
        return d(new com.google.android.exoplayer2.util.b0(bArr), false);
    }

    public static b d(com.google.android.exoplayer2.util.b0 b0Var, boolean z6) throws v2 {
        int iB = b(b0Var);
        int iC = c(b0Var);
        int iH = b0Var.h(4);
        String str = CODECS_STRING_PREFIX + iB;
        if (iB == 5 || iB == 29) {
            iC = c(b0Var);
            iB = b(b0Var);
            if (iB == 22) {
                iH = b0Var.h(4);
            }
        }
        if (z6) {
            if (iB != 1 && iB != 2 && iB != 3 && iB != 4 && iB != 6 && iB != 7 && iB != 17) {
                switch (iB) {
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                        break;
                    default:
                        throw v2.c("Unsupported audio object type: " + iB);
                }
            }
            f(b0Var, iB, iH);
            switch (iB) {
                case 17:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                    int iH2 = b0Var.h(2);
                    if (iH2 == 2 || iH2 == 3) {
                        throw v2.c("Unsupported epConfig: " + iH2);
                    }
                    break;
            }
        }
        int i10 = AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE[iH];
        if (i10 != -1) {
            return new b(iC, i10, str);
        }
        throw v2.a(null, null);
    }

    private static void f(com.google.android.exoplayer2.util.b0 b0Var, int i10, int i11) {
        if (b0Var.g()) {
            com.google.android.exoplayer2.util.t.i(TAG, "Unexpected frameLengthFlag = 1");
        }
        if (b0Var.g()) {
            b0Var.r(14);
        }
        boolean zG = b0Var.g();
        if (i11 != 0) {
            if (i10 == 6 || i10 == 20) {
                b0Var.r(3);
            }
            if (zG) {
                if (i10 == 22) {
                    b0Var.r(16);
                }
                if (i10 == 17 || i10 == 19 || i10 == 20 || i10 == 23) {
                    b0Var.r(3);
                }
                b0Var.r(1);
                return;
            }
            return;
        }
        throw new UnsupportedOperationException();
    }
}
