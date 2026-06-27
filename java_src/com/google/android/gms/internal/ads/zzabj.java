package com.google.android.gms.internal.ads;

import android.os.RemoteException;

@zzard
/* loaded from: classes2.dex */
public final class zzabj extends zzaal {
    private final String description;
    private final String zzcju;

    public zzabj(String str, String str2) {
        this.description = str;
        this.zzcju = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzaak
    public final String getDescription() throws RemoteException {
        return this.description;
    }

    @Override // com.google.android.gms.internal.ads.zzaak
    public final String zzpt() throws RemoteException {
        return this.zzcju;
    }
}
