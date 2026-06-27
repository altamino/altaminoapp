package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;

@zzard
/* loaded from: classes2.dex */
public final class zzbym extends zzaef {
    private final zzbyt zzfmq;

    public zzbym(zzbyt zzbytVar) {
        this.zzfmq = zzbytVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaee
    public final float getAspectRatio() {
        if (!((Boolean) zzyt.zzpe().zzd(zzacu.zzcwx)).booleanValue()) {
            return 0.0f;
        }
        if (this.zzfmq.zzsq() != 0.0f) {
            return this.zzfmq.zzsq();
        }
        if (this.zzfmq.getVideoController() != null) {
            return zzahq();
        }
        return zzahr();
    }

    private final float zzahq() {
        try {
            return this.zzfmq.getVideoController().getAspectRatio();
        } catch (RemoteException e) {
            zzbad.zzc("Remote exception getting video controller aspect ratio.", e);
            return 0.0f;
        }
    }

    private final float zzahr() {
        zzadw zzadwVar = this.zzfmq.getImages().get(0);
        if (zzadwVar.getWidth() != -1 && zzadwVar.getHeight() != -1) {
            return zzadwVar.getWidth() / zzadwVar.getHeight();
        }
        try {
            Drawable drawable = (Drawable) ObjectWrapper.unwrap(zzadwVar.zzrf());
            if (drawable == null || drawable.getIntrinsicWidth() == -1 || drawable.getIntrinsicHeight() == -1) {
                return 0.0f;
            }
            return drawable.getIntrinsicWidth() / drawable.getIntrinsicHeight();
        } catch (RemoteException e) {
            zzbad.zzc("RemoteException getting Drawable for aspect ratio calculation.", e);
            return 0.0f;
        }
    }
}
