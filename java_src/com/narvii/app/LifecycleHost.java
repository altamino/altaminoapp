package com.narvii.app;

/* loaded from: classes.dex */
public interface LifecycleHost {
    public static final int LIFECYCLE_CREATED = 1;
    public static final int LIFECYCLE_DESTROYED = -1;
    public static final int LIFECYCLE_RESUMED = 3;
    public static final int LIFECYCLE_STARTED = 2;

    void addWeakLifecycleListener(LifecycleListener lifecycleListener);

    int getLifecycleState();

    void removeWeakLifecycleListener(LifecycleListener lifecycleListener);
}
