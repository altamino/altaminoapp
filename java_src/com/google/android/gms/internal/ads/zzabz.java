package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;

@zzard
/* loaded from: classes2.dex */
public final class zzabz extends zzaap {
    private final OnAdMetadataChangedListener zzcke;

    public zzabz(OnAdMetadataChangedListener onAdMetadataChangedListener) {
        this.zzcke = onAdMetadataChangedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzaao
    public final void onAdMetadataChanged() throws RemoteException {
        OnAdMetadataChangedListener onAdMetadataChangedListener = this.zzcke;
        if (onAdMetadataChangedListener != null) {
            onAdMetadataChangedListener.onAdMetadataChanged();
        }
    }
}
