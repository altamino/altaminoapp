package androidx.compose.foundation;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.draw.DrawResult;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.node.Ref;
import androidx.compose.ui.unit.Dp;
import e8.l;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.s;

/* JADX INFO: loaded from: classes8.dex */
final class BorderKt$border$2 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ Brush $brush;
    final /* synthetic */ Shape $shape;
    final /* synthetic */ float $width;

    /* JADX INFO: renamed from: androidx.compose.foundation.BorderKt$border$2$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<CacheDrawScope, DrawResult> {
        final /* synthetic */ Ref<BorderCache> $borderCacheRef;
        final /* synthetic */ Brush $brush;
        final /* synthetic */ Shape $shape;
        final /* synthetic */ float $width;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(float f, Shape shape, Ref<BorderCache> ref, Brush brush) {
            super(1);
            this.$width = f;
            this.$shape = shape;
            this.$borderCacheRef = ref;
            this.$brush = brush;
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DrawResult invoke(@NotNull CacheDrawScope drawWithCache) {
            t.j(drawWithCache, "$this$drawWithCache");
            if (drawWithCache.H0(this.$width) < 0.0f || Size.h(drawWithCache.c()) <= 0.0f) {
                return BorderKt.j(drawWithCache);
            }
            float f = 2;
            float fMin = Math.min(Dp.i(this.$width, Dp.Companion.a()) ? 1.0f : (float) Math.ceil(drawWithCache.H0(this.$width)), (float) Math.ceil(Size.h(drawWithCache.c()) / f));
            float f6 = fMin / f;
            long jA = OffsetKt.a(f6, f6);
            long jA2 = SizeKt.a(Size.i(drawWithCache.c()) - fMin, Size.g(drawWithCache.c()) - fMin);
            boolean z6 = f * fMin > Size.h(drawWithCache.c());
            Outline outlineA = this.$shape.a(drawWithCache.c(), drawWithCache.getLayoutDirection(), drawWithCache);
            if (outlineA instanceof Outline.Generic) {
                return BorderKt.k(drawWithCache, this.$borderCacheRef, this.$brush, (Outline.Generic) outlineA, z6, fMin);
            }
            if (outlineA instanceof Outline.Rounded) {
                return BorderKt.m(drawWithCache, this.$borderCacheRef, this.$brush, (Outline.Rounded) outlineA, jA, jA2, z6, fMin);
            }
            if (outlineA instanceof Outline.Rectangle) {
                return BorderKt.l(drawWithCache, this.$brush, jA, jA2, z6, fMin);
            }
            throw new s();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BorderKt$border$2(float f, Shape shape, Brush brush) {
        super(3);
        this.$width = f;
        this.$shape = shape;
        this.$brush = brush;
    }

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(-1498088849);
        composer.G(-492369756);
        Object objH = composer.H();
        if (objH == Composer.Companion.a()) {
            objH = new Ref();
            composer.z(objH);
        }
        composer.Q();
        Modifier modifierB = composed.B(DrawModifierKt.b(Modifier.Companion, new AnonymousClass1(this.$width, this.$shape, (Ref) objH, this.$brush)));
        composer.Q();
        return modifierB;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
