package androidx.compose.material;

import androidx.compose.runtime.Composer;
import e8.a;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class BackdropScaffoldKt$Scrim$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ long $color;
    final /* synthetic */ a<l0> $onDismiss;
    final /* synthetic */ boolean $visible;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BackdropScaffoldKt$Scrim$2(long j6, a<l0> aVar, boolean z6, int i10) {
        super(2);
        this.$color = j6;
        this.$onDismiss = aVar;
        this.$visible = z6;
        this.$$changed = i10;
    }

    public final void a(@Nullable Composer composer, int i10) {
        BackdropScaffoldKt.e(this.$color, this.$onDismiss, this.$visible, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
