package androidx.compose.material;

import androidx.compose.runtime.Composer;
import e8.a;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class DrawerKt$Scrim$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ long $color;
    final /* synthetic */ a<Float> $fraction;
    final /* synthetic */ a<l0> $onClose;
    final /* synthetic */ boolean $open;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DrawerKt$Scrim$2(boolean z6, a<l0> aVar, a<Float> aVar2, long j6, int i10) {
        super(2);
        this.$open = z6;
        this.$onClose = aVar;
        this.$fraction = aVar2;
        this.$color = j6;
        this.$$changed = i10;
    }

    public final void a(@Nullable Composer composer, int i10) {
        DrawerKt.e(this.$open, this.$onClose, this.$fraction, this.$color, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
