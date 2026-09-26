package com.narvii.nvplayer;

import android.content.Context;
import android.os.SystemClock;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.gms.common.internal.ImagesContract;
import com.narvii.account.notice.AccountNotice;
import com.narvii.app.NVContext;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.ActType;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.logging.service.LogEventService;
import com.narvii.model.ExternalSourceOrigin;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.PreviewObject;
import com.narvii.model.Scene;
import com.narvii.nvplayer.exoplayer.NVExoPlayer;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.YoutubeUtils;
import com.narvii.util.statistics.StatisticsService;
import java.util.UUID;

/* JADX INFO: loaded from: classes7.dex */
public class VideoLogHelper {
    public static final int LOAD_STATUS_FAIL_OTHERS = -2;
    public static final int LOAD_STATUS_FAIL_RENDER = 2;
    public static final int LOAD_STATUS_FAIL_SOURCE = 1;
    public static final int LOAD_STATUS_SUCCESS = 0;
    private long bufferStartTime;
    private boolean buffering;
    long lastVideoDuration;
    private NVMediaSource mediaSource;
    private NVContext nvContext;
    private INVPlayer nvPlayer;
    private String playId;
    private long playStartTime;
    private boolean playing;
    boolean storyQuitOnBufferingSent;
    private boolean noLogging = false;
    private boolean noLoggingNextPlay = false;
    boolean pendingLoopPlay = false;
    boolean pendingAutoNext = false;

    private void sendVideoPlayEndEvent(int i10) {
        sendVideoPlayEndEvent(i10, null);
    }

    public void onPlayError(int i10) {
        onPlayerStateChanged(4, i10, null);
    }

    public void onPlayerStateChanged(int i10) {
        onPlayerStateChanged(i10, 0);
    }

    private String getPlayingSceneUrl(Scene scene) {
        Media media;
        if (scene == null || (media = scene.media) == null) {
            return null;
        }
        return media.url;
    }

