package androidx.compose.material;

import androidx.compose.foundation.layout.RowScope;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import e8.a;
import e8.p;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class SnackbarKt$Snackbar$actionComposable$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ long $actionColor;
    final /* synthetic */ String $actionLabel;
    final /* synthetic */ SnackbarData $snackbarData;

    /* JADX INFO: renamed from: androidx.compose.material.SnackbarKt$Snackbar$actionComposable$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements a<l0> {
        final /* synthetic */ SnackbarData $snackbarData;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(SnackbarData snackbarData) {
            super(0);
            this.$snackbarData = snackbarData;
        }

        @Override // e8.a
        public /* bridge */ /* synthetic */ l0 invoke() {
            invoke2();
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            this.$snackbarData.a();
        }
    }

    /* JADX INFO: renamed from: androidx.compose.material.SnackbarKt$Snackbar$actionComposable$1$2, reason: invalid class name */
    static final class AnonymousClass2 extends v implements q<RowScope, Composer, Integer, l0> {
        final /* synthetic */ String $actionLabel;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(String str) {
            super(3);
            this.$actionLabel = str;
        }

        @ComposableTarget
        @Composable
        public final void a(@NotNull RowScope TextButton, @Nullable Composer composer, int i10) {
            t.j(TextButton, "$this$TextButton");
            if ((i10 & 81) == 16 && composer.b()) {
                composer.g();
            } else {
                TextKt.c(this.$actionLabel, null, 0L, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, null, null, composer, 0, 0, 65534);
            }
        }

        @Override // e8.q
        public /* bridge */ /* synthetic */ l0 invoke(RowScope rowScope, Composer composer, Integer num) {
            a(rowScope, composer, num.intValue());
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SnackbarKt$Snackbar$actionComposable$1(long j6, int i10, SnackbarData snackbarData, String str) {
        super(2);
        this.$actionColor = j6;
        this.$$dirty = i10;
        this.$snackbarData = snackbarData;
        this.$actionLabel = str;
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
        } else {
            ButtonKt.d(new AnonymousClass1(this.$snackbarData), null, false, null, null, null, null, ButtonDefaults.INSTANCE.i(0L, this.$actionColor, 0L, composer, ((this.$$dirty >> 15) & 112) | 3072, 5), null, ComposableLambdaKt.b(composer, -929149933, true, new AnonymousClass2(this.$actionLabel)), composer, 805306368, 382);
        }
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
