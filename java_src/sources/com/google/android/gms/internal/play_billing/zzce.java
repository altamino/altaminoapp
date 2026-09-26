package com.google.android.gms.internal.play_billing;

import android.os.Build;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes10.dex */
final class zzce extends zzby {
    private static final AtomicReference zza = new AtomicReference();
    private static final AtomicLong zzb = new AtomicLong();
    private static final ConcurrentLinkedQueue zzc = new ConcurrentLinkedQueue();
    private volatile zzbf zzd;

    public static zzbf zzb(String str) {
        AtomicReference atomicReference = zza;
        if (atomicReference.get() != null) {
            return ((zzca) atomicReference.get()).zza(str);
        }
        zzce zzceVar = new zzce(str.replace('$', '.'));
        zzcc.zza.offer(zzceVar);
        if (atomicReference.get() != null) {
            while (true) {
                zzce zzceVar2 = (zzce) zzcc.zza.poll();
                if (zzceVar2 == null) {
                    break;
                }
                zzceVar2.zzd = ((zzca) zza.get()).zza(zzceVar2.zza());
            }
            if (((zzcd) zzc.poll()) != null) {
                zzb.getAndDecrement();
                throw null;
            }
        }
        return zzceVar;
    }

    private zzce(String str) {
        boolean z6;
        boolean z10;
        super(str);
        String str2 = Build.FINGERPRINT;
        boolean z11 = true;
        if (str2 == null || "robolectric".equals(str2)) {
            z6 = true;
        } else {
            z6 = false;
        }
        String str3 = Build.HARDWARE;
        if ("goldfish".equals(str3) || "ranchu".equals(str3)) {
            z10 = true;
        } else {
            z10 = false;
        }
        String str4 = Build.TYPE;
        if (!"eng".equals(str4) && !"userdebug".equals(str4)) {
            z11 = false;
        }
        if (!z6 && !z10) {
            if (z11) {
                this.zzd = zzck.zzc().zzb(false).zza(zza());
                return;
            } else {
                this.zzd = null;
                return;
            }
        }
        this.zzd = new zzbz().zza(zza());
    }
}
