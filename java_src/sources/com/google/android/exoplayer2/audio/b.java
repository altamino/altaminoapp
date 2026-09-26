package com.google.android.exoplayer2.audio;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.narvii.chat.video.RtcChatManager;
import com.narvii.media.MediaRecordManager;
import com.narvii.monetization.bubble.BubbleService;
import com.narvii.util.ws.WsMessage;
import io.agora.rtc.internal.RtcEngineEvent;
import java.nio.ByteBuffer;
import okio.Utf8;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: loaded from: classes3.dex */
public final class b {
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

    /* JADX INFO: renamed from: com.google.android.exoplayer2.audio.b$b, reason: collision with other inner class name */
    public static final class C0164b {
        public static final int STREAM_TYPE_TYPE0 = 0;
        public static final int STREAM_TYPE_TYPE1 = 1;
        public static final int STREAM_TYPE_TYPE2 = 2;
        public static final int STREAM_TYPE_UNDEFINED = -1;
        public final int channelCount;
        public final int frameSize;

        @Nullable
        public final String mimeType;
        public final int sampleCount;
        public final int sampleRate;
        public final int streamType;

        private C0164b(@Nullable String str, int i10, int i11, int i12, int i13, int i14) {
            this.mimeType = str;
            this.streamType = i10;
            this.channelCount = i11;
            this.sampleRate = i12;
            this.frameSize = i13;
            this.sampleCount = i14;
        }
    }

    public static int f(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (((bArr[5] & 248) >> 3) > 10) {
            return (((bArr[3] & 255) | ((bArr[2] & 7) << 8)) + 1) * 2;
        }
        byte b7 = bArr[4];
        return b((b7 & 192) >> 6, b7 & Utf8.REPLACEMENT_BYTE);
    }

    public static a2 g(com.google.android.exoplayer2.util.c0 c0Var, String str, String str2, @Nullable DrmInitData drmInitData) {
        c0Var.Q(2);
        int i10 = SAMPLE_RATE_BY_FSCOD[(c0Var.D() & 192) >> 6];
        int iD = c0Var.D();
        int i11 = CHANNEL_COUNT_BY_ACMOD[(iD & 14) >> 1];
        if ((iD & 1) != 0) {
            i11++;
        }
        if (((c0Var.D() & 30) >> 1) > 0 && (2 & c0Var.D()) != 0) {
            i11 += 2;
        }
        return new a2.b().S(str).e0((c0Var.a() <= 0 || (c0Var.D() & 1) == 0) ? "audio/eac3" : "audio/eac3-joc").H(i11).f0(i10).M(drmInitData).V(str2).E();
    }

