package androidx.lifecycle;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes11.dex */
@Deprecated
class ReflectiveGenericLifecycleObserver implements LifecycleEventObserver {
    private final ClassesInfoCache.CallbackInfo mInfo;
    private final Object mWrapped;

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
        this.mInfo.a(lifecycleOwner, event, this.mWrapped);
    }

    ReflectiveGenericLifecycleObserver(Object obj) {
        this.mWrapped = obj;
        this.mInfo = ClassesInfoCache.sInstance.c(obj.getClass());
    }
}
