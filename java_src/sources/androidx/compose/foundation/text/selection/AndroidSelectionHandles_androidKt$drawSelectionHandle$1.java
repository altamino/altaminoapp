package androidx.compose.foundation.text.selection;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.draw.DrawResult;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import e8.l;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class AndroidSelectionHandles_androidKt$drawSelectionHandle$1 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ ResolvedTextDirection $direction;
    final /* synthetic */ boolean $handlesCrossed;
    final /* synthetic */ boolean $isStartHandle;

    /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt$drawSelectionHandle$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<CacheDrawScope, DrawResult> {
        final /* synthetic */ ResolvedTextDirection $direction;
        final /* synthetic */ long $handleColor;
        final /* synthetic */ boolean $handlesCrossed;
        final /* synthetic */ boolean $isStartHandle;

        /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt$drawSelectionHandle$1$1$1, reason: invalid class name and collision with other inner class name */
        static final class C00461 extends v implements l<ContentDrawScope, l0> {
            final /* synthetic */ ColorFilter $colorFilter;
            final /* synthetic */ ResolvedTextDirection $direction;
            final /* synthetic */ ImageBitmap $handleImage;
            final /* synthetic */ boolean $handlesCrossed;
            final /* synthetic */ boolean $isStartHandle;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00461(boolean z6, ResolvedTextDirection resolvedTextDirection, boolean z10, ImageBitmap imageBitmap, ColorFilter colorFilter) {
                super(1);
                this.$isStartHandle = z6;
                this.$direction = resolvedTextDirection;
                this.$handlesCrossed = z10;
                this.$handleImage = imageBitmap;
                this.$colorFilter = colorFilter;
            }

            public final void a(@NotNull ContentDrawScope onDrawWithContent) {
                t.j(onDrawWithContent, "$this$onDrawWithContent");
                onDrawWithContent.Z();
                if (!AndroidSelectionHandles_androidKt.h(this.$isStartHandle, this.$direction, this.$handlesCrossed)) {
                    androidx.compose.ui.graphics.drawscope.a.g(onDrawWithContent, this.$handleImage, 0L, 0.0f, null, this.$colorFilter, 0, 46, null);
                    return;
                }
                ImageBitmap imageBitmap = this.$handleImage;
                ColorFilter colorFilter = this.$colorFilter;
                long jW = onDrawWithContent.W();
                DrawContext drawContextT = onDrawWithContent.T();
                long jC = drawContextT.c();
                drawContextT.a().r();
                drawContextT.d().d(-1.0f, 1.0f, jW);
                androidx.compose.ui.graphics.drawscope.a.g(onDrawWithContent, imageBitmap, 0L, 0.0f, null, colorFilter, 0, 46, null);
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
        AnonymousClass1(long j6, boolean z6, ResolvedTextDirection resolvedTextDirection, boolean z10) {
            super(1);
            this.$handleColor = j6;
            this.$isStartHandle = z6;
            this.$direction = resolvedTextDirection;
            this.$handlesCrossed = z10;
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DrawResult invoke(@NotNull CacheDrawScope drawWithCache) {
            t.j(drawWithCache, "$this$drawWithCache");
            return drawWithCache.m(new C00461(this.$isStartHandle, this.$direction, this.$handlesCrossed, AndroidSelectionHandles_androidKt.e(drawWithCache, Size.i(drawWithCache.c()) / 2.0f), ColorFilter.Companion.b(ColorFilter.Companion, this.$handleColor, 0, 2, null)));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidSelectionHandles_androidKt$drawSelectionHandle$1(boolean z6, ResolvedTextDirection resolvedTextDirection, boolean z10) {
        super(3);
        this.$isStartHandle = z6;
        this.$direction = resolvedTextDirection;
        this.$handlesCrossed = z10;
    }

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(-1538687176);
        Modifier modifierB = composed.B(DrawModifierKt.b(Modifier.Companion, new AnonymousClass1(((TextSelectionColors) composer.x(TextSelectionColorsKt.b())).b(), this.$isStartHandle, this.$direction, this.$handlesCrossed)));
        composer.Q();
        return modifierB;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
