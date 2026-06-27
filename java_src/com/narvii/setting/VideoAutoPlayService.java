package com.narvii.setting;

import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: VideoAutoPlayService.kt */
/* loaded from: classes3.dex */
public final class VideoAutoPlayService {
    public static final int AUTO_PLAY_OFF = 2;
    public static final int AUTO_PLAY_ON = 0;
    public static final int AUTO_PLAY_WIFI_ONLY = 1;
    public static final VideoAutoPlayService INSTANCE = new VideoAutoPlayService();
    private static final ArrayList<VideoAutoPlayChangeListener> listeners = new ArrayList<>();

    private VideoAutoPlayService() {
    }

    public final void registerVideoAutoPlayChangeListener(VideoAutoPlayChangeListener videoAutoPlayChangeListener) {
        Intrinsics.checkParameterIsNotNull(videoAutoPlayChangeListener, "videoAutoPlayChangeListener");
        listeners.add(videoAutoPlayChangeListener);
    }

    public final void unRegisterVideoAutoPlayChangeListener(VideoAutoPlayChangeListener videoAutoPlayChangeListener) {
        Intrinsics.checkParameterIsNotNull(videoAutoPlayChangeListener, "videoAutoPlayChangeListener");
        listeners.remove(videoAutoPlayChangeListener);
    }

    public final void triggerEvent(int i) {
        Iterator<T> it = listeners.iterator();
        while (it.hasNext()) {
            ((VideoAutoPlayChangeListener) it.next()).videoAutoPlayChange(i);
        }
    }
}
