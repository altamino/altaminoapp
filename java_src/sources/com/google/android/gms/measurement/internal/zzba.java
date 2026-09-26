package com.google.android.gms.measurement.internal;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.content.Context;
import androidx.annotation.WorkerThread;
import androidx.core.content.ContextCompat;
import com.google.android.gms.common.util.Clock;
import com.narvii.util.DateUtils;
import java.io.IOException;
import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes10.dex */
public final class zzba extends zzic {
    private long zza;
    private String zzb;
    private AccountManager zzc;
    private Boolean zzd;
    private long zze;

    @WorkerThread
    final boolean zzn() {
        zzt();
        long jCurrentTimeMillis = zzb().currentTimeMillis();
        if (jCurrentTimeMillis - this.zze > DateUtils.ONE_DAY) {
            this.zzd = null;
        }
        Boolean bool = this.zzd;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (ContextCompat.checkSelfPermission(zza(), "android.permission.GET_ACCOUNTS") != 0) {
            zzj().zzw().zza("Permission error checking for dasher/unicorn accounts");
            this.zze = jCurrentTimeMillis;
            this.zzd = Boolean.FALSE;
            return false;
        }
        if (this.zzc == null) {
            this.zzc = AccountManager.get(zza());
        }
        try {
            Account[] result = this.zzc.getAccountsByTypeAndFeatures("com.google", new String[]{"service_HOSTED"}, null, null).getResult();
            if (result != null && result.length > 0) {
                this.zzd = Boolean.TRUE;
                this.zze = jCurrentTimeMillis;
                return true;
            }
            Account[] result2 = this.zzc.getAccountsByTypeAndFeatures("com.google", new String[]{"service_uca"}, null, null).getResult();
            if (result2 != null && result2.length > 0) {
                this.zzd = Boolean.TRUE;
                this.zze = jCurrentTimeMillis;
                return true;
            }
            this.zze = jCurrentTimeMillis;
            this.zzd = Boolean.FALSE;
            return false;
        } catch (AuthenticatorException e) {
            e = e;
            zzj().zzm().zza("Exception checking account types", e);
        } catch (OperationCanceledException e2) {
            e = e2;
            zzj().zzm().zza("Exception checking account types", e);
        } catch (IOException e6) {
            e = e6;
            zzj().zzm().zza("Exception checking account types", e);
        }
    }

    zzba(zzhf zzhfVar) {
        super(zzhfVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
    }

    @WorkerThread
    final long zzc() {
        zzt();
        return this.zze;
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

    public final long zzg() {
        zzab();
        return this.zza;
    }

    public final String zzh() {
        zzab();
        return this.zzb;
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

    @WorkerThread
    final void zzm() {
        zzt();
        this.zzd = null;
        this.zze = 0L;
    }

    @Override // com.google.android.gms.measurement.internal.zzic
    protected final boolean zzo() {
        Calendar calendar = Calendar.getInstance();
        this.zza = TimeUnit.MINUTES.convert(calendar.get(15) + calendar.get(16), TimeUnit.MILLISECONDS);
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        Locale locale2 = Locale.ENGLISH;
        this.zzb = language.toLowerCase(locale2) + "-" + locale.getCountry().toLowerCase(locale2);
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ zznd zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ void zzr() {
        super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ void zzs() {
        super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ void zzt() {
        super.zzt();
    }
}
