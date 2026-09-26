package androidx.compose.material;

import e8.a;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes.dex */
final class DrawerKt$BottomDrawer$1$1$1 extends v implements a<l0> {
    final /* synthetic */ BottomDrawerState $drawerState;
    final /* synthetic */ boolean $gesturesEnabled;
    final /* synthetic */ o0 $scope;

    /* JADX INFO: renamed from: androidx.compose.material.DrawerKt$BottomDrawer$1$1$1$1, reason: invalid class name */
    @f(c = "androidx.compose.material.DrawerKt$BottomDrawer$1$1$1$1", f = "Drawer.kt", l = {562}, m = "invokeSuspend")
    static final class AnonymousClass1 extends l implements p<o0, d<? super l0>, Object> {
        final /* synthetic */ BottomDrawerState $drawerState;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(BottomDrawerState bottomDrawerState, d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.$drawerState = bottomDrawerState;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            return new AnonymousClass1(this.$drawerState, dVar);
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
    DrawerKt$BottomDrawer$1$1$1(boolean z6, BottomDrawerState bottomDrawerState, o0 o0Var) {
        super(0);
        this.$gesturesEnabled = z6;
        this.$drawerState = bottomDrawerState;
        this.$scope = o0Var;
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ l0 invoke() {
        invoke2();
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        if (this.$gesturesEnabled && this.$drawerState.o().invoke(BottomDrawerValue.Closed).booleanValue()) {
            k.d(this.$scope, null, null, new AnonymousClass1(this.$drawerState, null), 3, null);
        }
    }
}
