package androidx.compose.ui.layout;

import androidx.compose.runtime.Composer;
import e8.l;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class TestModifierUpdaterKt$TestModifierUpdaterLayout$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ l<TestModifierUpdater, l0> $onAttached;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    TestModifierUpdaterKt$TestModifierUpdaterLayout$2(l<? super TestModifierUpdater, l0> lVar, int i10) {
        super(2);
        this.$onAttached = lVar;
        this.$$changed = i10;
    }

    public final void a(@Nullable Composer composer, int i10) {
        TestModifierUpdaterKt.a(this.$onAttached, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
