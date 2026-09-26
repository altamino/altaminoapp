package androidx.work;

import com.google.common.util.concurrent.k;
import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
public final class ListenableFutureKt$await$2$2 extends v implements l<Throwable, l0> {
    final /* synthetic */ k<Object> $this_await;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ListenableFutureKt$await$2$2(k<Object> kVar) {
        super(1);
        this.$this_await = kVar;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
        invoke2(th);
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@Nullable Throwable th) {
        this.$this_await.cancel(false);
    }
}
