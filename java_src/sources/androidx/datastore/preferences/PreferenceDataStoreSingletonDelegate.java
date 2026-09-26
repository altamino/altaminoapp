package androidx.datastore.preferences;

import android.content.Context;
import androidx.annotation.GuardedBy;
import androidx.datastore.core.DataMigration;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import androidx.datastore.preferences.core.PreferenceDataStoreFactory;
import androidx.datastore.preferences.core.Preferences;
import e8.l;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.properties.d;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class PreferenceDataStoreSingletonDelegate implements d<Context, DataStore<Preferences>> {

    @GuardedBy
    @Nullable
    private volatile DataStore<Preferences> INSTANCE;

    @Nullable
    private final ReplaceFileCorruptionHandler<Preferences> corruptionHandler;

    @NotNull
    private final Object lock;

    @NotNull
    private final String name;

    @NotNull
    private final l<Context, List<DataMigration<Preferences>>> produceMigrations;

    @NotNull
    private final o0 scope;

    /* JADX WARN: Multi-variable type inference failed */
    public PreferenceDataStoreSingletonDelegate(@NotNull String name, @Nullable ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, @NotNull l<? super Context, ? extends List<? extends DataMigration<Preferences>>> produceMigrations, @NotNull o0 scope) {
        t.j(name, "name");
        t.j(produceMigrations, "produceMigrations");
        t.j(scope, "scope");
        this.name = name;
        this.corruptionHandler = replaceFileCorruptionHandler;
        this.produceMigrations = produceMigrations;
        this.scope = scope;
        this.lock = new Object();
    }

    @Override // kotlin.properties.d
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public DataStore<Preferences> getValue(@NotNull Context thisRef, @NotNull KProperty<?> property) {
        DataStore<Preferences> dataStore;
        t.j(thisRef, "thisRef");
        t.j(property, "property");
        DataStore<Preferences> dataStore2 = this.INSTANCE;
        if (dataStore2 != null) {
            return dataStore2;
        }
        synchronized (this.lock) {
            try {
                if (this.INSTANCE == null) {
                    Context applicationContext = thisRef.getApplicationContext();
                    PreferenceDataStoreFactory preferenceDataStoreFactory = PreferenceDataStoreFactory.INSTANCE;
                    ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler = this.corruptionHandler;
                    l<Context, List<DataMigration<Preferences>>> lVar = this.produceMigrations;
                    t.i(applicationContext, "applicationContext");
                    this.INSTANCE = preferenceDataStoreFactory.a(replaceFileCorruptionHandler, lVar.invoke(applicationContext), this.scope, new PreferenceDataStoreSingletonDelegate$getValue$1$1(applicationContext, this));
                }
                dataStore = this.INSTANCE;
                t.g(dataStore);
            } catch (Throwable th) {
                throw th;
            }
        }
        return dataStore;
    }
}
