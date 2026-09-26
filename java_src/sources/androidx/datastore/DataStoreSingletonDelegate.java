package androidx.datastore;

import android.content.Context;
import androidx.annotation.GuardedBy;
import androidx.datastore.core.DataMigration;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.DataStoreFactory;
import androidx.datastore.core.Serializer;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import e8.l;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.properties.d;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class DataStoreSingletonDelegate<T> implements d<Context, DataStore<T>> {

    @GuardedBy
    @Nullable
    private volatile DataStore<T> INSTANCE;

    @Nullable
    private final ReplaceFileCorruptionHandler<T> corruptionHandler;

    @NotNull
    private final String fileName;

    @NotNull
    private final Object lock;

    @NotNull
    private final l<Context, List<DataMigration<T>>> produceMigrations;

    @NotNull
    private final o0 scope;

    @NotNull
    private final Serializer<T> serializer;

    /* JADX WARN: Multi-variable type inference failed */
    public DataStoreSingletonDelegate(@NotNull String fileName, @NotNull Serializer<T> serializer, @Nullable ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler, @NotNull l<? super Context, ? extends List<? extends DataMigration<T>>> produceMigrations, @NotNull o0 scope) {
        t.j(fileName, "fileName");
        t.j(serializer, "serializer");
        t.j(produceMigrations, "produceMigrations");
        t.j(scope, "scope");
        this.fileName = fileName;
        this.serializer = serializer;
        this.corruptionHandler = replaceFileCorruptionHandler;
        this.produceMigrations = produceMigrations;
        this.scope = scope;
        this.lock = new Object();
    }

    @Override // kotlin.properties.d
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public DataStore<T> getValue(@NotNull Context thisRef, @NotNull KProperty<?> property) {
        DataStore<T> dataStore;
        t.j(thisRef, "thisRef");
        t.j(property, "property");
        DataStore<T> dataStore2 = this.INSTANCE;
        if (dataStore2 != null) {
            return dataStore2;
        }
        synchronized (this.lock) {
            try {
                if (this.INSTANCE == null) {
                    Context applicationContext = thisRef.getApplicationContext();
                    Serializer<T> serializer = this.serializer;
                    ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler = this.corruptionHandler;
                    l<Context, List<DataMigration<T>>> lVar = this.produceMigrations;
                    t.i(applicationContext, "applicationContext");
                    this.INSTANCE = DataStoreFactory.INSTANCE.a(serializer, replaceFileCorruptionHandler, lVar.invoke(applicationContext), this.scope, new DataStoreSingletonDelegate$getValue$1$1(applicationContext, this));
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
