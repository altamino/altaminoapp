package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzdd implements zzcp {
    static final Map<String, zzdd> zzaai = new HashMap();
    private final SharedPreferences zzaaj;
    private volatile Map<String, ?> zzzl;
    private final SharedPreferences.OnSharedPreferenceChangeListener zzaak = new SharedPreferences.OnSharedPreferenceChangeListener(this) { // from class: com.google.android.gms.internal.measurement.zzde
        private final zzdd zzaal;

        {
            this.zzaal = this;
        }

        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            this.zzaal.zza(sharedPreferences, str);
        }
    };
    private final Object zzzk = new Object();
    private final List<zzco> zzzm = new ArrayList();

    static zzdd zze(Context context, String str) {
        zzdd zzddVar;
        SharedPreferences sharedPreferences;
        if (!((!zzck.zzji() || str.startsWith("direct_boot:")) ? true : zzck.isUserUnlocked(context))) {
            return null;
        }
        synchronized (zzdd.class) {
            zzddVar = zzaai.get(str);
            if (zzddVar == null) {
                if (str.startsWith("direct_boot:")) {
                    if (zzck.zzji()) {
                        context = context.createDeviceProtectedStorageContext();
                    }
                    sharedPreferences = context.getSharedPreferences(str.substring(12), 0);
                } else {
                    sharedPreferences = context.getSharedPreferences(str, 0);
                }
                zzddVar = new zzdd(sharedPreferences);
                zzaai.put(str, zzddVar);
            }
        }
        return zzddVar;
    }

    private zzdd(SharedPreferences sharedPreferences) {
        this.zzaaj = sharedPreferences;
        this.zzaaj.registerOnSharedPreferenceChangeListener(this.zzaak);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final Object zzca(String str) {
        Map<String, ?> all = this.zzzl;
        if (all == null) {
            synchronized (this.zzzk) {
                all = this.zzzl;
                if (all == null) {
                    all = this.zzaaj.getAll();
                    this.zzzl = all;
                }
            }
        }
        if (all != null) {
            return all.get(str);
        }
        return null;
    }

    final /* synthetic */ void zza(SharedPreferences sharedPreferences, String str) {
        synchronized (this.zzzk) {
            this.zzzl = null;
            zzcw.zzjp();
        }
        synchronized (this) {
            Iterator<zzco> it = this.zzzm.iterator();
            while (it.hasNext()) {
                it.next().zzjo();
            }
        }
    }
}
