package com.google.android.gms.internal.ads;

import com.narvii.chat.input.MentionedEditText;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes2.dex */
public final class zzcze<E, V> implements zzbbh<V> {
    private final E zzgme;
    private final String zzgmf;
    private final zzbbh<V> zzgmg;

    public zzcze(E e, String str, zzbbh<V> zzbbhVar) {
        this.zzgme = e;
        this.zzgmf = str;
        this.zzgmg = zzbbhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbbh
    public final void zza(Runnable runnable, Executor executor) {
        this.zzgmg.zza(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.zzgmg.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public final V get() throws ExecutionException, InterruptedException {
        return this.zzgmg.get();
    }

    @Override // java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return this.zzgmg.get(j, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.zzgmg.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.zzgmg.isDone();
    }

    public final E zzanb() {
        return this.zzgme;
    }

    public final String zzanc() {
        return this.zzgmf;
    }

    public final String toString() {
        String str = this.zzgmf;
        int iIdentityHashCode = System.identityHashCode(this);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
        sb.append(str);
        sb.append(MentionedEditText.DEFAULT_METION_TAG);
        sb.append(iIdentityHashCode);
        return sb.toString();
    }
}
