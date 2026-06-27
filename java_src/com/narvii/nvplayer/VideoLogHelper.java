package com.narvii.nvplayer;

import android.content.Context;
import android.os.SystemClock;
import com.narvii.app.NVContext;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.ActType;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.logging.service.LogEventService;
import com.narvii.model.Blog;
import com.narvii.model.Media;
import com.narvii.model.PreviewObject;
import com.narvii.model.Scene;
import com.narvii.nvplayer.exoplayer.NVExoPlayer;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import java.util.List;
import java.util.UUID;

/* loaded from: classes3.dex */
public class VideoLogHelper {
    public static final int LOAD_STATUS_FAIL_OTHERS = -2;
    public static final int LOAD_STATUS_FAIL_RENDER = 2;
    public static final int LOAD_STATUS_FAIL_SOURCE = 1;
    public static final int LOAD_STATUS_SUCCESS = 0;
    private long bufferStartTime;
    private boolean buffering;
    private Context context;
    String lastResType;
    Scene lastScene;
    String lastSceneLoadingUrl;
    String lastScenePlayingUrl;
    long lastVideoDuration;
    private int lastWindowIndex;
    private NVMediaSource mediaSource;
    private NVContext nvContext;
    private INVPlayer nvPlayer;
    private String playId;
    private long playStartTime;
    private boolean playing;
    private String storyPlayId;
    private boolean storyPlaying;
    boolean storyQuitOnBufferingSent;
    private long storyStartTime;
    private boolean noLogging = false;
    private boolean noLoggingNextPlay = false;
    boolean pendingLoopPlay = false;
    boolean pendingAutoNext = false;

    public VideoLogHelper(Context context, INVPlayer iNVPlayer) {
        this.context = context;
        this.nvContext = Utils.getNVContext(context);
        this.nvPlayer = iNVPlayer;
    }

    public void setNoLoggingNextPlay() {
        this.noLoggingNextPlay = true;
    }

    public void resetPlayId() {
        this.playId = UUID.randomUUID().toString();
    }

    public void onPlayerStateChanged(int i) {
        onPlayerStateChanged(i, 0);
    }

    public void onPlayerStateChanged(int i, int i2) {
        onPlayerStateChanged(i, i2, null);
    }

    public void storyQuitOnBuffering(BufferingQuit bufferingQuit) {
        NVContext nVContext;
        LogEventService logEventService;
        if (!this.buffering || this.storyQuitOnBufferingSent) {
            return;
        }
        this.storyQuitOnBufferingSent = true;
        LogEvent logEventBuild = getVideoLogBuilder().actSemantic(ActSemantic.storyQuitOnBuffering).extraParam("duration", Long.valueOf(SystemClock.elapsedRealtime() - this.bufferStartTime)).extraParam("bufferingQuitType", bufferingQuit.name()).build();
        if (!LogUtils.isStoryDetailPage(logEventBuild.eventPage) || (nVContext = this.nvContext) == null || (logEventService = (LogEventService) nVContext.getService("logEvent")) == null) {
            return;
        }
        logEventService.lambda$logEvent$0$LogEventServiceImpl(logEventBuild);
    }

