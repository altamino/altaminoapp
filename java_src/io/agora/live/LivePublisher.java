package io.agora.live;

import android.text.TextUtils;
import io.agora.rtc.RtcEngine;
import io.agora.rtc.live.LiveInjectStreamConfig;
import io.agora.rtc.live.LiveTranscoding;
import io.agora.rtc.video.AgoraImage;
import java.lang.ref.WeakReference;

/* loaded from: classes4.dex */
public class LivePublisher {
    private final LivePublisherHandler mHandler;
    private WeakReference<LiveEngine> mLiveEngine;
    private boolean mPublishAudio;
    private boolean mPublishVideo;
    private boolean mPublishing;

    public LivePublisher(LiveEngine liveEngine, LivePublisherHandler livePublisherHandler) {
        this.mLiveEngine = new WeakReference<>(liveEngine);
        this.mHandler = livePublisherHandler;
        LiveEngine liveEngine2 = this.mLiveEngine.get();
        if (liveEngine2 != null) {
            liveEngine2.getRtcEngine().enableDualStreamMode(true);
            liveEngine2.setPublisher(this);
        }
        setMediaType(3);
    }

    public LivePublisherHandler getLivePublisherHandler() {
        return this.mHandler;
    }

    public int setLiveTranscoding(LiveTranscoding liveTranscoding) {
        LiveEngine liveEngine = this.mLiveEngine.get();
        if (liveEngine == null) {
            return -3;
        }
        return liveEngine.getRtcEngine().setLiveTranscoding(liveTranscoding);
    }

    public void setMediaType(int i) {
        if (i == 0) {
            this.mPublishAudio = false;
            this.mPublishVideo = false;
        } else if (i == 1) {
            this.mPublishAudio = true;
            this.mPublishVideo = false;
        } else if (i == 2) {
            this.mPublishAudio = false;
            this.mPublishVideo = true;
        } else if (i == 3) {
            this.mPublishAudio = true;
            this.mPublishVideo = true;
        }
        applyPublishingMediaType();
    }

    public int setVideoProfile(int i, int i2, int i3, int i4) {
        LiveEngine liveEngine = this.mLiveEngine.get();
        if (liveEngine == null) {
            return -3;
        }
        return liveEngine.getRtcEngine().setVideoProfile(i, i2, i3, i4);
    }

    public void publish() {
        LiveEngine liveEngine = this.mLiveEngine.get();
        if (liveEngine == null) {
            return;
        }
        RtcEngine rtcEngine = liveEngine.getRtcEngine();
        this.mPublishing = true;
        if (liveEngine.getLiveChannelConfig().videoEnabled) {
            rtcEngine.enableLocalVideo(true);
        }
        rtcEngine.setClientRole(1);
        applyPublishingMediaType();
    }

    public int addStreamUrl(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return 2;
        }
        LiveEngine liveEngine = this.mLiveEngine.get();
        if (liveEngine == null) {
            return 3;
        }
        return liveEngine.getRtcEngine().addPublishStreamUrl(str, z);
    }

    public int removeStreamUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            return 2;
        }
        LiveEngine liveEngine = this.mLiveEngine.get();
        if (liveEngine == null) {
            return 3;
        }
        return liveEngine.getRtcEngine().removePublishStreamUrl(str);
    }

    public void unpublish() {
        LiveEngine liveEngine = this.mLiveEngine.get();
        if (liveEngine == null) {
            return;
        }
        liveEngine.getRtcEngine().setClientRole(2);
    }

    public void addVideoWatermark(AgoraImage agoraImage) {
        LiveEngine liveEngine = this.mLiveEngine.get();
        if (liveEngine == null) {
            return;
        }
        liveEngine.getRtcEngine().addVideoWatermark(agoraImage);
    }

    public void clearVideoWatermarks() {
        LiveEngine liveEngine = this.mLiveEngine.get();
        if (liveEngine == null) {
            return;
        }
        liveEngine.getRtcEngine().clearVideoWatermarks();
    }

    public void switchCamera() {
        LiveEngine liveEngine = this.mLiveEngine.get();
        if (liveEngine == null) {
            return;
        }
        liveEngine.getRtcEngine().switchCamera();
    }

    public int addInjectStreamUrl(String str, LiveInjectStreamConfig liveInjectStreamConfig) {
        LiveEngine liveEngine = this.mLiveEngine.get();
        if (liveEngine == null) {
            return 3;
        }
        return liveEngine.getRtcEngine().addInjectStreamUrl(str, liveInjectStreamConfig);
    }

    public int removeInjectStreamUrl(String str) {
        LiveEngine liveEngine = this.mLiveEngine.get();
        if (liveEngine == null) {
            return 3;
        }
        return liveEngine.getRtcEngine().removeInjectStreamUrl(str);
    }

    private void applyPublishingMediaType() {
        LiveEngine liveEngine = this.mLiveEngine.get();
        if (liveEngine == null) {
            return;
        }
        RtcEngine rtcEngine = liveEngine.getRtcEngine();
        if (this.mPublishing) {
            rtcEngine.muteLocalAudioStream(!this.mPublishAudio);
            if (liveEngine.getLiveChannelConfig().videoEnabled) {
                rtcEngine.muteLocalVideoStream(!this.mPublishVideo);
            }
        }
    }
}
