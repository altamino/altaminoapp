package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

@zzard
/* loaded from: classes2.dex */
public final class zzawj {
    private final Clock zzbsa;
    private final String zzdlz;
    private final zzawu zzdsw;
    private final String zzdsy;
    private final Object lock = new Object();
    private long zzdnn = -1;
    private long zzdsz = -1;
    private boolean zzdnj = false;
    private long zzdta = -1;
    private long zzdtb = 0;
    private long zzdtc = -1;
    private long zzdtd = -1;
    private final LinkedList<zzawk> zzdsx = new LinkedList<>();

    zzawj(Clock clock, zzawu zzawuVar, String str, String str2) {
        this.zzbsa = clock;
        this.zzdsw = zzawuVar;
        this.zzdsy = str;
        this.zzdlz = str2;
    }

    public final void zze(zzxz zzxzVar) {
        synchronized (this.lock) {
            this.zzdtc = this.zzbsa.elapsedRealtime();
            this.zzdsw.zza(zzxzVar, this.zzdtc);
        }
    }

    public final void zzfb(long j) {
        synchronized (this.lock) {
            this.zzdtd = j;
            if (this.zzdtd != -1) {
                this.zzdsw.zzb(this);
            }
        }
    }

    public final void zzuj() {
        synchronized (this.lock) {
            if (this.zzdtd != -1 && this.zzdsz == -1) {
                this.zzdsz = this.zzbsa.elapsedRealtime();
                this.zzdsw.zzb(this);
            }
            this.zzdsw.zzuj();
        }
    }

    public final void zzuk() {
        synchronized (this.lock) {
            if (this.zzdtd != -1) {
                zzawk zzawkVar = new zzawk(this);
                zzawkVar.zzup();
                this.zzdsx.add(zzawkVar);
                this.zzdtb++;
                this.zzdsw.zzuk();
                this.zzdsw.zzb(this);
            }
        }
    }

    public final void zzul() {
        synchronized (this.lock) {
            if (this.zzdtd != -1 && !this.zzdsx.isEmpty()) {
                zzawk last = this.zzdsx.getLast();
                if (last.zzun() == -1) {
                    last.zzuo();
                    this.zzdsw.zzb(this);
                }
            }
        }
    }

    public final void zzah(boolean z) {
        synchronized (this.lock) {
            if (this.zzdtd != -1) {
                this.zzdta = this.zzbsa.elapsedRealtime();
            }
        }
    }

    public final Bundle toBundle() {
        Bundle bundle;
        synchronized (this.lock) {
            bundle = new Bundle();
            bundle.putString("seq_num", this.zzdsy);
            bundle.putString("slotid", this.zzdlz);
            bundle.putBoolean("ismediation", false);
            bundle.putLong("treq", this.zzdtc);
            bundle.putLong("tresponse", this.zzdtd);
            bundle.putLong("timp", this.zzdsz);
            bundle.putLong("tload", this.zzdta);
            bundle.putLong("pcc", this.zzdtb);
            bundle.putLong("tfetch", this.zzdnn);
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            Iterator<zzawk> it = this.zzdsx.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().toBundle());
            }
            bundle.putParcelableArrayList("tclick", arrayList);
        }
        return bundle;
    }

    public final String zzum() {
        return this.zzdsy;
    }
}
