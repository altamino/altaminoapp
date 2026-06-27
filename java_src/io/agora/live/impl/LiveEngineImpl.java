package io.agora.live.impl;

import android.content.Context;
import android.text.TextUtils;
import android.view.SurfaceView;
import io.agora.live.LiveChannelConfig;
import io.agora.live.LiveEngine;
import io.agora.live.LiveEngineHandler;
import io.agora.live.LivePublisher;
import io.agora.live.LiveStats;
import io.agora.live.LiveSubscriber;
import io.agora.rtc.IRtcEngineEventHandler;
import io.agora.rtc.RtcEngine;
import io.agora.rtc.internal.Logging;
import io.agora.rtc.video.VideoCanvas;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes4.dex */
public class LiveEngineImpl extends LiveEngine {
    private static final String[] ENCRYPTION_MODE = {"", "aes-128-xts", "aes-256-xts", "aes-128-ecb"};
    private static final int REMOTE_AUDIO_MUTED = 1;
    private static final int REMOTE_VIDEO_MUTED = 2;
    private static final String TAG = "LiveEngineImpl";
    private LiveChannelConfig mChannelConfig;
    private LivePublisher mPublisher;
    private RtcEngine mRtcEngine;
    private LiveSubscriber mSubscriber;

    private static final class RtcEngineHandler extends IRtcEngineEventHandler {
        private static final RtcEngineHandler gRtcHandler = new RtcEngineHandler();
        private LiveEngineImpl mLiveEngineImpl;
        private LiveEngineHandler mLiveHandler;
        private Map<Integer, Integer> remoteStreamMediaStats = new HashMap();

        private RtcEngineHandler() {
        }

        public static RtcEngineHandler get() {
            return gRtcHandler;
        }

        public RtcEngineHandler setObjects(LiveEngineImpl liveEngineImpl) {
            this.mLiveEngineImpl = liveEngineImpl;
            return gRtcHandler;
        }

        public void setLiveHandler(LiveEngineHandler liveEngineHandler) {
            this.mLiveHandler = liveEngineHandler;
        }

