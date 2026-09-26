package kotlinx.serialization.json;

import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
@kotlinx.serialization.i(with = i.class)
public abstract class JsonElement {

    @NotNull
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final KSerializer<JsonElement> serializer() {
            return i.INSTANCE;
        }
    }

    public /* synthetic */ JsonElement(kotlin.jvm.internal.k kVar) {
        this();
    }

    private JsonElement() {
    }
}
