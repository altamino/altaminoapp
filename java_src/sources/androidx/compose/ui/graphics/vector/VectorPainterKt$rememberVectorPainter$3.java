package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import e8.r;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class VectorPainterKt$rememberVectorPainter$3 extends v implements r<Float, Float, Composer, Integer, l0> {
    final /* synthetic */ ImageVector $image;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    VectorPainterKt$rememberVectorPainter$3(ImageVector imageVector) {
        super(4);
        this.$image = imageVector;
    }

    @ComposableTarget
    @Composable
    public final void a(float f, float f6, @Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
        } else {
            VectorPainterKt.a(this.$image.e(), null, composer, 0, 2);
        }
    }

    @Override // e8.r
    public /* bridge */ /* synthetic */ l0 invoke(Float f, Float f6, Composer composer, Integer num) {
        a(f.floatValue(), f6.floatValue(), composer, num.intValue());
        return l0.INSTANCE;
    }
}
