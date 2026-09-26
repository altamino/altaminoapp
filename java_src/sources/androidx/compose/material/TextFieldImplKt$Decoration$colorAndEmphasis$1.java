package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.graphics.Color;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
final class TextFieldImplKt$Decoration$colorAndEmphasis$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ p<Composer, Integer, l0> $content;
    final /* synthetic */ Float $contentAlpha;
    final /* synthetic */ long $contentColor;

    /* JADX INFO: renamed from: androidx.compose.material.TextFieldImplKt$Decoration$colorAndEmphasis$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ int $$dirty;
        final /* synthetic */ p<Composer, Integer, l0> $content;
        final /* synthetic */ Float $contentAlpha;
        final /* synthetic */ long $contentColor;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Float f, p<? super Composer, ? super Integer, l0> pVar, int i10, long j6) {
            super(2);
            this.$contentAlpha = f;
            this.$content = pVar;
            this.$$dirty = i10;
            this.$contentColor = j6;
        }

        @Composable
        public final void a(@Nullable Composer composer, int i10) {
            if ((i10 & 11) == 2 && composer.b()) {
                composer.g();
                return;
            }
            if (this.$contentAlpha != null) {
                composer.G(-452622131);
                CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(this.$contentAlpha)}, this.$content, composer, ((this.$$dirty >> 6) & 112) | 8);
                composer.Q();
            } else {
                composer.G(-452621951);
                CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(Color.o(this.$contentColor)))}, this.$content, composer, ((this.$$dirty >> 6) & 112) | 8);
                composer.Q();
            }
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
            a(composer, num.intValue());
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    TextFieldImplKt$Decoration$colorAndEmphasis$1(long j6, Float f, p<? super Composer, ? super Integer, l0> pVar, int i10) {
        super(2);
        this.$contentColor = j6;
        this.$contentAlpha = f;
        this.$content = pVar;
        this.$$dirty = i10;
    }

    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
        } else {
            CompositionLocalKt.b(new ProvidedValue[]{ContentColorKt.a().c(Color.h(this.$contentColor))}, ComposableLambdaKt.b(composer, -1132188434, true, new AnonymousClass1(this.$contentAlpha, this.$content, this.$$dirty, this.$contentColor)), composer, 56);
        }
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
