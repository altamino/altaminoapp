package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.MuteThisAdReason;

@zzard
/* loaded from: classes2.dex */
public final class zzaan implements MuteThisAdReason {
    private final String description;
    private zzaak zzciq;

    public zzaan(zzaak zzaakVar) {
        String description;
        this.zzciq = zzaakVar;
        try {
            description = zzaakVar.getDescription();
        } catch (RemoteException e) {
            zzbad.zzc("", e);
            description = null;
        }
        this.description = description;
    }

    @Override // com.google.android.gms.ads.MuteThisAdReason
    public final String getDescription() {
        return this.description;
    }

    public final zzaak zzpu() {
        return this.zzciq;
    }
}
