package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.unit.Constraints;
import e8.p;
import e8.r;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class BackdropScaffoldKt$BackdropStack$1$1$placeables$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ float $backLayerHeight;
    final /* synthetic */ long $constraints;
    final /* synthetic */ r<Constraints, Float, Composer, Integer, l0> $frontLayer;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    BackdropScaffoldKt$BackdropStack$1$1$placeables$1(r<? super Constraints, ? super Float, ? super Composer, ? super Integer, l0> rVar, long j6, float f, int i10) {
        super(2);
        this.$frontLayer = rVar;
        this.$constraints = j6;
        this.$backLayerHeight = f;
        this.$$dirty = i10;
    }

    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
        } else {
            this.$frontLayer.invoke(Constraints.b(this.$constraints), Float.valueOf(this.$backLayerHeight), composer, Integer.valueOf((this.$$dirty >> 3) & 896));
        }
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
