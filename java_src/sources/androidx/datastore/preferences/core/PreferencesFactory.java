package androidx.datastore.preferences.core;

import java.util.Arrays;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class PreferencesFactory {
    @NotNull
    public static final Preferences a() {
        return new MutablePreferences(null, true, 1, null);
    }

    @NotNull
    public static final MutablePreferences b(@NotNull Preferences.Pair<?>... pairs) {
        t.j(pairs, "pairs");
        MutablePreferences mutablePreferences = new MutablePreferences(null, false, 1, null);
        mutablePreferences.g((Preferences.Pair[]) Arrays.copyOf(pairs, pairs.length));
        return mutablePreferences;
    }
}
