package androidx.compose.ui.platform;

import android.os.Binder;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import android.view.View;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.compose.runtime.saveable.SaveableStateRegistryKt;
import androidx.compose.runtime.snapshots.SnapshotMutableState;
import androidx.compose.ui.R;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class DisposableSaveableStateRegistry_androidKt {

    @NotNull
    private static final Class<? extends Object>[] AcceptableClasses = {Serializable.class, Parcelable.class, String.class, SparseArray.class, Binder.class, Size.class, SizeF.class};

    @NotNull
    public static final DisposableSaveableStateRegistry a(@NotNull View view, @NotNull SavedStateRegistryOwner owner) {
        kotlin.jvm.internal.t.j(view, "view");
        kotlin.jvm.internal.t.j(owner, "owner");
        Object parent = view.getParent();
        if (parent == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.view.View");
        }
        View view2 = (View) parent;
        Object tag = view2.getTag(R.id.compose_view_saveable_id_tag);
        String strValueOf = tag instanceof String ? (String) tag : null;
        if (strValueOf == null) {
            strValueOf = String.valueOf(view2.getId());
        }
        return b(strValueOf, owner);
    }

    @NotNull
    public static final DisposableSaveableStateRegistry b(@NotNull String id, @NotNull SavedStateRegistryOwner savedStateRegistryOwner) {
        boolean z6;
        kotlin.jvm.internal.t.j(id, "id");
        kotlin.jvm.internal.t.j(savedStateRegistryOwner, "savedStateRegistryOwner");
        String str = SaveableStateRegistry.class.getSimpleName() + kotlinx.serialization.json.internal.b.COLON + id;
        SavedStateRegistry savedStateRegistry = savedStateRegistryOwner.getSavedStateRegistry();
        Bundle bundleB = savedStateRegistry.b(str);
        final SaveableStateRegistry saveableStateRegistryA = SaveableStateRegistryKt.a(bundleB != null ? g(bundleB) : null, DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$saveableStateRegistry$1.INSTANCE);
        try {
            savedStateRegistry.h(str, new SavedStateRegistry.SavedStateProvider() { // from class: androidx.compose.ui.platform.DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$registered$1
                @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
                @NotNull
                public final Bundle a() {
                    return DisposableSaveableStateRegistry_androidKt.f(saveableStateRegistryA.b());
                }
            });
            z6 = true;
        } catch (IllegalArgumentException unused) {
            z6 = false;
        }
        return new DisposableSaveableStateRegistry(saveableStateRegistryA, new DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$1(z6, savedStateRegistry, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean e(Object obj) {
        if (obj instanceof SnapshotMutableState) {
            SnapshotMutableState snapshotMutableState = (SnapshotMutableState) obj;
            if (snapshotMutableState.g() != SnapshotStateKt.i() && snapshotMutableState.g() != SnapshotStateKt.p() && snapshotMutableState.g() != SnapshotStateKt.m()) {
                return false;
            }
            T value = snapshotMutableState.getValue();
            if (value == 0) {
                return true;
            }
            return e(value);
        }
        if ((obj instanceof w7.g) && (obj instanceof Serializable)) {
            return false;
        }
        for (Class<? extends Object> cls : AcceptableClasses) {
            if (cls.isInstance(obj)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Bundle f(Map<String, ? extends List<? extends Object>> map) {
        Bundle bundle = new Bundle();
        for (Map.Entry<String, ? extends List<? extends Object>> entry : map.entrySet()) {
            String key = entry.getKey();
            List<? extends Object> value = entry.getValue();
            bundle.putParcelableArrayList(key, value instanceof ArrayList ? (ArrayList) value : new ArrayList<>(value));
        }
        return bundle;
    }

    private static final Map<String, List<Object>> g(Bundle bundle) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Set<String> setKeySet = bundle.keySet();
        kotlin.jvm.internal.t.i(setKeySet, "this.keySet()");
        for (String key : setKeySet) {
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(key);
            if (parcelableArrayList == null) {
                throw new NullPointerException("null cannot be cast to non-null type java.util.ArrayList<kotlin.Any?>{ kotlin.collections.TypeAliasesKt.ArrayList<kotlin.Any?> }");
            }
            kotlin.jvm.internal.t.i(key, "key");
            linkedHashMap.put(key, parcelableArrayList);
        }
        return linkedHashMap;
    }
}
