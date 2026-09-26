package androidx.compose.foundation.text;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.a;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import e8.p;
import e8.q;
import j8.o;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.b;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes6.dex */
final class TextFieldCursorKt$cursor$1 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ Brush $cursorBrush;
    final /* synthetic */ OffsetMapping $offsetMapping;
    final /* synthetic */ TextFieldState $state;
    final /* synthetic */ TextFieldValue $value;

    /* JADX INFO: renamed from: androidx.compose.foundation.text.TextFieldCursorKt$cursor$1$1, reason: invalid class name */
    @f(c = "androidx.compose.foundation.text.TextFieldCursorKt$cursor$1$1", f = "TextFieldCursor.kt", l = {49}, m = "invokeSuspend")
    static final class AnonymousClass1 extends l implements p<o0, d<? super l0>, Object> {
        final /* synthetic */ Animatable<Float, AnimationVector1D> $cursorAlpha;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Animatable<Float, AnimationVector1D> animatable, d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.$cursorAlpha = animatable;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            return new AnonymousClass1(this.$cursorAlpha, dVar);
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
            return ((AnonymousClass1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    w.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                w.b(obj);
                Animatable<Float, AnimationVector1D> animatable = this.$cursorAlpha;
                Float fC = b.c(0.0f);
                AnimationSpec animationSpecC = TextFieldCursorKt.c();
                this.label = 1;
                if (Animatable.f(animatable, fC, animationSpecC, null, null, this, 12, null) == objE) {
                    return objE;
                }
            }
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.TextFieldCursorKt$cursor$1$2, reason: invalid class name */
    static final class AnonymousClass2 extends v implements e8.l<ContentDrawScope, l0> {
        final /* synthetic */ Animatable<Float, AnimationVector1D> $cursorAlpha;
        final /* synthetic */ Brush $cursorBrush;
        final /* synthetic */ OffsetMapping $offsetMapping;
        final /* synthetic */ TextFieldState $state;
        final /* synthetic */ TextFieldValue $value;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Animatable<Float, AnimationVector1D> animatable, OffsetMapping offsetMapping, TextFieldValue textFieldValue, TextFieldState textFieldState, Brush brush) {
            super(1);
            this.$cursorAlpha = animatable;
            this.$offsetMapping = offsetMapping;
            this.$value = textFieldValue;
            this.$state = textFieldState;
            this.$cursorBrush = brush;
        }

        public final void a(@NotNull ContentDrawScope drawWithContent) {
            Rect rect;
            TextLayoutResult textLayoutResultI;
            t.j(drawWithContent, "$this$drawWithContent");
            drawWithContent.Z();
            float fM = o.m(this.$cursorAlpha.n().floatValue(), 0.0f, 1.0f);
            if (fM == 0.0f) {
                return;
            }
            int iB = this.$offsetMapping.b(TextRange.n(this.$value.g()));
            TextLayoutResultProxy textLayoutResultProxyG = this.$state.g();
            if (textLayoutResultProxyG == null || (textLayoutResultI = textLayoutResultProxyG.i()) == null || (rect = textLayoutResultI.d(iB)) == null) {
                rect = new Rect(0.0f, 0.0f, 0.0f, 0.0f);
            }
            float fH0 = drawWithContent.H0(TextFieldCursorKt.d());
            float f = fH0 / 2;
            float fI = o.i(rect.j() + f, Size.i(drawWithContent.c()) - f);
            a.h(drawWithContent, this.$cursorBrush, OffsetKt.a(fI, rect.m()), OffsetKt.a(fI, rect.e()), fH0, 0, null, fM, null, 0, 432, null);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(ContentDrawScope contentDrawScope) {
            a(contentDrawScope);
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TextFieldCursorKt$cursor$1(Brush brush, TextFieldState textFieldState, TextFieldValue textFieldValue, OffsetMapping offsetMapping) {
        super(3);
        this.$cursorBrush = brush;
        this.$state = textFieldState;
        this.$value = textFieldValue;
        this.$offsetMapping = offsetMapping;
    }

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        Modifier modifierC;
        t.j(composed, "$this$composed");
        composer.G(1634330012);
        composer.G(-492369756);
        Object objH = composer.H();
        if (objH == Composer.Companion.a()) {
            objH = AnimatableKt.b(1.0f, 0.0f, 2, null);
            composer.z(objH);
        }
        composer.Q();
        Animatable animatable = (Animatable) objH;
        Brush brush = this.$cursorBrush;
        boolean z6 = ((brush instanceof SolidColor) && ((SolidColor) brush).c() == Color.Companion.f()) ? false : true;
        if (this.$state.d() && TextRange.h(this.$value.g()) && z6) {
            EffectsKt.f(this.$cursorBrush, this.$value.e(), TextRange.b(this.$value.g()), new AnonymousClass1(animatable, null), composer, 0);
            modifierC = DrawModifierKt.c(composed, new AnonymousClass2(animatable, this.$offsetMapping, this.$value, this.$state, this.$cursorBrush));
        } else {
            modifierC = Modifier.Companion;
        }
        composer.Q();
        return modifierC;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
