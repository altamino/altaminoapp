package androidx.room;

import android.os.CancellationSignal;
import androidx.sqlite.db.SupportSQLiteCompat;
import kotlinx.coroutines.b2;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes11.dex */
final class CoroutinesRoom$Companion$execute$4$1 extends kotlin.jvm.internal.v implements e8.l<Throwable, l0> {
    final /* synthetic */ CancellationSignal $cancellationSignal;
    final /* synthetic */ b2 $job;

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
        invoke2(th);
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@Nullable Throwable th) {
        SupportSQLiteCompat.Api16Impl.a(this.$cancellationSignal);
        b2.a.a(this.$job, null, 1, null);
    }
}
