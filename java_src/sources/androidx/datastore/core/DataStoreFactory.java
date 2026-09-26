package androidx.datastore.core;

import androidx.datastore.core.handlers.NoOpCorruptionHandler;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import e8.a;
import java.io.File;
import java.util.List;
import kotlin.collections.u;
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.p0;
import kotlinx.coroutines.y2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class DataStoreFactory {

    @NotNull
    public static final DataStoreFactory INSTANCE = new DataStoreFactory();

    public static /* synthetic */ DataStore b(DataStoreFactory dataStoreFactory, Serializer serializer, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List list, o0 o0Var, a aVar, int i10, Object obj) {
        ReplaceFileCorruptionHandler replaceFileCorruptionHandler2 = (i10 & 2) != 0 ? null : replaceFileCorruptionHandler;
        if ((i10 & 4) != 0) {
            list = v.m();
        }
        List list2 = list;
        if ((i10 & 8) != 0) {
            o0Var = p0.a(e1.b().plus(y2.b(null, 1, null)));
        }
        return dataStoreFactory.a(serializer, replaceFileCorruptionHandler2, list2, o0Var, aVar);
    }

    @NotNull
    public final <T> DataStore<T> a(@NotNull Serializer<T> serializer, @Nullable ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler, @NotNull List<? extends DataMigration<T>> migrations, @NotNull o0 scope, @NotNull a<? extends File> produceFile) {
        t.j(serializer, "serializer");
        t.j(migrations, "migrations");
        t.j(scope, "scope");
        t.j(produceFile, "produceFile");
        if (replaceFileCorruptionHandler == null) {
            replaceFileCorruptionHandler = (ReplaceFileCorruptionHandler<T>) new NoOpCorruptionHandler();
        }
        return new SingleProcessDataStore(produceFile, serializer, u.e(DataMigrationInitializer.Companion.b(migrations)), replaceFileCorruptionHandler, scope);
    }

    private DataStoreFactory() {
    }
}
