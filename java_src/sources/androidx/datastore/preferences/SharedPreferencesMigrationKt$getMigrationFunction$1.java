package androidx.datastore.preferences;

import androidx.datastore.migrations.SharedPreferencesView;
import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesKeys;
import e8.q;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.b;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes2.dex */
@f(c = "androidx.datastore.preferences.SharedPreferencesMigrationKt$getMigrationFunction$1", f = "SharedPreferencesMigration.kt", l = {}, m = "invokeSuspend")
final class SharedPreferencesMigrationKt$getMigrationFunction$1 extends l implements q<SharedPreferencesView, Preferences, d<? super Preferences>, Object> {
    /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    SharedPreferencesMigrationKt$getMigrationFunction$1(d<? super SharedPreferencesMigrationKt$getMigrationFunction$1> dVar) {
        super(3, dVar);
    }

    @Override // e8.q
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull SharedPreferencesView sharedPreferencesView, @NotNull Preferences preferences, @Nullable d<? super Preferences> dVar) {
        SharedPreferencesMigrationKt$getMigrationFunction$1 sharedPreferencesMigrationKt$getMigrationFunction$1 = new SharedPreferencesMigrationKt$getMigrationFunction$1(dVar);
        sharedPreferencesMigrationKt$getMigrationFunction$1.L$0 = sharedPreferencesView;
        sharedPreferencesMigrationKt$getMigrationFunction$1.L$1 = preferences;
        return sharedPreferencesMigrationKt$getMigrationFunction$1.invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kotlin.coroutines.intrinsics.d.e();
        if (this.label == 0) {
            w.b(obj);
            SharedPreferencesView sharedPreferencesView = (SharedPreferencesView) this.L$0;
            Preferences preferences = (Preferences) this.L$1;
            Set<Preferences.Key<?>> setKeySet = preferences.a().keySet();
            ArrayList arrayList = new ArrayList(kotlin.collections.w.x(setKeySet, 10));
            Iterator<T> it = setKeySet.iterator();
            while (it.hasNext()) {
                arrayList.add(((Preferences.Key) it.next()).a());
            }
            Map<String, Object> mapA = sharedPreferencesView.a();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry<String, Object> entry : mapA.entrySet()) {
                if (b.a(!arrayList.contains(entry.getKey())).booleanValue()) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            MutablePreferences mutablePreferencesC = preferences.c();
            for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                String str = (String) entry2.getKey();
                Object value = entry2.getValue();
                if (value instanceof Boolean) {
                    mutablePreferencesC.i(PreferencesKeys.a(str), value);
                } else if (value instanceof Float) {
                    mutablePreferencesC.i(PreferencesKeys.c(str), value);
                } else if (value instanceof Integer) {
                    mutablePreferencesC.i(PreferencesKeys.d(str), value);
                } else if (value instanceof Long) {
                    mutablePreferencesC.i(PreferencesKeys.e(str), value);
                } else if (value instanceof String) {
                    mutablePreferencesC.i(PreferencesKeys.f(str), value);
                } else if (value instanceof Set) {
                    Preferences.Key<Set<String>> keyG = PreferencesKeys.g(str);
                    if (value != null) {
                        mutablePreferencesC.i(keyG, (Set) value);
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.Set<kotlin.String>");
                    }
                } else {
                    continue;
                }
            }
            return mutablePreferencesC.d();
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
