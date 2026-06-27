package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzbt;
import com.google.android.gms.internal.measurement.zziv;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
final class zzw extends zzfs {
    private static final String[] zzed = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;"};
    private static final String[] zzee = {"origin", "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};
    private static final String[] zzef = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;", "dynamite_version", "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;"};
    private static final String[] zzeg = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};
    private static final String[] zzeh = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};
    private static final String[] zzei = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};
    private final zzz zzej;
    private final zzfo zzek;

    zzw(zzft zzftVar) {
        super(zzftVar);
        this.zzek = new zzfo(zzz());
        this.zzej = new zzz(this, getContext(), "google_app_measurement.db");
    }

    @Override // com.google.android.gms.measurement.internal.zzfs
    protected final boolean zzak() {
        return false;
    }

    public final void beginTransaction() {
        zzah();
        getWritableDatabase().beginTransaction();
    }

    public final void setTransactionSuccessful() {
        zzah();
        getWritableDatabase().setTransactionSuccessful();
    }

    public final void endTransaction() {
        zzah();
        getWritableDatabase().endTransaction();
    }

    private final long zza(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor cursorRawQuery = getWritableDatabase().rawQuery(str, strArr);
                if (cursorRawQuery.moveToFirst()) {
                    long j = cursorRawQuery.getLong(0);
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    return j;
                }
                throw new SQLiteException("Database returned empty set");
            } catch (SQLiteException e) {
                zzad().zzda().zza("Database error", str, e);
                throw e;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    private final long zza(String str, String[] strArr, long j) {
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = getWritableDatabase().rawQuery(str, strArr);
                if (cursorRawQuery.moveToFirst()) {
                    return cursorRawQuery.getLong(0);
                }
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return j;
            } catch (SQLiteException e) {
                zzad().zzda().zza("Database error", str, e);
                throw e;
            }
        } finally {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
        }
    }

    @VisibleForTesting
    final SQLiteDatabase getWritableDatabase() {
        zzq();
        try {
            return this.zzej.getWritableDatabase();
        } catch (SQLiteException e) {
            zzad().zzdd().zza("Error opening database", e);
            throw e;
        }
    }

    public final zzaf zzc(String str, String str2) {
        Cursor cursor;
        Cursor cursor2;
        Cursor cursorQuery;
        Boolean boolValueOf;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzq();
        zzah();
        try {
            try {
                cursorQuery = getWritableDatabase().query("events", new String[]{"lifetime_count", "current_bundle_count", "last_fire_timestamp", "last_bundled_timestamp", "last_bundled_day", "last_sampled_complex_event_id", "last_sampling_rate", "last_exempt_from_sampling"}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
            } catch (Throwable th) {
                th = th;
            }
            try {
                if (!cursorQuery.moveToFirst()) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
                long j = cursorQuery.getLong(0);
                long j2 = cursorQuery.getLong(1);
                long j3 = cursorQuery.getLong(2);
                long j4 = cursorQuery.isNull(3) ? 0L : cursorQuery.getLong(3);
                Long lValueOf = cursorQuery.isNull(4) ? null : Long.valueOf(cursorQuery.getLong(4));
                Long lValueOf2 = cursorQuery.isNull(5) ? null : Long.valueOf(cursorQuery.getLong(5));
                Long lValueOf3 = cursorQuery.isNull(6) ? null : Long.valueOf(cursorQuery.getLong(6));
                if (cursorQuery.isNull(7)) {
                    boolValueOf = null;
                } else {
                    boolValueOf = Boolean.valueOf(cursorQuery.getLong(7) == 1);
                }
                cursor2 = cursorQuery;
                try {
                    zzaf zzafVar = new zzaf(str, str2, j, j2, j3, j4, lValueOf, lValueOf2, lValueOf3, boolValueOf);
                    if (cursor2.moveToNext()) {
                        zzad().zzda().zza("Got multiple records for event aggregates, expected one. appId", zzau.zzao(str));
                    }
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    return zzafVar;
                } catch (SQLiteException e) {
                    e = e;
                    zzad().zzda().zza("Error querying events. appId", zzau.zzao(str), zzaa().zzal(str2), e);
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    return null;
                }
            } catch (SQLiteException e2) {
                e = e2;
                cursor2 = cursorQuery;
            } catch (Throwable th2) {
                th = th2;
                cursor = cursorQuery;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursor2 = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    public final void zza(zzaf zzafVar) {
        Preconditions.checkNotNull(zzafVar);
        zzq();
        zzah();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzafVar.zzcf);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.NAME, zzafVar.name);
        contentValues.put("lifetime_count", Long.valueOf(zzafVar.zzfe));
        contentValues.put("current_bundle_count", Long.valueOf(zzafVar.zzff));
        contentValues.put("last_fire_timestamp", Long.valueOf(zzafVar.zzfg));
        contentValues.put("last_bundled_timestamp", Long.valueOf(zzafVar.zzfh));
        contentValues.put("last_bundled_day", zzafVar.zzfi);
        contentValues.put("last_sampled_complex_event_id", zzafVar.zzfj);
        contentValues.put("last_sampling_rate", zzafVar.zzfk);
        Boolean bool = zzafVar.zzfl;
        contentValues.put("last_exempt_from_sampling", (bool == null || !bool.booleanValue()) ? null : 1L);
        try {
            if (getWritableDatabase().insertWithOnConflict("events", null, contentValues, 5) == -1) {
                zzad().zzda().zza("Failed to insert/update event aggregates (got -1). appId", zzau.zzao(zzafVar.zzcf));
            }
        } catch (SQLiteException e) {
            zzad().zzda().zza("Error storing event aggregates. appId", zzau.zzao(zzafVar.zzcf), e);
        }
    }

    public final void zzd(String str, String str2) throws IllegalStateException {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzq();
        zzah();
        try {
            zzad().zzdi().zza("Deleted user attribute rows", Integer.valueOf(getWritableDatabase().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2})));
        } catch (SQLiteException e) {
            zzad().zzda().zza("Error deleting user attribute. appId", zzau.zzao(str), zzaa().zzan(str2), e);
        }
    }

    public final boolean zza(zzgc zzgcVar) throws IllegalStateException {
        Preconditions.checkNotNull(zzgcVar);
        zzq();
        zzah();
        if (zze(zzgcVar.zzcf, zzgcVar.name) == null) {
            if (zzgd.zzbm(zzgcVar.name)) {
                if (zza("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{zzgcVar.zzcf}) >= 25) {
                    return false;
                }
            } else if (zzaf().zze(zzgcVar.zzcf, zzal.zzin)) {
                if (!"_npa".equals(zzgcVar.name) && zza("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{zzgcVar.zzcf, zzgcVar.origin}) >= 25) {
                    return false;
                }
            } else if (zza("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{zzgcVar.zzcf, zzgcVar.origin}) >= 25) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzgcVar.zzcf);
        contentValues.put("origin", zzgcVar.origin);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.NAME, zzgcVar.name);
        contentValues.put("set_timestamp", Long.valueOf(zzgcVar.zzsx));
        zza(contentValues, "value", zzgcVar.value);
        try {
            if (getWritableDatabase().insertWithOnConflict("user_attributes", null, contentValues, 5) == -1) {
                zzad().zzda().zza("Failed to insert/update user property (got -1). appId", zzau.zzao(zzgcVar.zzcf));
            }
        } catch (SQLiteException e) {
            zzad().zzda().zza("Error storing user property. appId", zzau.zzao(zzgcVar.zzcf), e);
        }
        return true;
    }

    public final zzgc zze(String str, String str2) {
        Cursor cursorQuery;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzq();
        zzah();
        try {
            try {
                cursorQuery = getWritableDatabase().query("user_attributes", new String[]{"set_timestamp", "value", "origin"}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
            } catch (Throwable th) {
                th = th;
            }
        } catch (SQLiteException e) {
            e = e;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            cursorQuery = null;
        }
        try {
            if (!cursorQuery.moveToFirst()) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return null;
            }
            try {
                zzgc zzgcVar = new zzgc(str, cursorQuery.getString(2), str2, cursorQuery.getLong(0), zza(cursorQuery, 1));
                if (cursorQuery.moveToNext()) {
                    zzad().zzda().zza("Got multiple records for user property, expected one. appId", zzau.zzao(str));
                }
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return zzgcVar;
            } catch (SQLiteException e2) {
                e = e2;
                zzad().zzda().zza("Error querying user property. appId", zzau.zzao(str), zzaa().zzan(str2), e);
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return null;
            }
        } catch (SQLiteException e3) {
            e = e3;
        } catch (Throwable th3) {
            th = th3;
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    public final List<zzgc> zzad(String str) throws Throwable {
        Cursor cursorQuery;
        Preconditions.checkNotEmpty(str);
        zzq();
        zzah();
        ArrayList arrayList = new ArrayList();
        try {
            try {
                cursorQuery = getWritableDatabase().query("user_attributes", new String[]{AppMeasurementSdk.ConditionalUserProperty.NAME, "origin", "set_timestamp", "value"}, "app_id=?", new String[]{str}, null, null, "rowid", "1000");
            } catch (Throwable th) {
                th = th;
            }
            try {
                if (!cursorQuery.moveToFirst()) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return arrayList;
                }
                do {
                    String string = cursorQuery.getString(0);
                    String string2 = cursorQuery.getString(1);
                    if (string2 == null) {
                        string2 = "";
                    }
                    String str2 = string2;
                    long j = cursorQuery.getLong(2);
                    try {
                        Object objZza = zza(cursorQuery, 3);
                        if (objZza == null) {
                            zzad().zzda().zza("Read invalid user property value, ignoring it. appId", zzau.zzao(str));
                        } else {
                            arrayList.add(new zzgc(str, str2, string, j, objZza));
                        }
                    } catch (SQLiteException e) {
                        e = e;
                        zzad().zzda().zza("Error querying user properties. appId", zzau.zzao(str), e);
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return null;
                    }
                } while (cursorQuery.moveToNext());
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return arrayList;
            } catch (SQLiteException e2) {
                e = e2;
            } catch (Throwable th2) {
                th = th2;
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursorQuery = null;
        } catch (Throwable th3) {
            th = th3;
            cursorQuery = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x009c, code lost:
    
        zzad().zzda().zza("Read more than the max allowed user properties, ignoring excess", 1000);
     */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x014b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zzgc> zza(java.lang.String r22, java.lang.String r23, java.lang.String r24) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzw.zza(java.lang.String, java.lang.String, java.lang.String):java.util.List");
    }

    public final boolean zza(zzr zzrVar) throws IllegalStateException {
        Preconditions.checkNotNull(zzrVar);
        zzq();
        zzah();
        if (zze(zzrVar.packageName, zzrVar.zzdv.name) == null && zza("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{zzrVar.packageName}) >= 1000) {
            return false;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzrVar.packageName);
        contentValues.put("origin", zzrVar.origin);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.NAME, zzrVar.zzdv.name);
        zza(contentValues, "value", zzrVar.zzdv.getValue());
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.ACTIVE, Boolean.valueOf(zzrVar.active));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, zzrVar.triggerEventName);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.valueOf(zzrVar.triggerTimeout));
        zzab();
        contentValues.put("timed_out_event", zzgd.zza(zzrVar.zzdw));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, Long.valueOf(zzrVar.creationTimestamp));
        zzab();
        contentValues.put("triggered_event", zzgd.zza(zzrVar.zzdx));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, Long.valueOf(zzrVar.zzdv.zzsx));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.valueOf(zzrVar.timeToLive));
        zzab();
        contentValues.put("expired_event", zzgd.zza(zzrVar.zzdy));
        try {
            if (getWritableDatabase().insertWithOnConflict("conditional_properties", null, contentValues, 5) == -1) {
                zzad().zzda().zza("Failed to insert/update conditional user property (got -1)", zzau.zzao(zzrVar.packageName));
            }
        } catch (SQLiteException e) {
            zzad().zzda().zza("Error storing conditional user property", zzau.zzao(zzrVar.packageName), e);
        }
        return true;
    }

    public final zzr zzf(String str, String str2) throws Throwable {
        Cursor cursorQuery;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzq();
        zzah();
        try {
            try {
                cursorQuery = getWritableDatabase().query("conditional_properties", new String[]{"origin", "value", AppMeasurementSdk.ConditionalUserProperty.ACTIVE, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, "timed_out_event", AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, "triggered_event", AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, "expired_event"}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
            } catch (Throwable th) {
                th = th;
            }
        } catch (SQLiteException e) {
            e = e;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            cursorQuery = null;
        }
        try {
            if (!cursorQuery.moveToFirst()) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return null;
            }
            String string = cursorQuery.getString(0);
            try {
                Object objZza = zza(cursorQuery, 1);
                boolean z = cursorQuery.getInt(2) != 0;
                zzr zzrVar = new zzr(str, string, new zzga(str2, cursorQuery.getLong(8), objZza, string), cursorQuery.getLong(6), z, cursorQuery.getString(3), (zzaj) zzdm().zza(cursorQuery.getBlob(5), zzaj.CREATOR), cursorQuery.getLong(4), (zzaj) zzdm().zza(cursorQuery.getBlob(7), zzaj.CREATOR), cursorQuery.getLong(9), (zzaj) zzdm().zza(cursorQuery.getBlob(10), zzaj.CREATOR));
                if (cursorQuery.moveToNext()) {
                    zzad().zzda().zza("Got multiple records for conditional property, expected one", zzau.zzao(str), zzaa().zzan(str2));
                }
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return zzrVar;
            } catch (SQLiteException e2) {
                e = e2;
                zzad().zzda().zza("Error querying conditional property", zzau.zzao(str), zzaa().zzan(str2), e);
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return null;
            }
        } catch (SQLiteException e3) {
            e = e3;
        } catch (Throwable th3) {
            th = th3;
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    public final int zzg(String str, String str2) throws IllegalStateException {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzq();
        zzah();
        try {
            return getWritableDatabase().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            zzad().zzda().zza("Error deleting conditional property", zzau.zzao(str), zzaa().zzan(str2), e);
            return 0;
        }
    }

    public final List<zzr> zzb(String str, String str2, String str3) {
        Preconditions.checkNotEmpty(str);
        zzq();
        zzah();
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(str);
        StringBuilder sb = new StringBuilder("app_id=?");
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
            sb.append(" and origin=?");
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(String.valueOf(str3).concat("*"));
            sb.append(" and name glob ?");
        }
        return zzb(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0093, code lost:
    
        zzad().zzda().zza("Read more than the max allowed conditional properties, ignoring extra", 1000);
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x017a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zzr> zzb(java.lang.String r40, java.lang.String[] r41) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 384
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzw.zzb(java.lang.String, java.lang.String[]):java.util.List");
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x0257  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzg zzae(java.lang.String r22) {
        /*
            Method dump skipped, instructions count: 603
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzw.zzae(java.lang.String):com.google.android.gms.measurement.internal.zzg");
    }

    public final void zza(zzg zzgVar) {
        Preconditions.checkNotNull(zzgVar);
        zzq();
        zzah();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzgVar.zzan());
        contentValues.put("app_instance_id", zzgVar.getAppInstanceId());
        contentValues.put("gmp_app_id", zzgVar.getGmpAppId());
        contentValues.put("resettable_device_id_hash", zzgVar.zzap());
        contentValues.put("last_bundle_index", Long.valueOf(zzgVar.zzay()));
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(zzgVar.zzaq()));
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(zzgVar.zzar()));
        contentValues.put("app_version", zzgVar.zzas());
        contentValues.put("app_store", zzgVar.zzau());
        contentValues.put("gmp_version", Long.valueOf(zzgVar.zzav()));
        contentValues.put("dev_cert_hash", Long.valueOf(zzgVar.zzaw()));
        contentValues.put("measurement_enabled", Boolean.valueOf(zzgVar.isMeasurementEnabled()));
        contentValues.put("day", Long.valueOf(zzgVar.zzbc()));
        contentValues.put("daily_public_events_count", Long.valueOf(zzgVar.zzbd()));
        contentValues.put("daily_events_count", Long.valueOf(zzgVar.zzbe()));
        contentValues.put("daily_conversions_count", Long.valueOf(zzgVar.zzbf()));
        contentValues.put("config_fetched_time", Long.valueOf(zzgVar.zzaz()));
        contentValues.put("failed_config_fetch_time", Long.valueOf(zzgVar.zzba()));
        contentValues.put("app_version_int", Long.valueOf(zzgVar.zzat()));
        contentValues.put("firebase_instance_id", zzgVar.getFirebaseInstanceId());
        contentValues.put("daily_error_events_count", Long.valueOf(zzgVar.zzbh()));
        contentValues.put("daily_realtime_events_count", Long.valueOf(zzgVar.zzbg()));
        contentValues.put("health_monitor_sample", zzgVar.zzbi());
        contentValues.put("android_id", Long.valueOf(zzgVar.zzbk()));
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(zzgVar.zzbl()));
        contentValues.put("ssaid_reporting_enabled", Boolean.valueOf(zzgVar.zzbm()));
        contentValues.put("admob_app_id", zzgVar.zzao());
        contentValues.put("dynamite_version", Long.valueOf(zzgVar.zzax()));
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (writableDatabase.update("apps", contentValues, "app_id = ?", new String[]{zzgVar.zzan()}) == 0 && writableDatabase.insertWithOnConflict("apps", null, contentValues, 5) == -1) {
                zzad().zzda().zza("Failed to insert/update app (got -1). appId", zzau.zzao(zzgVar.zzan()));
            }
        } catch (SQLiteException e) {
            zzad().zzda().zza("Error storing app. appId", zzau.zzao(zzgVar.zzan()), e);
        }
    }

    public final long zzaf(String str) throws IllegalStateException {
        Preconditions.checkNotEmpty(str);
        zzq();
        zzah();
        try {
            return getWritableDatabase().delete("raw_events", "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)", new String[]{str, String.valueOf(Math.max(0, Math.min(1000000, zzaf().zzb(str, zzal.zzgs))))});
        } catch (SQLiteException e) {
            zzad().zzda().zza("Error deleting over the limit events. appId", zzau.zzao(str), e);
            return 0L;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x012a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzx zza(long r22, java.lang.String r24, boolean r25, boolean r26, boolean r27, boolean r28, boolean r29) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzw.zza(long, java.lang.String, boolean, boolean, boolean, boolean, boolean):com.google.android.gms.measurement.internal.zzx");
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0079  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] zzag(java.lang.String r12) {
        /*
            r11 = this;
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r12)
            r11.zzq()
            r11.zzah()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r11.getWritableDatabase()     // Catch: java.lang.Throwable -> L5a android.database.sqlite.SQLiteException -> L5d
            java.lang.String r2 = "apps"
            r3 = 1
            java.lang.String[] r4 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L5a android.database.sqlite.SQLiteException -> L5d
            java.lang.String r5 = "remote_config"
            r9 = 0
            r4[r9] = r5     // Catch: java.lang.Throwable -> L5a android.database.sqlite.SQLiteException -> L5d
            java.lang.String r5 = "app_id=?"
            java.lang.String[] r6 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L5a android.database.sqlite.SQLiteException -> L5d
            r6[r9] = r12     // Catch: java.lang.Throwable -> L5a android.database.sqlite.SQLiteException -> L5d
            r7 = 0
            r8 = 0
            r10 = 0
            r3 = r4
            r4 = r5
            r5 = r6
            r6 = r7
            r7 = r8
            r8 = r10
            android.database.Cursor r1 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L5a android.database.sqlite.SQLiteException -> L5d
            boolean r2 = r1.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L58 java.lang.Throwable -> L76
            if (r2 != 0) goto L37
            if (r1 == 0) goto L36
            r1.close()
        L36:
            return r0
        L37:
            byte[] r2 = r1.getBlob(r9)     // Catch: android.database.sqlite.SQLiteException -> L58 java.lang.Throwable -> L76
            boolean r3 = r1.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L58 java.lang.Throwable -> L76
            if (r3 == 0) goto L52
            com.google.android.gms.measurement.internal.zzau r3 = r11.zzad()     // Catch: android.database.sqlite.SQLiteException -> L58 java.lang.Throwable -> L76
            com.google.android.gms.measurement.internal.zzaw r3 = r3.zzda()     // Catch: android.database.sqlite.SQLiteException -> L58 java.lang.Throwable -> L76
            java.lang.String r4 = "Got multiple records for app config, expected one. appId"
            java.lang.Object r5 = com.google.android.gms.measurement.internal.zzau.zzao(r12)     // Catch: android.database.sqlite.SQLiteException -> L58 java.lang.Throwable -> L76
            r3.zza(r4, r5)     // Catch: android.database.sqlite.SQLiteException -> L58 java.lang.Throwable -> L76
        L52:
            if (r1 == 0) goto L57
            r1.close()
        L57:
            return r2
        L58:
            r2 = move-exception
            goto L5f
        L5a:
            r12 = move-exception
            r1 = r0
            goto L77
        L5d:
            r2 = move-exception
            r1 = r0
        L5f:
            com.google.android.gms.measurement.internal.zzau r3 = r11.zzad()     // Catch: java.lang.Throwable -> L76
            com.google.android.gms.measurement.internal.zzaw r3 = r3.zzda()     // Catch: java.lang.Throwable -> L76
            java.lang.String r4 = "Error querying remote config. appId"
            java.lang.Object r12 = com.google.android.gms.measurement.internal.zzau.zzao(r12)     // Catch: java.lang.Throwable -> L76
            r3.zza(r4, r12, r2)     // Catch: java.lang.Throwable -> L76
            if (r1 == 0) goto L75
            r1.close()
        L75:
            return r0
        L76:
            r12 = move-exception
        L77:
            if (r1 == 0) goto L7c
            r1.close()
        L7c:
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzw.zzag(java.lang.String):byte[]");
    }

    public final boolean zza(com.google.android.gms.internal.measurement.zzch zzchVar, boolean z) throws IllegalStateException {
        zzq();
        zzah();
        Preconditions.checkNotNull(zzchVar);
        Preconditions.checkNotEmpty(zzchVar.zzcf);
        Preconditions.checkNotNull(zzchVar.zzxs);
        zzca();
        long jCurrentTimeMillis = zzz().currentTimeMillis();
        if (zzchVar.zzxs.longValue() < jCurrentTimeMillis - zzt.zzbs() || zzchVar.zzxs.longValue() > zzt.zzbs() + jCurrentTimeMillis) {
            zzad().zzdd().zza("Storing bundle outside of the max uploading time span. appId, now, timestamp", zzau.zzao(zzchVar.zzcf), Long.valueOf(jCurrentTimeMillis), zzchVar.zzxs);
        }
        try {
            byte[] bArrZzc = zzdm().zzc(zziv.zzb(zzchVar));
            zzad().zzdi().zza("Saving bundle, size", Integer.valueOf(bArrZzc.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", zzchVar.zzcf);
            contentValues.put("bundle_end_timestamp", zzchVar.zzxs);
            contentValues.put("data", bArrZzc);
            contentValues.put("has_realtime", Integer.valueOf(z ? 1 : 0));
            Integer num = zzchVar.zzyp;
            if (num != null) {
                contentValues.put("retry_count", num);
            }
            try {
                if (getWritableDatabase().insert("queue", null, contentValues) != -1) {
                    return true;
                }
                zzad().zzda().zza("Failed to insert bundle (got -1). appId", zzau.zzao(zzchVar.zzcf));
                return false;
            } catch (SQLiteException e) {
                zzad().zzda().zza("Error storing bundle. appId", zzau.zzao(zzchVar.zzcf), e);
                return false;
            }
        } catch (IOException e2) {
            zzad().zzda().zza("Data loss. Failed to serialize bundle. appId", zzau.zzao(zzchVar.zzcf), e2);
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String zzby() throws java.lang.Throwable {
        /*
            r6 = this;
            android.database.sqlite.SQLiteDatabase r0 = r6.getWritableDatabase()
            r1 = 0
            java.lang.String r2 = "select app_id from queue order by has_realtime desc, rowid asc limit 1;"
            android.database.Cursor r0 = r0.rawQuery(r2, r1)     // Catch: java.lang.Throwable -> L24 android.database.sqlite.SQLiteException -> L29
            boolean r2 = r0.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L22 java.lang.Throwable -> L3e
            if (r2 == 0) goto L1c
            r2 = 0
            java.lang.String r1 = r0.getString(r2)     // Catch: android.database.sqlite.SQLiteException -> L22 java.lang.Throwable -> L3e
            if (r0 == 0) goto L1b
            r0.close()
        L1b:
            return r1
        L1c:
            if (r0 == 0) goto L21
            r0.close()
        L21:
            return r1
        L22:
            r2 = move-exception
            goto L2b
        L24:
            r0 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
            goto L3f
        L29:
            r2 = move-exception
            r0 = r1
        L2b:
            com.google.android.gms.measurement.internal.zzau r3 = r6.zzad()     // Catch: java.lang.Throwable -> L3e
            com.google.android.gms.measurement.internal.zzaw r3 = r3.zzda()     // Catch: java.lang.Throwable -> L3e
            java.lang.String r4 = "Database error getting next bundle app id"
            r3.zza(r4, r2)     // Catch: java.lang.Throwable -> L3e
            if (r0 == 0) goto L3d
            r0.close()
        L3d:
            return r1
        L3e:
            r1 = move-exception
        L3f:
            if (r0 == 0) goto L44
            r0.close()
        L44:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzw.zzby():java.lang.String");
    }

    public final boolean zzbz() {
        return zza("select count(1) > 0 from queue where has_realtime = 1", (String[]) null) != 0;
    }

    public final List<Pair<com.google.android.gms.internal.measurement.zzch, Long>> zza(String str, int i, int i2) {
        byte[] bArrZzb;
        zzq();
        zzah();
        Preconditions.checkArgument(i > 0);
        Preconditions.checkArgument(i2 > 0);
        Preconditions.checkNotEmpty(str);
        Cursor cursor = null;
        try {
            try {
                Cursor cursorQuery = getWritableDatabase().query("queue", new String[]{"rowid", "data", "retry_count"}, "app_id=?", new String[]{str}, null, null, "rowid", String.valueOf(i));
                if (!cursorQuery.moveToFirst()) {
                    List<Pair<com.google.android.gms.internal.measurement.zzch, Long>> listEmptyList = Collections.emptyList();
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return listEmptyList;
                }
                ArrayList arrayList = new ArrayList();
                int length = 0;
                do {
                    long j = cursorQuery.getLong(0);
                    try {
                        bArrZzb = zzdm().zzb(cursorQuery.getBlob(1));
                    } catch (IOException e) {
                        zzad().zzda().zza("Failed to unzip queued bundle. appId", zzau.zzao(str), e);
                    }
                    if (!arrayList.isEmpty() && bArrZzb.length + length > i2) {
                        break;
                    }
                    try {
                        com.google.android.gms.internal.measurement.zzch zzchVarZzf = com.google.android.gms.internal.measurement.zzch.zzf(bArrZzb);
                        if (!cursorQuery.isNull(2)) {
                            zzchVarZzf.zzyp = Integer.valueOf(cursorQuery.getInt(2));
                        }
                        length += bArrZzb.length;
                        arrayList.add(Pair.create(zzchVarZzf, Long.valueOf(j)));
                    } catch (IOException e2) {
                        zzad().zzda().zza("Failed to merge queued bundle. appId", zzau.zzao(str), e2);
                    }
                    if (!cursorQuery.moveToNext()) {
                        break;
                    }
                } while (length <= i2);
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return arrayList;
            } catch (SQLiteException e3) {
                zzad().zzda().zza("Error querying bundles. appId", zzau.zzao(str), e3);
                List<Pair<com.google.android.gms.internal.measurement.zzch, Long>> listEmptyList2 = Collections.emptyList();
                if (0 != 0) {
                    cursor.close();
                }
                return listEmptyList2;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    final void zzca() {
        int iDelete;
        zzq();
        zzah();
        if (zzcg()) {
            long j = zzae().zzle.get();
            long jElapsedRealtime = zzz().elapsedRealtime();
            if (Math.abs(jElapsedRealtime - j) > zzal.zzhb.get(null).longValue()) {
                zzae().zzle.set(jElapsedRealtime);
                zzq();
                zzah();
                if (!zzcg() || (iDelete = getWritableDatabase().delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(zzz().currentTimeMillis()), String.valueOf(zzt.zzbs())})) <= 0) {
                    return;
                }
                zzad().zzdi().zza("Deleted stale rows. rowsDeleted", Integer.valueOf(iDelete));
            }
        }
    }

    @VisibleForTesting
    final void zza(List<Long> list) throws IllegalStateException, SQLException {
        zzq();
        zzah();
        Preconditions.checkNotNull(list);
        Preconditions.checkNotZero(list.size());
        if (zzcg()) {
            String strJoin = TextUtils.join(",", list);
            StringBuilder sb = new StringBuilder(String.valueOf(strJoin).length() + 2);
            sb.append("(");
            sb.append(strJoin);
            sb.append(")");
            String string = sb.toString();
            StringBuilder sb2 = new StringBuilder(String.valueOf(string).length() + 80);
            sb2.append("SELECT COUNT(1) FROM queue WHERE rowid IN ");
            sb2.append(string);
            sb2.append(" AND retry_count =  2147483647 LIMIT 1");
            if (zza(sb2.toString(), (String[]) null) > 0) {
                zzad().zzdd().zzaq("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                SQLiteDatabase writableDatabase = getWritableDatabase();
                StringBuilder sb3 = new StringBuilder(String.valueOf(string).length() + 127);
                sb3.append("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN ");
                sb3.append(string);
                sb3.append(" AND (retry_count IS NULL OR retry_count < 2147483647)");
                writableDatabase.execSQL(sb3.toString());
            } catch (SQLiteException e) {
                zzad().zzda().zza("Error incrementing retry count. error", e);
            }
        }
    }

    final void zza(String str, com.google.android.gms.internal.measurement.zzbx[] zzbxVarArr) {
        boolean z;
        zzah();
        zzq();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzbxVarArr);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            zzah();
            zzq();
            Preconditions.checkNotEmpty(str);
            SQLiteDatabase writableDatabase2 = getWritableDatabase();
            writableDatabase2.delete("property_filters", "app_id=?", new String[]{str});
            writableDatabase2.delete("event_filters", "app_id=?", new String[]{str});
            for (com.google.android.gms.internal.measurement.zzbx zzbxVar : zzbxVarArr) {
                zzah();
                zzq();
                Preconditions.checkNotEmpty(str);
                Preconditions.checkNotNull(zzbxVar);
                Preconditions.checkNotNull(zzbxVar.zzvw);
                Preconditions.checkNotNull(zzbxVar.zzvv);
                if (zzbxVar.zzvu == null) {
                    zzad().zzdd().zza("Audience with no ID. appId", zzau.zzao(str));
                } else {
                    int iIntValue = zzbxVar.zzvu.intValue();
                    com.google.android.gms.internal.measurement.zzby[] zzbyVarArr = zzbxVar.zzvw;
                    int length = zzbyVarArr.length;
                    int i = 0;
                    while (true) {
                        if (i < length) {
                            if (zzbyVarArr[i].zzwa == null) {
                                zzad().zzdd().zza("Event filter with no ID. Audience definition ignored. appId, audienceId", zzau.zzao(str), zzbxVar.zzvu);
                                break;
                            }
                            i++;
                        } else {
                            com.google.android.gms.internal.measurement.zzcb[] zzcbVarArr = zzbxVar.zzvv;
                            int length2 = zzcbVarArr.length;
                            int i2 = 0;
                            while (true) {
                                if (i2 < length2) {
                                    if (zzcbVarArr[i2].zzwa == null) {
                                        zzad().zzdd().zza("Property filter with no ID. Audience definition ignored. appId, audienceId", zzau.zzao(str), zzbxVar.zzvu);
                                        break;
                                    }
                                    i2++;
                                } else {
                                    com.google.android.gms.internal.measurement.zzby[] zzbyVarArr2 = zzbxVar.zzvw;
                                    int length3 = zzbyVarArr2.length;
                                    int i3 = 0;
                                    while (true) {
                                        if (i3 >= length3) {
                                            z = true;
                                            break;
                                        } else {
                                            if (!zza(str, iIntValue, zzbyVarArr2[i3])) {
                                                z = false;
                                                break;
                                            }
                                            i3++;
                                        }
                                    }
                                    if (z) {
                                        com.google.android.gms.internal.measurement.zzcb[] zzcbVarArr2 = zzbxVar.zzvv;
                                        int length4 = zzcbVarArr2.length;
                                        int i4 = 0;
                                        while (true) {
                                            if (i4 >= length4) {
                                                break;
                                            }
                                            if (!zza(str, iIntValue, zzcbVarArr2[i4])) {
                                                z = false;
                                                break;
                                            }
                                            i4++;
                                        }
                                    }
                                    if (!z) {
                                        zzah();
                                        zzq();
                                        Preconditions.checkNotEmpty(str);
                                        SQLiteDatabase writableDatabase3 = getWritableDatabase();
                                        writableDatabase3.delete("property_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(iIntValue)});
                                        writableDatabase3.delete("event_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(iIntValue)});
                                    }
                                }
                            }
                        }
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            for (com.google.android.gms.internal.measurement.zzbx zzbxVar2 : zzbxVarArr) {
                arrayList.add(zzbxVar2.zzvu);
            }
            zza(str, arrayList);
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    private final boolean zza(String str, int i, com.google.android.gms.internal.measurement.zzby zzbyVar) throws IllegalStateException {
        zzah();
        zzq();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzbyVar);
        if (TextUtils.isEmpty(zzbyVar.zzwb)) {
            zzad().zzdd().zza("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", zzau.zzao(str), Integer.valueOf(i), String.valueOf(zzbyVar.zzwa));
            return false;
        }
        byte[] bArrZzb = zziv.zzb(zzbyVar);
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("audience_id", Integer.valueOf(i));
        contentValues.put("filter_id", zzbyVar.zzwa);
        contentValues.put("event_name", zzbyVar.zzwb);
        contentValues.put("data", bArrZzb);
        try {
            if (getWritableDatabase().insertWithOnConflict("event_filters", null, contentValues, 5) != -1) {
                return true;
            }
            zzad().zzda().zza("Failed to insert event filter (got -1). appId", zzau.zzao(str));
            return true;
        } catch (SQLiteException e) {
            zzad().zzda().zza("Error storing event filter. appId", zzau.zzao(str), e);
            return false;
        }
    }

    private final boolean zza(String str, int i, com.google.android.gms.internal.measurement.zzcb zzcbVar) throws IllegalStateException {
        zzah();
        zzq();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzcbVar);
        if (TextUtils.isEmpty(zzcbVar.zzwq)) {
            zzad().zzdd().zza("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", zzau.zzao(str), Integer.valueOf(i), String.valueOf(zzcbVar.zzwa));
            return false;
        }
        byte[] bArrZzb = zziv.zzb(zzcbVar);
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("audience_id", Integer.valueOf(i));
        contentValues.put("filter_id", zzcbVar.zzwa);
        contentValues.put("property_name", zzcbVar.zzwq);
        contentValues.put("data", bArrZzb);
        try {
            if (getWritableDatabase().insertWithOnConflict("property_filters", null, contentValues, 5) != -1) {
                return true;
            }
            zzad().zzda().zza("Failed to insert property filter (got -1). appId", zzau.zzao(str));
            return false;
        } catch (SQLiteException e) {
            zzad().zzda().zza("Error storing property filter. appId", zzau.zzao(str), e);
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b6  */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v3, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final java.util.Map<java.lang.Integer, java.util.List<com.google.android.gms.internal.measurement.zzby>> zzh(java.lang.String r13, java.lang.String r14) {
        /*
            r12 = this;
            r12.zzah()
            r12.zzq()
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r13)
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r14)
            android.support.v4.util.ArrayMap r0 = new android.support.v4.util.ArrayMap
            r0.<init>()
            android.database.sqlite.SQLiteDatabase r1 = r12.getWritableDatabase()
            r9 = 0
            java.lang.String r2 = "event_filters"
            r3 = 2
            java.lang.String[] r4 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L97 android.database.sqlite.SQLiteException -> L9a
            java.lang.String r5 = "audience_id"
            r10 = 0
            r4[r10] = r5     // Catch: java.lang.Throwable -> L97 android.database.sqlite.SQLiteException -> L9a
            java.lang.String r5 = "data"
            r11 = 1
            r4[r11] = r5     // Catch: java.lang.Throwable -> L97 android.database.sqlite.SQLiteException -> L9a
            java.lang.String r5 = "app_id=? AND event_name=?"
            java.lang.String[] r6 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L97 android.database.sqlite.SQLiteException -> L9a
            r6[r10] = r13     // Catch: java.lang.Throwable -> L97 android.database.sqlite.SQLiteException -> L9a
            r6[r11] = r14     // Catch: java.lang.Throwable -> L97 android.database.sqlite.SQLiteException -> L9a
            r14 = 0
            r7 = 0
            r8 = 0
            r3 = r4
            r4 = r5
            r5 = r6
            r6 = r14
            android.database.Cursor r14 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L97 android.database.sqlite.SQLiteException -> L9a
            boolean r1 = r14.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            if (r1 != 0) goto L48
            java.util.Map r13 = java.util.Collections.emptyMap()     // Catch: android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            if (r14 == 0) goto L47
            r14.close()
        L47:
            return r13
        L48:
            byte[] r1 = r14.getBlob(r11)     // Catch: android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            com.google.android.gms.internal.measurement.zzby r2 = new com.google.android.gms.internal.measurement.zzby     // Catch: java.io.IOException -> L77 android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            r2.<init>()     // Catch: java.io.IOException -> L77 android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            com.google.android.gms.internal.measurement.zziv r1 = com.google.android.gms.internal.measurement.zziv.zza(r2, r1)     // Catch: java.io.IOException -> L77 android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            com.google.android.gms.internal.measurement.zzby r1 = (com.google.android.gms.internal.measurement.zzby) r1     // Catch: java.io.IOException -> L77 android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            int r2 = r14.getInt(r10)     // Catch: android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            java.lang.Integer r3 = java.lang.Integer.valueOf(r2)     // Catch: android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            java.lang.Object r3 = r0.get(r3)     // Catch: android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            java.util.List r3 = (java.util.List) r3     // Catch: android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            if (r3 != 0) goto L73
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            r3.<init>()     // Catch: android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            r0.put(r2, r3)     // Catch: android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
        L73:
            r3.add(r1)     // Catch: android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            goto L89
        L77:
            r1 = move-exception
            com.google.android.gms.measurement.internal.zzau r2 = r12.zzad()     // Catch: android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            com.google.android.gms.measurement.internal.zzaw r2 = r2.zzda()     // Catch: android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            java.lang.String r3 = "Failed to merge filter. appId"
            java.lang.Object r4 = com.google.android.gms.measurement.internal.zzau.zzao(r13)     // Catch: android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            r2.zza(r3, r4, r1)     // Catch: android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
        L89:
            boolean r1 = r14.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            if (r1 != 0) goto L48
            if (r14 == 0) goto L94
            r14.close()
        L94:
            return r0
        L95:
            r0 = move-exception
            goto L9c
        L97:
            r13 = move-exception
            r14 = r9
            goto Lb4
        L9a:
            r0 = move-exception
            r14 = r9
        L9c:
            com.google.android.gms.measurement.internal.zzau r1 = r12.zzad()     // Catch: java.lang.Throwable -> Lb3
            com.google.android.gms.measurement.internal.zzaw r1 = r1.zzda()     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r2 = "Database error querying filters. appId"
            java.lang.Object r13 = com.google.android.gms.measurement.internal.zzau.zzao(r13)     // Catch: java.lang.Throwable -> Lb3
            r1.zza(r2, r13, r0)     // Catch: java.lang.Throwable -> Lb3
            if (r14 == 0) goto Lb2
            r14.close()
        Lb2:
            return r9
        Lb3:
            r13 = move-exception
        Lb4:
            if (r14 == 0) goto Lb9
            r14.close()
        Lb9:
            goto Lbb
        Lba:
            throw r13
        Lbb:
            goto Lba
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzw.zzh(java.lang.String, java.lang.String):java.util.Map");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b6  */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v3, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final java.util.Map<java.lang.Integer, java.util.List<com.google.android.gms.internal.measurement.zzcb>> zzi(java.lang.String r13, java.lang.String r14) {
        /*
            r12 = this;
            r12.zzah()
            r12.zzq()
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r13)
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r14)
            android.support.v4.util.ArrayMap r0 = new android.support.v4.util.ArrayMap
            r0.<init>()
            android.database.sqlite.SQLiteDatabase r1 = r12.getWritableDatabase()
            r9 = 0
            java.lang.String r2 = "property_filters"
            r3 = 2
            java.lang.String[] r4 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L97 android.database.sqlite.SQLiteException -> L9a
            java.lang.String r5 = "audience_id"
            r10 = 0
            r4[r10] = r5     // Catch: java.lang.Throwable -> L97 android.database.sqlite.SQLiteException -> L9a
            java.lang.String r5 = "data"
            r11 = 1
            r4[r11] = r5     // Catch: java.lang.Throwable -> L97 android.database.sqlite.SQLiteException -> L9a
            java.lang.String r5 = "app_id=? AND property_name=?"
            java.lang.String[] r6 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L97 android.database.sqlite.SQLiteException -> L9a
            r6[r10] = r13     // Catch: java.lang.Throwable -> L97 android.database.sqlite.SQLiteException -> L9a
            r6[r11] = r14     // Catch: java.lang.Throwable -> L97 android.database.sqlite.SQLiteException -> L9a
            r14 = 0
            r7 = 0
            r8 = 0
            r3 = r4
            r4 = r5
            r5 = r6
            r6 = r14
            android.database.Cursor r14 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L97 android.database.sqlite.SQLiteException -> L9a
            boolean r1 = r14.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            if (r1 != 0) goto L48
            java.util.Map r13 = java.util.Collections.emptyMap()     // Catch: android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            if (r14 == 0) goto L47
            r14.close()
        L47:
            return r13
        L48:
            byte[] r1 = r14.getBlob(r11)     // Catch: android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            com.google.android.gms.internal.measurement.zzcb r2 = new com.google.android.gms.internal.measurement.zzcb     // Catch: java.io.IOException -> L77 android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            r2.<init>()     // Catch: java.io.IOException -> L77 android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            com.google.android.gms.internal.measurement.zziv r1 = com.google.android.gms.internal.measurement.zziv.zza(r2, r1)     // Catch: java.io.IOException -> L77 android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            com.google.android.gms.internal.measurement.zzcb r1 = (com.google.android.gms.internal.measurement.zzcb) r1     // Catch: java.io.IOException -> L77 android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            int r2 = r14.getInt(r10)     // Catch: android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            java.lang.Integer r3 = java.lang.Integer.valueOf(r2)     // Catch: android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            java.lang.Object r3 = r0.get(r3)     // Catch: android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            java.util.List r3 = (java.util.List) r3     // Catch: android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            if (r3 != 0) goto L73
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            r3.<init>()     // Catch: android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            r0.put(r2, r3)     // Catch: android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
        L73:
            r3.add(r1)     // Catch: android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            goto L89
        L77:
            r1 = move-exception
            com.google.android.gms.measurement.internal.zzau r2 = r12.zzad()     // Catch: android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            com.google.android.gms.measurement.internal.zzaw r2 = r2.zzda()     // Catch: android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            java.lang.String r3 = "Failed to merge filter"
            java.lang.Object r4 = com.google.android.gms.measurement.internal.zzau.zzao(r13)     // Catch: android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            r2.zza(r3, r4, r1)     // Catch: android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
        L89:
            boolean r1 = r14.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L95 java.lang.Throwable -> Lb3
            if (r1 != 0) goto L48
            if (r14 == 0) goto L94
            r14.close()
        L94:
            return r0
        L95:
            r0 = move-exception
            goto L9c
        L97:
            r13 = move-exception
            r14 = r9
            goto Lb4
        L9a:
            r0 = move-exception
            r14 = r9
        L9c:
            com.google.android.gms.measurement.internal.zzau r1 = r12.zzad()     // Catch: java.lang.Throwable -> Lb3
            com.google.android.gms.measurement.internal.zzaw r1 = r1.zzda()     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r2 = "Database error querying filters. appId"
            java.lang.Object r13 = com.google.android.gms.measurement.internal.zzau.zzao(r13)     // Catch: java.lang.Throwable -> Lb3
            r1.zza(r2, r13, r0)     // Catch: java.lang.Throwable -> Lb3
            if (r14 == 0) goto Lb2
            r14.close()
        Lb2:
            return r9
        Lb3:
            r13 = move-exception
        Lb4:
            if (r14 == 0) goto Lb9
            r14.close()
        Lb9:
            goto Lbb
        Lba:
            throw r13
        Lbb:
            goto Lba
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzw.zzi(java.lang.String, java.lang.String):java.util.Map");
    }

    private final boolean zza(String str, List<Integer> list) throws IllegalStateException {
        Preconditions.checkNotEmpty(str);
        zzah();
        zzq();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        try {
            long jZza = zza("select count(1) from audience_filter_values where app_id=?", new String[]{str});
            int iMax = Math.max(0, Math.min(2000, zzaf().zzb(str, zzal.zzhi)));
            if (jZza <= iMax) {
                return false;
            }
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                Integer num = list.get(i);
                if (num == null || !(num instanceof Integer)) {
                    return false;
                }
                arrayList.add(Integer.toString(num.intValue()));
            }
            String strJoin = TextUtils.join(",", arrayList);
            StringBuilder sb = new StringBuilder(String.valueOf(strJoin).length() + 2);
            sb.append("(");
            sb.append(strJoin);
            sb.append(")");
            String string = sb.toString();
            StringBuilder sb2 = new StringBuilder(String.valueOf(string).length() + 140);
            sb2.append("audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in ");
            sb2.append(string);
            sb2.append(" order by rowid desc limit -1 offset ?)");
            return writableDatabase.delete("audience_filter_values", sb2.toString(), new String[]{str, Integer.toString(iMax)}) > 0;
        } catch (SQLiteException e) {
            zzad().zzda().zza("Database error querying filters. appId", zzau.zzao(str), e);
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0096  */
    /* JADX WARN: Type inference failed for: r0v0, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v3, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final java.util.Map<java.lang.Integer, com.google.android.gms.internal.measurement.zzbt.zzf> zzah(java.lang.String r12) {
        /*
            r11 = this;
            r11.zzah()
            r11.zzq()
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r12)
            android.database.sqlite.SQLiteDatabase r0 = r11.getWritableDatabase()
            r8 = 0
            java.lang.String r1 = "audience_filter_values"
            r2 = 2
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: java.lang.Throwable -> L77 android.database.sqlite.SQLiteException -> L7a
            java.lang.String r3 = "audience_id"
            r9 = 0
            r2[r9] = r3     // Catch: java.lang.Throwable -> L77 android.database.sqlite.SQLiteException -> L7a
            java.lang.String r3 = "current_results"
            r10 = 1
            r2[r10] = r3     // Catch: java.lang.Throwable -> L77 android.database.sqlite.SQLiteException -> L7a
            java.lang.String r3 = "app_id=?"
            java.lang.String[] r4 = new java.lang.String[r10]     // Catch: java.lang.Throwable -> L77 android.database.sqlite.SQLiteException -> L7a
            r4[r9] = r12     // Catch: java.lang.Throwable -> L77 android.database.sqlite.SQLiteException -> L7a
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L77 android.database.sqlite.SQLiteException -> L7a
            boolean r1 = r0.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L75 java.lang.Throwable -> L93
            if (r1 != 0) goto L36
            if (r0 == 0) goto L35
            r0.close()
        L35:
            return r8
        L36:
            android.support.v4.util.ArrayMap r1 = new android.support.v4.util.ArrayMap     // Catch: android.database.sqlite.SQLiteException -> L75 java.lang.Throwable -> L93
            r1.<init>()     // Catch: android.database.sqlite.SQLiteException -> L75 java.lang.Throwable -> L93
        L3b:
            int r2 = r0.getInt(r9)     // Catch: android.database.sqlite.SQLiteException -> L75 java.lang.Throwable -> L93
            byte[] r3 = r0.getBlob(r10)     // Catch: android.database.sqlite.SQLiteException -> L75 java.lang.Throwable -> L93
            com.google.android.gms.internal.measurement.zzem r4 = com.google.android.gms.internal.measurement.zzem.zzlt()     // Catch: java.io.IOException -> L53 android.database.sqlite.SQLiteException -> L75 java.lang.Throwable -> L93
            com.google.android.gms.internal.measurement.zzbt$zzf r3 = com.google.android.gms.internal.measurement.zzbt.zzf.zza(r3, r4)     // Catch: java.io.IOException -> L53 android.database.sqlite.SQLiteException -> L75 java.lang.Throwable -> L93
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: android.database.sqlite.SQLiteException -> L75 java.lang.Throwable -> L93
            r1.put(r2, r3)     // Catch: android.database.sqlite.SQLiteException -> L75 java.lang.Throwable -> L93
            goto L69
        L53:
            r3 = move-exception
            com.google.android.gms.measurement.internal.zzau r4 = r11.zzad()     // Catch: android.database.sqlite.SQLiteException -> L75 java.lang.Throwable -> L93
            com.google.android.gms.measurement.internal.zzaw r4 = r4.zzda()     // Catch: android.database.sqlite.SQLiteException -> L75 java.lang.Throwable -> L93
            java.lang.String r5 = "Failed to merge filter results. appId, audienceId, error"
            java.lang.Object r6 = com.google.android.gms.measurement.internal.zzau.zzao(r12)     // Catch: android.database.sqlite.SQLiteException -> L75 java.lang.Throwable -> L93
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: android.database.sqlite.SQLiteException -> L75 java.lang.Throwable -> L93
            r4.zza(r5, r6, r2, r3)     // Catch: android.database.sqlite.SQLiteException -> L75 java.lang.Throwable -> L93
        L69:
            boolean r2 = r0.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L75 java.lang.Throwable -> L93
            if (r2 != 0) goto L3b
            if (r0 == 0) goto L74
            r0.close()
        L74:
            return r1
        L75:
            r1 = move-exception
            goto L7c
        L77:
            r12 = move-exception
            r0 = r8
            goto L94
        L7a:
            r1 = move-exception
            r0 = r8
        L7c:
            com.google.android.gms.measurement.internal.zzau r2 = r11.zzad()     // Catch: java.lang.Throwable -> L93
            com.google.android.gms.measurement.internal.zzaw r2 = r2.zzda()     // Catch: java.lang.Throwable -> L93
            java.lang.String r3 = "Database error querying filter results. appId"
            java.lang.Object r12 = com.google.android.gms.measurement.internal.zzau.zzao(r12)     // Catch: java.lang.Throwable -> L93
            r2.zza(r3, r12, r1)     // Catch: java.lang.Throwable -> L93
            if (r0 == 0) goto L92
            r0.close()
        L92:
            return r8
        L93:
            r12 = move-exception
        L94:
            if (r0 == 0) goto L99
            r0.close()
        L99:
            goto L9b
        L9a:
            throw r12
        L9b:
            goto L9a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzw.zzah(java.lang.String):java.util.Map");
    }

    private static void zza(ContentValues contentValues, String str, Object obj) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(obj);
        if (obj instanceof String) {
            contentValues.put(str, (String) obj);
        } else if (obj instanceof Long) {
            contentValues.put(str, (Long) obj);
        } else {
            if (obj instanceof Double) {
                contentValues.put(str, (Double) obj);
                return;
            }
            throw new IllegalArgumentException("Invalid value type");
        }
    }

    @VisibleForTesting
    private final Object zza(Cursor cursor, int i) throws IllegalStateException {
        int type = cursor.getType(i);
        if (type == 0) {
            zzad().zzda().zzaq("Loaded invalid null value from database");
            return null;
        }
        if (type == 1) {
            return Long.valueOf(cursor.getLong(i));
        }
        if (type == 2) {
            return Double.valueOf(cursor.getDouble(i));
        }
        if (type == 3) {
            return cursor.getString(i);
        }
        if (type == 4) {
            zzad().zzda().zzaq("Loaded invalid blob type value, ignoring it");
            return null;
        }
        zzad().zzda().zza("Loaded invalid unknown value type, ignoring it", Integer.valueOf(type));
        return null;
    }

    public final long zzcb() {
        return zza("select max(bundle_end_timestamp) from queue", (String[]) null, 0L);
    }

    @VisibleForTesting
    protected final long zzj(String str, String str2) throws Throwable {
        long jZza;
        ContentValues contentValues;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzq();
        zzah();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 32);
            sb.append("select ");
            sb.append(str2);
            sb.append(" from app2 where app_id=?");
            try {
                try {
                    jZza = zza(sb.toString(), new String[]{str}, -1L);
                    if (jZza == -1) {
                        ContentValues contentValues2 = new ContentValues();
                        contentValues2.put("app_id", str);
                        contentValues2.put("first_open_count", (Integer) 0);
                        contentValues2.put("previous_install_count", (Integer) 0);
                        if (writableDatabase.insertWithOnConflict("app2", null, contentValues2, 5) == -1) {
                            zzad().zzda().zza("Failed to insert column (got -1). appId", zzau.zzao(str), str2);
                            writableDatabase.endTransaction();
                            return -1L;
                        }
                        jZza = 0;
                    }
                } catch (SQLiteException e) {
                    e = e;
                    jZza = 0;
                    zzad().zzda().zza("Error inserting column. appId", zzau.zzao(str), str2, e);
                    writableDatabase.endTransaction();
                    return jZza;
                }
                try {
                    contentValues = new ContentValues();
                    contentValues.put("app_id", str);
                    contentValues.put(str2, Long.valueOf(1 + jZza));
                } catch (SQLiteException e2) {
                    e = e2;
                    zzad().zzda().zza("Error inserting column. appId", zzau.zzao(str), str2, e);
                    writableDatabase.endTransaction();
                    return jZza;
                }
            } catch (Throwable th) {
                th = th;
                writableDatabase.endTransaction();
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
        } catch (Throwable th2) {
            th = th2;
        }
        if (writableDatabase.update("app2", contentValues, "app_id = ?", new String[]{str}) == 0) {
            zzad().zzda().zza("Failed to update column (got 0). appId", zzau.zzao(str), str2);
            writableDatabase.endTransaction();
            return -1L;
        }
        writableDatabase.setTransactionSuccessful();
        writableDatabase.endTransaction();
        return jZza;
    }

    public final long zzcc() {
        return zza("select max(timestamp) from raw_events", (String[]) null, 0L);
    }

    public final long zza(com.google.android.gms.internal.measurement.zzch zzchVar) throws IllegalStateException, NoSuchAlgorithmException, IOException {
        zzq();
        zzah();
        Preconditions.checkNotNull(zzchVar);
        Preconditions.checkNotEmpty(zzchVar.zzcf);
        byte[] bArrZzb = zziv.zzb(zzchVar);
        long jZza = zzdm().zza(bArrZzb);
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzchVar.zzcf);
        contentValues.put("metadata_fingerprint", Long.valueOf(jZza));
        contentValues.put(TtmlNode.TAG_METADATA, bArrZzb);
        try {
            getWritableDatabase().insertWithOnConflict("raw_events_metadata", null, contentValues, 4);
            return jZza;
        } catch (SQLiteException e) {
            zzad().zzda().zza("Error storing raw event metadata. appId", zzau.zzao(zzchVar.zzcf), e);
            throw e;
        }
    }

    public final boolean zzcd() {
        return zza("select count(1) > 0 from raw_events", (String[]) null) != 0;
    }

    public final boolean zzce() {
        return zza("select count(1) > 0 from raw_events where realtime = 1", (String[]) null) != 0;
    }

    public final long zzai(String str) {
        Preconditions.checkNotEmpty(str);
        return zza("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x005b  */
    /* JADX WARN: Type inference failed for: r5v0, types: [long] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v3, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String zzu(long r5) throws java.lang.Throwable {
        /*
            r4 = this;
            r4.zzq()
            r4.zzah()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r4.getWritableDatabase()     // Catch: java.lang.Throwable -> L40 android.database.sqlite.SQLiteException -> L43
            java.lang.String r2 = "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"
            r3 = 1
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L40 android.database.sqlite.SQLiteException -> L43
            java.lang.String r5 = java.lang.String.valueOf(r5)     // Catch: java.lang.Throwable -> L40 android.database.sqlite.SQLiteException -> L43
            r6 = 0
            r3[r6] = r5     // Catch: java.lang.Throwable -> L40 android.database.sqlite.SQLiteException -> L43
            android.database.Cursor r5 = r1.rawQuery(r2, r3)     // Catch: java.lang.Throwable -> L40 android.database.sqlite.SQLiteException -> L43
            boolean r1 = r5.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L3e java.lang.Throwable -> L58
            if (r1 != 0) goto L34
            com.google.android.gms.measurement.internal.zzau r6 = r4.zzad()     // Catch: android.database.sqlite.SQLiteException -> L3e java.lang.Throwable -> L58
            com.google.android.gms.measurement.internal.zzaw r6 = r6.zzdi()     // Catch: android.database.sqlite.SQLiteException -> L3e java.lang.Throwable -> L58
            java.lang.String r1 = "No expired configs for apps with pending events"
            r6.zzaq(r1)     // Catch: android.database.sqlite.SQLiteException -> L3e java.lang.Throwable -> L58
            if (r5 == 0) goto L33
            r5.close()
        L33:
            return r0
        L34:
            java.lang.String r6 = r5.getString(r6)     // Catch: android.database.sqlite.SQLiteException -> L3e java.lang.Throwable -> L58
            if (r5 == 0) goto L3d
            r5.close()
        L3d:
            return r6
        L3e:
            r6 = move-exception
            goto L45
        L40:
            r6 = move-exception
            r5 = r0
            goto L59
        L43:
            r6 = move-exception
            r5 = r0
        L45:
            com.google.android.gms.measurement.internal.zzau r1 = r4.zzad()     // Catch: java.lang.Throwable -> L58
            com.google.android.gms.measurement.internal.zzaw r1 = r1.zzda()     // Catch: java.lang.Throwable -> L58
            java.lang.String r2 = "Error selecting expired configs"
            r1.zza(r2, r6)     // Catch: java.lang.Throwable -> L58
            if (r5 == 0) goto L57
            r5.close()
        L57:
            return r0
        L58:
            r6 = move-exception
        L59:
            if (r5 == 0) goto L5e
            r5.close()
        L5e:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzw.zzu(long):java.lang.String");
    }

    public final long zzcf() {
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = getWritableDatabase().rawQuery("select rowid from raw_events order by rowid desc limit 1;", null);
                if (!cursorRawQuery.moveToFirst()) {
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    return -1L;
                }
                long j = cursorRawQuery.getLong(0);
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return j;
            } catch (SQLiteException e) {
                zzad().zzda().zza("Error querying raw events", e);
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return -1L;
            }
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0086  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.util.Pair<com.google.android.gms.internal.measurement.zzcf, java.lang.Long> zza(java.lang.String r8, java.lang.Long r9) {
        /*
            r7 = this;
            r7.zzq()
            r7.zzah()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r7.getWritableDatabase()     // Catch: java.lang.Throwable -> L6b android.database.sqlite.SQLiteException -> L6e
            java.lang.String r2 = "select main_event, children_to_process from main_event_params where app_id=? and event_id=?"
            r3 = 2
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L6b android.database.sqlite.SQLiteException -> L6e
            r4 = 0
            r3[r4] = r8     // Catch: java.lang.Throwable -> L6b android.database.sqlite.SQLiteException -> L6e
            java.lang.String r5 = java.lang.String.valueOf(r9)     // Catch: java.lang.Throwable -> L6b android.database.sqlite.SQLiteException -> L6e
            r6 = 1
            r3[r6] = r5     // Catch: java.lang.Throwable -> L6b android.database.sqlite.SQLiteException -> L6e
            android.database.Cursor r1 = r1.rawQuery(r2, r3)     // Catch: java.lang.Throwable -> L6b android.database.sqlite.SQLiteException -> L6e
            boolean r2 = r1.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L83
            if (r2 != 0) goto L37
            com.google.android.gms.measurement.internal.zzau r8 = r7.zzad()     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L83
            com.google.android.gms.measurement.internal.zzaw r8 = r8.zzdi()     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L83
            java.lang.String r9 = "Main event not found"
            r8.zzaq(r9)     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L83
            if (r1 == 0) goto L36
            r1.close()
        L36:
            return r0
        L37:
            byte[] r2 = r1.getBlob(r4)     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L83
            long r3 = r1.getLong(r6)     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L83
            java.lang.Long r3 = java.lang.Long.valueOf(r3)     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L83
            com.google.android.gms.internal.measurement.zzcf r8 = com.google.android.gms.internal.measurement.zzcf.zze(r2)     // Catch: java.io.IOException -> L51 android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L83
            android.util.Pair r8 = android.util.Pair.create(r8, r3)     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L83
            if (r1 == 0) goto L50
            r1.close()
        L50:
            return r8
        L51:
            r2 = move-exception
            com.google.android.gms.measurement.internal.zzau r3 = r7.zzad()     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L83
            com.google.android.gms.measurement.internal.zzaw r3 = r3.zzda()     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L83
            java.lang.String r4 = "Failed to merge main event. appId, eventId"
            java.lang.Object r8 = com.google.android.gms.measurement.internal.zzau.zzao(r8)     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L83
            r3.zza(r4, r8, r9, r2)     // Catch: android.database.sqlite.SQLiteException -> L69 java.lang.Throwable -> L83
            if (r1 == 0) goto L68
            r1.close()
        L68:
            return r0
        L69:
            r8 = move-exception
            goto L70
        L6b:
            r8 = move-exception
            r1 = r0
            goto L84
        L6e:
            r8 = move-exception
            r1 = r0
        L70:
            com.google.android.gms.measurement.internal.zzau r9 = r7.zzad()     // Catch: java.lang.Throwable -> L83
            com.google.android.gms.measurement.internal.zzaw r9 = r9.zzda()     // Catch: java.lang.Throwable -> L83
            java.lang.String r2 = "Error selecting main event"
            r9.zza(r2, r8)     // Catch: java.lang.Throwable -> L83
            if (r1 == 0) goto L82
            r1.close()
        L82:
            return r0
        L83:
            r8 = move-exception
        L84:
            if (r1 == 0) goto L89
            r1.close()
        L89:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzw.zza(java.lang.String, java.lang.Long):android.util.Pair");
    }

    public final boolean zza(String str, Long l, long j, com.google.android.gms.internal.measurement.zzcf zzcfVar) {
        zzq();
        zzah();
        Preconditions.checkNotNull(zzcfVar);
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(l);
        byte[] bArrZzb = zziv.zzb(zzcfVar);
        zzad().zzdi().zza("Saving complex main event, appId, data size", zzaa().zzal(str), Integer.valueOf(bArrZzb.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("event_id", l);
        contentValues.put("children_to_process", Long.valueOf(j));
        contentValues.put("main_event", bArrZzb);
        try {
            if (getWritableDatabase().insertWithOnConflict("main_event_params", null, contentValues, 5) != -1) {
                return true;
            }
            zzad().zzda().zza("Failed to insert complex main event (got -1). appId", zzau.zzao(str));
            return false;
        } catch (SQLiteException e) {
            zzad().zzda().zza("Error storing complex main event. appId", zzau.zzao(str), e);
            return false;
        }
    }

    public final boolean zza(zzae zzaeVar, long j, boolean z) throws IllegalStateException {
        zzq();
        zzah();
        Preconditions.checkNotNull(zzaeVar);
        Preconditions.checkNotEmpty(zzaeVar.zzcf);
        com.google.android.gms.internal.measurement.zzcf zzcfVar = new com.google.android.gms.internal.measurement.zzcf();
        zzcfVar.zzxk = Long.valueOf(zzaeVar.zzfc);
        zzcfVar.zzxi = new zzbt.zzd[zzaeVar.zzfd.size()];
        Iterator<String> it = zzaeVar.zzfd.iterator();
        int i = 0;
        while (it.hasNext()) {
            String next = it.next();
            zzbt.zzd.zza zzaVarZzbw = zzbt.zzd.zzht().zzbw(next);
            zzdm().zza(zzaVarZzbw, zzaeVar.zzfd.get(next));
            zzcfVar.zzxi[i] = (zzbt.zzd) zzaVarZzbw.zzmr();
            i++;
        }
        byte[] bArrZzb = zziv.zzb(zzcfVar);
        zzad().zzdi().zza("Saving event, name, data size", zzaa().zzal(zzaeVar.name), Integer.valueOf(bArrZzb.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzaeVar.zzcf);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.NAME, zzaeVar.name);
        contentValues.put("timestamp", Long.valueOf(zzaeVar.timestamp));
        contentValues.put("metadata_fingerprint", Long.valueOf(j));
        contentValues.put("data", bArrZzb);
        contentValues.put("realtime", Integer.valueOf(z ? 1 : 0));
        try {
            if (getWritableDatabase().insert("raw_events", null, contentValues) != -1) {
                return true;
            }
            zzad().zzda().zza("Failed to insert raw event (got -1). appId", zzau.zzao(zzaeVar.zzcf));
            return false;
        } catch (SQLiteException e) {
            zzad().zzda().zza("Error storing raw event. appId", zzau.zzao(zzaeVar.zzcf), e);
            return false;
        }
    }

    private final boolean zzcg() {
        return getContext().getDatabasePath("google_app_measurement.db").exists();
    }
}
