package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.gms.common.util.Predicate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

@zzard
/* loaded from: classes2.dex */
public class zzaju<ReferenceT> implements zzajt {
    private final Map<String, CopyOnWriteArrayList<zzaho<? super ReferenceT>>> zzdbn = new HashMap();
    private ReferenceT zzdbo;

    public final void zzg(ReferenceT referencet) {
        this.zzdbo = referencet;
    }

    @Override // com.google.android.gms.internal.ads.zzajt
    public final boolean zzcs(String str) {
        return str != null && zzg(Uri.parse(str));
    }

    public final boolean zzg(Uri uri) {
        if (!"gmsg".equalsIgnoreCase(uri.getScheme()) || !"mobileads.google.com".equalsIgnoreCase(uri.getHost())) {
            return false;
        }
        zzh(uri);
        return true;
    }

    public final void zzh(Uri uri) {
        String path = uri.getPath();
        com.google.android.gms.ads.internal.zzk.zzlg();
        zzb(path, zzaxi.zzi(uri));
    }

    private final synchronized void zzb(String str, final Map<String, String> map) {
        if (zzbad.isLoggable(2)) {
            String strValueOf = String.valueOf(str);
            zzawz.zzds(strValueOf.length() != 0 ? "Received GMSG: ".concat(strValueOf) : new String("Received GMSG: "));
            for (String str2 : map.keySet()) {
                String str3 = map.get(str2);
                StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 4 + String.valueOf(str3).length());
                sb.append("  ");
                sb.append(str2);
                sb.append(": ");
                sb.append(str3);
                zzawz.zzds(sb.toString());
            }
        }
        CopyOnWriteArrayList<zzaho<? super ReferenceT>> copyOnWriteArrayList = this.zzdbn.get(str);
        if (copyOnWriteArrayList != null) {
            Iterator<zzaho<? super ReferenceT>> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                final zzaho<? super ReferenceT> next = it.next();
                zzbbm.zzeae.execute(new Runnable(this, next, map) { // from class: com.google.android.gms.internal.ads.zzajv
                    private final zzaju zzdbp;
                    private final zzaho zzdbq;
                    private final Map zzdbr;

                    {
                        this.zzdbp = this;
                        this.zzdbq = next;
                        this.zzdbr = map;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zzdbp.zza(this.zzdbq, this.zzdbr);
                    }
                });
            }
        }
    }

    public final synchronized void zza(String str, zzaho<? super ReferenceT> zzahoVar) {
        CopyOnWriteArrayList<zzaho<? super ReferenceT>> copyOnWriteArrayList = this.zzdbn.get(str);
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList<>();
            this.zzdbn.put(str, copyOnWriteArrayList);
        }
        copyOnWriteArrayList.add(zzahoVar);
    }

    public final synchronized void zzb(String str, zzaho<? super ReferenceT> zzahoVar) {
        CopyOnWriteArrayList<zzaho<? super ReferenceT>> copyOnWriteArrayList = this.zzdbn.get(str);
        if (copyOnWriteArrayList == null) {
            return;
        }
        copyOnWriteArrayList.remove(zzahoVar);
    }

    public final synchronized void zza(String str, Predicate<zzaho<? super ReferenceT>> predicate) {
        CopyOnWriteArrayList<zzaho<? super ReferenceT>> copyOnWriteArrayList = this.zzdbn.get(str);
        if (copyOnWriteArrayList == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            zzaho<? super ReferenceT> zzahoVar = (zzaho) it.next();
            if (predicate.apply(zzahoVar)) {
                arrayList.add(zzahoVar);
            }
        }
        copyOnWriteArrayList.removeAll(arrayList);
    }

    public final synchronized void reset() {
        this.zzdbn.clear();
    }

    final /* synthetic */ void zza(zzaho zzahoVar, Map map) {
        zzahoVar.zza(this.zzdbo, map);
    }
}
