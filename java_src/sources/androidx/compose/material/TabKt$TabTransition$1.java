package androidx.compose.material;

import androidx.compose.runtime.Composer;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class TabKt$TabTransition$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ long $activeColor;
    final /* synthetic */ p<Composer, Integer, l0> $content;
    final /* synthetic */ long $inactiveColor;
    final /* synthetic */ boolean $selected;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    TabKt$TabTransition$1(long j6, long j10, boolean z6, p<? super Composer, ? super Integer, l0> pVar, int i10) {
        super(2);
        this.$activeColor = j6;
        this.$inactiveColor = j10;
        this.$selected = z6;
        this.$content = pVar;
        this.$$changed = i10;
    }

    public final void a(@Nullable Composer composer, int i10) {
        TabKt.e(this.$activeColor, this.$inactiveColor, this.$selected, this.$content, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