        private int getMediaTypeByStat(int i) {
            int[] iArr = {3, 2, 1, 0};
            if (i < 0 || i > 3) {
                return 0;
            }
            return iArr[i];
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onError(int i) {
            LiveEngineHandler liveEngineHandler = this.mLiveHandler;
            if (liveEngineHandler != null) {
                liveEngineHandler.onError(i);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onWarning(int i) {
            LiveEngineHandler liveEngineHandler = this.mLiveHandler;
            if (liveEngineHandler != null) {
                liveEngineHandler.onWarning(i);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onFirstRemoteVideoDecoded(int i, int i2, int i3, int i4) {
            LiveEngineImpl liveEngineImpl = this.mLiveEngineImpl;
            if (liveEngineImpl == null || liveEngineImpl.mSubscriber == null) {
                return;
            }
            this.mLiveEngineImpl.mSubscriber.getLiveSubscriberHandler().onFirstRemoteVideoDecoded(i, i2, i3, i4);
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onVideoSizeChanged(int i, int i2, int i3, int i4) {
            LiveEngineImpl liveEngineImpl = this.mLiveEngineImpl;
            if (liveEngineImpl == null || liveEngineImpl.mSubscriber == null) {
                return;
            }
            this.mLiveEngineImpl.mSubscriber.getLiveSubscriberHandler().onVideoSizeChanged(i, i2, i3, i4);
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onUserJoined(int i, int i2) {
            LiveEngineImpl liveEngineImpl = this.mLiveEngineImpl;
            if (liveEngineImpl == null || liveEngineImpl.mSubscriber == null) {
                return;
            }
            this.mLiveEngineImpl.getRtcEngine().muteRemoteAudioStream(i, true);
            this.mLiveEngineImpl.getRtcEngine().muteRemoteVideoStream(i, true);
            this.remoteStreamMediaStats.put(Integer.valueOf(i), 0);
            this.mLiveEngineImpl.mSubscriber.getLiveSubscriberHandler().publishedByHost(i, getMediaTypeByStat(0));
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onUserOffline(int i, int i2) {
            LiveEngineImpl liveEngineImpl = this.mLiveEngineImpl;
            if (liveEngineImpl == null || liveEngineImpl.mSubscriber == null) {
                return;
            }
            this.remoteStreamMediaStats.remove(Integer.valueOf(i));
            this.mLiveEngineImpl.mSubscriber.getLiveSubscriberHandler().unpublishedByHost(i);
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onUserMuteAudio(int i, boolean z) {
            LiveEngineImpl liveEngineImpl = this.mLiveEngineImpl;
            if (liveEngineImpl == null || liveEngineImpl.mSubscriber == null) {
                return;
            }
            Integer num = this.remoteStreamMediaStats.get(Integer.valueOf(i));
            int iIntValue = num != null ? num.intValue() : 0;
            int i2 = z ? iIntValue | 1 : iIntValue & (-2);
            int mediaTypeByStat = getMediaTypeByStat(i2);
            if (num == null) {
                this.mLiveEngineImpl.mSubscriber.getLiveSubscriberHandler().publishedByHost(i, mediaTypeByStat);
            } else {
                this.mLiveEngineImpl.mSubscriber.getLiveSubscriberHandler().onStreamTypeChanged(mediaTypeByStat, i);
            }
            this.remoteStreamMediaStats.put(Integer.valueOf(i), Integer.valueOf(i2));
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onUserMuteVideo(int i, boolean z) {
            LiveEngineImpl liveEngineImpl = this.mLiveEngineImpl;
            if (liveEngineImpl == null || liveEngineImpl.mSubscriber == null) {
                return;
            }
            Integer num = this.remoteStreamMediaStats.get(Integer.valueOf(i));
            int iIntValue = num != null ? num.intValue() : 0;
            int i2 = z ? iIntValue | 2 : iIntValue & (-3);
            int mediaTypeByStat = getMediaTypeByStat(i2);
            if (num == null) {
                this.mLiveEngineImpl.mSubscriber.getLiveSubscriberHandler().publishedByHost(i, mediaTypeByStat);
            } else {
                this.mLiveEngineImpl.mSubscriber.getLiveSubscriberHandler().onStreamTypeChanged(mediaTypeByStat, i);
            }
            this.remoteStreamMediaStats.put(Integer.valueOf(i), Integer.valueOf(i2));
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onJoinChannelSuccess(String str, int i, int i2) {
            LiveEngineHandler liveEngineHandler = this.mLiveHandler;
            if (liveEngineHandler != null) {
                liveEngineHandler.onJoinChannel(str, i, i2);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onLeaveChannel(IRtcEngineEventHandler.RtcStats rtcStats) {
            LiveEngineHandler liveEngineHandler = this.mLiveHandler;
            if (liveEngineHandler != null) {
                liveEngineHandler.onLeaveChannel();
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onRejoinChannelSuccess(String str, int i, int i2) {
            LiveEngineHandler liveEngineHandler = this.mLiveHandler;
            if (liveEngineHandler != null) {
                liveEngineHandler.onRejoinChannel(str, i, i2);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onRtcStats(IRtcEngineEventHandler.RtcStats rtcStats) {
            LiveEngineHandler liveEngineHandler = this.mLiveHandler;
            if (liveEngineHandler != null) {
                liveEngineHandler.onReportLiveStats(new LiveStats(rtcStats));
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onConnectionInterrupted() {
            LiveEngineHandler liveEngineHandler = this.mLiveHandler;
            if (liveEngineHandler != null) {
                liveEngineHandler.onConnectionInterrupted();
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onConnectionLost() {
            LiveEngineHandler liveEngineHandler = this.mLiveHandler;
            if (liveEngineHandler != null) {
                liveEngineHandler.onConnectionLost();
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onNetworkQuality(int i, int i2, int i3) {
            LiveEngineHandler liveEngineHandler = this.mLiveHandler;
            if (liveEngineHandler != null) {
                liveEngineHandler.onNetworkQuality(i, i2, i3);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onStreamPublished(String str, int i) {
            LiveEngineImpl liveEngineImpl = this.mLiveEngineImpl;
            if (liveEngineImpl == null || liveEngineImpl.mPublisher == null) {
                return;
            }
            if (i == 0) {
                this.mLiveEngineImpl.mPublisher.getLivePublisherHandler().onStreamUrlPublished(str);
            } else {
                this.mLiveEngineImpl.mPublisher.getLivePublisherHandler().onPublishStreamUrlFailed(str, i);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onStreamUnpublished(String str) {
            LiveEngineImpl liveEngineImpl = this.mLiveEngineImpl;
            if (liveEngineImpl == null || liveEngineImpl.mPublisher == null) {
                return;
            }
            this.mLiveEngineImpl.mPublisher.getLivePublisherHandler().onStreamUrlUnpublished(str);
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onTranscodingUpdated() {
            LiveEngineImpl liveEngineImpl = this.mLiveEngineImpl;
            if (liveEngineImpl == null || liveEngineImpl.mPublisher == null) {
                return;
            }
            this.mLiveEngineImpl.mPublisher.getLivePublisherHandler().onPublisherTranscodingUpdated(this.mLiveEngineImpl.mPublisher);
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onRequestToken() {
            LiveEngineHandler liveEngineHandler = this.mLiveHandler;
            if (liveEngineHandler != null) {
                liveEngineHandler.onRequestToken();
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onTokenPrivilegeWillExpire(String str) {
            LiveEngineHandler liveEngineHandler = this.mLiveHandler;
            if (liveEngineHandler != null) {
                liveEngineHandler.onTokenPrivilegeWillExpire(str);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onStreamInjectedStatus(String str, int i, int i2) {
            LiveEngineImpl liveEngineImpl = this.mLiveEngineImpl;
            if (liveEngineImpl == null || liveEngineImpl.mPublisher == null) {
                return;
            }
            this.mLiveEngineImpl.mPublisher.getLivePublisherHandler().onStreamInjectedStatus(str, i, i2);
        }
    }

    public LiveEngineImpl(Context context, String str, LiveEngineHandler liveEngineHandler) {
        try {
            RtcEngineHandler.get().setObjects(this).setLiveHandler(liveEngineHandler);
            this.mRtcEngine = RtcEngine.create(context, str, RtcEngineHandler.get());
        } catch (Exception e) {
            RtcEngineHandler.get().setObjects(null).setLiveHandler(null);
            Logging.e(TAG, "failed to create AgoraLiveEngine", e);
        }
    }

    public void reinitialize(Context context, String str, LiveEngineHandler liveEngineHandler) {
        RtcEngineHandler.get().setObjects(this).setLiveHandler(liveEngineHandler);
    }

    public void doDestroy() {
        RtcEngineHandler.get().setObjects(null).setLiveHandler(null);
    }

    @Override // io.agora.live.LiveEngine
    public RtcEngine getRtcEngine() {
        return this.mRtcEngine;
    }

    @Override // io.agora.live.LiveEngine
    public void setPublisher(LivePublisher livePublisher) {
        this.mPublisher = livePublisher;
    }

    @Override // io.agora.live.LiveEngine
    public void setSubscriber(LiveSubscriber liveSubscriber) {
        this.mSubscriber = liveSubscriber;
    }

    @Override // io.agora.live.LiveEngine
    public LiveChannelConfig getLiveChannelConfig() {
        return this.mChannelConfig;
    }

    @Override // io.agora.live.LiveEngine
    public int joinChannel(String str, String str2, LiveChannelConfig liveChannelConfig, int i) {
        this.mRtcEngine.setChannelProfile(1);
        this.mChannelConfig = liveChannelConfig;
        if (liveChannelConfig.videoEnabled) {
            this.mRtcEngine.enableVideo();
            this.mRtcEngine.enableDualStreamMode(true);
        } else {
            this.mRtcEngine.disableVideo();
        }
        this.mRtcEngine.setClientRole(2);
        this.mRtcEngine.setEncryptionMode("");
        this.mRtcEngine.setEncryptionSecret(null);
        return this.mRtcEngine.joinChannel(str2, str, null, i);
    }

    @Override // io.agora.live.LiveEngine
    public int leaveChannel() {
        LivePublisher livePublisher = this.mPublisher;
        if (livePublisher != null) {
            livePublisher.unpublish();
        }
        return this.mRtcEngine.leaveChannel();
    }

    @Override // io.agora.live.LiveEngine
    public int renewToken(String str) {
        if (TextUtils.isEmpty(str)) {
            return 2;
        }
        return this.mRtcEngine.renewToken(str);
    }

    @Override // io.agora.live.LiveEngine
    public int startPreview(SurfaceView surfaceView, int i) {
        this.mRtcEngine.setupLocalVideo(new VideoCanvas(surfaceView, i, 0));
        return this.mRtcEngine.startPreview();
    }

    @Override // io.agora.live.LiveEngine
    public int stopPreview() {
        this.mRtcEngine.setupLocalVideo(new VideoCanvas(null));
        return this.mRtcEngine.stopPreview();
    }
}
