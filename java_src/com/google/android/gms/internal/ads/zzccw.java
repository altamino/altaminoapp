package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;

/* loaded from: classes2.dex */
public final class zzccw extends VideoController.VideoLifecycleCallbacks {
    private final zzbyt zzfmq;

    public zzccw(zzbyt zzbytVar) {
        this.zzfmq = zzbytVar;
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoStart() {
        zzaau zzaauVarZza = zza(this.zzfmq);
        if (zzaauVarZza == null) {
            return;
        }
        try {
            zzaauVarZza.onVideoStart();
        } catch (RemoteException e) {
            zzbad.zzd("Unable to call onVideoEnd()", e);
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoPause() {
        zzaau zzaauVarZza = zza(this.zzfmq);
        if (zzaauVarZza == null) {
            return;
        }
        try {
            zzaauVarZza.onVideoPause();
        } catch (RemoteException e) {
            zzbad.zzd("Unable to call onVideoEnd()", e);
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoEnd() {
        zzaau zzaauVarZza = zza(this.zzfmq);
        if (zzaauVarZza == null) {
            return;
        }
        try {
            zzaauVarZza.onVideoEnd();
        } catch (RemoteException e) {
            zzbad.zzd("Unable to call onVideoEnd()", e);
        }
    }

    private static zzaau zza(zzbyt zzbytVar) {
        zzaar videoController = zzbytVar.getVideoController();
        if (videoController == null) {
            return null;
        }
        try {
            return videoController.zzpx();
        } catch (RemoteException unused) {
            return null;
        }
    }
}
