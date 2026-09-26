package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.text.TextStyle;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ListItemKt$applyTextStyle$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ float $contentAlpha;
    final /* synthetic */ p<Composer, Integer, l0> $icon;
    final /* synthetic */ TextStyle $textStyle;

    /* JADX INFO: renamed from: androidx.compose.material.ListItemKt$applyTextStyle$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ p<Composer, Integer, l0> $icon;
        final /* synthetic */ TextStyle $textStyle;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(TextStyle textStyle, p<? super Composer, ? super Integer, l0> pVar) {
            super(2);
            this.$textStyle = textStyle;
            this.$icon = pVar;
        }

        @Composable
        public final void a(@Nullable Composer composer, int i10) {
            if ((i10 & 11) == 2 && composer.b()) {
                composer.g();
            } else {
                TextKt.a(this.$textStyle, this.$icon, composer, 0);
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
    ListItemKt$applyTextStyle$1(float f, TextStyle textStyle, p<? super Composer, ? super Integer, l0> pVar) {
        super(2);
        this.$contentAlpha = f;
        this.$textStyle = textStyle;
        this.$icon = pVar;
    }

    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
        } else {
            CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(this.$contentAlpha))}, ComposableLambdaKt.b(composer, 1665877604, true, new AnonymousClass1(this.$textStyle, this.$icon)), composer, 56);
        }
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
