package androidx.compose.material;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import e8.p;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ScaffoldKt$Scaffold$child$1 extends v implements q<Modifier, Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ int $$dirty1;
    final /* synthetic */ long $backgroundColor;
    final /* synthetic */ p<Composer, Integer, l0> $bottomBar;
    final /* synthetic */ q<PaddingValues, Composer, Integer, l0> $content;
    final /* synthetic */ long $contentColor;
    final /* synthetic */ p<Composer, Integer, l0> $floatingActionButton;
    final /* synthetic */ int $floatingActionButtonPosition;
    final /* synthetic */ boolean $isFloatingActionButtonDocked;
    final /* synthetic */ ScaffoldState $scaffoldState;
    final /* synthetic */ q<SnackbarHostState, Composer, Integer, l0> $snackbarHost;
    final /* synthetic */ p<Composer, Integer, l0> $topBar;

    /* JADX INFO: renamed from: androidx.compose.material.ScaffoldKt$Scaffold$child$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ int $$dirty;
        final /* synthetic */ int $$dirty1;
        final /* synthetic */ p<Composer, Integer, l0> $bottomBar;
        final /* synthetic */ q<PaddingValues, Composer, Integer, l0> $content;
        final /* synthetic */ p<Composer, Integer, l0> $floatingActionButton;
        final /* synthetic */ int $floatingActionButtonPosition;
        final /* synthetic */ boolean $isFloatingActionButtonDocked;
        final /* synthetic */ ScaffoldState $scaffoldState;
        final /* synthetic */ q<SnackbarHostState, Composer, Integer, l0> $snackbarHost;
        final /* synthetic */ p<Composer, Integer, l0> $topBar;

        /* JADX INFO: renamed from: androidx.compose.material.ScaffoldKt$Scaffold$child$1$1$1, reason: invalid class name and collision with other inner class name */
        static final class C00631 extends v implements p<Composer, Integer, l0> {
            final /* synthetic */ int $$dirty;
            final /* synthetic */ ScaffoldState $scaffoldState;
            final /* synthetic */ q<SnackbarHostState, Composer, Integer, l0> $snackbarHost;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C00631(q<? super SnackbarHostState, ? super Composer, ? super Integer, l0> qVar, ScaffoldState scaffoldState, int i10) {
                super(2);
                this.$snackbarHost = qVar;
                this.$scaffoldState = scaffoldState;
                this.$$dirty = i10;
            }

            @ComposableTarget
            @Composable
            public final void a(@Nullable Composer composer, int i10) {
                if ((i10 & 11) == 2 && composer.b()) {
                    composer.g();
                } else {
                    this.$snackbarHost.invoke(this.$scaffoldState.b(), composer, Integer.valueOf((this.$$dirty >> 9) & 112));
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
        AnonymousClass1(boolean z6, int i10, p<? super Composer, ? super Integer, l0> pVar, q<? super PaddingValues, ? super Composer, ? super Integer, l0> qVar, p<? super Composer, ? super Integer, l0> pVar2, p<? super Composer, ? super Integer, l0> pVar3, int i11, int i12, q<? super SnackbarHostState, ? super Composer, ? super Integer, l0> qVar2, ScaffoldState scaffoldState) {
            super(2);
            this.$isFloatingActionButtonDocked = z6;
            this.$floatingActionButtonPosition = i10;
            this.$topBar = pVar;
            this.$content = qVar;
            this.$floatingActionButton = pVar2;
            this.$bottomBar = pVar3;
            this.$$dirty = i11;
            this.$$dirty1 = i12;
            this.$snackbarHost = qVar2;
            this.$scaffoldState = scaffoldState;
        }

        @ComposableTarget
        @Composable
        public final void a(@Nullable Composer composer, int i10) {
            if ((i10 & 11) == 2 && composer.b()) {
                composer.g();
                return;
            }
            boolean z6 = this.$isFloatingActionButtonDocked;
            int i11 = this.$floatingActionButtonPosition;
            p<Composer, Integer, l0> pVar = this.$topBar;
            q<PaddingValues, Composer, Integer, l0> qVar = this.$content;
            ComposableLambda composableLambdaB = ComposableLambdaKt.b(composer, 533782017, true, new C00631(this.$snackbarHost, this.$scaffoldState, this.$$dirty));
            p<Composer, Integer, l0> pVar2 = this.$floatingActionButton;
            p<Composer, Integer, l0> pVar3 = this.$bottomBar;
            int i12 = this.$$dirty;
            ScaffoldKt.b(z6, i11, pVar, qVar, composableLambdaB, pVar2, pVar3, composer, ((i12 >> 21) & 14) | CpioConstants.C_ISBLK | ((i12 >> 15) & 112) | (i12 & 896) | ((this.$$dirty1 >> 12) & 7168) | (458752 & i12) | ((i12 << 9) & 3670016));
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
            a(composer, num.intValue());
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ScaffoldKt$Scaffold$child$1(long j6, long j10, int i10, boolean z6, int i11, p<? super Composer, ? super Integer, l0> pVar, q<? super PaddingValues, ? super Composer, ? super Integer, l0> qVar, p<? super Composer, ? super Integer, l0> pVar2, p<? super Composer, ? super Integer, l0> pVar3, int i12, q<? super SnackbarHostState, ? super Composer, ? super Integer, l0> qVar2, ScaffoldState scaffoldState) {
        super(3);
        this.$backgroundColor = j6;
        this.$contentColor = j10;
        this.$$dirty1 = i10;
        this.$isFloatingActionButtonDocked = z6;
        this.$floatingActionButtonPosition = i11;
        this.$topBar = pVar;
        this.$content = qVar;
        this.$floatingActionButton = pVar2;
        this.$bottomBar = pVar3;
        this.$$dirty = i12;
        this.$snackbarHost = qVar2;
        this.$scaffoldState = scaffoldState;
    }

    @ComposableTarget
    @Composable
    public final void a(@NotNull Modifier childModifier, @Nullable Composer composer, int i10) {
        int i11;
        t.j(childModifier, "childModifier");
        if ((i10 & 14) == 0) {
            i11 = i10 | (composer.k(childModifier) ? 4 : 2);
        } else {
            i11 = i10;
        }
        if ((i11 & 91) == 18 && composer.b()) {
            composer.g();
            return;
        }
        long j6 = this.$backgroundColor;
        long j10 = this.$contentColor;
        ComposableLambda composableLambdaB = ComposableLambdaKt.b(composer, -1128984656, true, new AnonymousClass1(this.$isFloatingActionButtonDocked, this.$floatingActionButtonPosition, this.$topBar, this.$content, this.$floatingActionButton, this.$bottomBar, this.$$dirty, this.$$dirty1, this.$snackbarHost, this.$scaffoldState));
        int i12 = 1572864 | (i11 & 14);
        int i13 = this.$$dirty1;
        SurfaceKt.b(childModifier, null, j6, j10, null, 0.0f, composableLambdaB, composer, i12 | ((i13 >> 9) & 896) | ((i13 >> 9) & 7168), 50);
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(Modifier modifier, Composer composer, Integer num) {
        a(modifier, composer, num.intValue());
        return l0.INSTANCE;
    }
}
