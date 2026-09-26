package androidx.compose.material;

import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import e8.a;
import e8.l;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes.dex */
final class DrawerKt$ModalDrawer$1$2$6 extends v implements l<SemanticsPropertyReceiver, l0> {
    final /* synthetic */ DrawerState $drawerState;
    final /* synthetic */ String $navigationMenu;
    final /* synthetic */ o0 $scope;

    /* JADX INFO: renamed from: androidx.compose.material.DrawerKt$ModalDrawer$1$2$6$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements a<Boolean> {
        final /* synthetic */ DrawerState $drawerState;
        final /* synthetic */ o0 $scope;

        /* JADX INFO: renamed from: androidx.compose.material.DrawerKt$ModalDrawer$1$2$6$1$1, reason: invalid class name and collision with other inner class name */
        @f(c = "androidx.compose.material.DrawerKt$ModalDrawer$1$2$6$1$1", f = "Drawer.kt", l = {450}, m = "invokeSuspend")
        static final class C00581 extends kotlin.coroutines.jvm.internal.l implements p<o0, d<? super l0>, Object> {
            final /* synthetic */ DrawerState $drawerState;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00581(DrawerState drawerState, d<? super C00581> dVar) {
                super(2, dVar);
                this.$drawerState = drawerState;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @NotNull
            public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
                return new C00581(this.$drawerState, dVar);
            }

            @Override // e8.p
            @Nullable
            public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
                return ((C00581) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
                    DrawerState drawerState = this.$drawerState;
                    this.label = 1;
                    if (drawerState.b(this) == objE) {
                        return objE;
                    }
                }
                return l0.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(DrawerState drawerState, o0 o0Var) {
            super(0);
            this.$drawerState = drawerState;
            this.$scope = o0Var;
        }

        @Override // e8.a
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            if (this.$drawerState.e().o().invoke(DrawerValue.Closed).booleanValue()) {
                k.d(this.$scope, null, null, new C00581(this.$drawerState, null), 3, null);
            }
            return Boolean.TRUE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DrawerKt$ModalDrawer$1$2$6(String str, DrawerState drawerState, o0 o0Var) {
        super(1);
        this.$navigationMenu = str;
        this.$drawerState = drawerState;
        this.$scope = o0Var;
    }

    public final void a(@NotNull SemanticsPropertyReceiver semantics) {
        t.j(semantics, "$this$semantics");
        SemanticsPropertiesKt.M(semantics, this.$navigationMenu);
        if (this.$drawerState.f()) {
            SemanticsPropertiesKt.j(semantics, null, new AnonymousClass1(this.$drawerState, this.$scope), 1, null);
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        a(semanticsPropertyReceiver);
        return l0.INSTANCE;
    }
}
