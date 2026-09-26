package androidx.datastore.preferences;

import android.content.Context;
import androidx.datastore.DataStoreFile;
import java.io.File;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class PreferenceDataStoreFile {
    @NotNull
    public static final File a(@NotNull Context context, @NotNull String name) {
        t.j(context, "<this>");
        t.j(name, "name");
        return DataStoreFile.a(context, t.s(name, ".preferences_pb"));
    }
}
