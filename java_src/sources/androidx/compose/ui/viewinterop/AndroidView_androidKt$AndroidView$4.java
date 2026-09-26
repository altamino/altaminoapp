package androidx.compose.ui.viewinterop;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import e8.l;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class AndroidView_androidKt$AndroidView$4 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ l<Context, T> $factory;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ l<T, l0> $update;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    AndroidView_androidKt$AndroidView$4(l<? super Context, ? extends T> lVar, Modifier modifier, l<? super T, l0> lVar2, int i10, int i11) {
        super(2);
        this.$factory = lVar;
        this.$modifier = modifier;
        this.$update = lVar2;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        AndroidView_androidKt.a(this.$factory, this.$modifier, this.$update, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
