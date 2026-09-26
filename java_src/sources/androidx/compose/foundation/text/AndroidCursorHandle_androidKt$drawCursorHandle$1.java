package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.draw.DrawResult;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawTransform;
import androidx.compose.ui.graphics.drawscope.a;
import androidx.compose.ui.graphics.drawscope.b;
import e8.l;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
final class AndroidCursorHandle_androidKt$drawCursorHandle$1 extends v implements q<Modifier, Composer, Integer, Modifier> {
    public static final AndroidCursorHandle_androidKt$drawCursorHandle$1 INSTANCE = new AndroidCursorHandle_androidKt$drawCursorHandle$1();

    /* JADX INFO: renamed from: androidx.compose.foundation.text.AndroidCursorHandle_androidKt$drawCursorHandle$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<CacheDrawScope, DrawResult> {
        final /* synthetic */ long $handleColor;

        /* JADX INFO: renamed from: androidx.compose.foundation.text.AndroidCursorHandle_androidKt$drawCursorHandle$1$1$1, reason: invalid class name and collision with other inner class name */
        static final class C00401 extends v implements l<ContentDrawScope, l0> {
            final /* synthetic */ ColorFilter $colorFilter;
            final /* synthetic */ ImageBitmap $imageBitmap;
            final /* synthetic */ float $radius;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00401(float f, ImageBitmap imageBitmap, ColorFilter colorFilter) {
                super(1);
                this.$radius = f;
                this.$imageBitmap = imageBitmap;
                this.$colorFilter = colorFilter;
            }

            public final void a(@NotNull ContentDrawScope onDrawWithContent) {
                t.j(onDrawWithContent, "$this$onDrawWithContent");
                onDrawWithContent.Z();
                float f = this.$radius;
                ImageBitmap imageBitmap = this.$imageBitmap;
                ColorFilter colorFilter = this.$colorFilter;
                DrawContext drawContextT = onDrawWithContent.T();
                long jC = drawContextT.c();
                drawContextT.a().r();
                DrawTransform drawTransformD = drawContextT.d();
                b.b(drawTransformD, f, 0.0f, 2, null);
                drawTransformD.e(45.0f, Offset.Companion.c());
                a.g(onDrawWithContent, imageBitmap, 0L, 0.0f, null, colorFilter, 0, 46, null);
                drawContextT.a().n();
                drawContextT.b(jC);
            }

            @Override // e8.l
            public /* bridge */ /* synthetic */ l0 invoke(ContentDrawScope contentDrawScope) {
                a(contentDrawScope);
                return l0.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(long j6) {
            super(1);
            this.$handleColor = j6;
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DrawResult invoke(@NotNull CacheDrawScope drawWithCache) {
            t.j(drawWithCache, "$this$drawWithCache");
            float fI = Size.i(drawWithCache.c()) / 2.0f;
            return drawWithCache.m(new C00401(fI, AndroidSelectionHandles_androidKt.e(drawWithCache, fI), ColorFilter.Companion.b(ColorFilter.Companion, this.$handleColor, 0, 2, null)));
        }
    }

    AndroidCursorHandle_androidKt$drawCursorHandle$1() {
        super(3);
    }

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(-2126899193);
        Modifier modifierB = composed.B(DrawModifierKt.b(Modifier.Companion, new AnonymousClass1(((TextSelectionColors) composer.x(TextSelectionColorsKt.b())).b())));
        composer.Q();
        return modifierB;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
