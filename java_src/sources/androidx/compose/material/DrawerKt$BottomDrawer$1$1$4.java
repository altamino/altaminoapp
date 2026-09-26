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
final class DrawerKt$BottomDrawer$1$1$4 extends v implements l<SemanticsPropertyReceiver, l0> {
    final /* synthetic */ BottomDrawerState $drawerState;
    final /* synthetic */ String $navigationMenu;
    final /* synthetic */ o0 $scope;

    /* JADX INFO: renamed from: androidx.compose.material.DrawerKt$BottomDrawer$1$1$4$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements a<Boolean> {
        final /* synthetic */ BottomDrawerState $drawerState;
        final /* synthetic */ o0 $scope;

        /* JADX INFO: renamed from: androidx.compose.material.DrawerKt$BottomDrawer$1$1$4$1$1, reason: invalid class name and collision with other inner class name */
        @f(c = "androidx.compose.material.DrawerKt$BottomDrawer$1$1$4$1$1", f = "Drawer.kt", l = {580}, m = "invokeSuspend")
        static final class C00571 extends kotlin.coroutines.jvm.internal.l implements p<o0, d<? super l0>, Object> {
            final /* synthetic */ BottomDrawerState $drawerState;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00571(BottomDrawerState bottomDrawerState, d<? super C00571> dVar) {
                super(2, dVar);
                this.$drawerState = bottomDrawerState;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @NotNull
            public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
                return new C00571(this.$drawerState, dVar);
            }

            @Override // e8.p
            @Nullable
            public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
                return ((C00571) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
                    BottomDrawerState bottomDrawerState = this.$drawerState;
                    this.label = 1;
                    if (bottomDrawerState.J(this) == objE) {
                        return objE;
                    }
                }
                return l0.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(BottomDrawerState bottomDrawerState, o0 o0Var) {
            super(0);
            this.$drawerState = bottomDrawerState;
            this.$scope = o0Var;
        }

        @Override // e8.a
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            if (this.$drawerState.o().invoke(BottomDrawerValue.Closed).booleanValue()) {
                k.d(this.$scope, null, null, new C00571(this.$drawerState, null), 3, null);
            }
            return Boolean.TRUE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DrawerKt$BottomDrawer$1$1$4(String str, BottomDrawerState bottomDrawerState, o0 o0Var) {
        super(1);
        this.$navigationMenu = str;
        this.$drawerState = bottomDrawerState;
        this.$scope = o0Var;
    }

    public final void a(@NotNull SemanticsPropertyReceiver semantics) {
        t.j(semantics, "$this$semantics");
        SemanticsPropertiesKt.M(semantics, this.$navigationMenu);
        if (this.$drawerState.L()) {
            SemanticsPropertiesKt.j(semantics, null, new AnonymousClass1(this.$drawerState, this.$scope), 1, null);
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        a(semanticsPropertyReceiver);
        return l0.INSTANCE;
    }
}
