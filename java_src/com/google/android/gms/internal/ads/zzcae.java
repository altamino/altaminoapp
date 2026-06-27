package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzcae implements zzbzb {
    private final zzbai zzbtc;
    private final zzcxm zzfig;
    private final zzcxv zzfjp;
    private final zzbrt zzfmr;
    private final zzbri zzfms;
    private boolean zzfmw = false;
    private boolean zzfmz = false;
    private final zzana zzfqm;
    private final zzand zzfqn;
    private final zzang zzfqo;
    private final Context zzlj;

    public zzcae(zzana zzanaVar, zzand zzandVar, zzang zzangVar, zzbrt zzbrtVar, zzbri zzbriVar, Context context, zzcxm zzcxmVar, zzbai zzbaiVar, zzcxv zzcxvVar) {
        this.zzfqm = zzanaVar;
        this.zzfqn = zzandVar;
        this.zzfqo = zzangVar;
        this.zzfmr = zzbrtVar;
        this.zzfms = zzbriVar;
        this.zzlj = context;
        this.zzfig = zzcxmVar;
        this.zzbtc = zzbaiVar;
        this.zzfjp = zzcxvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void cancelUnconfirmedClick() {
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void destroy() {
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void setClickConfirmingView(View view) {
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void zza(View view, MotionEvent motionEvent, View view2) {
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void zza(zzagd zzagdVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void zzahk() {
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void zzahm() {
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void zzf(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void zzfi(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void zzg(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final boolean zzh(Bundle bundle) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void zza(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        try {
            IObjectWrapper iObjectWrapperWrap = ObjectWrapper.wrap(view);
            HashMap<String, View> mapZzb = zzb(map);
            HashMap<String, View> mapZzb2 = zzb(map2);
            if (this.zzfqo != null) {
                this.zzfqo.zzc(iObjectWrapperWrap, ObjectWrapper.wrap(mapZzb), ObjectWrapper.wrap(mapZzb2));
                return;
            }
            if (this.zzfqm != null) {
                this.zzfqm.zzc(iObjectWrapperWrap, ObjectWrapper.wrap(mapZzb), ObjectWrapper.wrap(mapZzb2));
                this.zzfqm.zzu(iObjectWrapperWrap);
            } else if (this.zzfqn != null) {
                this.zzfqn.zzc(iObjectWrapperWrap, ObjectWrapper.wrap(mapZzb), ObjectWrapper.wrap(mapZzb2));
                this.zzfqn.zzu(iObjectWrapperWrap);
            }
        } catch (RemoteException e) {
            zzbad.zzd("Failed to call trackView", e);
        }
    }

    private static HashMap<String, View> zzb(Map<String, WeakReference<View>> map) {
        HashMap<String, View> map2 = new HashMap<>();
        if (map == null) {
            return map2;
        }
        synchronized (map) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                View view = entry.getValue().get();
                if (view != null) {
                    map2.put(entry.getKey(), view);
                }
            }
        }
        return map2;
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void zza(View view, Map<String, WeakReference<View>> map) {
        try {
            IObjectWrapper iObjectWrapperWrap = ObjectWrapper.wrap(view);
            if (this.zzfqo != null) {
                this.zzfqo.zzv(iObjectWrapperWrap);
            } else if (this.zzfqm != null) {
                this.zzfqm.zzv(iObjectWrapperWrap);
            } else if (this.zzfqn != null) {
                this.zzfqn.zzv(iObjectWrapperWrap);
            }
        } catch (RemoteException e) {
            zzbad.zzd("Failed to call untrackView", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void zza(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (this.zzfmz && this.zzfig.zzdft) {
            return;
        }
        zzaa(view);
    }

    private final void zzaa(View view) {
        try {
            if (this.zzfqo != null && !this.zzfqo.getOverrideClickHandling()) {
                this.zzfqo.zzt(ObjectWrapper.wrap(view));
                this.zzfms.onAdClicked();
            } else if (this.zzfqm != null && !this.zzfqm.getOverrideClickHandling()) {
                this.zzfqm.zzt(ObjectWrapper.wrap(view));
                this.zzfms.onAdClicked();
            } else {
                if (this.zzfqn == null || this.zzfqn.getOverrideClickHandling()) {
                    return;
                }
                this.zzfqn.zzt(ObjectWrapper.wrap(view));
                this.zzfms.onAdClicked();
            }
        } catch (RemoteException e) {
            zzbad.zzd("Failed to call handleClick", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void zza(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (!this.zzfmz) {
            zzbad.zzep("Custom click reporting for 3p ads failed. enableCustomClickGesture is not set.");
        } else if (!this.zzfig.zzdft) {
            zzbad.zzep("Custom click reporting for 3p ads failed. Ad unit id not whitelisted.");
        } else {
            zzaa(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void zzro() {
        this.zzfmz = true;
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void zza(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        try {
            if (!this.zzfmw && this.zzfig.zzgkj != null) {
                this.zzfmw |= com.google.android.gms.ads.internal.zzk.zzlq().zzb(this.zzlj, this.zzbtc.zzbsx, this.zzfig.zzgkj.toString(), this.zzfjp.zzglb);
            }
            if (this.zzfqo != null && !this.zzfqo.getOverrideImpressionRecording()) {
                this.zzfqo.recordImpression();
                this.zzfmr.onAdImpression();
            } else if (this.zzfqm != null && !this.zzfqm.getOverrideImpressionRecording()) {
                this.zzfqm.recordImpression();
                this.zzfmr.onAdImpression();
            } else {
                if (this.zzfqn == null || this.zzfqn.getOverrideImpressionRecording()) {
                    return;
                }
                this.zzfqn.recordImpression();
                this.zzfmr.onAdImpression();
            }
        } catch (RemoteException e) {
            zzbad.zzd("Failed to call recordImpression", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void zza(zzaak zzaakVar) {
        zzbad.zzep("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void zza(zzaag zzaagVar) {
        zzbad.zzep("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void zzahl() {
        zzbad.zzep("Mute This Ad is not supported for 3rd party ads");
    }
}
