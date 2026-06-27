package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.support.v4.content.PermissionChecker;
import android.util.Log;

/* loaded from: classes2.dex */
final class zzcs implements zzcp {
    static zzcs zzzq;
    private final Context zzno;

    static zzcs zzp(Context context) {
        zzcs zzcsVar;
        synchronized (zzcs.class) {
            if (zzzq == null) {
                zzzq = PermissionChecker.checkSelfPermission(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new zzcs(context) : new zzcs();
            }
            zzcsVar = zzzq;
        }
        return zzcsVar;
    }

    private zzcs(Context context) {
        this.zzno = context;
        this.zzno.getContentResolver().registerContentObserver(zzci.CONTENT_URI, true, new zzcu(this, null));
    }

    private zzcs() {
        this.zzno = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.measurement.zzcp
    /* renamed from: zzcb, reason: merged with bridge method [inline-methods] */
    public final String zzca(final String str) {
        if (this.zzno == null) {
            return null;
        }
        try {
            return (String) zzcq.zza(new zzcr(this, str) { // from class: com.google.android.gms.internal.measurement.zzct
                private final zzcs zzzr;
                private final String zzzs;

                {
                    this.zzzr = this;
                    this.zzzs = str;
                }

                @Override // com.google.android.gms.internal.measurement.zzcr
                public final Object zzjn() {
                    return this.zzzr.zzcc(this.zzzs);
                }
            });
        } catch (SecurityException e) {
            String strValueOf = String.valueOf(str);
            Log.e("GservicesLoader", strValueOf.length() != 0 ? "Unable to read GServices for: ".concat(strValueOf) : new String("Unable to read GServices for: "), e);
            return null;
        }
    }

    final /* synthetic */ String zzcc(String str) {
        return zzci.zza(this.zzno.getContentResolver(), str, (String) null);
    }
}
