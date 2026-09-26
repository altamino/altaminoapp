package androidx.datastore.preferences;

import android.content.Context;
import androidx.datastore.core.DataMigration;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import androidx.datastore.preferences.core.Preferences;
import e8.l;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.properties.d;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.p0;
import kotlinx.coroutines.y2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class PreferenceDataStoreDelegateKt {
    @NotNull
    public static final d<Context, DataStore<Preferences>> a(@NotNull String name, @Nullable ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, @NotNull l<? super Context, ? extends List<? extends DataMigration<Preferences>>> produceMigrations, @NotNull o0 scope) {
        t.j(name, "name");
        t.j(produceMigrations, "produceMigrations");
        t.j(scope, "scope");
        return new PreferenceDataStoreSingletonDelegate(name, replaceFileCorruptionHandler, produceMigrations, scope);
    }

    public static /* synthetic */ d b(String str, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, l lVar, o0 o0Var, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            replaceFileCorruptionHandler = null;
        }
        if ((i10 & 4) != 0) {
            lVar = PreferenceDataStoreDelegateKt$preferencesDataStore$1.INSTANCE;
        }
        if ((i10 & 8) != 0) {
            o0Var = p0.a(e1.b().plus(y2.b(null, 1, null)));
        }
        return a(str, replaceFileCorruptionHandler, lVar, o0Var);
    }
}
