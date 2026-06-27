package io.agora.live;

import android.util.Log;
import android.view.SurfaceView;
import io.agora.rtc.RtcEngine;
import io.agora.rtc.video.VideoCanvas;
import java.lang.ref.WeakReference;

/* loaded from: classes4.dex */
public class LiveSubscriber {
    private static final String TAG = "LiveSubscriber";
    private final LiveSubscriberHandler mHandler;
    private WeakReference<LiveEngine> mLiveEngine;

    public LiveSubscriber(LiveEngine liveEngine, LiveSubscriberHandler liveSubscriberHandler) {
        this.mLiveEngine = new WeakReference<>(liveEngine);
        this.mHandler = liveSubscriberHandler;
        LiveEngine liveEngine2 = this.mLiveEngine.get();
        if (liveEngine2 != null) {
            liveEngine2.setSubscriber(this);
        }
    }

    public LiveSubscriberHandler getLiveSubscriberHandler() {
        return this.mHandler;
    }

    public void subscribe(int i, int i2, SurfaceView surfaceView, int i3, int i4) {
        boolean z;
        LiveEngine liveEngine = this.mLiveEngine.get();
        if (liveEngine == null) {
            Log.e(TAG, "LiveEngine is null, none subscribing...");
            return;
        }
        RtcEngine rtcEngine = liveEngine.getRtcEngine();
        rtcEngine.setupRemoteVideo(new VideoCanvas(surfaceView, i3, i));
        rtcEngine.setRemoteVideoStreamType(i, i4);
        rtcEngine.setRemoteRenderMode(i, i3);
        boolean z2 = false;
        if (i2 != 0) {
            if (i2 == 1) {
                z = false;
            } else if (i2 != 2) {
                z = true;
            } else {
                z = true;
            }
            z2 = true;
        } else {
            z = false;
        }
        rtcEngine.muteRemoteAudioStream(i, !z2);
        rtcEngine.muteRemoteVideoStream(i, !z);
    }

    public void unsubscribe(int i) {
        LiveEngine liveEngine = this.mLiveEngine.get();
        if (liveEngine == null) {
            Log.e(TAG, "LiveEngine is null while unsubscribing");
            return;
        }
        RtcEngine rtcEngine = liveEngine.getRtcEngine();
        rtcEngine.setupRemoteVideo(new VideoCanvas(null, 1, i));
        rtcEngine.muteRemoteAudioStream(i, true);
        rtcEngine.muteRemoteVideoStream(i, true);
    }
}
