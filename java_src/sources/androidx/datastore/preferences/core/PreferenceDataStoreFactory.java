package androidx.datastore.preferences.core;

import androidx.datastore.core.DataMigration;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.DataStoreFactory;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import e8.a;
import java.io.File;
import java.util.List;
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.p0;
import kotlinx.coroutines.y2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class PreferenceDataStoreFactory {

    @NotNull
    public static final PreferenceDataStoreFactory INSTANCE = new PreferenceDataStoreFactory();

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DataStore b(PreferenceDataStoreFactory preferenceDataStoreFactory, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List list, o0 o0Var, a aVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            replaceFileCorruptionHandler = null;
        }
        if ((i10 & 2) != 0) {
            list = v.m();
        }
        if ((i10 & 4) != 0) {
            o0Var = p0.a(e1.b().plus(y2.b(null, 1, null)));
        }
        return preferenceDataStoreFactory.a(replaceFileCorruptionHandler, list, o0Var, aVar);
    }

    @NotNull
    public final DataStore<Preferences> a(@Nullable ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, @NotNull List<? extends DataMigration<Preferences>> migrations, @NotNull o0 scope, @NotNull a<? extends File> produceFile) {
        t.j(migrations, "migrations");
        t.j(scope, "scope");
        t.j(produceFile, "produceFile");
        return new PreferenceDataStore(DataStoreFactory.INSTANCE.a(PreferencesSerializer.INSTANCE, replaceFileCorruptionHandler, migrations, scope, new PreferenceDataStoreFactory$create$delegate$1(produceFile)));
    }

    private PreferenceDataStoreFactory() {
    }
}
