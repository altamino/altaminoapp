package androidx.compose.ui.window;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class AndroidDialog_androidKt$Dialog$dialog$1$1$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ State<p<Composer, Integer, l0>> $currentContent$delegate;

    /* JADX INFO: renamed from: androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$dialog$1$1$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<SemanticsPropertyReceiver, l0> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(1);
        }

        public final void a(@NotNull SemanticsPropertyReceiver semantics) {
            t.j(semantics, "$this$semantics");
            SemanticsPropertiesKt.g(semantics);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
            a(semanticsPropertyReceiver);
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$dialog$1$1$1$2, reason: invalid class name */
    static final class AnonymousClass2 extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ State<p<Composer, Integer, l0>> $currentContent$delegate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(State<? extends p<? super Composer, ? super Integer, l0>> state) {
            super(2);
            this.$currentContent$delegate = state;
        }

        @ComposableTarget
        @Composable
        public final void a(@Nullable Composer composer, int i10) {
            if ((i10 & 11) == 2 && composer.b()) {
                composer.g();
            } else {
                AndroidDialog_androidKt.b(this.$currentContent$delegate).invoke(composer, 0);
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
    AndroidDialog_androidKt$Dialog$dialog$1$1$1(State<? extends p<? super Composer, ? super Integer, l0>> state) {
        super(2);
        this.$currentContent$delegate = state;
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
        } else {
            AndroidDialog_androidKt.c(SemanticsModifierKt.c(Modifier.Companion, false, AnonymousClass1.INSTANCE, 1, null), ComposableLambdaKt.b(composer, -533674951, true, new AnonymousClass2(this.$currentContent$delegate)), composer, 48, 0);
        }
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
