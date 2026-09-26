package androidx.compose.material;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import e8.p;
import e8.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$bodyPlaceable$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ q<PaddingValues, Composer, Integer, l0> $body;
    final /* synthetic */ float $sheetPeekHeight;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$bodyPlaceable$1(q<? super PaddingValues, ? super Composer, ? super Integer, l0> qVar, float f, int i10) {
        super(2);
        this.$body = qVar;
        this.$sheetPeekHeight = f;
        this.$$dirty = i10;
    }

    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
        } else {
            this.$body.invoke(PaddingKt.e(0.0f, 0.0f, 0.0f, this.$sheetPeekHeight, 7, null), composer, Integer.valueOf(this.$$dirty & 112));
        }
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
