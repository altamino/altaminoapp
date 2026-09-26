package kotlinx.serialization.json;

import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
@kotlinx.serialization.i(with = q.class)
public final class JsonNull extends JsonPrimitive {

    @NotNull
    public static final JsonNull INSTANCE = new JsonNull();

    @NotNull
    private static final String content = "null";
    private static final /* synthetic */ w7.m<KSerializer<Object>> $cachedSerializer$delegate = w7.o.b(w7.q.PUBLICATION, a.INSTANCE);

    static final class a extends kotlin.jvm.internal.v implements e8.a<KSerializer<Object>> {
        public static final a INSTANCE = new a();

        a() {
            super(0);
        }

        @Override // e8.a
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final KSerializer<Object> invoke() {
            return q.INSTANCE;
        }
    }

    private JsonNull() {
        super(null);
    }

    private final /* synthetic */ w7.m f() {
        return $cachedSerializer$delegate;
    }

    @Override // kotlinx.serialization.json.JsonPrimitive
    @NotNull
    public String e() {
        return content;
    }

    @NotNull
    public final KSerializer<JsonNull> serializer() {
        return (KSerializer) f().getValue();
    }
}
