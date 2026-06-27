package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.MediaView;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.List;
import java.util.WeakHashMap;

@zzard
/* loaded from: classes2.dex */
public final class zzafh implements NativeCustomTemplateAd {
    private static WeakHashMap<IBinder, zzafh> zzcyy = new WeakHashMap<>();
    private final VideoController zzcje = new VideoController();
    private final zzafe zzcyz;
    private final MediaView zzcza;

    @VisibleForTesting
    private zzafh(zzafe zzafeVar) {
        Context context;
        this.zzcyz = zzafeVar;
        MediaView mediaView = null;
        try {
            context = (Context) ObjectWrapper.unwrap(zzafeVar.zzrm());
        } catch (RemoteException | NullPointerException e) {
            zzbad.zzc("", e);
            context = null;
        }
        if (context != null) {
            MediaView mediaView2 = new MediaView(context);
            try {
                if (this.zzcyz.zzp(ObjectWrapper.wrap(mediaView2))) {
                    mediaView = mediaView2;
                }
            } catch (RemoteException e2) {
                zzbad.zzc("", e2);
            }
        }
        this.zzcza = mediaView;
    }

    public static zzafh zza(zzafe zzafeVar) {
        synchronized (zzcyy) {
            zzafh zzafhVar = zzcyy.get(zzafeVar.asBinder());
            if (zzafhVar != null) {
                return zzafhVar;
            }
            zzafh zzafhVar2 = new zzafh(zzafeVar);
            zzcyy.put(zzafeVar.asBinder(), zzafhVar2);
            return zzafhVar2;
        }
    }

    public final zzafe zzrn() {
        return this.zzcyz;
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final CharSequence getText(String str) {
        try {
            return this.zzcyz.zzcj(str);
        } catch (RemoteException e) {
            zzbad.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final NativeAd.Image getImage(String str) {
        try {
            zzaei zzaeiVarZzck = this.zzcyz.zzck(str);
            if (zzaeiVarZzck != null) {
                return new zzael(zzaeiVarZzck);
            }
            return null;
        } catch (RemoteException e) {
            zzbad.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final VideoController getVideoController() {
        try {
            zzaar videoController = this.zzcyz.getVideoController();
            if (videoController != null) {
                this.zzcje.zza(videoController);
            }
        } catch (RemoteException e) {
            zzbad.zzc("Exception occurred while getting video controller", e);
        }
        return this.zzcje;
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final MediaView getVideoMediaView() {
        return this.zzcza;
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final List<String> getAvailableAssetNames() {
        try {
            return this.zzcyz.getAvailableAssetNames();
        } catch (RemoteException e) {
            zzbad.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final String getCustomTemplateId() {
        try {
            return this.zzcyz.getCustomTemplateId();
        } catch (RemoteException e) {
            zzbad.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final void performClick(String str) {
        try {
            this.zzcyz.performClick(str);
        } catch (RemoteException e) {
            zzbad.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final void recordImpression() {
        try {
            this.zzcyz.recordImpression();
        } catch (RemoteException e) {
            zzbad.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final void destroy() {
        try {
            this.zzcyz.destroy();
        } catch (RemoteException e) {
            zzbad.zzc("", e);
        }
    }
}
