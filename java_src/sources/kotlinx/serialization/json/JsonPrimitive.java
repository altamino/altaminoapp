package kotlinx.serialization.json;

import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
@kotlinx.serialization.i(with = t.class)
public abstract class JsonPrimitive extends JsonElement {

    @NotNull
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final KSerializer<JsonPrimitive> serializer() {
            return t.INSTANCE;
        }
    }

    public /* synthetic */ JsonPrimitive(kotlin.jvm.internal.k kVar) {
        this();
    }

    @NotNull
    public abstract String e();

    private JsonPrimitive() {
        super(null);
    }

    @NotNull
    public String toString() {
        return e();
    }
}
