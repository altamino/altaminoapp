package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.common.util.Clock;
import java.lang.ref.WeakReference;
import java.util.HashMap;

/* loaded from: classes2.dex */
public final class zzbzq implements View.OnClickListener {
    private final Clock zzbsa;
    private final zzccj zzfpz;
    private zzagd zzfqa;
    private zzaho zzfqb;
    String zzfqc;
    Long zzfqd;
    WeakReference<View> zzfqe;

    public zzbzq(zzccj zzccjVar, Clock clock) {
        this.zzfpz = zzccjVar;
        this.zzbsa = clock;
    }

    public final void zza(zzagd zzagdVar) {
        this.zzfqa = zzagdVar;
        zzaho<Object> zzahoVar = this.zzfqb;
        if (zzahoVar != null) {
            this.zzfpz.zzb("/unconfirmedClick", zzahoVar);
        }
        this.zzfqb = new zzbzr(this, zzagdVar);
        this.zzfpz.zza("/unconfirmedClick", this.zzfqb);
    }

    public final zzagd zzaiz() {
        return this.zzfqa;
    }

    public final void cancelUnconfirmedClick() {
        if (this.zzfqa == null || this.zzfqd == null) {
            return;
        }
        zzaja();
        try {
            this.zzfqa.onUnconfirmedClickCancelled();
        } catch (RemoteException e) {
            zzbad.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        WeakReference<View> weakReference = this.zzfqe;
        if (weakReference == null || weakReference.get() != view) {
            return;
        }
        if (this.zzfqc != null && this.zzfqd != null) {
            HashMap map = new HashMap();
            map.put("id", this.zzfqc);
            map.put("time_interval", String.valueOf(this.zzbsa.currentTimeMillis() - this.zzfqd.longValue()));
            map.put("messageType", "onePointFiveClick");
            this.zzfpz.zza("sendMessageToNativeJs", map);
        }
        zzaja();
    }

    private final void zzaja() {
        View view;
        this.zzfqc = null;
        this.zzfqd = null;
        WeakReference<View> weakReference = this.zzfqe;
        if (weakReference == null || (view = weakReference.get()) == null) {
            return;
        }
        view.setClickable(false);
        view.setOnClickListener(null);
        this.zzfqe = null;
    }
}
