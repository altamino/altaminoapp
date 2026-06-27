package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import com.google.android.gms.internal.ads.zzwt;
import java.util.ArrayList;

/* loaded from: classes2.dex */
final class zzcjn implements zzban<Bundle> {
    private final /* synthetic */ boolean zzfza;
    final /* synthetic */ zzcjm zzfzb;

    zzcjn(zzcjm zzcjmVar, boolean z) {
        this.zzfzb = zzcjmVar;
        this.zzfza = z;
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final void zzb(Throwable th) {
        zzbad.zzen("Failed to get signals bundle");
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final /* synthetic */ void zzk(Bundle bundle) {
        Bundle bundle2 = bundle;
        zzcjm zzcjmVar = this.zzfzb;
        final ArrayList arrayListZzl = zzcjm.zzl(bundle2);
        zzcjm zzcjmVar2 = this.zzfzb;
        final zzwt.zzi.zzc zzcVarZzk = zzcjm.zzk(bundle2);
        final zzwt.zzg zzgVarZzj = this.zzfzb.zzj(bundle2);
        zzcjc zzcjcVar = this.zzfzb.zzfyx;
        final boolean z = this.zzfza;
        zzcjcVar.zza(new zzczc(this, z, arrayListZzl, zzgVarZzj, zzcVarZzk) { // from class: com.google.android.gms.internal.ads.zzcjo
            private final boolean zzecm;
            private final zzcjn zzfzc;
            private final ArrayList zzfzd;
            private final zzwt.zzg zzfze;
            private final zzwt.zzi.zzc zzfzf;

            {
                this.zzfzc = this;
                this.zzecm = z;
                this.zzfzd = arrayListZzl;
                this.zzfze = zzgVarZzj;
                this.zzfzf = zzcVarZzk;
            }

            @Override // com.google.android.gms.internal.ads.zzczc
            public final Object apply(Object obj) throws SQLException {
                zzcjn zzcjnVar = this.zzfzc;
                boolean z2 = this.zzecm;
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                byte[] bArrZza = zzcjnVar.zzfzb.zza(z2, this.zzfzd, this.zzfze, this.zzfzf);
                ContentValues contentValues = new ContentValues();
                contentValues.put("timestamp", Long.valueOf(com.google.android.gms.ads.internal.zzk.zzln().currentTimeMillis()));
                contentValues.put("serialized_proto_data", bArrZza);
                sQLiteDatabase.insert("offline_signal_contents", null, contentValues);
                sQLiteDatabase.execSQL(String.format("UPDATE offline_signal_statistics SET total = total+1 WHERE statistic_name = '%s'", "total_requests"));
                if (!z2) {
                    sQLiteDatabase.execSQL(String.format("UPDATE offline_signal_statistics SET total = total+1 WHERE statistic_name = '%s'", "failed_requests"));
                }
                return null;
            }
        });
    }
}
