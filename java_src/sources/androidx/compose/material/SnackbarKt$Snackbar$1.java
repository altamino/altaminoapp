package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class SnackbarKt$Snackbar$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ p<Composer, Integer, l0> $action;
    final /* synthetic */ boolean $actionOnNewLine;
    final /* synthetic */ p<Composer, Integer, l0> $content;

    /* JADX INFO: renamed from: androidx.compose.material.SnackbarKt$Snackbar$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ int $$dirty;
        final /* synthetic */ p<Composer, Integer, l0> $action;
        final /* synthetic */ boolean $actionOnNewLine;
        final /* synthetic */ p<Composer, Integer, l0> $content;

        /* JADX INFO: renamed from: androidx.compose.material.SnackbarKt$Snackbar$1$1$1, reason: invalid class name and collision with other inner class name */
        static final class C00711 extends v implements p<Composer, Integer, l0> {
            final /* synthetic */ int $$dirty;
            final /* synthetic */ p<Composer, Integer, l0> $action;
            final /* synthetic */ boolean $actionOnNewLine;
            final /* synthetic */ p<Composer, Integer, l0> $content;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C00711(p<? super Composer, ? super Integer, l0> pVar, p<? super Composer, ? super Integer, l0> pVar2, int i10, boolean z6) {
                super(2);
                this.$action = pVar;
                this.$content = pVar2;
                this.$$dirty = i10;
                this.$actionOnNewLine = z6;
            }

            @ComposableTarget
            @Composable
            public final void a(@Nullable Composer composer, int i10) {
                if ((i10 & 11) == 2 && composer.b()) {
                    composer.g();
                    return;
                }
                if (this.$action == null) {
                    composer.G(59708346);
                    SnackbarKt.e(this.$content, composer, (this.$$dirty >> 21) & 14);
                    composer.Q();
                    return;
                }
                if (this.$actionOnNewLine) {
                    composer.G(59708411);
                    p<Composer, Integer, l0> pVar = this.$content;
                    p<Composer, Integer, l0> pVar2 = this.$action;
                    int i11 = this.$$dirty;
                    SnackbarKt.a(pVar, pVar2, composer, (i11 & 112) | ((i11 >> 21) & 14));
                    composer.Q();
                    return;
                }
                composer.G(59708478);
                p<Composer, Integer, l0> pVar3 = this.$content;
                p<Composer, Integer, l0> pVar4 = this.$action;
                int i12 = this.$$dirty;
                SnackbarKt.b(pVar3, pVar4, composer, (i12 & 112) | ((i12 >> 21) & 14));
                composer.Q();
            }

            @Override // e8.p
            public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
                a(composer, num.intValue());
                return l0.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(p<? super Composer, ? super Integer, l0> pVar, p<? super Composer, ? super Integer, l0> pVar2, int i10, boolean z6) {
            super(2);
            this.$action = pVar;
            this.$content = pVar2;
            this.$$dirty = i10;
            this.$actionOnNewLine = z6;
        }

        @ComposableTarget
        @Composable
        public final void a(@Nullable Composer composer, int i10) {
            if ((i10 & 11) == 2 && composer.b()) {
                composer.g();
            } else {
                TextKt.a(MaterialTheme.INSTANCE.c(composer, 6).b(), ComposableLambdaKt.b(composer, 225114541, true, new C00711(this.$action, this.$content, this.$$dirty, this.$actionOnNewLine)), composer, 48);
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
    SnackbarKt$Snackbar$1(p<? super Composer, ? super Integer, l0> pVar, p<? super Composer, ? super Integer, l0> pVar2, int i10, boolean z6) {
        super(2);
        this.$action = pVar;
        this.$content = pVar2;
        this.$$dirty = i10;
        this.$actionOnNewLine = z6;
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
        } else {
            CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(ContentAlpha.INSTANCE.c(composer, 6)))}, ComposableLambdaKt.b(composer, 1939362236, true, new AnonymousClass1(this.$action, this.$content, this.$$dirty, this.$actionOnNewLine)), composer, 56);
        }
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
