package com.google.android.exoplayer2.video;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import android.view.Display;
import android.view.Surface;
import androidx.annotation.CallSuper;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.work.WorkRequest;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.b2;
import com.google.android.exoplayer2.n3;
import com.google.android.exoplayer2.util.m0;
import com.google.android.exoplayer2.util.o0;
import com.google.android.gms.common.Scopes;
import com.narvii.util.ws.WsMessage;
import java.nio.ByteBuffer;
import java.util.List;
import okio.Utf8;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: loaded from: classes10.dex */
public class h extends com.google.android.exoplayer2.mediacodec.o {
    private static final int HEVC_MAX_INPUT_SIZE_THRESHOLD = 2097152;
    private static final float INITIAL_FORMAT_MAX_INPUT_SIZE_SCALE_FACTOR = 1.5f;
    private static final String KEY_CROP_BOTTOM = "crop-bottom";
    private static final String KEY_CROP_LEFT = "crop-left";
    private static final String KEY_CROP_RIGHT = "crop-right";
    private static final String KEY_CROP_TOP = "crop-top";
    private static final int[] STANDARD_LONG_EDGE_VIDEO_PX = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};
    private static final String TAG = "MediaCodecVideoRenderer";
    private static final long TUNNELING_EOS_PRESENTATION_TIME_US = Long.MAX_VALUE;
    private static boolean deviceNeedsSetOutputSurfaceWorkaround;
    private static boolean evaluatedDeviceNeedsSetOutputSurfaceWorkaround;
    private final long allowedJoiningTimeMs;
    private int buffersInCodecCount;
    private boolean codecHandlesHdr10PlusOutOfBandMetadata;
    private b codecMaxValues;
    private boolean codecNeedsSetOutputSurfaceWorkaround;
    private int consecutiveDroppedFrameCount;
    private final Context context;
    private int currentHeight;
    private float currentPixelWidthHeightRatio;
    private int currentUnappliedRotationDegrees;
    private int currentWidth;
    private final boolean deviceNeedsNoPostProcessWorkaround;
    private long droppedFrameAccumulationStartTimeMs;
    private int droppedFrames;
    private final y.a eventDispatcher;

    @Nullable
    private k frameMetadataListener;
    private final m frameReleaseHelper;
    private boolean haveReportedFirstFrameRenderedForCurrentSurface;
    private long initialPositionUs;
    private long joiningDeadlineMs;
    private long lastBufferPresentationTimeUs;
    private long lastRenderRealtimeUs;
    private final int maxDroppedFramesToNotify;
    private boolean mayRenderFirstFrameAfterEnableIfNotStarted;

    @Nullable
    private PlaceholderSurface placeholderSurface;
    private boolean renderedFirstFrameAfterEnable;
    private boolean renderedFirstFrameAfterReset;

    @Nullable
    private a0 reportedVideoSize;
    private int scalingMode;

    @Nullable
    private Surface surface;
    private long totalVideoFrameProcessingOffsetUs;
    private boolean tunneling;
    private int tunnelingAudioSessionId;

    @Nullable
    c tunnelingOnFrameRenderedListener;
    private int videoFrameProcessingOffsetCount;

    @RequiresApi
    private static final class a {
        @DoNotInline
        public static boolean a(Context context) {
            DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
            Display display = displayManager != null ? displayManager.getDisplay(0) : null;
            if (display == null || !display.isHdr()) {
                return false;
            }
            for (int i10 : display.getHdrCapabilities().getSupportedHdrTypes()) {
                if (i10 == 1) {
                    return true;
                }
            }
            return false;
        }
    }

    @RequiresApi
    private final class c implements com.google.android.exoplayer2.mediacodec.l.c, Handler.Callback {
        private static final int HANDLE_FRAME_RENDERED = 0;
        private final Handler handler;

        public c(com.google.android.exoplayer2.mediacodec.l lVar) {
            Handler handlerV = o0.v(this);
            this.handler = handlerV;
            lVar.m(this, handlerV);
        }

        private void b(long j6) {
            h hVar = h.this;
            if (this != hVar.tunnelingOnFrameRenderedListener) {
                return;
            }
            if (j6 == Long.MAX_VALUE) {
                hVar.A1();
                return;
            }
            try {
                hVar.z1(j6);
            } catch (com.google.android.exoplayer2.q e) {
                h.this.O0(e);
            }
        }

        @Override // com.google.android.exoplayer2.mediacodec.l.c
        public void a(com.google.android.exoplayer2.mediacodec.l lVar, long j6, long j10) {
            if (o0.SDK_INT >= 30) {
                b(j6);
            } else {
                this.handler.sendMessageAtFrontOfQueue(Message.obtain(this.handler, 0, (int) (j6 >> 32), (int) j6));
            }
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            b(o0.M0(message.arg1, message.arg2));
            return true;
        }
    }

    public h(Context context, com.google.android.exoplayer2.mediacodec.q qVar) {
        this(context, qVar, 0L);
    }

    private void b1() {
        com.google.android.exoplayer2.mediacodec.l lVarX;
        this.renderedFirstFrameAfterReset = false;
        if (o0.SDK_INT < 23 || !this.tunneling || (lVarX = X()) == null) {
            return;
        }
        this.tunnelingOnFrameRenderedListener = new c(lVarX);
    }

    private void c1() {
        this.reportedVideoSize = null;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static boolean h1() {
        int i10 = o0.SDK_INT;
        byte b7 = 7;
        if (i10 <= 28) {
            String str = o0.DEVICE;
            str.hashCode();
            switch (str) {
                case "dangal":
                case "dangalFHD":
                case "dangalUHD":
                case "oneday":
                case "aquaman":
                case "magnolia":
                case "once":
                case "machuca":
                    return true;
            }
        }
        if (i10 <= 27 && "HWEML".equals(o0.DEVICE)) {
            return true;
        }
        String str2 = o0.MODEL;
        str2.hashCode();
        switch (str2) {
            case "AFTJMST12":
            case "AFTKMST12":
            case "AFTA":
            case "AFTN":
            case "AFTR":
            case "AFTEU011":
            case "AFTEU014":
            case "AFTSO001":
            case "AFTEUFF014":
                return true;
            default:
                if (i10 <= 26) {
                    String str3 = o0.DEVICE;
                    str3.hashCode();
                    switch (str3.hashCode()) {
                        case -2144781245:
                            b7 = !str3.equals("GIONEE_SWW1609") ? (byte) -1 : (byte) 0;
                            break;
                        case -2144781185:
                            b7 = !str3.equals("GIONEE_SWW1627") ? (byte) -1 : (byte) 1;
                            break;
                        case -2144781160:
                            b7 = !str3.equals("GIONEE_SWW1631") ? (byte) -1 : (byte) 2;
                            break;
                        case -2097309513:
                            b7 = !str3.equals("K50a40") ? (byte) -1 : (byte) 3;
                            break;
                        case -2022874474:
                            b7 = !str3.equals("CP8676_I02") ? (byte) -1 : (byte) 4;
                            break;
                        case -1978993182:
                            b7 = !str3.equals("NX541J") ? (byte) -1 : (byte) 5;
                            break;
                        case -1978990237:
                            b7 = !str3.equals("NX573J") ? (byte) -1 : (byte) 6;
                            break;
                        case -1936688988:
                            if (!str3.equals("PGN528")) {
                                b7 = -1;
                            }
                            break;
                        case -1936688066:
                            b7 = !str3.equals("PGN610") ? (byte) -1 : (byte) 8;
                            break;
                        case -1936688065:
                            b7 = !str3.equals("PGN611") ? (byte) -1 : (byte) 9;
                            break;
                        case -1931988508:
                            b7 = !str3.equals("AquaPowerM") ? (byte) -1 : (byte) 10;
                            break;
                        case -1885099851:
                            b7 = !str3.equals("RAIJIN") ? (byte) -1 : com.google.common.base.c.VT;
                            break;
                        case -1696512866:
                            b7 = !str3.equals("XT1663") ? (byte) -1 : com.google.common.base.c.FF;
                            break;
                        case -1680025915:
                            b7 = !str3.equals("ComioS1") ? (byte) -1 : com.google.common.base.c.CR;
                            break;
                        case -1615810839:
                            b7 = !str3.equals("Phantom6") ? (byte) -1 : com.google.common.base.c.SO;
                            break;
                        case -1600724499:
                            b7 = !str3.equals("pacificrim") ? (byte) -1 : com.google.common.base.c.SI;
                            break;
                        case -1554255044:
                            b7 = !str3.equals("vernee_M5") ? (byte) -1 : com.google.common.base.c.DLE;
                            break;
                        case -1481772737:
                            b7 = !str3.equals("panell_dl") ? (byte) -1 : (byte) 17;
                            break;
                        case -1481772730:
                            b7 = !str3.equals("panell_ds") ? (byte) -1 : com.google.common.base.c.DC2;
                            break;
                        case -1481772729:
                            b7 = !str3.equals("panell_dt") ? (byte) -1 : (byte) 19;
                            break;
                        case -1320080169:
                            b7 = !str3.equals("GiONEE_GBL7319") ? (byte) -1 : com.google.common.base.c.DC4;
                            break;
                        case -1217592143:
                            b7 = !str3.equals("BRAVIA_ATV2") ? (byte) -1 : com.google.common.base.c.NAK;
                            break;
                        case -1180384755:
                            b7 = !str3.equals("iris60") ? (byte) -1 : com.google.common.base.c.SYN;
                            break;
                        case -1139198265:
                            b7 = !str3.equals("Slate_Pro") ? (byte) -1 : com.google.common.base.c.ETB;
                            break;
                        case -1052835013:
                            b7 = !str3.equals("namath") ? (byte) -1 : com.google.common.base.c.CAN;
                            break;
                        case -993250464:
                            b7 = !str3.equals("A10-70F") ? (byte) -1 : com.google.common.base.c.EM;
                            break;
                        case -993250458:
                            b7 = !str3.equals("A10-70L") ? (byte) -1 : (byte) 26;
                            break;
                        case -965403638:
                            b7 = !str3.equals("s905x018") ? (byte) -1 : (byte) 27;
                            break;
                        case -958336948:
                            b7 = !str3.equals("ELUGA_Ray_X") ? (byte) -1 : (byte) 28;
                            break;
                        case -879245230:
                            b7 = !str3.equals("tcl_eu") ? (byte) -1 : com.google.common.base.c.GS;
                            break;
                        case -842500323:
                            b7 = !str3.equals("nicklaus_f") ? (byte) -1 : com.google.common.base.c.RS;
                            break;
                        case -821392978:
                            b7 = !str3.equals("A7000-a") ? (byte) -1 : com.google.common.base.c.US;
                            break;
                        case -797483286:
                            b7 = !str3.equals("SVP-DTV15") ? (byte) -1 : (byte) 32;
                            break;
                        case -794946968:
                            b7 = !str3.equals("watson") ? (byte) -1 : (byte) 33;
                            break;
                        case -788334647:
                            b7 = !str3.equals("whyred") ? (byte) -1 : (byte) 34;
                            break;
                        case -782144577:
                            b7 = !str3.equals("OnePlus5T") ? (byte) -1 : (byte) 35;
                            break;
                        case -575125681:
                            b7 = !str3.equals("GiONEE_CBL7513") ? (byte) -1 : (byte) 36;
                            break;
                        case -521118391:
                            b7 = !str3.equals("GIONEE_GBL7360") ? (byte) -1 : (byte) 37;
                            break;
                        case -430914369:
                            b7 = !str3.equals("Pixi4-7_3G") ? (byte) -1 : (byte) 38;
                            break;
                        case -290434366:
                            b7 = !str3.equals("taido_row") ? (byte) -1 : (byte) 39;
                            break;
                        case -282781963:
                            b7 = !str3.equals("BLACK-1X") ? (byte) -1 : (byte) 40;
                            break;
                        case -277133239:
                            b7 = !str3.equals("Z12_PRO") ? (byte) -1 : (byte) 41;
                            break;
                        case -173639913:
                            b7 = !str3.equals("ELUGA_A3_Pro") ? (byte) -1 : (byte) 42;
                            break;
                        case -56598463:
                            b7 = !str3.equals("woods_fn") ? (byte) -1 : (byte) 43;
                            break;
                        case 2126:
                            b7 = !str3.equals("C1") ? (byte) -1 : (byte) 44;
                            break;
                        case 2564:
                            b7 = !str3.equals("Q5") ? (byte) -1 : (byte) 45;
                            break;
                        case 2715:
                            b7 = !str3.equals("V1") ? (byte) -1 : (byte) 46;
                            break;
                        case 2719:
                            b7 = !str3.equals("V5") ? (byte) -1 : (byte) 47;
                            break;
                        case 3091:
                            b7 = !str3.equals("b5") ? (byte) -1 : TarConstants.LF_NORMAL;
                            break;
                        case 3483:
                            b7 = !str3.equals("mh") ? (byte) -1 : TarConstants.LF_LINK;
                            break;
                        case 73405:
                            b7 = !str3.equals("JGZ") ? (byte) -1 : TarConstants.LF_SYMLINK;
                            break;
                        case 75537:
                            b7 = !str3.equals("M04") ? (byte) -1 : TarConstants.LF_CHR;
                            break;
                        case 75739:
                            b7 = !str3.equals("M5c") ? (byte) -1 : TarConstants.LF_BLK;
                            break;
                        case 76779:
                            b7 = !str3.equals("MX6") ? (byte) -1 : TarConstants.LF_DIR;
                            break;
                        case 78669:
                            b7 = !str3.equals("P85") ? (byte) -1 : TarConstants.LF_FIFO;
                            break;
                        case 79305:
                            b7 = !str3.equals("PLE") ? (byte) -1 : TarConstants.LF_CONTIG;
                            break;
                        case 80618:
                            b7 = !str3.equals("QX1") ? (byte) -1 : (byte) 56;
                            break;
                        case 88274:
                            b7 = !str3.equals("Z80") ? (byte) -1 : (byte) 57;
                            break;
                        case 98846:
                            b7 = !str3.equals("cv1") ? (byte) -1 : (byte) 58;
                            break;
                        case 98848:
                            b7 = !str3.equals("cv3") ? (byte) -1 : (byte) 59;
                            break;
                        case 99329:
                            b7 = !str3.equals("deb") ? (byte) -1 : (byte) 60;
                            break;
                        case 101481:
                            b7 = !str3.equals("flo") ? (byte) -1 : (byte) 61;
                            break;
                        case 1513190:
                            b7 = !str3.equals("1601") ? (byte) -1 : (byte) 62;
                            break;
                        case 1514184:
                            b7 = !str3.equals("1713") ? (byte) -1 : Utf8.REPLACEMENT_BYTE;
                            break;
                        case 1514185:
                            b7 = !str3.equals("1714") ? (byte) -1 : (byte) 64;
                            break;
                        case 2133089:
                            b7 = !str3.equals("F01H") ? (byte) -1 : (byte) 65;
                            break;
                        case 2133091:
                            b7 = !str3.equals("F01J") ? (byte) -1 : (byte) 66;
                            break;
                        case 2133120:
                            b7 = !str3.equals("F02H") ? (byte) -1 : (byte) 67;
                            break;
                        case 2133151:
                            b7 = !str3.equals("F03H") ? (byte) -1 : (byte) 68;
                            break;
                        case 2133182:
                            b7 = !str3.equals("F04H") ? (byte) -1 : (byte) 69;
                            break;
                        case 2133184:
                            b7 = !str3.equals("F04J") ? (byte) -1 : (byte) 70;
                            break;
                        case 2436959:
                            b7 = !str3.equals("P681") ? (byte) -1 : (byte) 71;
                            break;
                        case 2463773:
                            b7 = !str3.equals("Q350") ? (byte) -1 : (byte) 72;
                            break;
                        case 2464648:
                            b7 = !str3.equals("Q427") ? (byte) -1 : (byte) 73;
                            break;
                        case 2689555:
                            b7 = !str3.equals("XE2X") ? (byte) -1 : (byte) 74;
                            break;
                        case 3154429:
                            b7 = !str3.equals("fugu") ? (byte) -1 : TarConstants.LF_GNUTYPE_LONGLINK;
                            break;
                        case 3284551:
                            b7 = !str3.equals("kate") ? (byte) -1 : TarConstants.LF_GNUTYPE_LONGNAME;
                            break;
                        case 3351335:
                            b7 = !str3.equals("mido") ? (byte) -1 : (byte) 77;
                            break;
                        case 3386211:
                            b7 = !str3.equals("p212") ? (byte) -1 : (byte) 78;
                            break;
                        case 41325051:
                            b7 = !str3.equals("MEIZU_M5") ? (byte) -1 : (byte) 79;
                            break;
                        case 51349633:
                            b7 = !str3.equals("601LV") ? (byte) -1 : (byte) 80;
                            break;
                        case 51350594:
                            b7 = !str3.equals("602LV") ? (byte) -1 : (byte) 81;
                            break;
                        case 55178625:
                            b7 = !str3.equals("Aura_Note_2") ? (byte) -1 : (byte) 82;
                            break;
                        case 61542055:
                            b7 = !str3.equals("A1601") ? (byte) -1 : TarConstants.LF_GNUTYPE_SPARSE;
                            break;
                        case 65355429:
                            b7 = !str3.equals("E5643") ? (byte) -1 : (byte) 84;
                            break;
                        case 66214468:
                            b7 = !str3.equals("F3111") ? (byte) -1 : (byte) 85;
                            break;
                        case 66214470:
                            b7 = !str3.equals("F3113") ? (byte) -1 : (byte) 86;
                            break;
                        case 66214473:
                            b7 = !str3.equals("F3116") ? (byte) -1 : (byte) 87;
                            break;
                        case 66215429:
                            b7 = !str3.equals("F3211") ? (byte) -1 : TarConstants.LF_PAX_EXTENDED_HEADER_UC;
                            break;
                        case 66215431:
                            b7 = !str3.equals("F3213") ? (byte) -1 : (byte) 89;
                            break;
                        case 66215433:
                            b7 = !str3.equals("F3215") ? (byte) -1 : (byte) 90;
                            break;
                        case 66216390:
                            b7 = !str3.equals("F3311") ? (byte) -1 : (byte) 91;
                            break;
                        case 76402249:
                            b7 = !str3.equals("PRO7S") ? (byte) -1 : (byte) 92;
                            break;
                        case 76404105:
                            b7 = !str3.equals("Q4260") ? (byte) -1 : (byte) 93;
                            break;
                        case 76404911:
                            b7 = !str3.equals("Q4310") ? (byte) -1 : (byte) 94;
                            break;
                        case 80963634:
                            b7 = !str3.equals("V23GB") ? (byte) -1 : (byte) 95;
                            break;
                        case 82882791:
                            b7 = !str3.equals("X3_HK") ? (byte) -1 : (byte) 96;
                            break;
                        case 98715550:
                            b7 = !str3.equals("i9031") ? (byte) -1 : (byte) 97;
                            break;
                        case 101370885:
                            b7 = !str3.equals("l5460") ? (byte) -1 : (byte) 98;
                            break;
                        case 102844228:
                            b7 = !str3.equals("le_x6") ? (byte) -1 : (byte) 99;
                            break;
                        case 165221241:
                            b7 = !str3.equals("A2016a40") ? (byte) -1 : (byte) 100;
                            break;
                        case 182191441:
                            b7 = !str3.equals("CPY83_I00") ? (byte) -1 : (byte) 101;
                            break;
                        case 245388979:
                            b7 = !str3.equals("marino_f") ? (byte) -1 : (byte) 102;
                            break;
                        case 287431619:
                            b7 = !str3.equals("griffin") ? (byte) -1 : TarConstants.LF_PAX_GLOBAL_EXTENDED_HEADER;
                            break;
                        case 307593612:
                            b7 = !str3.equals("A7010a48") ? (byte) -1 : (byte) 104;
                            break;
                        case 308517133:
                            b7 = !str3.equals("A7020a48") ? (byte) -1 : (byte) 105;
                            break;
                        case 316215098:
                            b7 = !str3.equals("TB3-730F") ? (byte) -1 : (byte) 106;
                            break;
                        case 316215116:
                            b7 = !str3.equals("TB3-730X") ? (byte) -1 : (byte) 107;
                            break;
                        case 316246811:
                            b7 = !str3.equals("TB3-850F") ? (byte) -1 : (byte) 108;
                            break;
                        case 316246818:
                            b7 = !str3.equals("TB3-850M") ? (byte) -1 : (byte) 109;
                            break;
                        case 407160593:
                            b7 = !str3.equals("Pixi5-10_4G") ? (byte) -1 : (byte) 110;
                            break;
                        case 507412548:
                            b7 = !str3.equals("QM16XE_U") ? (byte) -1 : (byte) 111;
                            break;
                        case 793982701:
                            b7 = !str3.equals("GIONEE_WBL5708") ? (byte) -1 : (byte) 112;
                            break;
                        case 794038622:
                            b7 = !str3.equals("GIONEE_WBL7365") ? (byte) -1 : (byte) 113;
                            break;
                        case 794040393:
                            b7 = !str3.equals("GIONEE_WBL7519") ? (byte) -1 : (byte) 114;
                            break;
                        case 835649806:
                            b7 = !str3.equals("manning") ? (byte) -1 : (byte) 115;
                            break;
                        case 917340916:
                            b7 = !str3.equals("A7000plus") ? (byte) -1 : (byte) 116;
                            break;
                        case 958008161:
                            b7 = !str3.equals("j2xlteins") ? (byte) -1 : (byte) 117;
                            break;
                        case 1060579533:
                            b7 = !str3.equals("panell_d") ? (byte) -1 : (byte) 118;
                            break;
                        case 1150207623:
                            b7 = !str3.equals("LS-5017") ? (byte) -1 : (byte) 119;
                            break;
                        case 1176899427:
                            b7 = !str3.equals("itel_S41") ? (byte) -1 : TarConstants.LF_PAX_EXTENDED_HEADER_LC;
                            break;
                        case 1280332038:
                            b7 = !str3.equals("hwALE-H") ? (byte) -1 : (byte) 121;
                            break;
                        case 1306947716:
                            b7 = !str3.equals("EverStar_S") ? (byte) -1 : (byte) 122;
                            break;
                        case 1349174697:
                            b7 = !str3.equals("htc_e56ml_dtul") ? (byte) -1 : (byte) 123;
                            break;
                        case 1522194893:
                            b7 = !str3.equals("woods_f") ? (byte) -1 : (byte) 124;
                            break;
                        case 1691543273:
                            b7 = !str3.equals("CPH1609") ? (byte) -1 : (byte) 125;
                            break;
                        case 1691544261:
                            b7 = !str3.equals("CPH1715") ? (byte) -1 : (byte) 126;
                            break;
                        case 1709443163:
                            b7 = !str3.equals("iball8735_9806") ? (byte) -1 : (byte) 127;
                            break;
                        case 1865889110:
                            b7 = !str3.equals("santoni") ? (byte) -1 : (byte) 128;
                            break;
                        case 1906253259:
                            b7 = !str3.equals("PB2-670M") ? (byte) -1 : (byte) 129;
                            break;
                        case 1977196784:
                            b7 = !str3.equals("Infinix-X572") ? (byte) -1 : (byte) 130;
                            break;
                        case 2006372676:
                            b7 = !str3.equals("BRAVIA_ATV3_4K") ? (byte) -1 : (byte) 131;
                            break;
                        case 2019281702:
                            b7 = !str3.equals("DM-01K") ? (byte) -1 : (byte) 132;
                            break;
                        case 2029784656:
                            b7 = !str3.equals("HWBLN-H") ? (byte) -1 : (byte) 133;
                            break;
                        case 2030379515:
                            b7 = !str3.equals("HWCAM-H") ? (byte) -1 : (byte) 134;
                            break;
                        case 2033393791:
                            b7 = !str3.equals("ASUS_X00AD_2") ? (byte) -1 : (byte) 135;
                            break;
                        case 2047190025:
                            b7 = !str3.equals("ELUGA_Note") ? (byte) -1 : (byte) 136;
                            break;
                        case 2047252157:
                            b7 = !str3.equals("ELUGA_Prim") ? (byte) -1 : (byte) 137;
                            break;
                        case 2048319463:
                            b7 = !str3.equals("HWVNS-H") ? (byte) -1 : (byte) 138;
                            break;
                        case 2048855701:
                            b7 = !str3.equals("HWWAS-H") ? (byte) -1 : (byte) 139;
                            break;
                        default:
                            b7 = -1;
                            break;
                    }
                    switch (b7) {
                        default:
                            str2.hashCode();
                            if (!str2.equals("JSN-L21")) {
                            }
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                        case 13:
                        case 14:
                        case 15:
                        case 16:
                        case 17:
                        case 18:
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                        case 26:
                        case 27:
                        case 28:
                        case 29:
                        case 30:
                        case 31:
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                        case 38:
                        case 39:
                        case 40:
                        case 41:
                        case 42:
                        case 43:
                        case 44:
                        case 45:
                        case 46:
                        case 47:
                        case 48:
                        case 49:
                        case 50:
                        case 51:
                        case 52:
                        case 53:
                        case 54:
                        case 55:
                        case 56:
                        case 57:
                        case 58:
                        case 59:
                        case 60:
                        case 61:
                        case 62:
                        case 63:
                        case 64:
                        case 65:
                        case 66:
                        case 67:
                        case 68:
                        case 69:
                        case 70:
                        case 71:
                        case 72:
                        case 73:
                        case 74:
                        case 75:
                        case 76:
                        case 77:
                        case 78:
                        case 79:
                        case 80:
                        case 81:
                        case 82:
                        case 83:
                        case 84:
                        case 85:
                        case 86:
                        case 87:
                        case 88:
                        case 89:
                        case 90:
                        case 91:
                        case 92:
                        case 93:
                        case 94:
                        case 95:
                        case 96:
                        case 97:
                        case 98:
                        case 99:
                        case 100:
                        case 101:
                        case 102:
                        case 103:
                        case 104:
                        case 105:
                        case 106:
                        case 107:
                        case 108:
                        case 109:
                        case 110:
                        case 111:
                        case 112:
                        case 113:
                        case 114:
                        case 115:
                        case 116:
                        case 117:
                        case 118:
                        case 119:
                        case 120:
                        case 121:
                        case 122:
                        case 123:
                        case 124:
                        case 125:
                        case 126:
                        case 127:
                        case 128:
                        case 129:
                        case 130:
                        case 131:
                        case 132:
                        case 133:
                        case 134:
                        case 135:
                        case WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST /* 136 */:
                        case WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_RESPENSE /* 137 */:
                        case 138:
                        case WsMessage.THREAD_WAIT_LIST_JOIN_RESPONSE /* 139 */:
                            return true;
                    }
                }
                return false;
        }
    }

    private static boolean p1(long j6) {
        return j6 < -30000;
    }

    private static boolean q1(long j6) {
        return j6 < -500000;
    }

    @Override // com.google.android.exoplayer2.mediacodec.o
    protected boolean B0(long j6, long j10, @Nullable com.google.android.exoplayer2.mediacodec.l lVar, @Nullable ByteBuffer byteBuffer, int i10, int i11, int i12, long j11, boolean z6, boolean z10, a2 a2Var) throws com.google.android.exoplayer2.q {
        com.google.android.exoplayer2.util.a.e(lVar);
        if (this.initialPositionUs == -9223372036854775807L) {
            this.initialPositionUs = j6;
        }
        if (j11 != this.lastBufferPresentationTimeUs) {
            this.frameReleaseHelper.h(j11);
            this.lastBufferPresentationTimeUs = j11;
        }
        long jF0 = f0();
        long j12 = j11 - jF0;
        if (z6 && !z10) {
            M1(lVar, i10, j12);
            return true;
        }
        double dG0 = g0();
        boolean z11 = getState() == 2;
        long jElapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        long j13 = (long) ((j11 - j6) / dG0);
        if (z11) {
            j13 -= jElapsedRealtime - j10;
        }
        if (this.surface == this.placeholderSurface) {
            if (!p1(j13)) {
                return false;
            }
            M1(lVar, i10, j12);
            O1(j13);
            return true;
        }
        long j14 = jElapsedRealtime - this.lastRenderRealtimeUs;
        boolean z12 = this.renderedFirstFrameAfterEnable ? !this.renderedFirstFrameAfterReset : z11 || this.mayRenderFirstFrameAfterEnableIfNotStarted;
        if (this.joiningDeadlineMs == -9223372036854775807L && j6 >= jF0 && (z12 || (z11 && K1(j13, j14)))) {
            long jNanoTime = System.nanoTime();
            y1(j12, jNanoTime, a2Var);
            if (o0.SDK_INT >= 21) {
                D1(lVar, i10, j12, jNanoTime);
            } else {
                C1(lVar, i10, j12);
            }
            O1(j13);
            return true;
        }
        if (z11 && j6 != this.initialPositionUs) {
            long jNanoTime2 = System.nanoTime();
            long jB = this.frameReleaseHelper.b((j13 * 1000) + jNanoTime2);
            long j15 = (jB - jNanoTime2) / 1000;
            boolean z13 = this.joiningDeadlineMs != -9223372036854775807L;
            if (I1(j15, j10, z10) && r1(j6, z13)) {
                return false;
            }
            if (J1(j15, j10, z10)) {
                if (z13) {
                    M1(lVar, i10, j12);
                } else {
                    g1(lVar, i10, j12);
                }
                O1(j15);
                return true;
            }
            if (o0.SDK_INT >= 21) {
                if (j15 < 50000) {
                    y1(j12, jB, a2Var);
                    D1(lVar, i10, j12, jB);
                    O1(j15);
                    return true;
                }
            } else if (j15 < 30000) {
                if (j15 > 11000) {
                    try {
                        Thread.sleep((j15 - WorkRequest.MIN_BACKOFF_MILLIS) / 1000);
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        return false;
                    }
                }
                y1(j12, jB, a2Var);
                C1(lVar, i10, j12);
                O1(j15);
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.mediacodec.o
    protected float a0(float f, a2 a2Var, a2[] a2VarArr) {
        float fMax = -1.0f;
        for (a2 a2Var2 : a2VarArr) {
            float f6 = a2Var2.frameRate;
            if (f6 != -1.0f) {
                fMax = Math.max(fMax, f6);
            }
        }
        if (fMax == -1.0f) {
            return -1.0f;
        }
        return fMax * f;
    }

    @Override // com.google.android.exoplayer2.m3, com.google.android.exoplayer2.o3
    public String getName() {
        return TAG;
    }

    @Override // com.google.android.exoplayer2.f, com.google.android.exoplayer2.h3.b
    public void handleMessage(int i10, @Nullable Object obj) throws com.google.android.exoplayer2.q {
        if (i10 == 1) {
            G1(obj);
            return;
        }
        if (i10 == 7) {
            this.frameMetadataListener = (k) obj;
            return;
        }
        if (i10 == 10) {
            int iIntValue = ((Integer) obj).intValue();
            if (this.tunnelingAudioSessionId != iIntValue) {
                this.tunnelingAudioSessionId = iIntValue;
                if (this.tunneling) {
                    F0();
                    return;
                }
                return;
            }
            return;
        }
        if (i10 != 4) {
            if (i10 != 5) {
                super.handleMessage(i10, obj);
                return;
            } else {
                this.frameReleaseHelper.o(((Integer) obj).intValue());
                return;
            }
        }
        this.scalingMode = ((Integer) obj).intValue();
        com.google.android.exoplayer2.mediacodec.l lVarX = X();
        if (lVarX != null) {
            lVarX.setVideoScalingMode(this.scalingMode);
        }
    }

    void t1() {
        this.renderedFirstFrameAfterEnable = true;
        if (this.renderedFirstFrameAfterReset) {
            return;
        }
        this.renderedFirstFrameAfterReset = true;
        this.eventDispatcher.A(this.surface);
        this.haveReportedFirstFrameRenderedForCurrentSurface = true;
    }

    protected static final class b {
        public final int height;
        public final int inputSize;
        public final int width;

        public b(int i10, int i11, int i12) {
            this.width = i10;
            this.height = i11;
            this.inputSize = i12;
        }
    }

    public h(Context context, com.google.android.exoplayer2.mediacodec.q qVar, long j6) {
        this(context, qVar, j6, null, null, 0);
    }

    @RequiresApi
    private void B1() {
        Surface surface = this.surface;
        PlaceholderSurface placeholderSurface = this.placeholderSurface;
        if (surface == placeholderSurface) {
            this.surface = null;
        }
        placeholderSurface.release();
        this.placeholderSurface = null;
    }

    @RequiresApi
    private static void E1(com.google.android.exoplayer2.mediacodec.l lVar, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("hdr10-plus-info", bArr);
        lVar.b(bundle);
    }

    private void F1() {
        this.joiningDeadlineMs = this.allowedJoiningTimeMs > 0 ? SystemClock.elapsedRealtime() + this.allowedJoiningTimeMs : -9223372036854775807L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.exoplayer2.video.m] */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.google.android.exoplayer2.f, com.google.android.exoplayer2.mediacodec.o, com.google.android.exoplayer2.video.h] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [android.view.Surface] */
    /* JADX WARN: Type inference failed for: r5v6, types: [com.google.android.exoplayer2.video.PlaceholderSurface] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void G1(@Nullable Object obj) throws com.google.android.exoplayer2.q {
        ?? E;
        Surface surface;
        if (obj instanceof Surface) {
            surface = (Surface) obj;
        } else {
            E = 0;
        }
        if (E == 0) {
            PlaceholderSurface placeholderSurface = this.placeholderSurface;
            if (placeholderSurface != null) {
                E = surface;
                E = placeholderSurface;
            } else {
                com.google.android.exoplayer2.mediacodec.n nVarY = Y();
                if (nVarY != null && L1(nVarY)) {
                    E = surface;
                    E = PlaceholderSurface.e(this.context, nVarY.secure);
                    this.placeholderSurface = E;
                }
            }
        }
        E = surface;
        E = surface;
        E = surface;
        if (this.surface == E) {
            if (E == 0 || E == this.placeholderSurface) {
                return;
            }
            x1();
            w1();
            return;
        }
        this.surface = E;
        this.frameReleaseHelper.m(E);
        this.haveReportedFirstFrameRenderedForCurrentSurface = false;
        int state = getState();
        com.google.android.exoplayer2.mediacodec.l lVarX = X();
        if (lVarX != null) {
            if (o0.SDK_INT < 23 || E == 0 || this.codecNeedsSetOutputSurfaceWorkaround) {
                F0();
                p0();
            } else {
                H1(lVarX, E);
            }
        }
        if (E == 0 || E == this.placeholderSurface) {
            c1();
            b1();
            return;
        }
        x1();
        b1();
        if (state == 2) {
            F1();
        }
    }

    private boolean L1(com.google.android.exoplayer2.mediacodec.n nVar) {
        return o0.SDK_INT >= 23 && !this.tunneling && !d1(nVar.name) && (!nVar.secure || PlaceholderSurface.c(this.context));
    }

    @RequiresApi
    private static void e1(MediaFormat mediaFormat, int i10) {
        mediaFormat.setFeatureEnabled("tunneled-playback", true);
        mediaFormat.setInteger("audio-session-id", i10);
    }

    private static boolean f1() {
        return "NVIDIA".equals(o0.MANUFACTURER);
    }

    public static int i1(com.google.android.exoplayer2.mediacodec.n nVar, a2 a2Var) {
        int iIntValue;
        int i10 = a2Var.width;
        int i11 = a2Var.height;
        if (i10 == -1 || i11 == -1) {
            return -1;
        }
        String str = a2Var.sampleMimeType;
        if ("video/dolby-vision".equals(str)) {
            Pair<Integer, Integer> pairQ = com.google.android.exoplayer2.mediacodec.v.q(a2Var);
            str = (pairQ == null || !((iIntValue = ((Integer) pairQ.first).intValue()) == 512 || iIntValue == 1 || iIntValue == 2)) ? "video/hevc" : "video/avc";
        }
        str.hashCode();
        switch (str) {
            case "video/3gpp":
            case "video/av01":
            case "video/mp4v-es":
            case "video/x-vnd.on2.vp8":
                return n1(i10 * i11, 2);
            case "video/hevc":
                return Math.max(2097152, n1(i10 * i11, 2));
            case "video/avc":
                String str2 = o0.MODEL;
                if ("BRAVIA 4K 2015".equals(str2) || ("Amazon".equals(o0.MANUFACTURER) && ("KFSOWI".equals(str2) || ("AFTS".equals(str2) && nVar.secure)))) {
                    return -1;
                }
                return n1(o0.l(i10, 16) * o0.l(i11, 16) * 256, 2);
            case "video/x-vnd.on2.vp9":
                return n1(i10 * i11, 4);
            default:
                return -1;
        }
    }

    @Nullable
    private static Point j1(com.google.android.exoplayer2.mediacodec.n nVar, a2 a2Var) {
        int i10 = a2Var.height;
        int i11 = a2Var.width;
        boolean z6 = i10 > i11;
        int i12 = z6 ? i10 : i11;
        if (z6) {
            i10 = i11;
        }
        float f = i10 / i12;
        for (int i13 : STANDARD_LONG_EDGE_VIDEO_PX) {
            int i14 = (int) (i13 * f);
            if (i13 <= i12 || i14 <= i10) {
                break;
            }
            if (o0.SDK_INT >= 21) {
                int i15 = z6 ? i14 : i13;
                if (!z6) {
                    i13 = i14;
                }
                Point pointB = nVar.b(i15, i13);
                if (nVar.u(pointB.x, pointB.y, a2Var.frameRate)) {
                    return pointB;
                }
            } else {
                try {
                    int iL = o0.l(i13, 16) * 16;
                    int iL2 = o0.l(i14, 16) * 16;
                    if (iL * iL2 <= com.google.android.exoplayer2.mediacodec.v.N()) {
                        int i16 = z6 ? iL2 : iL;
                        if (!z6) {
                            iL = iL2;
                        }
                        return new Point(i16, iL);
                    }
                } catch (com.google.android.exoplayer2.mediacodec.v.c unused) {
                }
            }
        }
        return null;
    }

    private static List<com.google.android.exoplayer2.mediacodec.n> l1(Context context, com.google.android.exoplayer2.mediacodec.q qVar, a2 a2Var, boolean z6, boolean z10) throws com.google.android.exoplayer2.mediacodec.v.c {
        String str = a2Var.sampleMimeType;
        if (str == null) {
            return com.google.common.collect.a0.x();
        }
        List<com.google.android.exoplayer2.mediacodec.n> listA = qVar.a(str, z6, z10);
        String strM = com.google.android.exoplayer2.mediacodec.v.m(a2Var);
        if (strM == null) {
            return com.google.common.collect.a0.t(listA);
        }
        List<com.google.android.exoplayer2.mediacodec.n> listA2 = qVar.a(strM, z6, z10);
        return (o0.SDK_INT < 26 || !"video/dolby-vision".equals(a2Var.sampleMimeType) || listA2.isEmpty() || a.a(context)) ? com.google.common.collect.a0.r().j(listA).j(listA2).k() : com.google.common.collect.a0.t(listA2);
    }

    protected static int m1(com.google.android.exoplayer2.mediacodec.n nVar, a2 a2Var) {
        if (a2Var.maxInputSize == -1) {
            return i1(nVar, a2Var);
        }
        int size = a2Var.initializationData.size();
        int length = 0;
        for (int i10 = 0; i10 < size; i10++) {
            length += a2Var.initializationData.get(i10).length;
        }
        return a2Var.maxInputSize + length;
    }

    private static int n1(int i10, int i11) {
        return (i10 * 3) / (i11 * 2);
    }

    private void s1() {
        if (this.droppedFrames > 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.eventDispatcher.n(this.droppedFrames, jElapsedRealtime - this.droppedFrameAccumulationStartTimeMs);
            this.droppedFrames = 0;
            this.droppedFrameAccumulationStartTimeMs = jElapsedRealtime;
        }
    }

    private void u1() {
        int i10 = this.videoFrameProcessingOffsetCount;
        if (i10 != 0) {
            this.eventDispatcher.B(this.totalVideoFrameProcessingOffsetUs, i10);
            this.totalVideoFrameProcessingOffsetUs = 0L;
            this.videoFrameProcessingOffsetCount = 0;
        }
    }

    private void v1() {
        int i10 = this.currentWidth;
        if (i10 == -1 && this.currentHeight == -1) {
            return;
        }
        a0 a0Var = this.reportedVideoSize;
        if (a0Var != null && a0Var.width == i10 && a0Var.height == this.currentHeight && a0Var.unappliedRotationDegrees == this.currentUnappliedRotationDegrees && a0Var.pixelWidthHeightRatio == this.currentPixelWidthHeightRatio) {
            return;
        }
        a0 a0Var2 = new a0(this.currentWidth, this.currentHeight, this.currentUnappliedRotationDegrees, this.currentPixelWidthHeightRatio);
        this.reportedVideoSize = a0Var2;
        this.eventDispatcher.D(a0Var2);
    }

    private void w1() {
        if (this.haveReportedFirstFrameRenderedForCurrentSurface) {
            this.eventDispatcher.A(this.surface);
        }
    }

    private void x1() {
        a0 a0Var = this.reportedVideoSize;
        if (a0Var != null) {
            this.eventDispatcher.D(a0Var);
        }
    }

    private void y1(long j6, long j10, a2 a2Var) {
        k kVar = this.frameMetadataListener;
        if (kVar != null) {
            kVar.f(j6, j10, a2Var, b0());
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.o
    protected com.google.android.exoplayer2.mediacodec.m L(Throwable th, @Nullable com.google.android.exoplayer2.mediacodec.n nVar) {
        return new g(th, nVar, this.surface);
    }

    protected void M1(com.google.android.exoplayer2.mediacodec.l lVar, int i10, long j6) {
        m0.a("skipVideoBuffer");
        lVar.e(i10, false);
        m0.c();
        this.decoderCounters.skippedOutputBufferCount++;
    }

    protected void N1(int i10, int i11) {
        com.google.android.exoplayer2.decoder.e eVar = this.decoderCounters;
        eVar.droppedInputBufferCount += i10;
        int i12 = i10 + i11;
        eVar.droppedBufferCount += i12;
        this.droppedFrames += i12;
        int i13 = this.consecutiveDroppedFrameCount + i12;
        this.consecutiveDroppedFrameCount = i13;
        eVar.maxConsecutiveDroppedBufferCount = Math.max(i13, eVar.maxConsecutiveDroppedBufferCount);
        int i14 = this.maxDroppedFramesToNotify;
        if (i14 <= 0 || this.droppedFrames < i14) {
            return;
        }
        s1();
    }

    protected void O1(long j6) {
        this.decoderCounters.a(j6);
        this.totalVideoFrameProcessingOffsetUs += j6;
        this.videoFrameProcessingOffsetCount++;
    }

    @Override // com.google.android.exoplayer2.mediacodec.o
    protected boolean R0(com.google.android.exoplayer2.mediacodec.n nVar) {
        return this.surface != null || L1(nVar);
    }

    @Override // com.google.android.exoplayer2.mediacodec.o
    protected int U0(com.google.android.exoplayer2.mediacodec.q qVar, a2 a2Var) throws com.google.android.exoplayer2.mediacodec.v.c {
        boolean z6;
        int i10 = 0;
        if (!com.google.android.exoplayer2.util.x.o(a2Var.sampleMimeType)) {
            return n3.a(0);
        }
        boolean z10 = a2Var.drmInitData != null;
        List<com.google.android.exoplayer2.mediacodec.n> listL1 = l1(this.context, qVar, a2Var, z10, false);
        if (z10 && listL1.isEmpty()) {
            listL1 = l1(this.context, qVar, a2Var, false, false);
        }
        if (listL1.isEmpty()) {
            return n3.a(1);
        }
        if (!com.google.android.exoplayer2.mediacodec.o.V0(a2Var)) {
            return n3.a(2);
        }
        com.google.android.exoplayer2.mediacodec.n nVar = listL1.get(0);
        boolean zM = nVar.m(a2Var);
        if (!zM) {
            int i11 = 1;
            while (true) {
                if (i11 >= listL1.size()) {
                    z6 = true;
                    break;
                }
                com.google.android.exoplayer2.mediacodec.n nVar2 = listL1.get(i11);
                if (nVar2.m(a2Var)) {
                    z6 = false;
                    zM = true;
                    nVar = nVar2;
                    break;
                }
                i11++;
            }
        } else {
            z6 = true;
            break;
        }
        int i12 = zM ? 4 : 3;
        int i13 = nVar.p(a2Var) ? 16 : 8;
        int i14 = nVar.hardwareAccelerated ? 64 : 0;
        int i15 = z6 ? 128 : 0;
        if (o0.SDK_INT >= 26 && "video/dolby-vision".equals(a2Var.sampleMimeType) && !a.a(this.context)) {
            i15 = 256;
        }
        if (zM) {
            List<com.google.android.exoplayer2.mediacodec.n> listL2 = l1(this.context, qVar, a2Var, z10, true);
            if (!listL2.isEmpty()) {
                com.google.android.exoplayer2.mediacodec.n nVar3 = com.google.android.exoplayer2.mediacodec.v.u(listL2, a2Var).get(0);
                if (nVar3.m(a2Var) && nVar3.p(a2Var)) {
                    i10 = 32;
                }
            }
        }
        return n3.c(i12, i13, i10, i14, i15);
    }

    @Override // com.google.android.exoplayer2.mediacodec.o
    protected boolean Z() {
        return this.tunneling && o0.SDK_INT < 23;
    }

    @Override // com.google.android.exoplayer2.mediacodec.o
    protected List<com.google.android.exoplayer2.mediacodec.n> c0(com.google.android.exoplayer2.mediacodec.q qVar, a2 a2Var, boolean z6) throws com.google.android.exoplayer2.mediacodec.v.c {
        return com.google.android.exoplayer2.mediacodec.v.u(l1(this.context, qVar, a2Var, z6, this.tunneling), a2Var);
    }

    protected boolean d1(String str) {
        if (str.startsWith("OMX.google")) {
            return false;
        }
        synchronized (h.class) {
            try {
                if (!evaluatedDeviceNeedsSetOutputSurfaceWorkaround) {
                    deviceNeedsSetOutputSurfaceWorkaround = h1();
                    evaluatedDeviceNeedsSetOutputSurfaceWorkaround = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return deviceNeedsSetOutputSurfaceWorkaround;
    }

    @Override // com.google.android.exoplayer2.mediacodec.o
    @TargetApi(17)
    protected com.google.android.exoplayer2.mediacodec.l.a e0(com.google.android.exoplayer2.mediacodec.n nVar, a2 a2Var, @Nullable MediaCrypto mediaCrypto, float f) {
        PlaceholderSurface placeholderSurface = this.placeholderSurface;
        if (placeholderSurface != null && placeholderSurface.secure != nVar.secure) {
            B1();
        }
        String str = nVar.codecMimeType;
        b bVarK1 = k1(nVar, a2Var, n());
        this.codecMaxValues = bVarK1;
        MediaFormat mediaFormatO1 = o1(a2Var, str, bVarK1, f, this.deviceNeedsNoPostProcessWorkaround, this.tunneling ? this.tunnelingAudioSessionId : 0);
        if (this.surface == null) {
            if (!L1(nVar)) {
                throw new IllegalStateException();
            }
            if (this.placeholderSurface == null) {
                this.placeholderSurface = PlaceholderSurface.e(this.context, nVar.secure);
            }
            this.surface = this.placeholderSurface;
        }
        return com.google.android.exoplayer2.mediacodec.l.a.b(nVar, mediaFormatO1, a2Var, this.surface, mediaCrypto);
    }

    protected void g1(com.google.android.exoplayer2.mediacodec.l lVar, int i10, long j6) {
        m0.a("dropVideoBuffer");
        lVar.e(i10, false);
        m0.c();
        N1(0, 1);
    }

    @Override // com.google.android.exoplayer2.mediacodec.o
    @TargetApi(29)
    protected void h0(com.google.android.exoplayer2.decoder.g gVar) throws com.google.android.exoplayer2.q {
        if (this.codecHandlesHdr10PlusOutOfBandMetadata) {
            ByteBuffer byteBuffer = (ByteBuffer) com.google.android.exoplayer2.util.a.e(gVar.supplementalData);
            if (byteBuffer.remaining() >= 7) {
                byte b7 = byteBuffer.get();
                short s = byteBuffer.getShort();
                short s5 = byteBuffer.getShort();
                byte b10 = byteBuffer.get();
                byte b11 = byteBuffer.get();
                byteBuffer.position(0);
                if (b7 == -75 && s == 60 && s5 == 1 && b10 == 4) {
                    if (b11 == 0 || b11 == 1) {
                        byte[] bArr = new byte[byteBuffer.remaining()];
                        byteBuffer.get(bArr);
                        byteBuffer.position(0);
                        E1(X(), bArr);
                    }
                }
            }
        }
    }

    protected b k1(com.google.android.exoplayer2.mediacodec.n nVar, a2 a2Var, a2[] a2VarArr) {
        int iI1;
        int iMax = a2Var.width;
        int iMax2 = a2Var.height;
        int iM1 = m1(nVar, a2Var);
        if (a2VarArr.length == 1) {
            if (iM1 != -1 && (iI1 = i1(nVar, a2Var)) != -1) {
                iM1 = Math.min((int) (iM1 * 1.5f), iI1);
            }
            return new b(iMax, iMax2, iM1);
        }
        int length = a2VarArr.length;
        boolean z6 = false;
        for (int i10 = 0; i10 < length; i10++) {
            a2 a2VarE = a2VarArr[i10];
            if (a2Var.colorInfo != null && a2VarE.colorInfo == null) {
                a2VarE = a2VarE.b().J(a2Var.colorInfo).E();
            }
            if (nVar.e(a2Var, a2VarE).result != 0) {
                int i11 = a2VarE.width;
                z6 |= i11 == -1 || a2VarE.height == -1;
                iMax = Math.max(iMax, i11);
                iMax2 = Math.max(iMax2, a2VarE.height);
                iM1 = Math.max(iM1, m1(nVar, a2VarE));
            }
        }
        if (z6) {
            com.google.android.exoplayer2.util.t.i(TAG, "Resolutions unknown. Codec max resolution: " + iMax + "x" + iMax2);
            Point pointJ1 = j1(nVar, a2Var);
            if (pointJ1 != null) {
                iMax = Math.max(iMax, pointJ1.x);
                iMax2 = Math.max(iMax2, pointJ1.y);
                iM1 = Math.max(iM1, i1(nVar, a2Var.b().j0(iMax).Q(iMax2).E()));
                com.google.android.exoplayer2.util.t.i(TAG, "Codec max resolution adjusted to: " + iMax + "x" + iMax2);
            }
        }
        return new b(iMax, iMax2, iM1);
    }

    @SuppressLint({"InlinedApi"})
    @TargetApi(21)
    protected MediaFormat o1(a2 a2Var, String str, b bVar, float f, boolean z6, int i10) {
        Pair<Integer, Integer> pairQ;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("width", a2Var.width);
        mediaFormat.setInteger("height", a2Var.height);
        com.google.android.exoplayer2.util.w.e(mediaFormat, a2Var.initializationData);
        com.google.android.exoplayer2.util.w.c(mediaFormat, "frame-rate", a2Var.frameRate);
        com.google.android.exoplayer2.util.w.d(mediaFormat, "rotation-degrees", a2Var.rotationDegrees);
        com.google.android.exoplayer2.util.w.b(mediaFormat, a2Var.colorInfo);
        if ("video/dolby-vision".equals(a2Var.sampleMimeType) && (pairQ = com.google.android.exoplayer2.mediacodec.v.q(a2Var)) != null) {
            com.google.android.exoplayer2.util.w.d(mediaFormat, Scopes.PROFILE, ((Integer) pairQ.first).intValue());
        }
        mediaFormat.setInteger("max-width", bVar.width);
        mediaFormat.setInteger("max-height", bVar.height);
        com.google.android.exoplayer2.util.w.d(mediaFormat, "max-input-size", bVar.inputSize);
        if (o0.SDK_INT >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f != -1.0f) {
                mediaFormat.setFloat("operating-rate", f);
            }
        }
        if (z6) {
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (i10 != 0) {
            e1(mediaFormat, i10);
        }
        return mediaFormat;
    }

    @Override // com.google.android.exoplayer2.mediacodec.o
    protected void r0(Exception exc) {
        com.google.android.exoplayer2.util.t.d(TAG, "Video codec error", exc);
        this.eventDispatcher.C(exc);
    }

    @Override // com.google.android.exoplayer2.mediacodec.o
    protected void s0(String str, com.google.android.exoplayer2.mediacodec.l.a aVar, long j6, long j10) {
        this.eventDispatcher.k(str, j6, j10);
        this.codecNeedsSetOutputSurfaceWorkaround = d1(str);
        this.codecHandlesHdr10PlusOutOfBandMetadata = ((com.google.android.exoplayer2.mediacodec.n) com.google.android.exoplayer2.util.a.e(Y())).n();
        if (o0.SDK_INT < 23 || !this.tunneling) {
            return;
        }
        this.tunnelingOnFrameRenderedListener = new c((com.google.android.exoplayer2.mediacodec.l) com.google.android.exoplayer2.util.a.e(X()));
    }

    @Override // com.google.android.exoplayer2.mediacodec.o
    protected void t0(String str) {
        this.eventDispatcher.l(str);
    }

    @Override // com.google.android.exoplayer2.mediacodec.o
    @CallSuper
    protected void z0(com.google.android.exoplayer2.decoder.g gVar) throws com.google.android.exoplayer2.q {
        boolean z6 = this.tunneling;
        if (!z6) {
            this.buffersInCodecCount++;
        }
        if (o0.SDK_INT >= 23 || !z6) {
            return;
        }
        z1(gVar.timeUs);
    }

    public h(Context context, com.google.android.exoplayer2.mediacodec.q qVar, long j6, @Nullable Handler handler, @Nullable y yVar, int i10) {
        this(context, com.google.android.exoplayer2.mediacodec.l.b.DEFAULT, qVar, j6, false, handler, yVar, i10, 30.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A1() {
        N0();
    }

    @Override // com.google.android.exoplayer2.mediacodec.o
    protected com.google.android.exoplayer2.decoder.i B(com.google.android.exoplayer2.mediacodec.n nVar, a2 a2Var, a2 a2Var2) {
        int i10;
        com.google.android.exoplayer2.decoder.i iVarE = nVar.e(a2Var, a2Var2);
        int i11 = iVarE.discardReasons;
        int i12 = a2Var2.width;
        b bVar = this.codecMaxValues;
        if (i12 > bVar.width || a2Var2.height > bVar.height) {
            i11 |= 256;
        }
        if (m1(nVar, a2Var2) > this.codecMaxValues.inputSize) {
            i11 |= 64;
        }
        int i13 = i11;
        String str = nVar.name;
        if (i13 != 0) {
            i10 = 0;
        } else {
            i10 = iVarE.result;
        }
        return new com.google.android.exoplayer2.decoder.i(str, a2Var, a2Var2, i10, i13);
    }

    protected void C1(com.google.android.exoplayer2.mediacodec.l lVar, int i10, long j6) {
        v1();
        m0.a("releaseOutputBuffer");
        lVar.e(i10, true);
        m0.c();
        this.lastRenderRealtimeUs = SystemClock.elapsedRealtime() * 1000;
        this.decoderCounters.renderedOutputBufferCount++;
        this.consecutiveDroppedFrameCount = 0;
        t1();
    }

    @RequiresApi
    protected void D1(com.google.android.exoplayer2.mediacodec.l lVar, int i10, long j6, long j10) {
        v1();
        m0.a("releaseOutputBuffer");
        lVar.c(i10, j10);
        m0.c();
        this.lastRenderRealtimeUs = SystemClock.elapsedRealtime() * 1000;
        this.decoderCounters.renderedOutputBufferCount++;
        this.consecutiveDroppedFrameCount = 0;
        t1();
    }

    @Override // com.google.android.exoplayer2.mediacodec.o
    @CallSuper
    protected void H0() {
        super.H0();
        this.buffersInCodecCount = 0;
    }

    @RequiresApi
    protected void H1(com.google.android.exoplayer2.mediacodec.l lVar, Surface surface) {
        lVar.h(surface);
    }

    protected boolean I1(long j6, long j10, boolean z6) {
        if (q1(j6) && !z6) {
            return true;
        }
        return false;
    }

    protected boolean J1(long j6, long j10, boolean z6) {
        if (p1(j6) && !z6) {
            return true;
        }
        return false;
    }

    protected boolean K1(long j6, long j10) {
        if (p1(j6) && j10 > 100000) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.mediacodec.o, com.google.android.exoplayer2.f, com.google.android.exoplayer2.m3
    public void d(float f, float f6) throws com.google.android.exoplayer2.q {
        super.d(f, f6);
        this.frameReleaseHelper.i(f);
    }

    @Override // com.google.android.exoplayer2.mediacodec.o, com.google.android.exoplayer2.m3
    public boolean isReady() {
        PlaceholderSurface placeholderSurface;
        if (super.isReady() && (this.renderedFirstFrameAfterReset || (((placeholderSurface = this.placeholderSurface) != null && this.surface == placeholderSurface) || X() == null || this.tunneling))) {
            this.joiningDeadlineMs = -9223372036854775807L;
            return true;
        }
        if (this.joiningDeadlineMs == -9223372036854775807L) {
            return false;
        }
        if (SystemClock.elapsedRealtime() < this.joiningDeadlineMs) {
            return true;
        }
        this.joiningDeadlineMs = -9223372036854775807L;
        return false;
    }

    @Override // com.google.android.exoplayer2.mediacodec.o, com.google.android.exoplayer2.f
    protected void p() {
        c1();
        b1();
        this.haveReportedFirstFrameRenderedForCurrentSurface = false;
        this.tunnelingOnFrameRenderedListener = null;
        try {
            super.p();
        } finally {
            this.eventDispatcher.m(this.decoderCounters);
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.o, com.google.android.exoplayer2.f
    protected void q(boolean z6, boolean z10) throws com.google.android.exoplayer2.q {
        boolean z11;
        super.q(z6, z10);
        boolean z12 = j().tunneling;
        if (z12 && this.tunnelingAudioSessionId == 0) {
            z11 = false;
        } else {
            z11 = true;
        }
        com.google.android.exoplayer2.util.a.g(z11);
        if (this.tunneling != z12) {
            this.tunneling = z12;
            F0();
        }
        this.eventDispatcher.o(this.decoderCounters);
        this.mayRenderFirstFrameAfterEnableIfNotStarted = z10;
        this.renderedFirstFrameAfterEnable = false;
    }

    @Override // com.google.android.exoplayer2.mediacodec.o, com.google.android.exoplayer2.f
    protected void r(long j6, boolean z6) throws com.google.android.exoplayer2.q {
        super.r(j6, z6);
        b1();
        this.frameReleaseHelper.j();
        this.lastBufferPresentationTimeUs = -9223372036854775807L;
        this.initialPositionUs = -9223372036854775807L;
        this.consecutiveDroppedFrameCount = 0;
        if (z6) {
            F1();
        } else {
            this.joiningDeadlineMs = -9223372036854775807L;
        }
    }

    protected boolean r1(long j6, boolean z6) throws com.google.android.exoplayer2.q {
        int iY = y(j6);
        if (iY == 0) {
            return false;
        }
        if (z6) {
            com.google.android.exoplayer2.decoder.e eVar = this.decoderCounters;
            eVar.skippedInputBufferCount += iY;
            eVar.skippedOutputBufferCount += this.buffersInCodecCount;
        } else {
            this.decoderCounters.droppedToKeyframeCount++;
            N1(iY, this.buffersInCodecCount);
        }
        U();
        return true;
    }

    @Override // com.google.android.exoplayer2.mediacodec.o, com.google.android.exoplayer2.f
    @TargetApi(17)
    protected void s() {
        try {
            super.s();
        } finally {
            if (this.placeholderSurface != null) {
                B1();
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.o, com.google.android.exoplayer2.f
    protected void t() {
        super.t();
        this.droppedFrames = 0;
        this.droppedFrameAccumulationStartTimeMs = SystemClock.elapsedRealtime();
        this.lastRenderRealtimeUs = SystemClock.elapsedRealtime() * 1000;
        this.totalVideoFrameProcessingOffsetUs = 0L;
        this.videoFrameProcessingOffsetCount = 0;
        this.frameReleaseHelper.k();
    }

    @Override // com.google.android.exoplayer2.mediacodec.o
    @Nullable
    protected com.google.android.exoplayer2.decoder.i u0(b2 b2Var) throws com.google.android.exoplayer2.q {
        com.google.android.exoplayer2.decoder.i iVarU0 = super.u0(b2Var);
        this.eventDispatcher.p(b2Var.format, iVarU0);
        return iVarU0;
    }

    @Override // com.google.android.exoplayer2.mediacodec.o
    protected void v0(a2 a2Var, @Nullable MediaFormat mediaFormat) {
        boolean z6;
        int integer;
        int integer2;
        com.google.android.exoplayer2.mediacodec.l lVarX = X();
        if (lVarX != null) {
            lVarX.setVideoScalingMode(this.scalingMode);
        }
        if (this.tunneling) {
            this.currentWidth = a2Var.width;
            this.currentHeight = a2Var.height;
        } else {
            com.google.android.exoplayer2.util.a.e(mediaFormat);
            if (mediaFormat.containsKey(KEY_CROP_RIGHT) && mediaFormat.containsKey(KEY_CROP_LEFT) && mediaFormat.containsKey(KEY_CROP_BOTTOM) && mediaFormat.containsKey(KEY_CROP_TOP)) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (z6) {
                integer = (mediaFormat.getInteger(KEY_CROP_RIGHT) - mediaFormat.getInteger(KEY_CROP_LEFT)) + 1;
            } else {
                integer = mediaFormat.getInteger("width");
            }
            this.currentWidth = integer;
            if (z6) {
                integer2 = (mediaFormat.getInteger(KEY_CROP_BOTTOM) - mediaFormat.getInteger(KEY_CROP_TOP)) + 1;
            } else {
                integer2 = mediaFormat.getInteger("height");
            }
            this.currentHeight = integer2;
        }
        float f = a2Var.pixelWidthHeightRatio;
        this.currentPixelWidthHeightRatio = f;
        if (o0.SDK_INT >= 21) {
            int i10 = a2Var.rotationDegrees;
            if (i10 == 90 || i10 == 270) {
                int i11 = this.currentWidth;
                this.currentWidth = this.currentHeight;
                this.currentHeight = i11;
                this.currentPixelWidthHeightRatio = 1.0f / f;
            }
        } else {
            this.currentUnappliedRotationDegrees = a2Var.rotationDegrees;
        }
        this.frameReleaseHelper.g(a2Var.frameRate);
    }

    @Override // com.google.android.exoplayer2.mediacodec.o
    @CallSuper
    protected void x0(long j6) {
        super.x0(j6);
        if (!this.tunneling) {
            this.buffersInCodecCount--;
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.o
    protected void y0() {
        super.y0();
        b1();
    }

    protected void z1(long j6) throws com.google.android.exoplayer2.q {
        Y0(j6);
        v1();
        this.decoderCounters.renderedOutputBufferCount++;
        t1();
        x0(j6);
    }

    public h(Context context, com.google.android.exoplayer2.mediacodec.q qVar, long j6, boolean z6, @Nullable Handler handler, @Nullable y yVar, int i10) {
        this(context, com.google.android.exoplayer2.mediacodec.l.b.DEFAULT, qVar, j6, z6, handler, yVar, i10, 30.0f);
    }

    public h(Context context, com.google.android.exoplayer2.mediacodec.l.b bVar, com.google.android.exoplayer2.mediacodec.q qVar, long j6, boolean z6, @Nullable Handler handler, @Nullable y yVar, int i10) {
        this(context, bVar, qVar, j6, z6, handler, yVar, i10, 30.0f);
    }

    @Override // com.google.android.exoplayer2.mediacodec.o, com.google.android.exoplayer2.f
    protected void u() {
        this.joiningDeadlineMs = -9223372036854775807L;
        s1();
        u1();
        this.frameReleaseHelper.l();
        super.u();
    }

    public h(Context context, com.google.android.exoplayer2.mediacodec.l.b bVar, com.google.android.exoplayer2.mediacodec.q qVar, long j6, boolean z6, @Nullable Handler handler, @Nullable y yVar, int i10, float f) {
        super(2, bVar, qVar, z6, f);
        this.allowedJoiningTimeMs = j6;
        this.maxDroppedFramesToNotify = i10;
        Context applicationContext = context.getApplicationContext();
        this.context = applicationContext;
        this.frameReleaseHelper = new m(applicationContext);
        this.eventDispatcher = new y.a(handler, yVar);
        this.deviceNeedsNoPostProcessWorkaround = f1();
        this.joiningDeadlineMs = -9223372036854775807L;
        this.currentWidth = -1;
        this.currentHeight = -1;
        this.currentPixelWidthHeightRatio = -1.0f;
        this.scalingMode = 1;
        this.tunnelingAudioSessionId = 0;
        c1();
    }
}
