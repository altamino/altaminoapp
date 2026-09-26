package com.narvii.setting;

import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class VideoAutoPlayService {
    public static final int AUTO_PLAY_OFF = 2;
    public static final int AUTO_PLAY_ON = 0;
    public static final int AUTO_PLAY_WIFI_ONLY = 1;

    @NotNull
    public static final VideoAutoPlayService INSTANCE = new VideoAutoPlayService();

    @NotNull
    private static final ArrayList<VideoAutoPlayChangeListener> listeners = new ArrayList<>();

    public final void triggerEvent(int i10) {
        Iterator<T> it = listeners.iterator();
        while (it.hasNext()) {
            ((VideoAutoPlayChangeListener) it.next()).videoAutoPlayChange(i10);
        }
    }

    private VideoAutoPlayService() {
    }

    public final void registerVideoAutoPlayChangeListener(@NotNull VideoAutoPlayChangeListener videoAutoPlayChangeListener) {
        t.j(videoAutoPlayChangeListener, "videoAutoPlayChangeListener");
        listeners.add(videoAutoPlayChangeListener);
    }

    public final void unRegisterVideoAutoPlayChangeListener(@NotNull VideoAutoPlayChangeListener videoAutoPlayChangeListener) {
        t.j(videoAutoPlayChangeListener, "videoAutoPlayChangeListener");
        listeners.remove(videoAutoPlayChangeListener);
    }
}
