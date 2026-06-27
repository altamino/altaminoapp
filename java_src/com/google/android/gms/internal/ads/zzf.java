package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzf implements zzt {
    private final Map<String, List<zzr<?>>> zzp = new HashMap();
    private final zzd zzq;

    zzf(zzd zzdVar) {
        this.zzq = zzdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzt
    public final void zza(zzr<?> zzrVar, zzy<?> zzyVar) {
        List<zzr<?>> listRemove;
        zzc zzcVar = zzyVar.zzbh;
        if (zzcVar == null || zzcVar.isExpired()) {
            zza(zzrVar);
            return;
        }
        String strZze = zzrVar.zze();
        synchronized (this) {
            listRemove = this.zzp.remove(strZze);
        }
        if (listRemove != null) {
            if (zzag.DEBUG) {
                zzag.v("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(listRemove.size()), strZze);
            }
            Iterator<zzr<?>> it = listRemove.iterator();
            while (it.hasNext()) {
                this.zzq.zzk.zzb(it.next(), zzyVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzt
    public final synchronized void zza(zzr<?> zzrVar) {
        String strZze = zzrVar.zze();
        List<zzr<?>> listRemove = this.zzp.remove(strZze);
        if (listRemove != null && !listRemove.isEmpty()) {
            if (zzag.DEBUG) {
                zzag.v("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(listRemove.size()), strZze);
            }
            zzr<?> zzrVarRemove = listRemove.remove(0);
            this.zzp.put(strZze, listRemove);
            zzrVarRemove.zza((zzt) this);
            try {
                this.zzq.zzi.put(zzrVarRemove);
            } catch (InterruptedException e) {
                zzag.e("Couldn't add request to queue. %s", e.toString());
                Thread.currentThread().interrupt();
                this.zzq.quit();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized boolean zzb(zzr<?> zzrVar) {
        String strZze = zzrVar.zze();
        if (this.zzp.containsKey(strZze)) {
            List<zzr<?>> arrayList = this.zzp.get(strZze);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
            }
            zzrVar.zzb("waiting-for-response");
            arrayList.add(zzrVar);
            this.zzp.put(strZze, arrayList);
            if (zzag.DEBUG) {
                zzag.d("Request for cacheKey=%s is in flight, putting on hold.", strZze);
            }
            return true;
        }
        this.zzp.put(strZze, null);
        zzrVar.zza((zzt) this);
        if (zzag.DEBUG) {
            zzag.d("new request, sending to network %s", strZze);
        }
        return false;
    }
}