    private String getResType(Scene scene) {
        String playingSceneUrl;
        if (scene != null && (playingSceneUrl = getPlayingSceneUrl(scene)) != null) {
            INVPlayer iNVPlayer = this.nvPlayer;
            if (iNVPlayer instanceof NVExoPlayer) {
                return (((NVExoPlayer) iNVPlayer).loadLowResVideo && Utils.videoSupportLowBitrate(playingSceneUrl)) ? NVExoPlayer.LOW_RES : Utils.getResType(playingSceneUrl);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$playAnotherVideo$0() {
        onPlayerStateChanged(this.nvPlayer.getPlayerState());
    }

    private void sendVideoPlayEndEvent(int i10, String str) {
        LogEvent.Builder builderExtraParam = getVideoLogBuilder().actSemantic(ActSemantic.videoPlayEnd).extraParam(TypedValues.TransitionType.S_DURATION, Long.valueOf(SystemClock.elapsedRealtime() - this.playStartTime)).extraParam("playStatus", Integer.valueOf(i10));
        builderExtraParam.extraParamIfNotNull("_errorMessage", str);
        builderExtraParam.send();
    }

    public NVContext getLogNvContext() {
        if (this.noLogging) {
            return null;
        }
        NVMediaSource nVMediaSource = this.mediaSource;
        if (nVMediaSource != null && (nVMediaSource.getNvObject() instanceof PreviewObject) && ((PreviewObject) this.mediaSource.getNvObject()).isPreview()) {
            return null;
        }
        NVMediaSource nVMediaSource2 = this.mediaSource;
        return nVMediaSource2 != null ? nVMediaSource2.getNVContext() : this.nvContext;
    }

    public void onLoopPlayCompleteOnce() {
        if (this.playing) {
            this.playing = false;
            sendAutoNextPlayEndLog();
        }
        this.pendingLoopPlay = true;
        resetPlayId();
        this.pendingAutoNext = true;
        onPlayerStateChanged(this.nvPlayer.getPlayerState());
        this.pendingAutoNext = false;
    }

    public void onPlayError(int i10, String str) {
        onPlayerStateChanged(4, i10, str);
        StatisticsService statisticsService = (StatisticsService) this.nvContext.getService("statistics");
        if (statisticsService != null) {
            INVPlayer iNVPlayer = this.nvPlayer;
            String playingUrl = iNVPlayer == null ? null : iNVPlayer.getPlayingUrl();
            statisticsService.event("VideoPlayError").param("code", i10).param(AccountNotice.LEVEL_MESSAGE, str).param(ImagesContract.URL, playingUrl).param(ExternalSourceOrigin.EXTERNAL_SOURCE_ORIGIN_YOUTUBE, YoutubeUtils.getYoutubeVideoIdFromUrl(playingUrl) != null);
        }
    }

    public void onPlayerStateChanged(int i10, int i11) {
        onPlayerStateChanged(i10, i11, null);
    }

    public void onPositionDiscontinuity(int i10) {
        INVPlayer iNVPlayer = this.nvPlayer;
        if (iNVPlayer instanceof NVExoPlayer) {
            int currentWindowIndex = ((NVExoPlayer) iNVPlayer).getExoPlayer().getCurrentWindowIndex();
            if (i10 == 0) {
                if (currentWindowIndex == 0) {
                    onLoopPlayCompleteOnce();
                } else {
                    playAnotherVideo(null);
                }
            }
        }
    }

    public void playAnotherVideo(NVMediaSource nVMediaSource) {
        Log.d("videoPlay", "play another video");
        this.pendingLoopPlay = false;
        if (nVMediaSource != null) {
            this.mediaSource = nVMediaSource;
        }
        if (this.buffering) {
            this.buffering = false;
            getVideoLogBuilder().actSemantic(ActSemantic.videoLoadEnd).extraParam(TypedValues.TransitionType.S_DURATION, Long.valueOf(SystemClock.elapsedRealtime() - this.bufferStartTime)).extraParam("loadStatus", 0).send();
        }
        if (this.playing) {
            this.playing = false;
            sendVideoPlayEndEvent(0);
        }
        if (nVMediaSource != null) {
            this.noLogging = false;
        } else {
            this.noLogging = this.noLoggingNextPlay;
        }
        this.noLoggingNextPlay = false;
        resetPlayId();
        if (nVMediaSource == null && this.nvPlayer.getPlayerState() == 2) {
            Utils.post(new Runnable() { // from class: com.narvii.nvplayer.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f2550a.lambda$playAnotherVideo$0();
                }
            });
        }
    }

    public void storyQuitOnBuffering(BufferingQuit bufferingQuit) {
        NVContext nVContext;
        LogEventService logEventService;
        if (!this.buffering || this.storyQuitOnBufferingSent) {
            return;
        }
        this.storyQuitOnBufferingSent = true;
        LogEvent logEventBuild = getVideoLogBuilder().actSemantic(ActSemantic.storyQuitOnBuffering).extraParam(TypedValues.TransitionType.S_DURATION, Long.valueOf(SystemClock.elapsedRealtime() - this.bufferStartTime)).extraParam("bufferingQuitType", bufferingQuit.name()).build();
        if (!LogUtils.isStoryDetailPage(logEventBuild.eventPage) || (nVContext = this.nvContext) == null || (logEventService = (LogEventService) nVContext.getService("logEvent")) == null) {
            return;
        }
        logEventService.logEvent(logEventBuild);
    }

    public VideoLogHelper(Context context, INVPlayer iNVPlayer) {
        this.nvContext = Utils.getNVContext(context);
        this.nvPlayer = iNVPlayer;
    }

    private LogEvent.Builder getVideoLogBuilder() {
        NVObject nvObject;
        LogEvent.Builder builderActType = LogEvent.builder(getLogNvContext()).appEvent().actType(ActType.videoPlay);
        NVMediaSource nVMediaSource = this.mediaSource;
        String areaName = null;
        if (nVMediaSource != null) {
            nvObject = nVMediaSource.getNvObject();
        } else {
            nvObject = null;
        }
        LogEvent.Builder builderExtraParam = builderActType.object(nvObject).extraParam("videoTotalDuration", Long.valueOf(Math.max(this.nvPlayer.getDuration(), 0L))).extraParam("videoTime", Long.valueOf(this.nvPlayer.getCurrentPosition())).extraParam("videoPlayId", this.playId);
        NVMediaSource nVMediaSource2 = this.mediaSource;
        if (nVMediaSource2 != null) {
            areaName = nVMediaSource2.getAreaName();
        }
        return builderExtraParam.area(areaName);
    }

    private void sendAutoNextPlayEndLog() {
        getVideoLogBuilder().actSemantic(ActSemantic.videoPlayEnd).extraParam(TypedValues.TransitionType.S_DURATION, Long.valueOf(SystemClock.elapsedRealtime() - this.playStartTime)).extraParam("videoTotalDuration", Long.valueOf(this.lastVideoDuration)).extraParam("videoTime", Long.valueOf(this.lastVideoDuration)).extraParam("playStatus", 0).send();
    }

    public void onPlayerStateChanged(int i10, int i11, String str) {
        Log.d("videoPlay", i10 + "");
        if (i10 == 2) {
            if (this.buffering) {
                return;
            }
            if (this.playing) {
                this.playing = false;
                sendVideoPlayEndEvent(i11);
            }
            this.buffering = true;
            this.storyQuitOnBufferingSent = false;
            this.bufferStartTime = SystemClock.elapsedRealtime();
            getVideoLogBuilder().actSemantic(ActSemantic.videoLoadStart).send();
            return;
        }
        if (i10 == 3 || i10 == 4) {
            if (this.buffering) {
                this.buffering = false;
                getVideoLogBuilder().actSemantic(ActSemantic.videoLoadEnd).extraParam(TypedValues.TransitionType.S_DURATION, Long.valueOf(SystemClock.elapsedRealtime() - this.bufferStartTime)).extraParam("loadStatus", Integer.valueOf(i11)).extraParamIfNotNull("_errorMessage", str).send();
            }
            if (!this.playing && this.nvPlayer.isPlaying() && i10 == 3) {
                this.playing = true;
                this.playStartTime = SystemClock.elapsedRealtime();
                LogEvent.Builder builderActSemantic = getVideoLogBuilder().actSemantic(ActSemantic.videoPlayStart);
                if (this.pendingAutoNext) {
                    builderActSemantic.extraParam("videoTime", 0);
                }
                builderActSemantic.send();
                this.lastVideoDuration = this.nvPlayer.getDuration();
                return;
            }
            if (this.playing) {
                if (!this.nvPlayer.isPlaying() || i10 == 4) {
                    this.playing = false;
                    sendVideoPlayEndEvent(i11, str);
                }
            }
        }
    }

    public void resetIds() {
        resetPlayId();
    }

    public void resetPlayId() {
        this.playId = UUID.randomUUID().toString();
    }
}
