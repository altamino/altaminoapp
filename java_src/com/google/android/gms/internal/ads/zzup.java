package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

@zzard
/* loaded from: classes2.dex */
public final class zzup {

    @VisibleForTesting
    private int zzbuo;
    private final Object lock = new Object();
    private List<zzuo> zzbup = new LinkedList();

    public final zzuo zzo(boolean z) {
        synchronized (this.lock) {
            zzuo zzuoVar = null;
            if (this.zzbup.size() == 0) {
                zzbad.zzdp("Queue empty");
                return null;
            }
            int i = 0;
            if (this.zzbup.size() >= 2) {
                int i2 = Integer.MIN_VALUE;
                int i3 = 0;
                for (zzuo zzuoVar2 : this.zzbup) {
                    int score = zzuoVar2.getScore();
                    if (score > i2) {
                        i = i3;
                        zzuoVar = zzuoVar2;
                        i2 = score;
                    }
                    i3++;
                }
                this.zzbup.remove(i);
                return zzuoVar;
            }
            zzuo zzuoVar3 = this.zzbup.get(0);
            if (z) {
                this.zzbup.remove(0);
            } else {
                zzuoVar3.zzmp();
            }
            return zzuoVar3;
        }
    }

    public final boolean zza(zzuo zzuoVar) {
        synchronized (this.lock) {
            return this.zzbup.contains(zzuoVar);
        }
    }

    public final boolean zzb(zzuo zzuoVar) {
        synchronized (this.lock) {
            Iterator<zzuo> it = this.zzbup.iterator();
            while (it.hasNext()) {
                zzuo next = it.next();
                if (!com.google.android.gms.ads.internal.zzk.zzlk().zzvc().zzvl()) {
                    if (zzuoVar != next && next.zzmm().equals(zzuoVar.zzmm())) {
                        it.remove();
                        return true;
                    }
                } else if (!com.google.android.gms.ads.internal.zzk.zzlk().zzvc().zzvn() && zzuoVar != next && next.zzmo().equals(zzuoVar.zzmo())) {
                    it.remove();
                    return true;
                }
            }
            return false;
        }
    }

    public final void zzc(zzuo zzuoVar) {
        synchronized (this.lock) {
            if (this.zzbup.size() >= 10) {
                int size = this.zzbup.size();
                StringBuilder sb = new StringBuilder(41);
                sb.append("Queue is full, current size = ");
                sb.append(size);
                zzbad.zzdp(sb.toString());
                this.zzbup.remove(0);
            }
            int i = this.zzbuo;
            this.zzbuo = i + 1;
            zzuoVar.zzbw(i);
            zzuoVar.zzms();
            this.zzbup.add(zzuoVar);
        }
    }
}
