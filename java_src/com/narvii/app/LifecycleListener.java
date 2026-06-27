package com.narvii.app;

/* loaded from: classes2.dex */
public interface LifecycleListener {
    void lifecycleOnCreate(LifecycleHost lifecycleHost);

    void lifecycleOnDestroy(LifecycleHost lifecycleHost);

    void lifecycleOnPause(LifecycleHost lifecycleHost);

    void lifecycleOnResume(LifecycleHost lifecycleHost);

    void lifecycleOnStart(LifecycleHost lifecycleHost);

    void lifecycleOnStop(LifecycleHost lifecycleHost);
}
