package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzag;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class zzr<T> implements Comparable<zzr<T>> {
    private final Object mLock;
    private final zzag.zza zzae;
    private final int zzaf;
    private final String zzag;
    private final int zzah;
    private zzz zzai;
    private Integer zzaj;
    private zzv zzak;
    private boolean zzal;
    private boolean zzam;
    private boolean zzan;
    private boolean zzao;
    private zzac zzap;
    private zzc zzaq;
    private zzt zzar;

    public zzr(int i, String str, zzz zzzVar) {
        Uri uri;
        String host;
        this.zzae = zzag.zza.zzbl ? new zzag.zza() : null;
        this.mLock = new Object();
        this.zzal = true;
        int iHashCode = 0;
        this.zzam = false;
        this.zzan = false;
        this.zzao = false;
        this.zzaq = null;
        this.zzaf = i;
        this.zzag = str;
        this.zzai = zzzVar;
        this.zzap = new zzh();
        if (!TextUtils.isEmpty(str) && (uri = Uri.parse(str)) != null && (host = uri.getHost()) != null) {
            iHashCode = host.hashCode();
        }
        this.zzah = iHashCode;
    }

    protected abstract zzy<T> zza(zzp zzpVar);

    protected abstract void zza(T t);

    public byte[] zzg() throws zza {
        return null;
    }

    public final int getMethod() {
        return this.zzaf;
    }

    public final int zzd() {
        return this.zzah;
    }

    public final void zzb(String str) {
        if (zzag.zza.zzbl) {
            this.zzae.zza(str, Thread.currentThread().getId());
        }
    }

    final void zzc(String str) {
        zzv zzvVar = this.zzak;
        if (zzvVar != null) {
            zzvVar.zzf(this);
        }
        if (zzag.zza.zzbl) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new zzs(this, str, id));
            } else {
                this.zzae.zza(str, id);
                this.zzae.zzc(toString());
            }
        }
    }

    final void zza(int i) {
        zzv zzvVar = this.zzak;
        if (zzvVar != null) {
            zzvVar.zza(this, i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzr<?> zza(zzv zzvVar) {
        this.zzak = zzvVar;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzr<?> zzb(int i) {
        this.zzaj = Integer.valueOf(i);
        return this;
    }

    public final String getUrl() {
        return this.zzag;
    }

    public final String zze() {
        String str = this.zzag;
        int i = this.zzaf;
        if (i == 0 || i == -1) {
            return str;
        }
        String string = Integer.toString(i);
        StringBuilder sb = new StringBuilder(String.valueOf(string).length() + 1 + String.valueOf(str).length());
        sb.append(string);
        sb.append('-');
        sb.append(str);
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzr<?> zza(zzc zzcVar) {
        this.zzaq = zzcVar;
        return this;
    }

    public final zzc zzf() {
        return this.zzaq;
    }

    public final boolean isCanceled() {
        synchronized (this.mLock) {
        }
        return false;
    }

    public Map<String, String> getHeaders() throws zza {
        return Collections.emptyMap();
    }

    public final boolean zzh() {
        return this.zzal;
    }

    public final int zzi() {
        return this.zzap.zzb();
    }

    public final zzac zzj() {
        return this.zzap;
    }

    public final void zzk() {
        synchronized (this.mLock) {
            this.zzan = true;
        }
    }

    public final boolean zzl() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzan;
        }
        return z;
    }

    public final void zzb(zzaf zzafVar) {
        zzz zzzVar;
        synchronized (this.mLock) {
            zzzVar = this.zzai;
        }
        if (zzzVar != null) {
            zzzVar.zzd(zzafVar);
        }
    }

    final void zza(zzt zztVar) {
        synchronized (this.mLock) {
            this.zzar = zztVar;
        }
    }

    final void zza(zzy<?> zzyVar) {
        zzt zztVar;
        synchronized (this.mLock) {
            zztVar = this.zzar;
        }
        if (zztVar != null) {
            zztVar.zza(this, zzyVar);
        }
    }

    final void zzm() {
        zzt zztVar;
        synchronized (this.mLock) {
            zztVar = this.zzar;
        }
        if (zztVar != null) {
            zztVar.zza(this);
        }
    }

    public String toString() {
        String strValueOf = String.valueOf(Integer.toHexString(this.zzah));
        String strConcat = strValueOf.length() != 0 ? "0x".concat(strValueOf) : new String("0x");
        isCanceled();
        String str = this.zzag;
        String strValueOf2 = String.valueOf(zzu.NORMAL);
        String strValueOf3 = String.valueOf(this.zzaj);
        StringBuilder sb = new StringBuilder("[ ] ".length() + 3 + String.valueOf(str).length() + String.valueOf(strConcat).length() + String.valueOf(strValueOf2).length() + String.valueOf(strValueOf3).length());
        sb.append("[ ] ");
        sb.append(str);
        sb.append(" ");
        sb.append(strConcat);
        sb.append(" ");
        sb.append(strValueOf2);
        sb.append(" ");
        sb.append(strValueOf3);
        return sb.toString();
    }

    @Override // java.lang.Comparable
    public /* synthetic */ int compareTo(Object obj) {
        zzr zzrVar = (zzr) obj;
        zzu zzuVar = zzu.NORMAL;
        return zzuVar == zzuVar ? this.zzaj.intValue() - zzrVar.zzaj.intValue() : zzuVar.ordinal() - zzuVar.ordinal();
    }
}
