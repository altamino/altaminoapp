package androidx.datastore.preferences.core;

import androidx.datastore.core.DataStore;
import e8.p;
import kotlin.coroutines.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class PreferencesKt {
    @Nullable
    public static final Object a(@NotNull DataStore<Preferences> dataStore, @NotNull p<? super MutablePreferences, ? super d<? super l0>, ? extends Object> pVar, @NotNull d<? super Preferences> dVar) {
        return dataStore.a(new PreferencesKt$edit$2(pVar, null), dVar);
    }
}
