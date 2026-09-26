package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.common.util.Clock;

/* JADX INFO: loaded from: classes10.dex */
public final class zzfo extends zze {
    private final zzfn zza;
    private boolean zzb;

    private static long zza(SQLiteDatabase sQLiteDatabase) {
        Cursor cursorQuery = null;
        try {
            cursorQuery = sQLiteDatabase.query("messages", new String[]{"rowid"}, "type=?", new String[]{ExifInterface.GPS_MEASUREMENT_3D}, null, null, "rowid desc", "1");
            if (!cursorQuery.moveToFirst()) {
                cursorQuery.close();
                return -1L;
            }
            long j6 = cursorQuery.getLong(0);
            cursorQuery.close();
            return j6;
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    @WorkerThread
    public final boolean zzab() {
        return zza(3, new byte[0]);
    }

    @Override // com.google.android.gms.measurement.internal.zze
    protected final boolean zzz() {
        return false;
    }

    @VisibleForTesting
    @WorkerThread
    private final SQLiteDatabase zzad() throws SQLiteException {
        if (this.zzb) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.zza.getWritableDatabase();
        if (writableDatabase != null) {
            return writableDatabase;
        }
        this.zzb = true;
        return null;
    }

    @WorkerThread
    public final boolean zzac() {
        zzt();
        if (this.zzb || !zzae()) {
            return false;
        }
        int i10 = 5;
        for (int i11 = 0; i11 < 5; i11++) {
            SQLiteDatabase sQLiteDatabase = null;
            try {
                try {
                    SQLiteDatabase sQLiteDatabaseZzad = zzad();
                    if (sQLiteDatabaseZzad == null) {
                        this.zzb = true;
                        if (sQLiteDatabaseZzad != null) {
                            sQLiteDatabaseZzad.close();
                        }
                        return false;
                    }
                    sQLiteDatabaseZzad.beginTransaction();
                    sQLiteDatabaseZzad.delete("messages", "type == ?", new String[]{Integer.toString(3)});
                    sQLiteDatabaseZzad.setTransactionSuccessful();
                    sQLiteDatabaseZzad.endTransaction();
                    sQLiteDatabaseZzad.close();
                    return true;
                } catch (SQLiteFullException e) {
                    zzj().zzg().zza("Error deleting app launch break from local database", e);
                    this.zzb = true;
                    if (0 != 0) {
                        sQLiteDatabase.close();
                    }
                }
            } catch (SQLiteDatabaseLockedException unused) {
                SystemClock.sleep(i10);
                i10 += 20;
                if (0 != 0) {
                    sQLiteDatabase.close();
                }
            } catch (SQLiteException e2) {
                if (0 != 0) {
                    try {
                        if (sQLiteDatabase.inTransaction()) {
                            sQLiteDatabase.endTransaction();
                        }
                    } catch (Throwable th) {
                        if (0 != 0) {
                            sQLiteDatabase.close();
                        }
                        throw th;
                    }
                }
                zzj().zzg().zza("Error deleting app launch break from local database", e2);
                this.zzb = true;
                if (0 != 0) {
                    sQLiteDatabase.close();
                }
            }
        }
        zzj().zzu().zza("Error deleting app launch break from local database in reasonable time");
        return false;
    }

    zzfo(zzhf zzhfVar) {
        super(zzhfVar);
        this.zza = new zzfn(this, zza(), "google_app_measurement_local.db");
    }

    @VisibleForTesting
    private final boolean zzae() {
        return zza().getDatabasePath("google_app_measurement_local.db").exists();
    }

    @WorkerThread
    public final void zzaa() {
        int iDelete;
        zzt();
        try {
            SQLiteDatabase sQLiteDatabaseZzad = zzad();
            if (sQLiteDatabaseZzad != null && (iDelete = sQLiteDatabaseZzad.delete("messages", null, null)) > 0) {
                zzj().zzp().zza("Reset local analytics data. records", Integer.valueOf(iDelete));
            }
        } catch (SQLiteException e) {
            zzj().zzg().zza("Error resetting local analytics data. error", e);
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzb zzc() {
        return super.zzc();
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ zzae zzd() {
        return super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ zzaf zze() {
        return super.zze();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ zzba zzf() {
        return super.zzf();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzfl zzg() {
        return super.zzg();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzfo zzh() {
        return super.zzh();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ zzfq zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ zzfr zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ zzgd zzk() {
        return super.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ zzgy zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zziq zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzkh zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzkp zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzlx zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ zznd zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ void zzr() {
        super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ void zzs() {
        super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ void zzt() {
        super.zzt();
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 5561. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    public final java.util.List<com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable> zza(int r23) {
        /*
            Method dump skipped, instruction units count: 556
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzfo.zza(int):java.util.List");
    }

    public final boolean zza(zzad zzadVar) {
        zzq();
        byte[] bArrZza = zznd.zza((Parcelable) zzadVar);
        if (bArrZza.length > 131072) {
            zzj().zzm().zza("Conditional user property too long for local database. Sending directly to service");
            return false;
        }
        return zza(2, bArrZza);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0060  */
    /* JADX WARN: Code duplicated, block: B:77:0x0123  */
    /* JADX WARN: Code duplicated, block: B:79:0x0128  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v3, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v4, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v5, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    @WorkerThread
    private final boolean zza(int i10, byte[] bArr) throws Throwable {
        SQLiteDatabase sQLiteDatabaseZzad;
        ?? RawQuery;
        long j6;
        zzt();
        ?? r5 = 0;
        if (this.zzb) {
            return false;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("type", Integer.valueOf(i10));
        contentValues.put("entry", bArr);
        int i11 = 0;
        int i12 = 5;
        for (int i13 = 5; i11 < i13; i13 = 5) {
            ?? r10 = 0;
             = 0;
            r10 = 0;
            ?? r11 = 0;
            r10 = 0;
            SQLiteDatabase sQLiteDatabase = null;
            try {
                sQLiteDatabaseZzad = zzad();
                try {
                    if (sQLiteDatabaseZzad == null) {
                        this.zzb = true;
                        if (sQLiteDatabaseZzad != null) {
                            sQLiteDatabaseZzad.close();
                        }
                        return r5;
                    }
                    sQLiteDatabaseZzad.beginTransaction();
                    RawQuery = sQLiteDatabaseZzad.rawQuery("select count(1) from messages", null);
                    if (RawQuery != 0) {
                        try {
                            if (RawQuery.moveToFirst()) {
                                j6 = RawQuery.getLong(r5);
                            } else {
                                j6 = 0;
                            }
                        } catch (SQLiteDatabaseLockedException unused) {
                            r11 = RawQuery;
                            SystemClock.sleep(i12);
                            i12 += 20;
                            if (r11 != 0) {
                                r11.close();
                            }
                            if (sQLiteDatabaseZzad != null) {
                                sQLiteDatabaseZzad.close();
                            }
                            i11++;
                            r5 = 0;
                        } catch (SQLiteFullException e) {
                            e = e;
                            r10 = RawQuery;
                            try {
                                zzj().zzg().zza("Error writing entry; local database full", e);
                                this.zzb = true;
                                if (r10 != 0) {
                                    r10.close();
                                }
                                if (sQLiteDatabaseZzad != null) {
                                    sQLiteDatabaseZzad.close();
                                }
                                i11++;
                                r5 = 0;
                            } catch (Throwable th) {
                                th = th;
                                if (r10 != 0) {
                                    r10.close();
                                }
                                if (sQLiteDatabaseZzad != null) {
                                    sQLiteDatabaseZzad.close();
                                }
                                throw th;
                            }
                        } catch (SQLiteException e2) {
                            e = e2;
                            sQLiteDatabase = sQLiteDatabaseZzad;
                            RawQuery = RawQuery;
                            if (sQLiteDatabase != null) {
                                try {
                                    if (sQLiteDatabase.inTransaction()) {
                                        sQLiteDatabase.endTransaction();
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    sQLiteDatabaseZzad = sQLiteDatabase;
                                    r10 = RawQuery;
                                    if (r10 != 0) {
                                        r10.close();
                                    }
                                    if (sQLiteDatabaseZzad != null) {
                                        sQLiteDatabaseZzad.close();
                                    }
                                    throw th;
                                }
                            }
                            zzj().zzg().zza("Error writing entry to local database", e);
                            this.zzb = true;
                            if (RawQuery != 0) {
                                RawQuery.close();
                            }
                            if (sQLiteDatabase != null) {
                                sQLiteDatabase.close();
                            }
                            i11++;
                            r5 = 0;
                        } catch (Throwable th3) {
                            th = th3;
                            r10 = RawQuery;
                            if (r10 != 0) {
                                r10.close();
                            }
                            if (sQLiteDatabaseZzad != null) {
                                sQLiteDatabaseZzad.close();
                            }
                            throw th;
                        }
                    } else {
                        j6 = 0;
                    }
                    if (j6 >= 100000) {
                        zzj().zzg().zza("Data loss, local db full");
                        long j10 = 100001 - j6;
                        String[] strArr = new String[1];
                        strArr[r5] = Long.toString(j10);
                        long jDelete = sQLiteDatabaseZzad.delete("messages", "rowid in (select rowid from messages order by rowid asc limit ?)", strArr);
                        if (jDelete != j10) {
                            zzj().zzg().zza("Different delete count than expected in local db. expected, received, difference", Long.valueOf(j10), Long.valueOf(jDelete), Long.valueOf(j10 - jDelete));
                        }
                    }
                    sQLiteDatabaseZzad.insertOrThrow("messages", null, contentValues);
                    sQLiteDatabaseZzad.setTransactionSuccessful();
                    sQLiteDatabaseZzad.endTransaction();
                    if (RawQuery != 0) {
                        RawQuery.close();
                    }
                    sQLiteDatabaseZzad.close();
                    return true;
                } catch (SQLiteDatabaseLockedException unused2) {
                } catch (SQLiteFullException e6) {
                    e = e6;
                } catch (SQLiteException e7) {
                    e = e7;
                    RawQuery = 0;
                }
            } catch (SQLiteDatabaseLockedException unused3) {
                sQLiteDatabaseZzad = null;
            } catch (SQLiteFullException e10) {
                e = e10;
                sQLiteDatabaseZzad = null;
            } catch (SQLiteException e11) {
                e = e11;
                RawQuery = 0;
            } catch (Throwable th4) {
                th = th4;
                sQLiteDatabaseZzad = null;
                if (r10 != 0) {
                    r10.close();
                }
                if (sQLiteDatabaseZzad != null) {
                    sQLiteDatabaseZzad.close();
                }
                throw th;
            }
        }
        zzj().zzp().zza("Failed to write entry to local database");
        return false;
    }

    public final boolean zza(zzbg zzbgVar) {
        Parcel parcelObtain = Parcel.obtain();
        zzbgVar.writeToParcel(parcelObtain, 0);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        if (bArrMarshall.length > 131072) {
            zzj().zzm().zza("Event is too long for local database. Sending event directly to service");
            return false;
        }
        return zza(0, bArrMarshall);
    }

    public final boolean zza(zznc zzncVar) {
        Parcel parcelObtain = Parcel.obtain();
        zzncVar.writeToParcel(parcelObtain, 0);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        if (bArrMarshall.length > 131072) {
            zzj().zzm().zza("User property too long for local database. Sending directly to service");
            return false;
        }
        return zza(1, bArrMarshall);
    }
}
