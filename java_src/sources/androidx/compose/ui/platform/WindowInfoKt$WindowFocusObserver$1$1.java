package androidx.compose.ui.platform;

import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@kotlin.coroutines.jvm.internal.f(c = "androidx.compose.ui.platform.WindowInfoKt$WindowFocusObserver$1$1", f = "WindowInfo.kt", l = {47}, m = "invokeSuspend")
final class WindowInfoKt$WindowFocusObserver$1$1 extends kotlin.coroutines.jvm.internal.l implements e8.p<kotlinx.coroutines.o0, kotlin.coroutines.d<? super w7.l0>, Object> {
    final /* synthetic */ State<e8.l<Boolean, w7.l0>> $callback;
    final /* synthetic */ WindowInfo $windowInfo;
    int label;

    /* JADX INFO: renamed from: androidx.compose.ui.platform.WindowInfoKt$WindowFocusObserver$1$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends kotlin.jvm.internal.v implements e8.a<Boolean> {
        final /* synthetic */ WindowInfo $windowInfo;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(WindowInfo windowInfo) {
            super(0);
            this.$windowInfo = windowInfo;
        }

        @Override // e8.a
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(this.$windowInfo.a());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    WindowInfoKt$WindowFocusObserver$1$1(WindowInfo windowInfo, State<? extends e8.l<? super Boolean, w7.l0>> state, kotlin.coroutines.d<? super WindowInfoKt$WindowFocusObserver$1$1> dVar) {
        super(2, dVar);
        this.$windowInfo = windowInfo;
        this.$callback = state;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<w7.l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
        return new WindowInfoKt$WindowFocusObserver$1$1(this.$windowInfo, this.$callback, dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull kotlinx.coroutines.o0 o0Var, @Nullable kotlin.coroutines.d<? super w7.l0> dVar) {
        return ((WindowInfoKt$WindowFocusObserver$1$1) create(o0Var, dVar)).invokeSuspend(w7.l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                w7.w.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            w7.w.b(obj);
            kotlinx.coroutines.flow.g gVarO = SnapshotStateKt.o(new AnonymousClass1(this.$windowInfo));
            final State<e8.l<Boolean, w7.l0>> state = this.$callback;
            kotlinx.coroutines.flow.h<Boolean> hVar = new kotlinx.coroutines.flow.h<Boolean>() { // from class: androidx.compose.ui.platform.WindowInfoKt$WindowFocusObserver$1$1.2
                @Nullable
                public final Object e(boolean z6, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
                    w7.l0 l0VarInvoke = state.getValue().invoke(kotlin.coroutines.jvm.internal.b.a(z6));
                    return l0VarInvoke == kotlin.coroutines.intrinsics.d.e() ? l0VarInvoke : w7.l0.INSTANCE;
                }

                @Override // kotlinx.coroutines.flow.h
                public /* bridge */ /* synthetic */ Object emit(Boolean bool, kotlin.coroutines.d dVar) {
                    return e(bool.booleanValue(), dVar);
                }
            };
            this.label = 1;
            if (gVarO.collect(hVar, this) == objE) {
                return objE;
            }
        }
        return w7.l0.INSTANCE;
    }
}
