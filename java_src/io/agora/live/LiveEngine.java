package io.agora.live;

import android.content.Context;
import android.view.SurfaceView;
import io.agora.live.impl.LiveEngineImpl;
import io.agora.rtc.RtcEngine;

/* loaded from: classes4.dex */
public abstract class LiveEngine {
    private static LiveEngineImpl gLiveEngineImpl;

    public abstract LiveChannelConfig getLiveChannelConfig();

    public abstract RtcEngine getRtcEngine();

    public abstract int joinChannel(String str, String str2, LiveChannelConfig liveChannelConfig, int i);

    public abstract int leaveChannel();

    public abstract int renewToken(String str);

    public abstract void setPublisher(LivePublisher livePublisher);

    public abstract void setSubscriber(LiveSubscriber liveSubscriber);

    public abstract int startPreview(SurfaceView surfaceView, int i);

    public abstract int stopPreview();

    public static String getSdkVersion() {
        return RtcEngine.getSdkVersion();
    }

    public static String getMediaEngineVersion() {
        return RtcEngine.getMediaEngineVersion();
    }

    public static LiveEngine createLiveEngine(Context context, String str, LiveEngineHandler liveEngineHandler) {
        if (context == null) {
            return null;
        }
        LiveEngineImpl liveEngineImpl = gLiveEngineImpl;
        if (liveEngineImpl == null) {
            gLiveEngineImpl = new LiveEngineImpl(context, str, liveEngineHandler);
        } else {
            liveEngineImpl.reinitialize(context, str, liveEngineHandler);
        }
        return gLiveEngineImpl;
    }

    public static synchronized void destroy() {
        if (gLiveEngineImpl == null) {
            return;
        }
        gLiveEngineImpl.doDestroy();
        gLiveEngineImpl = null;
        RtcEngine.destroy();
    }
}
