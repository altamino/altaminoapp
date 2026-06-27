package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class zzbol extends zzbnf {
    private final Executor zzffv;
    private final zzaga zzfib;
    private final Runnable zzfic;

    public zzbol(zzaga zzagaVar, Runnable runnable, Executor executor) {
        this.zzfib = zzagaVar;
        this.zzfic = runnable;
        this.zzffv = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzbnf
    public final zzaar getVideoController() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbnf
    public final void zza(ViewGroup viewGroup, zzyd zzydVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbnf
    public final View zzafi() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbnf
    public final zzcxn zzafj() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbnf
    public final int zzafk() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbnf
    public final void zzpm() {
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void zzafl() {
        final AtomicReference atomicReference = new AtomicReference(this.zzfic);
        final Runnable runnable = new Runnable(atomicReference) { // from class: com.google.android.gms.internal.ads.zzbom
            private final AtomicReference zzfid;

            {
                this.zzfid = atomicReference;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Runnable runnable2 = (Runnable) this.zzfid.getAndSet(null);
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        };
        this.zzffv.execute(new Runnable(this, runnable) { // from class: com.google.android.gms.internal.ads.zzbon
            private final Runnable zzead;
            private final zzbol zzfie;

            {
                this.zzfie = this;
                this.zzead = runnable;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzfie.zzg(this.zzead);
            }
        });
    }

    final /* synthetic */ void zzg(Runnable runnable) {
        try {
            if (this.zzfib.zzq(ObjectWrapper.wrap(runnable))) {
                return;
            }
            runnable.run();
        } catch (RemoteException unused) {
            runnable.run();
        }
    }
}
