package org.schabi.newpipe.extractor.services.youtube;

import androidx.renderscript.ScriptIntrinsicBLAS;
import com.narvii.account.ThirdPartyAccountBaseFragment;
import com.narvii.nvplayer.exoplayer.NVExoPlayer;
import com.narvii.util.ws.WsMessage;
import java.io.Serializable;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public class a implements Serializable {
    public static final long APPROX_DURATION_MS_UNKNOWN = -1;
    public static final int AUDIO_CHANNELS_NOT_APPLICABLE_OR_UNKNOWN = -1;
    public static final int AVERAGE_BITRATE_UNKNOWN = -1;
    public static final long CONTENT_LENGTH_UNKNOWN = -1;
    public static final int FPS_NOT_APPLICABLE_OR_UNKNOWN = -1;
    private static final a[] ITAG_LIST;
    public static final int SAMPLE_RATE_UNKNOWN = -1;
    public static final int TARGET_DURATION_SEC_UNKNOWN = -1;
    private long approxDurationMs;
    private int audioChannels;
    private Locale audioLocale;
    private String audioTrackId;
    private String audioTrackName;
    private oa.c audioTrackType;

    @Deprecated
    public int avgBitrate;
    private int bitrate;
    private String codec;
    private long contentLength;

    @Deprecated
    public int fps;
    private int height;
    public final int id;
    private int indexEnd;
    private int indexStart;
    private int initEnd;
    private int initStart;
    public final EnumC0481a itagType;
    private final x9.m mediaFormat;
    private String quality;

    @Deprecated
    public String resolutionString;
    private int sampleRate;
    private int targetDurationSec;
    private int width;

    /* JADX INFO: renamed from: org.schabi.newpipe.extractor.services.youtube.a$a, reason: collision with other inner class name */
    public enum EnumC0481a {
        AUDIO,
        VIDEO,
        VIDEO_ONLY
    }

    public a(int i10, EnumC0481a enumC0481a, x9.m mVar, String str) {
        this.avgBitrate = -1;
        this.sampleRate = -1;
        this.audioChannels = -1;
        this.targetDurationSec = -1;
        this.approxDurationMs = -1L;
        this.contentLength = -1L;
        this.id = i10;
        this.itagType = enumC0481a;
        this.mediaFormat = mVar;
        this.resolutionString = str;
        this.fps = 30;
    }

    public void A(long j6) {
        if (j6 <= 0) {
            j6 = -1;
        }
        this.contentLength = j6;
    }

    public void B(int i10) {
        if (i10 <= 0) {
            i10 = -1;
        }
        this.fps = i10;
    }

    public void C(int i10) {
        this.height = i10;
    }

    public void D(int i10) {
        this.indexEnd = i10;
    }

    public void E(int i10) {
        this.indexStart = i10;
    }

    public void F(int i10) {
        this.initEnd = i10;
    }

    public void G(int i10) {
        this.initStart = i10;
    }

    public void H(String str) {
        this.quality = str;
    }

    public void I(int i10) {
        if (i10 <= 0) {
            i10 = -1;
        }
        this.sampleRate = i10;
    }

    public void J(int i10) {
        if (i10 <= 0) {
            i10 = -1;
        }
        this.targetDurationSec = i10;
    }

    public void K(int i10) {
        this.width = i10;
    }

    public Locale a() {
        return this.audioLocale;
    }

    public String b() {
        return this.audioTrackId;
    }

    public String c() {
        return this.audioTrackName;
    }

    public oa.c d() {
        return this.audioTrackType;
    }

    public int e() {
        return this.avgBitrate;
    }

    public int f() {
        return this.bitrate;
    }

    public String g() {
        return this.codec;
    }

    public int h() {
        return this.fps;
    }

    public int i() {
        return this.height;
    }

    public int j() {
        return this.indexEnd;
    }

    public int k() {
        return this.indexStart;
    }

    public int l() {
        return this.initEnd;
    }

    public int m() {
        return this.initStart;
    }

    public x9.m o() {
        return this.mediaFormat;
    }

    public String p() {
        return this.quality;
    }

    public String q() {
        return this.resolutionString;
    }

    public int r() {
        return this.width;
    }

    public void s(long j6) {
        if (j6 <= 0) {
            j6 = -1;
        }
        this.approxDurationMs = j6;
    }

    public void t(int i10) {
        if (i10 <= 0) {
            i10 = -1;
        }
        this.audioChannels = i10;
    }

    public void u(Locale locale) {
        this.audioLocale = locale;
    }

    public void v(String str) {
        this.audioTrackId = str;
    }

    public void w(String str) {
        this.audioTrackName = str;
    }

    public void x(oa.c cVar) {
        this.audioTrackType = cVar;
    }

    public void y(int i10) {
        this.bitrate = i10;
    }

    public void z(String str) {
        this.codec = str;
    }

    static {
        EnumC0481a enumC0481a = EnumC0481a.VIDEO;
        x9.m mVar = x9.m.v3GPP;
        x9.m mVar2 = x9.m.MPEG_4;
        x9.m mVar3 = x9.m.WEBM;
        EnumC0481a enumC0481a2 = EnumC0481a.AUDIO;
        x9.m mVar4 = x9.m.WEBMA;
        x9.m mVar5 = x9.m.M4A;
        x9.m mVar6 = x9.m.WEBMA_OPUS;
        EnumC0481a enumC0481a3 = EnumC0481a.VIDEO_ONLY;
        ITAG_LIST = new a[]{new a(17, enumC0481a, mVar, "144p"), new a(36, enumC0481a, mVar, "240p"), new a(18, enumC0481a, mVar2, NVExoPlayer.LOW_RES), new a(34, enumC0481a, mVar2, NVExoPlayer.LOW_RES), new a(35, enumC0481a, mVar2, "480p"), new a(59, enumC0481a, mVar2, "480p"), new a(78, enumC0481a, mVar2, "480p"), new a(22, enumC0481a, mVar2, "720p"), new a(37, enumC0481a, mVar2, "1080p"), new a(38, enumC0481a, mVar2, "1080p"), new a(43, enumC0481a, mVar3, NVExoPlayer.LOW_RES), new a(44, enumC0481a, mVar3, "480p"), new a(45, enumC0481a, mVar3, "720p"), new a(46, enumC0481a, mVar3, "1080p"), new a(171, enumC0481a2, mVar4, 128), new a(172, enumC0481a2, mVar4, 256), new a(599, enumC0481a2, mVar5, 32), new a(WsMessage.THREAD_WAIT_LIST_JOIN_RESPONSE, enumC0481a2, mVar5, 48), new a(140, enumC0481a2, mVar5, 128), new a(ScriptIntrinsicBLAS.LEFT, enumC0481a2, mVar5, 256), new a(600, enumC0481a2, mVar6, 35), new a(249, enumC0481a2, mVar6, 50), new a(250, enumC0481a2, mVar6, 70), new a(ThirdPartyAccountBaseFragment.API_ERR_EMAIL_NO_PASSWORD, enumC0481a2, mVar6, 160), new a(160, enumC0481a3, mVar2, "144p"), new a(394, enumC0481a3, mVar2, "144p"), new a(133, enumC0481a3, mVar2, "240p"), new a(395, enumC0481a3, mVar2, "240p"), new a(134, enumC0481a3, mVar2, NVExoPlayer.LOW_RES), new a(396, enumC0481a3, mVar2, NVExoPlayer.LOW_RES), new a(135, enumC0481a3, mVar2, "480p"), new a(212, enumC0481a3, mVar2, "480p"), new a(397, enumC0481a3, mVar2, "480p"), new a(WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST, enumC0481a3, mVar2, "720p"), new a(398, enumC0481a3, mVar2, "720p"), new a(298, enumC0481a3, mVar2, "720p60", 60), new a(WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_RESPENSE, enumC0481a3, mVar2, "1080p"), new a(399, enumC0481a3, mVar2, "1080p"), new a(299, enumC0481a3, mVar2, "1080p60", 60), new a(WsMessage.LIVE_LAYER_USER_JOINED_EVENT, enumC0481a3, mVar2, "1440p"), new a(266, enumC0481a3, mVar2, "2160p"), new a(401, enumC0481a3, mVar2, "2160p"), new a(278, enumC0481a3, mVar3, "144p"), new a(242, enumC0481a3, mVar3, "240p"), new a(243, enumC0481a3, mVar3, NVExoPlayer.LOW_RES), new a(244, enumC0481a3, mVar3, "480p"), new a(245, enumC0481a3, mVar3, "480p"), new a(246, enumC0481a3, mVar3, "480p"), new a(247, enumC0481a3, mVar3, "720p"), new a(248, enumC0481a3, mVar3, "1080p"), new a(271, enumC0481a3, mVar3, "1440p"), new a(272, enumC0481a3, mVar3, "2160p"), new a(302, enumC0481a3, mVar3, "720p60", 60), new a(303, enumC0481a3, mVar3, "1080p60", 60), new a(308, enumC0481a3, mVar3, "1440p60", 60), new a(313, enumC0481a3, mVar3, "2160p"), new a(315, enumC0481a3, mVar3, "2160p60", 60)};
    }

    public a(int i10, EnumC0481a enumC0481a, x9.m mVar, String str, int i11) {
        this.avgBitrate = -1;
        this.sampleRate = -1;
        this.audioChannels = -1;
        this.targetDurationSec = -1;
        this.approxDurationMs = -1L;
        this.contentLength = -1L;
        this.id = i10;
        this.itagType = enumC0481a;
        this.mediaFormat = mVar;
        this.resolutionString = str;
        this.fps = i11;
    }

    public static a n(int i10) throws aa.h {
        for (a aVar : ITAG_LIST) {
            if (i10 == aVar.id) {
                return new a(aVar);
            }
        }
        throw new aa.h("itag " + i10 + " is not supported");
    }

    public a(int i10, EnumC0481a enumC0481a, x9.m mVar, int i11) {
        this.sampleRate = -1;
        this.audioChannels = -1;
        this.fps = -1;
        this.targetDurationSec = -1;
        this.approxDurationMs = -1L;
        this.contentLength = -1L;
        this.id = i10;
        this.itagType = enumC0481a;
        this.mediaFormat = mVar;
        this.avgBitrate = i11;
    }

    public a(a aVar) {
        this.avgBitrate = -1;
        this.sampleRate = -1;
        this.audioChannels = -1;
        this.fps = -1;
        this.targetDurationSec = -1;
        this.approxDurationMs = -1L;
        this.contentLength = -1L;
        this.mediaFormat = aVar.mediaFormat;
        this.id = aVar.id;
        this.itagType = aVar.itagType;
        this.avgBitrate = aVar.avgBitrate;
        this.sampleRate = aVar.sampleRate;
        this.audioChannels = aVar.audioChannels;
        this.resolutionString = aVar.resolutionString;
        this.fps = aVar.fps;
        this.bitrate = aVar.bitrate;
        this.width = aVar.width;
        this.height = aVar.height;
        this.initStart = aVar.initStart;
        this.initEnd = aVar.initEnd;
        this.indexStart = aVar.indexStart;
        this.indexEnd = aVar.indexEnd;
        this.quality = aVar.quality;
        this.codec = aVar.codec;
        this.targetDurationSec = aVar.targetDurationSec;
        this.approxDurationMs = aVar.approxDurationMs;
        this.contentLength = aVar.contentLength;
        this.audioTrackId = aVar.audioTrackId;
        this.audioTrackName = aVar.audioTrackName;
        this.audioTrackType = aVar.audioTrackType;
        this.audioLocale = aVar.audioLocale;
    }
}