    public static int i(byte[] bArr) {
        if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111) {
            byte b7 = bArr[7];
            if ((b7 & 254) == 186) {
                return 40 << ((bArr[(b7 & 255) == 187 ? '\t' : '\b'] >> 4) & 7);
            }
        }
        return 0;
    }

    private static int b(int i10, int i11) {
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

    public static C0164b e(com.google.android.exoplayer2.util.b0 b0Var) {
        int iB;
        int i10;
        int i11;
        int i12;
        int i13;
        String str;
        int iH;
        int i14;
        int i15;
        int i16;
        int i17;
        int iE = b0Var.e();
        b0Var.r(40);
        boolean z6 = b0Var.h(5) > 10;
        b0Var.p(iE);
        int i18 = -1;
        if (z6) {
            b0Var.r(16);
            int iH2 = b0Var.h(2);
            if (iH2 == 0) {
                i18 = 0;
            } else if (iH2 == 1) {
                i18 = 1;
            } else if (iH2 == 2) {
                i18 = 2;
            }
            b0Var.r(3);
            iB = (b0Var.h(11) + 1) * 2;
            int iH3 = b0Var.h(2);
            if (iH3 == 3) {
                i10 = SAMPLE_RATE_BY_FSCOD2[b0Var.h(2)];
                i14 = 6;
                iH = 3;
            } else {
                iH = b0Var.h(2);
                i14 = BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD[iH];
                i10 = SAMPLE_RATE_BY_FSCOD[iH3];
            }
            i12 = i14 * 256;
            int iH4 = b0Var.h(3);
            boolean zG = b0Var.g();
            i11 = CHANNEL_COUNT_BY_ACMOD[iH4] + (zG ? 1 : 0);
            b0Var.r(10);
            if (b0Var.g()) {
                b0Var.r(8);
            }
            if (iH4 == 0) {
                b0Var.r(5);
                if (b0Var.g()) {
                    b0Var.r(8);
                }
            }
            if (i18 == 1 && b0Var.g()) {
                b0Var.r(16);
            }
            if (b0Var.g()) {
                if (iH4 > 2) {
                    b0Var.r(2);
                }
                if ((iH4 & 1) == 0 || iH4 <= 2) {
                    i16 = 6;
                } else {
                    i16 = 6;
                    b0Var.r(6);
                }
                if ((iH4 & 4) != 0) {
                    b0Var.r(i16);
                }
                if (zG && b0Var.g()) {
                    b0Var.r(5);
                }
                if (i18 == 0) {
                    if (b0Var.g()) {
                        i17 = 6;
                        b0Var.r(6);
                    } else {
                        i17 = 6;
                    }
                    if (iH4 == 0 && b0Var.g()) {
                        b0Var.r(i17);
                    }
                    if (b0Var.g()) {
                        b0Var.r(i17);
                    }
                    int iH5 = b0Var.h(2);
                    if (iH5 == 1) {
                        b0Var.r(5);
                    } else if (iH5 == 2) {
                        b0Var.r(12);
                    } else if (iH5 == 3) {
                        int iH6 = b0Var.h(5);
                        if (b0Var.g()) {
                            b0Var.r(5);
                            if (b0Var.g()) {
                                b0Var.r(4);
                            }
                            if (b0Var.g()) {
                                b0Var.r(4);
                            }
                            if (b0Var.g()) {
                                b0Var.r(4);
                            }
                            if (b0Var.g()) {
                                b0Var.r(4);
                            }
                            if (b0Var.g()) {
                                b0Var.r(4);
                            }
                            if (b0Var.g()) {
                                b0Var.r(4);
                            }
                            if (b0Var.g()) {
                                b0Var.r(4);
                            }
                            if (b0Var.g()) {
                                if (b0Var.g()) {
                                    b0Var.r(4);
                                }
                                if (b0Var.g()) {
                                    b0Var.r(4);
                                }
                            }
                        }
                        if (b0Var.g()) {
                            b0Var.r(5);
                            if (b0Var.g()) {
                                b0Var.r(7);
                                if (b0Var.g()) {
                                    b0Var.r(8);
                                }
                            }
                        }
                        b0Var.r((iH6 + 2) * 8);
                        b0Var.c();
                    }
                    if (iH4 < 2) {
                        if (b0Var.g()) {
                            b0Var.r(14);
                        }
                        if (iH4 == 0 && b0Var.g()) {
                            b0Var.r(14);
                        }
                    }
                    if (b0Var.g()) {
                        if (iH == 0) {
                            b0Var.r(5);
                        } else {
                            for (int i19 = 0; i19 < i14; i19++) {
                                if (b0Var.g()) {
                                    b0Var.r(5);
                                }
                            }
                        }
                    }
                }
            }
            if (b0Var.g()) {
                b0Var.r(5);
                if (iH4 == 2) {
                    b0Var.r(4);
                }
                if (iH4 >= 6) {
                    b0Var.r(2);
                }
                if (b0Var.g()) {
                    b0Var.r(8);
                }
                if (iH4 == 0 && b0Var.g()) {
                    b0Var.r(8);
                }
                if (iH3 < 3) {
                    b0Var.q();
                }
            }
            if (i18 == 0 && iH != 3) {
                b0Var.q();
            }
            if (i18 == 2 && (iH == 3 || b0Var.g())) {
                i15 = 6;
                b0Var.r(6);
            } else {
                i15 = 6;
            }
            str = (b0Var.g() && b0Var.h(i15) == 1 && b0Var.h(8) == 1) ? "audio/eac3-joc" : "audio/eac3";
            i13 = i18;
        } else {
            b0Var.r(32);
            int iH7 = b0Var.h(2);
            String str2 = iH7 == 3 ? null : "audio/ac3";
            iB = b(iH7, b0Var.h(6));
            b0Var.r(8);
            int iH8 = b0Var.h(3);
            if ((iH8 & 1) != 0 && iH8 != 1) {
                b0Var.r(2);
            }
            if ((iH8 & 4) != 0) {
                b0Var.r(2);
            }
            if (iH8 == 2) {
                b0Var.r(2);
            }
            int[] iArr = SAMPLE_RATE_BY_FSCOD;
            i10 = iH7 < iArr.length ? iArr[iH7] : -1;
            i11 = CHANNEL_COUNT_BY_ACMOD[iH8] + (b0Var.g() ? 1 : 0);
            i12 = AC3_SYNCFRAME_AUDIO_SAMPLE_COUNT;
            i13 = -1;
            str = str2;
        }
        return new C0164b(str, i13, i11, i10, iB, i12);
    }

    public static int a(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit() - 10;
        for (int i10 = iPosition; i10 <= iLimit; i10++) {
            if ((com.google.android.exoplayer2.util.o0.F(byteBuffer, i10 + 4) & (-2)) == -126718022) {
                return i10 - iPosition;
            }
        }
        return -1;
    }

    public static a2 c(com.google.android.exoplayer2.util.c0 c0Var, String str, String str2, @Nullable DrmInitData drmInitData) {
        int i10 = SAMPLE_RATE_BY_FSCOD[(c0Var.D() & 192) >> 6];
        int iD = c0Var.D();
        int i11 = CHANNEL_COUNT_BY_ACMOD[(iD & 56) >> 3];
        if ((iD & 4) != 0) {
            i11++;
        }
        return new a2.b().S(str).e0("audio/ac3").H(i11).f0(i10).M(drmInitData).V(str2).E();
    }

    public static int d(ByteBuffer byteBuffer) {
        int i10 = 3;
        if (((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10) {
            if (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3) {
                i10 = (byteBuffer.get(byteBuffer.position() + 4) & TarConstants.LF_NORMAL) >> 4;
            }
            return BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD[i10] * 256;
        }
        return AC3_SYNCFRAME_AUDIO_SAMPLE_COUNT;
    }

    public static int h(ByteBuffer byteBuffer, int i10) {
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
