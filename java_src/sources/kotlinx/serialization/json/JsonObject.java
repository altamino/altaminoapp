package kotlinx.serialization.json;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.function.BiFunction;
import java.util.function.Function;
import kotlin.collections.d0;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.json.internal.w0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
@kotlinx.serialization.i(with = s.class)
public final class JsonObject extends JsonElement implements Map<String, JsonElement>, f8.a {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private final Map<String, JsonElement> content;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final KSerializer<JsonObject> serializer() {
            return s.INSTANCE;
        }
    }

    static final class a extends kotlin.jvm.internal.v implements e8.l<Map.Entry<? extends String, ? extends JsonElement>, CharSequence> {
        public static final a INSTANCE = new a();

        a() {
            super(1);
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CharSequence invoke(@NotNull Map.Entry<String, ? extends JsonElement> entry) {
            kotlin.jvm.internal.t.j(entry, "<name for destructuring parameter 0>");
            String key = entry.getKey();
            JsonElement value = entry.getValue();
            StringBuilder sb = new StringBuilder();
            w0.c(sb, key);
            sb.append(kotlinx.serialization.json.internal.b.COLON);
            sb.append(value);
            String string = sb.toString();
            kotlin.jvm.internal.t.i(string, "StringBuilder().apply(builderAction).toString()");
            return string;
        }
    }

    public boolean a(@NotNull String key) {
        kotlin.jvm.internal.t.j(key, "key");
        return this.content.containsKey(key);
    }

    @Override // java.util.Map
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public /* bridge */ /* synthetic */ JsonElement compute(String str, BiFunction<? super String, ? super JsonElement, ? extends JsonElement> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public /* bridge */ /* synthetic */ JsonElement computeIfAbsent(String str, Function<? super String, ? extends JsonElement> function) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public /* bridge */ /* synthetic */ JsonElement computeIfPresent(String str, BiFunction<? super String, ? super JsonElement, ? extends JsonElement> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean e(@NotNull JsonElement value) {
        kotlin.jvm.internal.t.j(value, "value");
        return this.content.containsValue(value);
    }

    @Nullable
    public JsonElement f(@NotNull String key) {
        kotlin.jvm.internal.t.j(key, "key");
        return this.content.get(key);
    }

    @NotNull
    public Set<Map.Entry<String, JsonElement>> g() {
        return this.content.entrySet();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.content.isEmpty();
    }

    @NotNull
    public Set<String> j() {
        return this.content.keySet();
    }

    public int m() {
        return this.content.size();
    }

    @Override // java.util.Map
    public /* bridge */ /* synthetic */ JsonElement merge(String str, JsonElement jsonElement, BiFunction<? super JsonElement, ? super JsonElement, ? extends JsonElement> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @NotNull
    public Collection<JsonElement> p() {
        return this.content.values();
    }

    @Override // java.util.Map
    public /* bridge */ /* synthetic */ JsonElement put(String str, JsonElement jsonElement) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public void putAll(Map<? extends String, ? extends JsonElement> map) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public /* bridge */ /* synthetic */ JsonElement putIfAbsent(String str, JsonElement jsonElement) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public JsonElement remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public /* bridge */ /* synthetic */ JsonElement replace(String str, JsonElement jsonElement) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public void replaceAll(BiFunction<? super String, ? super JsonElement, ? extends JsonElement> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public JsonObject(@NotNull Map<String, ? extends JsonElement> content) {
        super(null);
        kotlin.jvm.internal.t.j(content, "content");
        this.content = content;
    }

    @Override // java.util.Map
    public final /* bridge */ boolean containsKey(Object obj) {
        if (obj instanceof String) {
            return a((String) obj);
        }
        return false;
    }

    @Override // java.util.Map
    public final /* bridge */ boolean containsValue(Object obj) {
        if (obj instanceof JsonElement) {
            return e((JsonElement) obj);
        }
        return false;
    }

    @Override // java.util.Map
    public boolean equals(@Nullable Object obj) {
        return kotlin.jvm.internal.t.e(this.content, obj);
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ JsonElement get(Object obj) {
        if (obj instanceof String) {
            return f((String) obj);
        }
        return null;
    }

    @Override // java.util.Map
    public int hashCode() {
        return this.content.hashCode();
    }

    @Override // java.util.Map
    public /* bridge */ /* synthetic */ boolean replace(String str, JsonElement jsonElement, JsonElement jsonElement2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @NotNull
    public String toString() {
        return d0.t0(this.content.entrySet(), ",", "{", "}", 0, null, a.INSTANCE, 24, null);
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry<String, JsonElement>> entrySet() {
        return g();
    }

    @Override // java.util.Map
    public final /* bridge */ Set<String> keySet() {
        return j();
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return m();
    }

    @Override // java.util.Map
    public final /* bridge */ Collection<JsonElement> values() {
        return p();
    }
}
