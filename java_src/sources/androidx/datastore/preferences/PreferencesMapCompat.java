package androidx.datastore.preferences;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.preferences.protobuf.InvalidProtocolBufferException;
import java.io.IOException;
import java.io.InputStream;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class PreferencesMapCompat {

    @NotNull
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final PreferencesProto.PreferenceMap a(@NotNull InputStream input) throws IOException {
            t.j(input, "input");
            try {
                PreferencesProto.PreferenceMap preferenceMapJ = PreferencesProto.PreferenceMap.J(input);
                t.i(preferenceMapJ, "{\n                PreferencesProto.PreferenceMap.parseFrom(input)\n            }");
                return preferenceMapJ;
            } catch (InvalidProtocolBufferException e) {
                throw new CorruptionException("Unable to parse preferences proto.", e);
            }
        }
    }
}