    public void onPlayerStateChanged(int i, int i2, String str) {
        Log.d("videoPlay", i + "");
        if (i == 2) {
            if (this.buffering) {
                return;
            }
            if (this.playing) {
                this.playing = false;
                sendVideoPlayEndEvent(i2);
            }
            if (this.storyPlaying) {
                this.storyPlaying = false;
                sendStoryStopEvent();
            }
            this.buffering = true;
            this.storyQuitOnBufferingSent = false;
            this.lastResType = getResType(getCurrentPlayingScene());
            this.lastSceneLoadingUrl = getPlayingSceneUrl(getCurrentPlayingScene());
            this.bufferStartTime = SystemClock.elapsedRealtime();
            getVideoLogBuilder().actSemantic(ActSemantic.videoLoadStart).send();
            return;
        }
        if (i == 3 || i == 4) {
            if (this.buffering) {
                this.buffering = false;
                getVideoLogBuilder().actSemantic(ActSemantic.videoLoadEnd).extraParam("duration", Long.valueOf(SystemClock.elapsedRealtime() - this.bufferStartTime)).extraParam("loadStatus", Integer.valueOf(i2)).extraParamIfNotNull("_errorMessage", isStory() ? str : null).send();
            }
            if (!this.playing && this.nvPlayer.isPlaying() && i == 3) {
                this.playing = true;
                this.playStartTime = SystemClock.elapsedRealtime();
                LogEvent.Builder builderActSemantic = getVideoLogBuilder().actSemantic(ActSemantic.videoPlayStart);
                if (this.pendingAutoNext) {
                    builderActSemantic.extraParam("videoTime", 0);
                }
                builderActSemantic.send();
                Scene currentPlayingScene = getCurrentPlayingScene();
                this.lastScenePlayingUrl = getPlayingSceneUrl(currentPlayingScene);
                this.lastResType = getResType(currentPlayingScene);
                this.lastScene = currentPlayingScene;
                this.lastVideoDuration = this.nvPlayer.getDuration();
            } else if (this.playing && (!this.nvPlayer.isPlaying() || i == 4)) {
                this.playing = false;
                sendVideoPlayEndEvent(i2, str);
            }
            if (!this.storyPlaying && isStory() && this.nvPlayer.isPlaying() && i == 3) {
                this.storyPlaying = true;
                this.storyStartTime = SystemClock.elapsedRealtime();
                LogEvent.Builder builderActSemantic2 = getStoryLogBuilder().actSemantic(ActSemantic.play);
                if (this.pendingLoopPlay) {
                    this.pendingLoopPlay = false;
                    builderActSemantic2.actType(ActType.autoPlay);
                }
                builderActSemantic2.toThirdParty().send();
                return;
            }
            if (this.storyPlaying) {
                if (!this.nvPlayer.isPlaying() || i == 4) {
                    this.storyPlaying = false;
                    sendStoryStopEvent();
                }
            }
        }
    }

    private String getPlayingSceneUrl(Scene scene) {
        Media media;
        if (scene == null || (media = scene.media) == null) {
            return null;
        }
        return media.url;
    }

    private void sendVideoPlayEndEvent(int i) {
        sendVideoPlayEndEvent(i, null);
    }

    private void sendVideoPlayEndEvent(int i, String str) {
        boolean zIsStory = isStory();
        LogEvent.Builder builderExtraParam = getVideoLogBuilder().actSemantic(ActSemantic.videoPlayEnd).extraParam("duration", Long.valueOf(SystemClock.elapsedRealtime() - this.playStartTime)).extraParam("playStatus", Integer.valueOf(i));
        if (i != 0) {
            Scene scene = this.lastScene;
            builderExtraParam.extraParamIfNotNull("sceneId", scene != null ? scene.sceneId : null);
            builderExtraParam.extraParamIfNotNull("resType", this.lastResType);
        }
        if (!zIsStory) {
            str = null;
        }
        builderExtraParam.extraParamIfNotNull("_errorMessage", str);
        builderExtraParam.send();
    }

    public void onPlayError(int i) {
        onPlayerStateChanged(4, i, null);
    }

    public void onPlayError(int i, String str) {
        onPlayerStateChanged(4, i, str);
    }

    public void onLoopPlayCompleteOnce() {
        if (this.playing) {
            this.playing = false;
            sendAutoNextPlayEndLog();
        }
        if (this.storyPlaying) {
            this.storyPlaying = false;
            sendStoryStopEvent(true);
        }
        this.pendingLoopPlay = true;
        resetStoryPlayId();
        resetPlayId();
        this.pendingAutoNext = true;
        onPlayerStateChanged(this.nvPlayer.getPlayerState());
        this.pendingAutoNext = false;
    }

