package androidx.compose.runtime.saveable;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.ScopeUpdateScope;
import e8.p;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.s0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class SaveableStateHolderImpl implements SaveableStateHolder {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final Saver<SaveableStateHolderImpl, ?> Saver = SaverKt.a(SaveableStateHolderImpl$Companion$Saver$1.INSTANCE, SaveableStateHolderImpl$Companion$Saver$2.INSTANCE);

    @Nullable
    private SaveableStateRegistry parentSaveableStateRegistry;

    @NotNull
    private final Map<Object, RegistryHolder> registryHolders;

    @NotNull
    private final Map<Object, Map<String, List<Object>>> savedStates;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final Saver<SaveableStateHolderImpl, ?> a() {
            return SaveableStateHolderImpl.Saver;
        }
    }

    public final class RegistryHolder {

        @NotNull
        private final Object key;

        @NotNull
        private final SaveableStateRegistry registry;
        private boolean shouldSave;
        final /* synthetic */ SaveableStateHolderImpl this$0;

        @NotNull
        public final SaveableStateRegistry a() {
            return this.registry;
        }

        public RegistryHolder(@NotNull SaveableStateHolderImpl saveableStateHolderImpl, Object key) {
            t.j(key, "key");
            this.this$0 = saveableStateHolderImpl;
            this.key = key;
            this.shouldSave = true;
            this.registry = SaveableStateRegistryKt.a((Map) saveableStateHolderImpl.savedStates.get(key), new SaveableStateHolderImpl$RegistryHolder$registry$1(saveableStateHolderImpl));
        }

        public final void b(@NotNull Map<Object, Map<String, List<Object>>> map) {
            t.j(map, "map");
            if (this.shouldSave) {
                Map<String, List<Object>> mapB = this.registry.b();
                if (mapB.isEmpty()) {
                    map.remove(this.key);
                } else {
                    map.put(this.key, mapB);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SaveableStateHolderImpl() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @Nullable
    public final SaveableStateRegistry f() {
        return this.parentSaveableStateRegistry;
    }

    public final void h(@Nullable SaveableStateRegistry saveableStateRegistry) {
        this.parentSaveableStateRegistry = saveableStateRegistry;
    }

    public SaveableStateHolderImpl(@NotNull Map<Object, Map<String, List<Object>>> savedStates) {
        t.j(savedStates, "savedStates");
        this.savedStates = savedStates;
        this.registryHolders = new LinkedHashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Map<Object, Map<String, List<Object>>> g() {
        Map<Object, Map<String, List<Object>>> mapA = s0.A(this.savedStates);
        Iterator<T> it = this.registryHolders.values().iterator();
        while (it.hasNext()) {
            ((RegistryHolder) it.next()).b(mapA);
        }
        if (mapA.isEmpty()) {
            return null;
        }
        return mapA;
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateHolder
    @Composable
    public void a(@NotNull Object key, @NotNull p<? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10) {
        t.j(key, "key");
        t.j(content, "content");
        Composer composerS = composer.s(-1198538093);
        composerS.G(444418301);
        composerS.f(207, key);
        composerS.G(-642722479);
        composerS.G(-492369756);
        Object objH = composerS.H();
        if (objH == Composer.Companion.a()) {
            SaveableStateRegistry saveableStateRegistry = this.parentSaveableStateRegistry;
            if (saveableStateRegistry != null && !saveableStateRegistry.a(key)) {
                throw new IllegalArgumentException(("Type of the key " + key + " is not supported. On Android you can only use types which can be stored inside the Bundle.").toString());
            }
            objH = new RegistryHolder(this, key);
            composerS.z(objH);
        }
        composerS.Q();
        RegistryHolder registryHolder = (RegistryHolder) objH;
        CompositionLocalKt.b(new ProvidedValue[]{SaveableStateRegistryKt.b().c(registryHolder.a())}, content, composerS, (i10 & 112) | 8);
        EffectsKt.a(l0.INSTANCE, new SaveableStateHolderImpl$SaveableStateProvider$1$1(this, key, registryHolder), composerS, 0);
        composerS.Q();
        composerS.F();
        composerS.Q();
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new SaveableStateHolderImpl$SaveableStateProvider$2(this, key, content, i10));
    }

    public /* synthetic */ SaveableStateHolderImpl(Map map, int i10, k kVar) {
        this((i10 & 1) != 0 ? new LinkedHashMap() : map);
    }
}
