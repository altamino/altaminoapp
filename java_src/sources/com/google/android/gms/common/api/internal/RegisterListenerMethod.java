package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes11.dex */
@KeepForSdk
public abstract class RegisterListenerMethod<A extends Api.AnyClient, L> {
    private final ListenerHolder zaa;

    @Nullable
    private final Feature[] zab;
    private final boolean zac;
    private final int zad;

    @KeepForSdk
    protected RegisterListenerMethod(@NonNull ListenerHolder<L> listenerHolder, @Nullable Feature[] featureArr, boolean z6, int i10) {
        this.zaa = listenerHolder;
        this.zab = featureArr;
        this.zac = z6;
        this.zad = i10;
    }

    @Nullable
    @KeepForSdk
    public Feature[] getRequiredFeatures() {
        return this.zab;
    }

    @KeepForSdk
    protected abstract void registerListener(@NonNull A a7, @NonNull TaskCompletionSource<Void> taskCompletionSource) throws RemoteException;

    public final int zaa() {
        return this.zad;
    }

    public final boolean zab() {
        return this.zac;
    }

    @KeepForSdk
    protected RegisterListenerMethod(@NonNull ListenerHolder<L> listenerHolder) {
        this(listenerHolder, null, false, 0);
    }

    @KeepForSdk
    public void clearListener() {
        this.zaa.clear();
    }

    @Nullable
    @KeepForSdk
    public ListenerHolder.ListenerKey<L> getListenerKey() {
        return this.zaa.getListenerKey();
    }

    @KeepForSdk
    protected RegisterListenerMethod(@NonNull ListenerHolder<L> listenerHolder, @NonNull Feature[] featureArr, boolean z6) {
        this(listenerHolder, featureArr, z6, 0);
    }
}
