package androidx.compose.runtime;

import androidx.compose.runtime.collection.IdentityArraySet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import e8.q;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.collections.d0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.i;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public final class ComposerKt {
    public static final int compositionLocalMapKey = 202;

    @Nullable
    private static CompositionTracer compositionTracer = null;
    private static final int defaultsKey = -127;
    public static final int invocationKey = 200;
    private static final int nodeKey = 125;
    private static final int nodeKeyReplace = 126;
    public static final int providerKey = 201;
    public static final int providerMapsKey = 204;
    public static final int providerValuesKey = 203;
    public static final int referenceKey = 206;
    public static final int reuseKey = 207;
    private static final int rootKey = 100;

    @NotNull
    private static final q<Applier<?>, SlotWriter, RememberManager, l0> removeCurrentGroupInstance = ComposerKt$removeCurrentGroupInstance$1.INSTANCE;

    @NotNull
    private static final q<Applier<?>, SlotWriter, RememberManager, l0> skipToGroupEndInstance = ComposerKt$skipToGroupEndInstance$1.INSTANCE;

    @NotNull
    private static final q<Applier<?>, SlotWriter, RememberManager, l0> endGroupInstance = ComposerKt$endGroupInstance$1.INSTANCE;

    @NotNull
    private static final q<Applier<?>, SlotWriter, RememberManager, l0> startRootGroup = ComposerKt$startRootGroup$1.INSTANCE;

    @NotNull
    private static final q<Applier<?>, SlotWriter, RememberManager, l0> resetSlotsInstance = ComposerKt$resetSlotsInstance$1.INSTANCE;

    @NotNull
    private static final Object invocation = new OpaqueKey("provider");

    @NotNull
    private static final Object provider = new OpaqueKey("provider");

    @NotNull
    private static final Object compositionLocalMap = new OpaqueKey("compositionLocalMap");

    @NotNull
    private static final Object providerValues = new OpaqueKey("providerValues");

    @NotNull
    private static final Object providerMaps = new OpaqueKey("providers");

    @NotNull
    private static final Object reference = new OpaqueKey("reference");

    private static final int A(SlotReader slotReader, int i10, int i11) {
        int i12 = 0;
        while (i10 > 0 && i10 != i11) {
            i10 = slotReader.M(i10);
            i12++;
        }
        return i12;
    }

    @NotNull
    public static final Object F() {
        return compositionLocalMap;
    }

    @NotNull
    public static final Object G() {
        return invocation;
    }

    @NotNull
    public static final Object I() {
        return provider;
    }

    @NotNull
    public static final Object J() {
        return providerMaps;
    }

    @NotNull
    public static final Object K() {
        return providerValues;
    }

    @NotNull
    public static final Object L() {
        return reference;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean t(int i10) {
        return i10 != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int u(boolean z6) {
        return z6 ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<Invalidation> B(List<Invalidation> list, int i10, int i11) {
        ArrayList arrayList = new ArrayList();
        for (int iC = C(list, i10); iC < list.size(); iC++) {
            Invalidation invalidation = list.get(iC);
            if (invalidation.b() >= i11) {
                break;
            }
            arrayList.add(invalidation);
        }
        return arrayList;
    }

    public static final <T> T M(@NotNull PersistentMap<CompositionLocal<Object>, ? extends State<? extends Object>> persistentMap, @NotNull CompositionLocal<T> key) {
        t.j(persistentMap, "<this>");
        t.j(key, "key");
        State<? extends Object> state = persistentMap.get(key);
        if (state != null) {
            return (T) state.getValue();
        }
        return null;
    }

    @ComposeCompilerApi
    public static final boolean O() {
        CompositionTracer compositionTracer2 = compositionTracer;
        return compositionTracer2 != null && compositionTracer2.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <K, V> HashMap<K, LinkedHashSet<V>> P() {
        return new HashMap<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int Q(SlotReader slotReader, int i10, int i11, int i12) {
        if (i10 == i11) {
            return i10;
        }
        if (i10 == i12 || i11 == i12) {
            return i12;
        }
        if (slotReader.M(i10) == i11) {
            return i11;
        }
        if (slotReader.M(i11) == i10) {
            return i10;
        }
        if (slotReader.M(i10) == slotReader.M(i11)) {
            return slotReader.M(i10);
        }
        int iA = A(slotReader, i10, i12);
        int iA2 = A(slotReader, i11, i12);
        int i13 = iA - iA2;
        for (int i14 = 0; i14 < i13; i14++) {
            i10 = slotReader.M(i10);
        }
        int i15 = iA2 - iA;
        for (int i16 = 0; i16 < i15; i16++) {
            i11 = slotReader.M(i11);
        }
        while (i10 != i11) {
            i10 = slotReader.M(i10);
            i11 = slotReader.M(i11);
        }
        return i10;
    }

    public static final void U(@NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager) {
        RecomposeScopeImpl recomposeScopeImpl;
        CompositionImpl compositionImplL;
        t.j(slotWriter, "<this>");
        t.j(rememberManager, "rememberManager");
        Iterator<Object> itD0 = slotWriter.d0();
        while (itD0.hasNext()) {
            Object next = itD0.next();
            if (next instanceof RememberObserver) {
                rememberManager.a((RememberObserver) next);
            } else if ((next instanceof RecomposeScopeImpl) && (compositionImplL = (recomposeScopeImpl = (RecomposeScopeImpl) next).l()) != null) {
                compositionImplL.H(true);
                recomposeScopeImpl.x();
            }
        }
        slotWriter.E0();
    }

    public static final void X(boolean z6) {
        if (z6) {
            return;
        }
        x("Check failed".toString());
        throw new i();
    }

    @ComposeCompilerApi
    public static final void Y() {
        CompositionTracer compositionTracer2 = compositionTracer;
        if (compositionTracer2 != null) {
            compositionTracer2.c();
            l0 l0Var = l0.INSTANCE;
        }
    }

    @ComposeCompilerApi
    public static final void Z(int i10, int i11, int i12, @NotNull String info) {
        t.j(info, "info");
        CompositionTracer compositionTracer2 = compositionTracer;
        if (compositionTracer2 != null) {
            compositionTracer2.b(i10, i11, i12, info);
            l0 l0Var = l0.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<Object> v(SlotTable slotTable, Anchor anchor) {
        ArrayList arrayList = new ArrayList();
        SlotReader slotReaderS = slotTable.s();
        try {
            w(slotReaderS, arrayList, slotTable.a(anchor));
            l0 l0Var = l0.INSTANCE;
            return arrayList;
        } finally {
            slotReaderS.d();
        }
    }

    @NotNull
    public static final Void x(@NotNull String message) {
        t.j(message, "message");
        throw new IllegalStateException(("Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API (" + message + "). Please report to Google or use https://goo.gle/compose-feedback").toString());
    }

    public static final <T> boolean z(@NotNull PersistentMap<CompositionLocal<Object>, ? extends State<? extends Object>> persistentMap, @NotNull CompositionLocal<T> key) {
        t.j(persistentMap, "<this>");
        t.j(key, "key");
        return persistentMap.containsKey(key);
    }

    private static final int C(List<Invalidation> list, int i10) {
        int iD = D(list, i10);
        if (iD < 0) {
            return -(iD + 1);
        }
        return iD;
    }

    private static final int D(List<Invalidation> list, int i10) {
        int size = list.size() - 1;
        int i11 = 0;
        while (i11 <= size) {
            int i12 = (i11 + size) >>> 1;
            int iL = t.l(list.get(i12).b(), i10);
            if (iL < 0) {
                i11 = i12 + 1;
            } else if (iL > 0) {
                size = i12 - 1;
            } else {
                return i12;
            }
        }
        return -(i11 + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Invalidation E(List<Invalidation> list, int i10, int i11) {
        int iC = C(list, i10);
        if (iC < list.size()) {
            Invalidation invalidation = list.get(iC);
            if (invalidation.b() < i11) {
                return invalidation;
            }
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object H(KeyInfo keyInfo) {
        if (keyInfo.d() != null) {
            return new JoinedKey(Integer.valueOf(keyInfo.a()), keyInfo.d());
        }
        return Integer.valueOf(keyInfo.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N(List<Invalidation> list, int i10, RecomposeScopeImpl recomposeScopeImpl, Object obj) {
        int iD = D(list, i10);
        IdentityArraySet identityArraySet = null;
        if (iD < 0) {
            int i11 = -(iD + 1);
            if (obj != null) {
                identityArraySet = new IdentityArraySet();
                identityArraySet.add(obj);
            }
            list.add(i11, new Invalidation(recomposeScopeImpl, i10, identityArraySet));
            return;
        }
        if (obj == null) {
            list.get(iD).e(null);
            return;
        }
        IdentityArraySet<Object> identityArraySetA = list.get(iD).a();
        if (identityArraySetA != null) {
            identityArraySetA.add(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <K, V> V R(HashMap<K, LinkedHashSet<V>> map, K k) {
        V v5;
        LinkedHashSet<V> linkedHashSet = map.get(k);
        if (linkedHashSet != null && (v5 = (V) d0.k0(linkedHashSet)) != null) {
            T(map, k, v5);
            return v5;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <K, V> boolean S(HashMap<K, LinkedHashSet<V>> map, K k, V v5) {
        LinkedHashSet<V> linkedHashSet = map.get(k);
        if (linkedHashSet == null) {
            linkedHashSet = new LinkedHashSet<>();
            map.put(k, linkedHashSet);
        }
        return linkedHashSet.add(v5);
    }

    private static final <K, V> l0 T(HashMap<K, LinkedHashSet<V>> map, K k, V v5) {
        LinkedHashSet<V> linkedHashSet = map.get(k);
        if (linkedHashSet != null) {
            linkedHashSet.remove(v5);
            if (linkedHashSet.isEmpty()) {
                map.remove(k);
            }
            return l0.INSTANCE;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Invalidation V(List<Invalidation> list, int i10) {
        int iD = D(list, i10);
        if (iD >= 0) {
            return list.remove(iD);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W(List<Invalidation> list, int i10, int i11) {
        int iC = C(list, i10);
        while (iC < list.size() && list.get(iC).b() < i11) {
            list.remove(iC);
        }
    }

    private static final void w(SlotReader slotReader, List<Object> list, int i10) {
        if (slotReader.G(i10)) {
            list.add(slotReader.I(i10));
            return;
        }
        int iB = i10 + 1;
        int iB2 = i10 + slotReader.B(i10);
        while (iB < iB2) {
            w(slotReader, list, iB);
            iB += slotReader.B(iB);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    public static final PersistentMap<CompositionLocal<Object>, State<Object>> y(ProvidedValue<?>[] providedValueArr, PersistentMap<CompositionLocal<Object>, ? extends State<? extends Object>> persistentMap, Composer composer, int i10) {
        composer.G(721128344);
        PersistentMap.Builder builder = ExtensionsKt.a().builder();
        for (ProvidedValue<?> providedValue : providedValueArr) {
            if (providedValue.a() || !z(persistentMap, providedValue.b())) {
                builder.put(providedValue.b(), providedValue.b().b(providedValue.c(), composer, 72));
            }
        }
        PersistentMap<CompositionLocal<Object>, State<Object>> persistentMapBuild = builder.build();
        composer.Q();
        return persistentMapBuild;
    }
}
