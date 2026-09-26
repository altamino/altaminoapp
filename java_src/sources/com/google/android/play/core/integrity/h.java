package com.google.android.play.core.integrity;

import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes7.dex */
final class h extends com.google.android.play.integrity.internal.y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ byte[] f1402a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Long f1403b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ TaskCompletionSource f1404c;
    final /* synthetic */ d d;
    final /* synthetic */ k e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    h(k kVar, TaskCompletionSource taskCompletionSource, byte[] bArr, Long l, Parcelable parcelable, TaskCompletionSource taskCompletionSource2, d dVar) {
        super(taskCompletionSource);
        this.e = kVar;
        this.f1402a = bArr;
        this.f1403b = l;
        this.f1404c = taskCompletionSource2;
        this.d = dVar;
    }

    @Override // com.google.android.play.integrity.internal.y
    public final void a(Exception exc) {
        if (exc instanceof com.google.android.play.integrity.internal.e) {
            super.a(new c(-9, exc));
        } else {
            super.a(exc);
        }
    }

    @Override // com.google.android.play.integrity.internal.y
    protected final void b() {
        try {
            ((com.google.android.play.integrity.internal.u) this.e.f1408a.e()).k0(k.a(this.e, this.f1402a, this.f1403b, null), new j(this.e, this.f1404c));
        } catch (RemoteException e) {
            this.e.f1409b.b(e, "requestIntegrityToken(%s)", this.d);
            this.f1404c.trySetException(new c(-100, e));
        }
    }
}
