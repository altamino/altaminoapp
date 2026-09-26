package androidx.compose.ui.platform;

import androidx.compose.runtime.Composer;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
final class WindowInfoKt$WindowFocusObserver$2 extends kotlin.jvm.internal.v implements e8.p<Composer, Integer, w7.l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ e8.l<Boolean, w7.l0> $onWindowFocusChanged;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    WindowInfoKt$WindowFocusObserver$2(e8.l<? super Boolean, w7.l0> lVar, int i10) {
        super(2);
        this.$onWindowFocusChanged = lVar;
        this.$$changed = i10;
    }

    public final void a(@Nullable Composer composer, int i10) {
        WindowInfoKt.a(this.$onWindowFocusChanged, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ w7.l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return w7.l0.INSTANCE;
    }
}
