package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* loaded from: classes2.dex */
interface zzgy<T> {
    boolean equals(T t, T t2);

    int hashCode(T t);

    T newInstance();

    void zza(T t, zzgx zzgxVar, zzem zzemVar) throws IOException;

    void zza(T t, zzil zzilVar) throws IOException;

    void zza(T t, byte[] bArr, int i, int i2, zzdm zzdmVar) throws IOException;

    void zzc(T t, T t2);

    void zzi(T t);

    int zzs(T t);

    boolean zzu(T t);
}
