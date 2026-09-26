package androidx.media3.extractor;

import androidx.annotation.Nullable;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import com.narvii.chat.video.RtcChatManager;
import com.narvii.util.ws.WsMessage;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public final class Ac4Util {
    public static final int AC40_SYNCWORD = 44096;
    public static final int AC41_SYNCWORD = 44097;
    private static final int CHANNEL_COUNT_2 = 2;
    public static final int HEADER_SIZE_FOR_PARSER = 16;
    public static final int MAX_RATE_BYTES_PER_SECOND = 336000;
    private static final int[] SAMPLE_COUNT = {2002, 2000, 1920, 1601, 1600, 1001, 1000, 960, 800, 800, 480, WsMessage.LIVE_LAYER_USER_JOINED_EVENT, WsMessage.LIVE_LAYER_USER_JOINED_EVENT, 2048};
    public static final int SAMPLE_HEADER_SIZE = 7;

    public static final class SyncFrameInfo {
        public final int bitstreamVersion;
        public final int channelCount;
        public final int frameSize;
        public final int sampleCount;
        public final int sampleRate;

        private SyncFrameInfo(int i10, int i11, int i12, int i13, int i14) {
            this.bitstreamVersion = i10;
            this.channelCount = i11;
            this.sampleRate = i12;
            this.frameSize = i13;
            this.sampleCount = i14;
        }
    }

    public static void a(int i10, ParsableByteArray parsableByteArray) {
        parsableByteArray.Q(7);
        byte[] bArrE = parsableByteArray.e();
        bArrE[0] = -84;
        bArrE[1] = 64;
        bArrE[2] = -1;
        bArrE[3] = -1;
        bArrE[4] = (byte) ((i10 >> 16) & 255);
        bArrE[5] = (byte) ((i10 >> 8) & 255);
        bArrE[6] = (byte) (i10 & 255);
    }

    public static Format b(ParsableByteArray parsableByteArray, String str, String str2, @Nullable DrmInitData drmInitData) {
        parsableByteArray.V(1);
        return new Format.Builder().U(str).g0("audio/ac4").J(2).h0(((parsableByteArray.H() & 32) >> 5) == 1 ? 48000 : RtcChatManager.SAMPLE_RATE).O(drmInitData).X(str2).G();
    }

    public static int e(byte[] bArr, int i10) {
        int i11 = 7;
        if (bArr.length < 7) {
            return -1;
        }
        int i12 = ((bArr[2] & 255) << 8) | (bArr[3] & 255);
        if (i12 == 65535) {
            i12 = ((bArr[4] & 255) << 16) | ((bArr[5] & 255) << 8) | (bArr[6] & 255);
        } else {
            i11 = 4;
        }
        if (i10 == 44097) {
            i11 += 2;
        }
        return i12 + i11;
    }

    private static int f(ParsableBitArray parsableBitArray, int i10) {
        int i11 = 0;
        while (true) {
            int iH = i11 + parsableBitArray.h(i10);
            if (!parsableBitArray.g()) {
                return iH;
            }
            i11 = (iH + 1) << i10;
        }
    }

    public static int c(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[16];
        int iPosition = byteBuffer.position();
        byteBuffer.get(bArr);
        byteBuffer.position(iPosition);
        return d(new ParsableBitArray(bArr)).sampleCount;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0082  */
    /* JADX WARN: Code duplicated, block: B:44:0x008b  */
    /* JADX WARN: Code duplicated, block: B:47:0x0090  */
    public static SyncFrameInfo d(ParsableBitArray parsableBitArray) {
        int i10;
        int i11;
        int iH = parsableBitArray.h(16);
        int iH2 = parsableBitArray.h(16);
        if (iH2 == 65535) {
            iH2 = parsableBitArray.h(24);
            i10 = 7;
        } else {
            i10 = 4;
        }
        int i12 = iH2 + i10;
        if (iH == 44097) {
            i12 += 2;
        }
        int i13 = i12;
        int iH3 = parsableBitArray.h(2);
        if (iH3 == 3) {
            iH3 += f(parsableBitArray, 2);
        }
        int i14 = iH3;
        int iH4 = parsableBitArray.h(10);
        if (parsableBitArray.g() && parsableBitArray.h(3) > 0) {
            parsableBitArray.r(2);
        }
        int i15 = parsableBitArray.g() ? 48000 : 44100;
        int iH5 = parsableBitArray.h(4);
        if (i15 == 44100 && iH5 == 13) {
            i11 = SAMPLE_COUNT[iH5];
        } else if (i15 == 48000) {
            int[] iArr = SAMPLE_COUNT;
            if (iH5 < iArr.length) {
                int i16 = iArr[iH5];
                int i17 = iH4 % 5;
                if (i17 == 1) {
                    if (iH5 != 3 || iH5 == 8) {
                        i16++;
                    }
                } else if (i17 != 2) {
                    if (i17 != 3) {
                        if (i17 == 4 && (iH5 == 3 || iH5 == 8 || iH5 == 11)) {
                            i16++;
                        }
                    } else if (iH5 != 3) {
                        i16++;
                    } else {
                        i16++;
                    }
                } else if (iH5 == 8 || iH5 == 11) {
                    i16++;
                }
                i11 = i16;
            } else {
                i11 = 0;
            }
        } else {
            i11 = 0;
        }
        return new SyncFrameInfo(i14, 2, i15, i13, i11);
    }

    private Ac4Util() {
    }
}
