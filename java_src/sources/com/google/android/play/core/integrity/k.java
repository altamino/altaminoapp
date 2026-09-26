package com.google.android.play.core.integrity;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.Base64;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.android.play.integrity.internal.e0;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    @VisibleForTesting
    final com.google.android.play.integrity.internal.d f1408a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.play.integrity.internal.x f1409b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f1410c;

    static /* bridge */ /* synthetic */ Bundle a(k kVar, byte[] bArr, Long l, Parcelable parcelable) {
        Bundle bundle = new Bundle();
        bundle.putString("package.name", kVar.f1410c);
        bundle.putByteArray("nonce", bArr);
        bundle.putInt("playcore.integrity.version.major", 1);
        bundle.putInt("playcore.integrity.version.minor", 2);
        bundle.putInt("playcore.integrity.version.patch", 0);
        if (l != null) {
            bundle.putLong("cloud.prj", l.longValue());
        }
        ArrayList arrayList = new ArrayList();
        com.google.android.play.integrity.internal.p.b(3, arrayList);
        bundle.putParcelableArrayList("event_timestamps", new ArrayList<>(com.google.android.play.integrity.internal.p.a(arrayList)));
        return bundle;
    }

    public final Task b(d dVar) {
        if (this.f1408a == null) {
            return Tasks.forException(new c(-2, null));
        }
        try {
            byte[] bArrDecode = Base64.decode(dVar.d(), 10);
            Long lC = dVar.c();
            dVar.a();
            this.f1409b.c("requestIntegrityToken(%s)", dVar);
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            this.f1408a.t(new h(this, taskCompletionSource, bArrDecode, lC, null, taskCompletionSource, dVar), taskCompletionSource);
            return taskCompletionSource.getTask();
        } catch (IllegalArgumentException e) {
            return Tasks.forException(new c(-13, e));
        }
    }

    k(Context context, com.google.android.play.integrity.internal.x xVar) {
        this.f1410c = context.getPackageName();
        this.f1409b = xVar;
        if (!com.google.android.play.integrity.internal.h.a(context)) {
            xVar.a("Phonesky is not installed.", new Object[0]);
            this.f1408a = null;
        } else {
            this.f1408a = new com.google.android.play.integrity.internal.d(context, xVar, "IntegrityService", l.f1411a, new e0() { // from class: com.google.android.play.core.integrity.g
                @Override // com.google.android.play.integrity.internal.e0
                public final Object a(IBinder iBinder) {
                    return com.google.android.play.integrity.internal.t.y1(iBinder);
                }
            }, null);
        }
    }
}
