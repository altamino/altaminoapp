package androidx.compose.runtime;

import androidx.compose.runtime.collection.IdentityArrayMap;
import androidx.compose.runtime.collection.IdentityArraySet;
import kotlin.coroutines.g;
import kotlin.coroutines.h;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public final class CompositionKt {

    @NotNull
    private static final Object PendingApplyNoModifications = new Object();

    @NotNull
    public static final Composition a(@NotNull Applier<?> applier, @NotNull CompositionContext parent) {
        t.j(applier, "applier");
        t.j(parent, "parent");
        return new CompositionImpl(parent, applier, null, 4, null);
    }

    @ExperimentalComposeApi
    @NotNull
    public static final g e(@NotNull ControlledComposition controlledComposition) {
        g gVarB;
        t.j(controlledComposition, "<this>");
        CompositionImpl compositionImpl = controlledComposition instanceof CompositionImpl ? (CompositionImpl) controlledComposition : null;
        return (compositionImpl == null || (gVarB = compositionImpl.B()) == null) ? h.INSTANCE : gVarB;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <K, V> void d(IdentityArrayMap<K, IdentityArraySet<V>> identityArrayMap, K k, V v5) {
        if (identityArrayMap.a(k)) {
            IdentityArraySet<V> identityArraySetD = identityArrayMap.d(k);
            if (identityArraySetD != null) {
                identityArraySetD.add(v5);
                return;
            }
            return;
        }
        IdentityArraySet<V> identityArraySet = new IdentityArraySet<>();
        identityArraySet.add(v5);
        l0 l0Var = l0.INSTANCE;
        identityArrayMap.j(k, identityArraySet);
    }
}
