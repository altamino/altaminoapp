package androidx.compose.runtime;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import e8.p;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
public final class CompositionLocalKt {
    @Composable
    @ComposableInferredTarget
    public static final void a(@NotNull CompositionLocalContext context, @NotNull p<? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10) {
        t.j(context, "context");
        t.j(content, "content");
        Composer composerS = composer.s(1853897736);
        int i11 = (i10 & 14) == 0 ? (composerS.k(context) ? 4 : 2) | i10 : i10;
        if ((i10 & 112) == 0) {
            i11 |= composerS.k(content) ? 32 : 16;
        }
        if ((i11 & 91) == 18 && composerS.b()) {
            composerS.g();
        } else {
            PersistentMap<CompositionLocal<Object>, State<Object>> persistentMapA = context.a();
            ArrayList arrayList = new ArrayList(persistentMapA.size());
            for (Map.Entry<CompositionLocal<Object>, State<Object>> entry : persistentMapA.entrySet()) {
                arrayList.add(((ProvidableCompositionLocal) entry.getKey()).c(entry.getValue().getValue()));
            }
            Object[] array = arrayList.toArray(new ProvidedValue[0]);
            if (array == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            }
            ProvidedValue[] providedValueArr = (ProvidedValue[]) array;
            b((ProvidedValue[]) Arrays.copyOf(providedValueArr, providedValueArr.length), content, composerS, (i11 & 112) | 8);
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new CompositionLocalKt$CompositionLocalProvider$3(context, content, i10));
    }

    @Composable
    @ComposableInferredTarget
    public static final void b(@NotNull ProvidedValue<?>[] values, @NotNull p<? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10) {
        t.j(values, "values");
        t.j(content, "content");
        Composer composerS = composer.s(-1390796515);
        composerS.l(values);
        content.invoke(composerS, Integer.valueOf((i10 >> 3) & 14));
        composerS.N();
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new CompositionLocalKt$CompositionLocalProvider$1(values, content, i10));
    }

    @NotNull
    public static final <T> ProvidableCompositionLocal<T> c(@NotNull SnapshotMutationPolicy<T> policy, @NotNull e8.a<? extends T> defaultFactory) {
        t.j(policy, "policy");
        t.j(defaultFactory, "defaultFactory");
        return new DynamicProvidableCompositionLocal(policy, defaultFactory);
    }

    public static /* synthetic */ ProvidableCompositionLocal d(SnapshotMutationPolicy snapshotMutationPolicy, e8.a aVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            snapshotMutationPolicy = SnapshotStateKt.p();
        }
        return c(snapshotMutationPolicy, aVar);
    }

    @NotNull
    public static final <T> ProvidableCompositionLocal<T> e(@NotNull e8.a<? extends T> defaultFactory) {
        t.j(defaultFactory, "defaultFactory");
        return new StaticProvidableCompositionLocal(defaultFactory);
    }
}
