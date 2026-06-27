package com.google.android.gms.measurement.internal;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.content.Context;
import android.content.pm.PackageManager;
import android.support.v4.content.ContextCompat;
import com.google.android.gms.common.util.Clock;
import com.narvii.util.DateUtils;
import java.io.IOException;
import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zzad extends zzcu {
    private long zzew;
    private String zzex;
    private Boolean zzey;
    private AccountManager zzez;
    private Boolean zzfa;
    private long zzfb;

    zzad(zzby zzbyVar) {
        super(zzbyVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzcu
    protected final boolean zzak() {
        Calendar calendar = Calendar.getInstance();
        this.zzew = TimeUnit.MINUTES.convert(calendar.get(15) + calendar.get(16), TimeUnit.MILLISECONDS);
        Locale locale = Locale.getDefault();
        String lowerCase = locale.getLanguage().toLowerCase(Locale.ENGLISH);
        String lowerCase2 = locale.getCountry().toLowerCase(Locale.ENGLISH);
        StringBuilder sb = new StringBuilder(String.valueOf(lowerCase).length() + 1 + String.valueOf(lowerCase2).length());
        sb.append(lowerCase);
        sb.append("-");
        sb.append(lowerCase2);
        this.zzex = sb.toString();
        return false;
    }

    public final long zzco() {
        zzah();
        return this.zzew;
    }

    public final String zzcp() {
        zzah();
        return this.zzex;
    }

    public final boolean zzj(Context context) throws PackageManager.NameNotFoundException {
        if (this.zzey == null) {
            zzag();
            this.zzey = false;
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager != null) {
                    packageManager.getPackageInfo("com.google.android.gms", 128);
                    this.zzey = true;
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return this.zzey.booleanValue();
    }

    final long zzcq() {
        zzq();
        return this.zzfb;
    }

    final void zzcr() {
        zzq();
        this.zzfa = null;
        this.zzfb = 0L;
    }

    final boolean zzcs() throws IllegalStateException, OperationCanceledException, IOException, AuthenticatorException {
        Account[] result;
        zzq();
        long jCurrentTimeMillis = zzz().currentTimeMillis();
        if (jCurrentTimeMillis - this.zzfb > DateUtils.ONE_DAY) {
            this.zzfa = null;
        }
        Boolean bool = this.zzfa;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (ContextCompat.checkSelfPermission(getContext(), "android.permission.GET_ACCOUNTS") != 0) {
            zzad().zzde().zzaq("Permission error checking for dasher/unicorn accounts");
            this.zzfb = jCurrentTimeMillis;
            this.zzfa = false;
            return false;
        }
        if (this.zzez == null) {
            this.zzez = AccountManager.get(getContext());
        }
        try {
            result = this.zzez.getAccountsByTypeAndFeatures("com.google", new String[]{"service_HOSTED"}, null, null).getResult();
        } catch (AuthenticatorException | OperationCanceledException | IOException e) {
            zzad().zzdb().zza("Exception checking account types", e);
        }
        if (result != null && result.length > 0) {
            this.zzfa = true;
            this.zzfb = jCurrentTimeMillis;
            return true;
        }
        Account[] result2 = this.zzez.getAccountsByTypeAndFeatures("com.google", new String[]{"service_uca"}, null, null).getResult();
        if (result2 != null && result2.length > 0) {
            this.zzfa = true;
            this.zzfb = jCurrentTimeMillis;
            return true;
        }
        this.zzfb = jCurrentTimeMillis;
        this.zzfa = false;
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ void zzn() {
        super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ void zzo() {
        super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ void zzp() {
        super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ void zzq() {
        super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzad zzy() {
        return super.zzy();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ Clock zzz() {
        return super.zzz();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzas zzaa() {
        return super.zzaa();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzgd zzab() {
        return super.zzab();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ zzbt zzac() {
        return super.zzac();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ zzau zzad() {
        return super.zzad();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzbf zzae() {
        return super.zzae();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzt zzaf() {
        return super.zzaf();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ zzq zzag() {
        return super.zzag();
    }
}
