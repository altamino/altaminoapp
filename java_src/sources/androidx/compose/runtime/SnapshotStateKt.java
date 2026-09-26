package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.runtime.snapshots.SnapshotStateMap;
import e8.l;
import e8.p;
import kotlin.coroutines.d;
import kotlinx.coroutines.flow.g;
import kotlinx.coroutines.flow.l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class SnapshotStateKt {
    @Composable
    @NotNull
    public static final <T extends R, R> State<R> a(@NotNull g<? extends T> gVar, R r, @Nullable kotlin.coroutines.g gVar2, @Nullable Composer composer, int i10, int i11) {
        return SnapshotStateKt__SnapshotFlowKt.b(gVar, r, gVar2, composer, i10, i11);
    }

    @Composable
    @NotNull
    public static final <T> State<T> b(@NotNull l0<? extends T> l0Var, @Nullable kotlin.coroutines.g gVar, @Nullable Composer composer, int i10, int i11) {
        return SnapshotStateKt__SnapshotFlowKt.c(l0Var, gVar, composer, i10, i11);
    }

    @NotNull
    public static final <T> State<T> c(@NotNull e8.a<? extends T> aVar) {
        return SnapshotStateKt__DerivedStateKt.c(aVar);
    }

    @NotNull
    public static final <T> SnapshotStateList<T> d() {
        return SnapshotStateKt__SnapshotStateKt.a();
    }

    @NotNull
    public static final <T> SnapshotStateList<T> e(@NotNull T... tArr) {
        return SnapshotStateKt__SnapshotStateKt.b(tArr);
    }

    @NotNull
    public static final <K, V> SnapshotStateMap<K, V> f() {
        return SnapshotStateKt__SnapshotStateKt.c();
    }

    @NotNull
    public static final <T> MutableState<T> g(T t5, @NotNull SnapshotMutationPolicy<T> snapshotMutationPolicy) {
        return SnapshotStateKt__SnapshotStateKt.d(t5, snapshotMutationPolicy);
    }

    @NotNull
    public static final <T> SnapshotMutationPolicy<T> i() {
        return SnapshotStateKt__SnapshotMutationPolicyKt.a();
    }

    public static final <R> void j(@NotNull l<? super State<?>, w7.l0> lVar, @NotNull l<? super State<?>, w7.l0> lVar2, @NotNull e8.a<? extends R> aVar) {
        SnapshotStateKt__DerivedStateKt.d(lVar, lVar2, aVar);
    }

    @Composable
    @NotNull
    public static final <T> State<T> k(T t5, @Nullable Object obj, @Nullable Object obj2, @NotNull p<? super ProduceStateScope<T>, ? super d<? super w7.l0>, ? extends Object> pVar, @Nullable Composer composer, int i10) {
        return SnapshotStateKt__ProduceStateKt.a(t5, obj, obj2, pVar, composer, i10);
    }

    @Composable
    @NotNull
    public static final <T> State<T> l(T t5, @NotNull Object[] objArr, @NotNull p<? super ProduceStateScope<T>, ? super d<? super w7.l0>, ? extends Object> pVar, @Nullable Composer composer, int i10) {
        return SnapshotStateKt__ProduceStateKt.b(t5, objArr, pVar, composer, i10);
    }

    @NotNull
    public static final <T> SnapshotMutationPolicy<T> m() {
        return SnapshotStateKt__SnapshotMutationPolicyKt.b();
    }

    @Composable
    @NotNull
    public static final <T> State<T> n(T t5, @Nullable Composer composer, int i10) {
        return SnapshotStateKt__SnapshotStateKt.f(t5, composer, i10);
    }

    @NotNull
    public static final <T> g<T> o(@NotNull e8.a<? extends T> aVar) {
        return SnapshotStateKt__SnapshotFlowKt.e(aVar);
    }

    @NotNull
    public static final <T> SnapshotMutationPolicy<T> p() {
        return SnapshotStateKt__SnapshotMutationPolicyKt.c();
    }
}
