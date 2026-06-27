package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.narvii.prompt.AccountPopUpUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

@zzard
/* loaded from: classes2.dex */
public final class zzawu implements zzut {
    private final zzaxb zzduk;

    @VisibleForTesting
    private final zzawr zzdup;
    private final Object lock = new Object();

    @VisibleForTesting
    private final HashSet<zzawj> zzduq = new HashSet<>();

    @VisibleForTesting
    private final HashSet<Object> zzdur = new HashSet<>();
    private final zzawt zzduo = new zzawt();

    public zzawu(String str, zzaxb zzaxbVar) {
        this.zzdup = new zzawr(str, zzaxbVar);
        this.zzduk = zzaxbVar;
    }

    public final void zzb(zzawj zzawjVar) {
        synchronized (this.lock) {
            this.zzduq.add(zzawjVar);
        }
    }

    public final void zzb(HashSet<zzawj> hashSet) {
        synchronized (this.lock) {
            this.zzduq.addAll(hashSet);
        }
    }

    public final Bundle zza(Context context, zzaws zzawsVar) {
        HashSet<zzawj> hashSet = new HashSet<>();
        synchronized (this.lock) {
            hashSet.addAll(this.zzduq);
            this.zzduq.clear();
        }
        Bundle bundle = new Bundle();
        bundle.putBundle("app", this.zzdup.zzn(context, this.zzduo.zzvh()));
        Bundle bundle2 = new Bundle();
        Iterator<Object> it = this.zzdur.iterator();
        if (it.hasNext()) {
            it.next();
            throw new NoSuchMethodError();
        }
        bundle.putBundle("slots", bundle2);
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        Iterator<zzawj> it2 = hashSet.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().toBundle());
        }
        bundle.putParcelableArrayList(AccountPopUpUtils.POPUP_TYPE_ADS, arrayList);
        zzawsVar.zza(hashSet);
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public final void zzp(boolean z) {
        long jCurrentTimeMillis = com.google.android.gms.ads.internal.zzk.zzln().currentTimeMillis();
        if (z) {
            if (jCurrentTimeMillis - this.zzduk.zzvs() > ((Long) zzyt.zzpe().zzd(zzacu.zzcoy)).longValue()) {
                this.zzdup.zzduh = -1;
                return;
            } else {
                this.zzdup.zzduh = this.zzduk.zzvt();
                return;
            }
        }
        this.zzduk.zzfc(jCurrentTimeMillis);
        this.zzduk.zzcu(this.zzdup.zzduh);
    }

    public final void zzuk() {
        synchronized (this.lock) {
            this.zzdup.zzuk();
        }
    }

    public final void zzuj() {
        synchronized (this.lock) {
            this.zzdup.zzuj();
        }
    }

    public final void zza(zzxz zzxzVar, long j) {
        synchronized (this.lock) {
            this.zzdup.zza(zzxzVar, j);
        }
    }

    public final zzawj zza(Clock clock, String str) {
        return new zzawj(clock, this, this.zzduo.zzvg(), str);
    }
}
