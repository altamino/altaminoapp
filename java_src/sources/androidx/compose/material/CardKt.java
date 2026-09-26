package androidx.compose.material;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Dp;
import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public final class CardKt {
    @Composable
    @ComposableInferredTarget
    public static final void a(@Nullable Modifier modifier, @Nullable Shape shape, long j6, long j10, @Nullable BorderStroke borderStroke, float f, @NotNull p<? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        t.j(content, "content");
        composer.G(1956755640);
        Modifier modifier2 = (i11 & 1) != 0 ? Modifier.Companion : modifier;
        Shape shapeB = (i11 & 2) != 0 ? MaterialTheme.INSTANCE.b(composer, 6).b() : shape;
        long jN = (i11 & 4) != 0 ? MaterialTheme.INSTANCE.a(composer, 6).n() : j6;
        SurfaceKt.b(modifier2, shapeB, jN, (i11 & 8) != 0 ? ColorsKt.b(jN, composer, (i10 >> 6) & 14) : j10, (i11 & 16) != 0 ? null : borderStroke, (i11 & 32) != 0 ? Dp.f(1) : f, content, composer, (i10 & 14) | (i10 & 112) | (i10 & 896) | (i10 & 7168) | (57344 & i10) | (458752 & i10) | (i10 & 3670016), 0);
        composer.Q();
    }
}
