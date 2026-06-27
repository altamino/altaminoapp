package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

@zzard
/* loaded from: classes2.dex */
final class zzbbi {
    private final Object zzdzz = new Object();
    private final List<Runnable> zzeaa = new ArrayList();
    private boolean zzeab = false;

    public final void zza(final Runnable runnable, final Executor executor) {
        synchronized (this.zzdzz) {
            if (this.zzeab) {
                executor.execute(runnable);
            } else {
                this.zzeaa.add(new Runnable(executor, runnable) { // from class: com.google.android.gms.internal.ads.zzbbj
                    private final Executor zzeac;
                    private final Runnable zzead;

                    {
                        this.zzeac = executor;
                        this.zzead = runnable;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zzeac.execute(this.zzead);
                    }
                });
            }
        }
    }

    public final void zzxd() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.zzdzz) {
            if (this.zzeab) {
                return;
            }
            arrayList.addAll(this.zzeaa);
            this.zzeaa.clear();
            this.zzeab = true;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((Runnable) obj).run();
            }
        }
    }
}
