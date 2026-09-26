package androidx.datastore.preferences.core;

import androidx.datastore.core.DataStore;
import e8.p;
import kotlin.coroutines.d;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.flow.g;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class PreferenceDataStore implements DataStore<Preferences> {

    @NotNull
    private final DataStore<Preferences> delegate;

    @Override // androidx.datastore.core.DataStore
    @NotNull
    public g<Preferences> getData() {
        return this.delegate.getData();
    }

    public PreferenceDataStore(@NotNull DataStore<Preferences> delegate) {
        t.j(delegate, "delegate");
        this.delegate = delegate;
    }

    @Override // androidx.datastore.core.DataStore
    @Nullable
    public Object a(@NotNull p<? super Preferences, ? super d<? super Preferences>, ? extends Object> pVar, @NotNull d<? super Preferences> dVar) {
        return this.delegate.a(new PreferenceDataStore$updateData$2(pVar, null), dVar);
    }
}