    private void resetStoryPlayId() {
        if (isStory()) {
            this.storyPlayId = UUID.randomUUID().toString();
        } else {
            this.storyPlayId = null;
        }
    }

    public void playAnotherVideo(NVMediaSource nVMediaSource) {
        playAnotherVideo(nVMediaSource, true);
    }

    public void playAnotherVideo(NVMediaSource nVMediaSource, boolean z) {
        playAnotherVideo(nVMediaSource, z, false);
    }

    public void playAnotherVideo(NVMediaSource nVMediaSource, boolean z, boolean z2) {
        Log.d("videoPlay", "play another video");
        this.pendingLoopPlay = false;
        if (nVMediaSource != null) {
            this.mediaSource = nVMediaSource;
        }
        if (this.buffering) {
            this.buffering = false;
            getVideoLogBuilder().actSemantic(ActSemantic.videoLoadEnd).extraParam("duration", Long.valueOf(SystemClock.elapsedRealtime() - this.bufferStartTime)).extraParam("loadStatus", 0).send();
        }
        if (this.playing) {
            this.playing = false;
            if (z2) {
                sendAutoNextPlayEndLog();
            } else {
                sendVideoPlayEndEvent(0);
            }
        }
        if (this.storyPlaying && nVMediaSource != null) {
            this.storyPlaying = false;
            sendStoryStopEvent();
        }
        if (nVMediaSource != null) {
            this.noLogging = false;
        } else {
            this.noLogging = this.noLoggingNextPlay;
        }
        this.noLoggingNextPlay = false;
        if (z) {
            resetStoryPlayId();
        }
        resetPlayId();
        if (nVMediaSource != null) {
            this.lastWindowIndex = 0;
            return;
        }
        if (z2) {
            this.pendingAutoNext = true;
            onPlayerStateChanged(this.nvPlayer.getPlayerState());
            this.pendingAutoNext = false;
        } else if (this.nvPlayer.getPlayerState() == 2) {
            Utils.post(new Runnable() { // from class: com.narvii.nvplayer.-$$Lambda$VideoLogHelper$7wLhg1GX_z7M-Fwz6dQ1Bl8Ldgk
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$playAnotherVideo$0$VideoLogHelper();
                }
            });
        }
    }

    public /* synthetic */ void lambda$playAnotherVideo$0$VideoLogHelper() {
        onPlayerStateChanged(this.nvPlayer.getPlayerState());
    }

    private void sendAutoNextPlayEndLog() {
        LogEvent.Builder builderExtraParam = getVideoLogBuilder().actSemantic(ActSemantic.videoPlayEnd).extraParam("duration", Long.valueOf(SystemClock.elapsedRealtime() - this.playStartTime)).extraParam("videoTotalDuration", Long.valueOf(this.lastVideoDuration)).extraParam("videoTime", Long.valueOf(this.lastVideoDuration));
        Scene scene = this.lastScene;
        builderExtraParam.extraParamIfNotNull("sceneId", scene != null ? scene.sceneId : null).extraParamIfNotNull("resType", this.lastResType).extraParam("playStatus", 0).send();
    }

    private void sendStoryStopEvent() {
        sendStoryStopEvent(false);
    }

    private void sendStoryStopEvent(boolean z) {
        getStoryLogBuilder().actSemantic(ActSemantic.stop).actType(z ? ActType.autoPlay : ActType.click).extraParam("duration", Long.valueOf(SystemClock.elapsedRealtime() - this.storyStartTime)).extraParam("storyTime", Long.valueOf(z ? this.nvPlayer.getTotalDuration() : getStoryTime())).send();
    }

    private Scene getCurrentPlayingScene() {
        if (!isStory()) {
            return null;
        }
        Blog blog = (Blog) this.mediaSource.getNvObject();
        int currentWindowIndex = this.nvPlayer.getCurrentWindowIndex();
        if (currentWindowIndex == -1) {
            currentWindowIndex = 0;
        }
        List<Scene> list = blog.sceneList;
        if (list == null || list.size() <= 0 || currentWindowIndex < 0 || currentWindowIndex >= blog.sceneList.size()) {
            return null;
        }
        return blog.sceneList.get(currentWindowIndex);
    }

    private boolean isStory() {
        NVMediaSource nVMediaSource = this.mediaSource;
        return nVMediaSource != null && (nVMediaSource.getNvObject() instanceof Blog) && ((Blog) this.mediaSource.getNvObject()).isStory();
    }

    private LogEvent.Builder getVideoLogBuilder() {
        Scene currentPlayingScene = getCurrentPlayingScene();
        String resType = getResType(currentPlayingScene);
        LogEvent.Builder builderActType = LogEvent.builder(getLogNvContext()).appEvent().actType(ActType.videoPlay);
        NVMediaSource nVMediaSource = this.mediaSource;
        LogEvent.Builder builderExtraParam = builderActType.object(nVMediaSource != null ? nVMediaSource.getNvObject() : null).extraParam("videoTotalDuration", Long.valueOf(Math.max(this.nvPlayer.getDuration(), 0L))).extraParam("videoTime", Long.valueOf(this.nvPlayer.getCurrentPosition())).extraParam("videoPlayId", this.playId);
        NVMediaSource nVMediaSource2 = this.mediaSource;
        return builderExtraParam.area(nVMediaSource2 != null ? nVMediaSource2.getAreaName() : null).extraParamIfNotNull("storyPlayId", this.storyPlayId).extraParamIfNotNull("sceneId", currentPlayingScene != null ? currentPlayingScene.sceneId : null).extraParamIfNotNull("resType", resType);
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

    private long getStoryTime() {
        NVMediaSource nVMediaSource = this.mediaSource;
        long j = 0;
        if (nVMediaSource == null || nVMediaSource.mediaList == null) {
            return 0L;
        }
        int currentWindowIndex = this.nvPlayer.getCurrentWindowIndex();
        for (int i = 0; i < currentWindowIndex; i++) {
            try {
                j += this.mediaSource.mediaList.get(i).duration;
            } catch (Exception unused) {
                return -1L;
            }
        }
        return j + this.nvPlayer.getCurrentPosition();
    }

    private LogEvent.Builder getStoryLogBuilder() {
        LogEvent.Builder builderActClick = LogEvent.builder(getLogNvContext()).actClick();
        NVMediaSource nVMediaSource = this.mediaSource;
        LogEvent.Builder builderExtraParam = builderActClick.object(nVMediaSource != null ? nVMediaSource.getNvObject() : null).extraParam("storyTotalDuration", Long.valueOf(this.nvPlayer.getTotalDuration())).extraParam("storyTime", Long.valueOf(getStoryTime()));
        NVMediaSource nVMediaSource2 = this.mediaSource;
        return builderExtraParam.area(nVMediaSource2 != null ? nVMediaSource2.getAreaName() : null).extraParamIfNotNull("storyPlayId", this.storyPlayId);
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
        if (nVMediaSource2 != null) {
            return nVMediaSource2.getNVContext();
        }
        return this.nvContext;
    }

    public void onPositionDiscontinuity(int i) {
        INVPlayer iNVPlayer = this.nvPlayer;
        if (iNVPlayer instanceof NVExoPlayer) {
            int currentWindowIndex = ((NVExoPlayer) iNVPlayer).getExoPlayer().getCurrentWindowIndex();
            this.lastWindowIndex = currentWindowIndex;
            if (i == 0) {
                if (currentWindowIndex == 0) {
                    onLoopPlayCompleteOnce();
                } else {
                    playAnotherVideo(null, false, true);
                }
            }
        }
    }

    public void resetIds() {
        resetPlayId();
        resetStoryPlayId();
    }

    public String getStoryPlayId() {
        return this.storyPlayId;
    }
}
