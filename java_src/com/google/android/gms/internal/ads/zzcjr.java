package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import com.google.android.gms.internal.ads.zzwl;
import com.google.android.gms.internal.ads.zzwt;

/* loaded from: classes2.dex */
public final class zzcjr {
    private zzbai zzdld;
    private zzcjc zzfyx;
    private zzwj zzfzh;
    private Context zzlj;

    public zzcjr(Context context, zzbai zzbaiVar, zzwj zzwjVar, zzcjc zzcjcVar) {
        this.zzlj = context;
        this.zzdld = zzbaiVar;
        this.zzfzh = zzwjVar;
        this.zzfyx = zzcjcVar;
    }

    public final void zzakp() {
        try {
            this.zzfyx.zza(new zzczc(this) { // from class: com.google.android.gms.internal.ads.zzcjs
                private final zzcjr zzfzi;

                {
                    this.zzfzi = this;
                }

                @Override // com.google.android.gms.internal.ads.zzczc
                public final Object apply(Object obj) {
                    return this.zzfzi.zzb((SQLiteDatabase) obj);
                }
            });
        } catch (Exception e) {
            String strValueOf = String.valueOf(e.getMessage());
            zzbad.zzen(strValueOf.length() != 0 ? "Error in offline signals database startup: ".concat(strValueOf) : new String("Error in offline signals database startup: "));
        }
    }

    final /* synthetic */ Void zzb(SQLiteDatabase sQLiteDatabase) throws Exception {
        final zzwt.zzi zziVar = (zzwt.zzi) zzwt.zzi.zzny().zzbq(this.zzlj.getPackageName()).zzbr(Build.MODEL).zzch(zzcjq.zza(sQLiteDatabase, 1)).zzd(zzcjq.zza(sQLiteDatabase)).zzci(zzcjq.zza(sQLiteDatabase, 2)).zzez(com.google.android.gms.ads.internal.zzk.zzln().currentTimeMillis()).zzaya();
        this.zzfzh.zza(new zzwk(zziVar) { // from class: com.google.android.gms.internal.ads.zzcjt
            private final zzwt.zzi zzfzj;

            {
                this.zzfzj = zziVar;
            }

            @Override // com.google.android.gms.internal.ads.zzwk
            public final void zza(zzxn zzxnVar) {
                zzxnVar.zzcfm = this.zzfzj;
            }
        });
        final zzxo zzxoVar = new zzxo();
        zzxoVar.zzcfo = Integer.valueOf(this.zzdld.zzdzc);
        zzxoVar.zzcfp = Integer.valueOf(this.zzdld.zzdzd);
        zzxoVar.zzcfq = Integer.valueOf(this.zzdld.zzdze ? 0 : 2);
        this.zzfzh.zza(new zzwk(zzxoVar) { // from class: com.google.android.gms.internal.ads.zzcju
            private final zzxo zzfzk;

            {
                this.zzfzk = zzxoVar;
            }

            @Override // com.google.android.gms.internal.ads.zzwk
            public final void zza(zzxn zzxnVar) {
                zzxnVar.zzcfi.zzcex = this.zzfzk;
            }
        });
        this.zzfzh.zza(zzwl.zza.zzb.OFFLINE_UPLOAD);
        sQLiteDatabase.delete("offline_signal_contents", null, null);
        ContentValues contentValues = new ContentValues();
        contentValues.put("total", (Integer) 0);
        sQLiteDatabase.update("offline_signal_statistics", contentValues, "statistic_name = ?", new String[]{"failed_requests"});
        ContentValues contentValues2 = new ContentValues();
        contentValues2.put("total", (Integer) 0);
        sQLiteDatabase.update("offline_signal_statistics", contentValues2, "statistic_name = ?", new String[]{"total_requests"});
        return null;
    }
}
