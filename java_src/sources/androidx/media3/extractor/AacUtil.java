package androidx.media3.extractor;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.UnstableApi;
import com.narvii.chat.video.RtcChatManager;
import com.narvii.media.MediaRecordManager;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public final class AacUtil {
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

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface AacAudioObjectType {
    }

    public static final class Config {
        public final int channelCount;
        public final String codecs;
        public final int sampleRateHz;

        private Config(int i10, int i11, String str) {
            this.sampleRateHz = i10;
            this.channelCount = i11;
            this.codecs = str;
        }
    }

    public static byte[] a(int i10, int i11) {
        int i12 = 0;
        int i13 = -1;
        int i14 = 0;
        while (true) {
            int[] iArr = AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE;
            if (i14 >= iArr.length) {
                break;
            }
            if (i10 == iArr[i14]) {
                i13 = i14;
            }
            i14++;
        }
        int i15 = -1;
        while (true) {
            int[] iArr2 = AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE;
            if (i12 >= iArr2.length) {
                break;
            }
            if (i11 == iArr2[i12]) {
                i15 = i12;
            }
            i12++;
        }
        if (i10 != -1 && i15 != -1) {
            return b(2, i13, i15);
        }
        throw new IllegalArgumentException("Invalid sample rate or number of channels: " + i10 + ", " + i11);
    }

    public static byte[] b(int i10, int i11, int i12) {
        return new byte[]{(byte) (((i10 << 3) & 248) | ((i11 >> 1) & 7)), (byte) (((i11 << 7) & 128) | ((i12 << 3) & 120))};
    }

    private static int c(ParsableBitArray parsableBitArray) {
        int iH = parsableBitArray.h(5);
        return iH == 31 ? parsableBitArray.h(6) + 32 : iH;
    }

    private static int d(ParsableBitArray parsableBitArray) throws ParserException {
        int iH = parsableBitArray.h(4);
        if (iH == 15) {
            if (parsableBitArray.b() >= 24) {
                return parsableBitArray.h(24);
            }
            throw ParserException.a("AAC header insufficient data", null);
        }
        if (iH < 13) {
            return AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE[iH];
        }
        throw ParserException.a("AAC header wrong Sampling Frequency Index", null);
    }

    public static Config f(byte[] bArr) throws ParserException {
        return e(new ParsableBitArray(bArr), false);
    }

    private AacUtil() {
    }

    public static Config e(ParsableBitArray parsableBitArray, boolean z6) throws ParserException {
        int iC = c(parsableBitArray);
        int iD = d(parsableBitArray);
        int iH = parsableBitArray.h(4);
        String str = CODECS_STRING_PREFIX + iC;
        if (iC == 5 || iC == 29) {
            iD = d(parsableBitArray);
            iC = c(parsableBitArray);
            if (iC == 22) {
                iH = parsableBitArray.h(4);
            }
        }
        if (z6) {
            if (iC != 1 && iC != 2 && iC != 3 && iC != 4 && iC != 6 && iC != 7 && iC != 17) {
                switch (iC) {
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                        break;
                    default:
                        throw ParserException.d("Unsupported audio object type: " + iC);
                }
            }
            g(parsableBitArray, iC, iH);
            switch (iC) {
                case 17:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                    int iH2 = parsableBitArray.h(2);
                    if (iH2 == 2 || iH2 == 3) {
                        throw ParserException.d("Unsupported epConfig: " + iH2);
                    }
                    break;
            }
        }
        int i10 = AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE[iH];
        if (i10 != -1) {
            return new Config(iD, i10, str);
        }
        throw ParserException.a(null, null);
    }

    private static void g(ParsableBitArray parsableBitArray, int i10, int i11) {
        if (parsableBitArray.g()) {
            Log.i(TAG, "Unexpected frameLengthFlag = 1");
        }
        if (parsableBitArray.g()) {
            parsableBitArray.r(14);
        }
        boolean zG = parsableBitArray.g();
        if (i11 != 0) {
            if (i10 == 6 || i10 == 20) {
                parsableBitArray.r(3);
            }
            if (zG) {
                if (i10 == 22) {
                    parsableBitArray.r(16);
                }
                if (i10 == 17 || i10 == 19 || i10 == 20 || i10 == 23) {
                    parsableBitArray.r(3);
                }
                parsableBitArray.r(1);
                return;
            }
            return;
        }
        throw new UnsupportedOperationException();
    }
}
