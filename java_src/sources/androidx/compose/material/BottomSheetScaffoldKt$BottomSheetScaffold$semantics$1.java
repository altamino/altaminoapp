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

/* JADX INFO: loaded from: classes2.dex */
final class BottomSheetScaffoldKt$BottomSheetScaffold$semantics$1 extends v implements l<SemanticsPropertyReceiver, l0> {
    final /* synthetic */ BottomSheetScaffoldState $scaffoldState;
    final /* synthetic */ o0 $scope;

    /* JADX INFO: renamed from: androidx.compose.material.BottomSheetScaffoldKt$BottomSheetScaffold$semantics$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements a<Boolean> {
        final /* synthetic */ BottomSheetScaffoldState $scaffoldState;
        final /* synthetic */ o0 $scope;

        /* JADX INFO: renamed from: androidx.compose.material.BottomSheetScaffoldKt$BottomSheetScaffold$semantics$1$1$1, reason: invalid class name and collision with other inner class name */
        @f(c = "androidx.compose.material.BottomSheetScaffoldKt$BottomSheetScaffold$semantics$1$1$1", f = "BottomSheetScaffold.kt", l = {301}, m = "invokeSuspend")
        static final class C00531 extends kotlin.coroutines.jvm.internal.l implements p<o0, d<? super l0>, Object> {
            final /* synthetic */ BottomSheetScaffoldState $scaffoldState;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00531(BottomSheetScaffoldState bottomSheetScaffoldState, d<? super C00531> dVar) {
                super(2, dVar);
                this.$scaffoldState = bottomSheetScaffoldState;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @NotNull
            public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
                return new C00531(this.$scaffoldState, dVar);
            }

            @Override // e8.p
            @Nullable
            public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
                return ((C00531) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
                    BottomSheetState bottomSheetStateA = this.$scaffoldState.a();
                    this.label = 1;
                    if (bottomSheetStateA.K(this) == objE) {
                        return objE;
                    }
                }
                return l0.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(BottomSheetScaffoldState bottomSheetScaffoldState, o0 o0Var) {
            super(0);
            this.$scaffoldState = bottomSheetScaffoldState;
            this.$scope = o0Var;
        }

        @Override // e8.a
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            if (this.$scaffoldState.a().o().invoke(BottomSheetValue.Expanded).booleanValue()) {
                k.d(this.$scope, null, null, new C00531(this.$scaffoldState, null), 3, null);
            }
            return Boolean.TRUE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.material.BottomSheetScaffoldKt$BottomSheetScaffold$semantics$1$2, reason: invalid class name */
    static final class AnonymousClass2 extends v implements a<Boolean> {
        final /* synthetic */ BottomSheetScaffoldState $scaffoldState;
        final /* synthetic */ o0 $scope;

        /* JADX INFO: renamed from: androidx.compose.material.BottomSheetScaffoldKt$BottomSheetScaffold$semantics$1$2$1, reason: invalid class name */
        @f(c = "androidx.compose.material.BottomSheetScaffoldKt$BottomSheetScaffold$semantics$1$2$1", f = "BottomSheetScaffold.kt", l = {308}, m = "invokeSuspend")
        static final class AnonymousClass1 extends kotlin.coroutines.jvm.internal.l implements p<o0, d<? super l0>, Object> {
            final /* synthetic */ BottomSheetScaffoldState $scaffoldState;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(BottomSheetScaffoldState bottomSheetScaffoldState, d<? super AnonymousClass1> dVar) {
                super(2, dVar);
                this.$scaffoldState = bottomSheetScaffoldState;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @NotNull
            public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
                return new AnonymousClass1(this.$scaffoldState, dVar);
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
                    BottomSheetState bottomSheetStateA = this.$scaffoldState.a();
                    this.label = 1;
                    if (bottomSheetStateA.J(this) == objE) {
                        return objE;
                    }
                }
                return l0.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(BottomSheetScaffoldState bottomSheetScaffoldState, o0 o0Var) {
            super(0);
            this.$scaffoldState = bottomSheetScaffoldState;
            this.$scope = o0Var;
        }

        @Override // e8.a
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            if (this.$scaffoldState.a().o().invoke(BottomSheetValue.Collapsed).booleanValue()) {
                k.d(this.$scope, null, null, new AnonymousClass1(this.$scaffoldState, null), 3, null);
            }
            return Boolean.TRUE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BottomSheetScaffoldKt$BottomSheetScaffold$semantics$1(BottomSheetScaffoldState bottomSheetScaffoldState, o0 o0Var) {
        super(1);
        this.$scaffoldState = bottomSheetScaffoldState;
        this.$scope = o0Var;
    }

    public final void a(@NotNull SemanticsPropertyReceiver semantics) {
        t.j(semantics, "$this$semantics");
        if (this.$scaffoldState.a().N()) {
            SemanticsPropertiesKt.m(semantics, null, new AnonymousClass1(this.$scaffoldState, this.$scope), 1, null);
        } else {
            SemanticsPropertiesKt.b(semantics, null, new AnonymousClass2(this.$scaffoldState, this.$scope), 1, null);
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        a(semanticsPropertyReceiver);
        return l0.INSTANCE;
    }
}
