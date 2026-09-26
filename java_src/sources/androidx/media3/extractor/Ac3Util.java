package androidx.media3.extractor;

import androidx.annotation.Nullable;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import com.narvii.chat.video.RtcChatManager;
import com.narvii.media.MediaRecordManager;
import com.narvii.monetization.bubble.BubbleService;
import com.narvii.util.ws.WsMessage;
import io.agora.rtc.internal.RtcEngineEvent;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.nio.ByteBuffer;
import okio.Utf8;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public final class Ac3Util {
    public static final int AC3_MAX_RATE_BYTES_PER_SECOND = 80000;
    private static final int AC3_SYNCFRAME_AUDIO_SAMPLE_COUNT = 1536;
    private static final int AUDIO_SAMPLES_PER_AUDIO_BLOCK = 256;
    public static final int E_AC3_MAX_RATE_BYTES_PER_SECOND = 768000;
    public static final int TRUEHD_MAX_RATE_BYTES_PER_SECOND = 3062500;
    public static final int TRUEHD_RECHUNK_SAMPLE_COUNT = 16;
    public static final int TRUEHD_SYNCFRAME_PREFIX_LENGTH = 10;
    private static final int[] BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD = {1, 2, 3, 6};
    private static final int[] SAMPLE_RATE_BY_FSCOD = {48000, RtcChatManager.SAMPLE_RATE, 32000};
    private static final int[] SAMPLE_RATE_BY_FSCOD2 = {24000, MediaRecordManager.SAMPLING_RATE, 16000};
    private static final int[] CHANNEL_COUNT_BY_ACMOD = {2, 1, 2, 3, 3, 4, 4, 5};
    private static final int[] BITRATE_BY_HALF_FRMSIZECOD = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, BubbleService.DEFAULT_DENSITY, 384, 448, 512, 576, 640};
    private static final int[] SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1 = {69, 87, 104, 121, WsMessage.THREAD_WAIT_LIST_JOIN_RESPONSE, 174, 208, 243, 278, 348, 417, 487, 557, 696, 835, 975, RtcEngineEvent.EvtType.EVT_JOIN_PUBILSHER_RESPONSE, 1253, 1393};

    public static final class SyncFrameInfo {
        public static final int STREAM_TYPE_TYPE0 = 0;
        public static final int STREAM_TYPE_TYPE1 = 1;
        public static final int STREAM_TYPE_TYPE2 = 2;
        public static final int STREAM_TYPE_UNDEFINED = -1;
        public final int bitrate;
        public final int channelCount;
        public final int frameSize;

        @Nullable
        public final String mimeType;
        public final int sampleCount;
        public final int sampleRate;
        public final int streamType;

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface StreamType {
        }

        private SyncFrameInfo(@Nullable String str, int i10, int i11, int i12, int i13, int i14, int i15) {
            this.mimeType = str;
            this.streamType = i10;
            this.channelCount = i11;
            this.sampleRate = i12;
            this.frameSize = i13;
            this.sampleCount = i14;
            this.bitrate = i15;
        }
    }

    private static int a(int i10, int i11, int i12) {
        return (i10 * i11) / (i12 * 32);
    }

    public static int g(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (((bArr[5] & 248) >> 3) > 10) {
            return (((bArr[3] & 255) | ((bArr[2] & 7) << 8)) + 1) * 2;
        }
        byte b7 = bArr[4];
        return c((b7 & 192) >> 6, b7 & Utf8.REPLACEMENT_BYTE);
    }

    public static int j(byte[] bArr) {
        if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111) {
            byte b7 = bArr[7];
            if ((b7 & 254) == 186) {
                return 40 << ((bArr[(b7 & 255) == 187 ? '\t' : '\b'] >> 4) & 7);
            }
        }
        return 0;
    }

    private static int c(int i10, int i11) {
        int i12 = i11 / 2;
        if (i10 < 0) {
            return -1;
        }
        int[] iArr = SAMPLE_RATE_BY_FSCOD;
        if (i10 >= iArr.length || i11 < 0) {
            return -1;
        }
        int[] iArr2 = SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1;
        if (i12 >= iArr2.length) {
            return -1;
        }
        int i13 = iArr[i10];
        if (i13 == 44100) {
            return (iArr2[i12] + (i11 % 2)) * 2;
        }
        int i14 = BITRATE_BY_HALF_FRMSIZECOD[i12];
        return i13 == 32000 ? i14 * 6 : i14 * 4;
    }

    public static Format d(ParsableByteArray parsableByteArray, String str, String str2, @Nullable DrmInitData drmInitData) {
        ParsableBitArray parsableBitArray = new ParsableBitArray();
        parsableBitArray.m(parsableByteArray);
        int i10 = SAMPLE_RATE_BY_FSCOD[parsableBitArray.h(2)];
        parsableBitArray.r(8);
        int i11 = CHANNEL_COUNT_BY_ACMOD[parsableBitArray.h(3)];
        if (parsableBitArray.h(1) != 0) {
            i11++;
        }
        int i12 = BITRATE_BY_HALF_FRMSIZECOD[parsableBitArray.h(5)] * 1000;
        parsableBitArray.c();
        parsableByteArray.U(parsableBitArray.d());
        return new Format.Builder().U(str).g0("audio/ac3").J(i11).h0(i10).O(drmInitData).X(str2).I(i12).b0(i12).G();
    }

    public static SyncFrameInfo f(ParsableBitArray parsableBitArray) {
        int i10;
        int i11;
        String str;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int iE = parsableBitArray.e();
        parsableBitArray.r(40);
        boolean z6 = parsableBitArray.h(5) > 10;
        parsableBitArray.p(iE);
        int i22 = -1;
        if (z6) {
            parsableBitArray.r(16);
            int iH = parsableBitArray.h(2);
            if (iH == 0) {
                i22 = 0;
            } else if (iH == 1) {
                i22 = 1;
            } else if (iH == 2) {
                i22 = 2;
            }
            parsableBitArray.r(3);
            int iH2 = (parsableBitArray.h(11) + 1) * 2;
            int iH3 = parsableBitArray.h(2);
            if (iH3 == 3) {
                i17 = SAMPLE_RATE_BY_FSCOD2[parsableBitArray.h(2)];
                i16 = 3;
                i18 = 6;
            } else {
                int iH4 = parsableBitArray.h(2);
                int i23 = BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD[iH4];
                i16 = iH4;
                i17 = SAMPLE_RATE_BY_FSCOD[iH3];
                i18 = i23;
            }
            int i24 = i18 * 256;
            int iA = a(iH2, i17, i18);
            int iH5 = parsableBitArray.h(3);
            boolean zG = parsableBitArray.g();
            i10 = CHANNEL_COUNT_BY_ACMOD[iH5] + (zG ? 1 : 0);
            parsableBitArray.r(10);
            if (parsableBitArray.g()) {
                parsableBitArray.r(8);
            }
            if (iH5 == 0) {
                parsableBitArray.r(5);
                if (parsableBitArray.g()) {
                    parsableBitArray.r(8);
                }
            }
            if (i22 == 1 && parsableBitArray.g()) {
                parsableBitArray.r(16);
            }
            if (parsableBitArray.g()) {
                if (iH5 > 2) {
                    parsableBitArray.r(2);
                }
                if ((iH5 & 1) == 0 || iH5 <= 2) {
                    i20 = 6;
                } else {
                    i20 = 6;
                    parsableBitArray.r(6);
                }
                if ((iH5 & 4) != 0) {
                    parsableBitArray.r(i20);
                }
                if (zG && parsableBitArray.g()) {
                    parsableBitArray.r(5);
                }
                if (i22 == 0) {
                    if (parsableBitArray.g()) {
                        i21 = 6;
                        parsableBitArray.r(6);
                    } else {
                        i21 = 6;
                    }
                    if (iH5 == 0 && parsableBitArray.g()) {
                        parsableBitArray.r(i21);
                    }
                    if (parsableBitArray.g()) {
                        parsableBitArray.r(i21);
                    }
                    int iH6 = parsableBitArray.h(2);
                    if (iH6 == 1) {
                        parsableBitArray.r(5);
                    } else if (iH6 == 2) {
                        parsableBitArray.r(12);
                    } else if (iH6 == 3) {
                        int iH7 = parsableBitArray.h(5);
                        if (parsableBitArray.g()) {
                            parsableBitArray.r(5);
                            if (parsableBitArray.g()) {
                                parsableBitArray.r(4);
                            }
                            if (parsableBitArray.g()) {
                                parsableBitArray.r(4);
                            }
                            if (parsableBitArray.g()) {
                                parsableBitArray.r(4);
                            }
                            if (parsableBitArray.g()) {
                                parsableBitArray.r(4);
                            }
                            if (parsableBitArray.g()) {
                                parsableBitArray.r(4);
                            }
                            if (parsableBitArray.g()) {
                                parsableBitArray.r(4);
                            }
                            if (parsableBitArray.g()) {
                                parsableBitArray.r(4);
                            }
                            if (parsableBitArray.g()) {
                                if (parsableBitArray.g()) {
                                    parsableBitArray.r(4);
                                }
                                if (parsableBitArray.g()) {
                                    parsableBitArray.r(4);
                                }
                            }
                        }
                        if (parsableBitArray.g()) {
                            parsableBitArray.r(5);
                            if (parsableBitArray.g()) {
                                parsableBitArray.r(7);
                                if (parsableBitArray.g()) {
                                    parsableBitArray.r(8);
                                }
                            }
                        }
                        parsableBitArray.r((iH7 + 2) * 8);
                        parsableBitArray.c();
                    }
                    if (iH5 < 2) {
                        if (parsableBitArray.g()) {
                            parsableBitArray.r(14);
                        }
                        if (iH5 == 0 && parsableBitArray.g()) {
                            parsableBitArray.r(14);
                        }
                    }
                    if (parsableBitArray.g()) {
                        if (i16 == 0) {
                            parsableBitArray.r(5);
                        } else {
                            for (int i25 = 0; i25 < i18; i25++) {
                                if (parsableBitArray.g()) {
                                    parsableBitArray.r(5);
                                }
                            }
                        }
                    }
                }
            }
            if (parsableBitArray.g()) {
                parsableBitArray.r(5);
                if (iH5 == 2) {
                    parsableBitArray.r(4);
                }
                if (iH5 >= 6) {
                    parsableBitArray.r(2);
                }
                if (parsableBitArray.g()) {
                    parsableBitArray.r(8);
                }
                if (iH5 == 0 && parsableBitArray.g()) {
                    parsableBitArray.r(8);
                }
                if (iH3 < 3) {
                    parsableBitArray.q();
                }
            }
            if (i22 == 0 && i16 != 3) {
                parsableBitArray.q();
            }
            if (i22 == 2 && (i16 == 3 || parsableBitArray.g())) {
                i19 = 6;
                parsableBitArray.r(6);
            } else {
                i19 = 6;
            }
            str = (parsableBitArray.g() && parsableBitArray.h(i19) == 1 && parsableBitArray.h(8) == 1) ? "audio/eac3-joc" : "audio/eac3";
            i11 = i22;
            i12 = i24;
            i14 = iH2;
            i15 = i17;
            i13 = iA;
        } else {
            parsableBitArray.r(32);
            int iH8 = parsableBitArray.h(2);
            String str2 = iH8 == 3 ? null : "audio/ac3";
            int iH9 = parsableBitArray.h(6);
            int i26 = BITRATE_BY_HALF_FRMSIZECOD[iH9 / 2] * 1000;
            int iC = c(iH8, iH9);
            parsableBitArray.r(8);
            int iH10 = parsableBitArray.h(3);
            if ((iH10 & 1) != 0 && iH10 != 1) {
                parsableBitArray.r(2);
            }
            if ((iH10 & 4) != 0) {
                parsableBitArray.r(2);
            }
            if (iH10 == 2) {
                parsableBitArray.r(2);
            }
            int[] iArr = SAMPLE_RATE_BY_FSCOD;
            int i27 = iH8 < iArr.length ? iArr[iH8] : -1;
            i10 = CHANNEL_COUNT_BY_ACMOD[iH10] + (parsableBitArray.g() ? 1 : 0);
            i11 = -1;
            str = str2;
            i12 = AC3_SYNCFRAME_AUDIO_SAMPLE_COUNT;
            i13 = i26;
            i14 = iC;
            i15 = i27;
        }
        return new SyncFrameInfo(str, i11, i10, i15, i14, i12, i13);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0062  */
    public static Format h(ParsableByteArray parsableByteArray, String str, String str2, @Nullable DrmInitData drmInitData) {
        String str3;
        ParsableBitArray parsableBitArray = new ParsableBitArray();
        parsableBitArray.m(parsableByteArray);
        int iH = parsableBitArray.h(13) * 1000;
        parsableBitArray.r(3);
        int i10 = SAMPLE_RATE_BY_FSCOD[parsableBitArray.h(2)];
        parsableBitArray.r(10);
        int i11 = CHANNEL_COUNT_BY_ACMOD[parsableBitArray.h(3)];
        if (parsableBitArray.h(1) != 0) {
            i11++;
        }
        parsableBitArray.r(3);
        int iH2 = parsableBitArray.h(4);
        parsableBitArray.r(1);
        if (iH2 > 0) {
            parsableBitArray.r(6);
            if (parsableBitArray.h(1) != 0) {
                i11 += 2;
            }
            parsableBitArray.r(1);
        }
        if (parsableBitArray.b() > 7) {
            parsableBitArray.r(7);
            if (parsableBitArray.h(1) != 0) {
                str3 = "audio/eac3-joc";
            } else {
                str3 = "audio/eac3";
            }
        } else {
            str3 = "audio/eac3";
        }
        parsableBitArray.c();
        parsableByteArray.U(parsableBitArray.d());
        return new Format.Builder().U(str).g0(str3).J(i11).h0(i10).O(drmInitData).X(str2).b0(iH).G();
    }

    private Ac3Util() {
    }

    public static int b(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit() - 10;
        for (int i10 = iPosition; i10 <= iLimit; i10++) {
            if ((Util.J(byteBuffer, i10 + 4) & (-2)) == -126718022) {
                return i10 - iPosition;
            }
        }
        return -1;
    }

    public static int e(ByteBuffer byteBuffer) {
        int i10 = 3;
        if (((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10) {
            if (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3) {
                i10 = (byteBuffer.get(byteBuffer.position() + 4) & TarConstants.LF_NORMAL) >> 4;
            }
            return BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD[i10] * 256;
        }
        return AC3_SYNCFRAME_AUDIO_SAMPLE_COUNT;
    }

    public static int i(ByteBuffer byteBuffer, int i10) {
        boolean z6;
        int i11;
        if ((byteBuffer.get(byteBuffer.position() + i10 + 7) & 255) == 187) {
            z6 = true;
        } else {
            z6 = false;
        }
        int iPosition = byteBuffer.position() + i10;
        if (z6) {
            i11 = 9;
        } else {
            i11 = 8;
        }
        return 40 << ((byteBuffer.get(iPosition + i11) >> 4) & 7);
    }
}
