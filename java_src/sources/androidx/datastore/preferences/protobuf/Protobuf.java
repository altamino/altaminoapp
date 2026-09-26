package androidx.datastore.preferences.protobuf;

import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes9.dex */
final class Protobuf {
    private static final Protobuf INSTANCE = new Protobuf();
    private final ConcurrentMap<Class<?>, Schema<?>> schemaCache = new ConcurrentHashMap();
    private final SchemaFactory schemaFactory = new ManifestSchemaFactory();

    public static Protobuf a() {
        return INSTANCE;
    }

    public Schema<?> c(Class<?> cls, Schema<?> schema) {
        Internal.b(cls, "messageType");
        Internal.b(schema, "schema");
        return this.schemaCache.putIfAbsent(cls, schema);
    }

    public <T> Schema<T> d(Class<T> cls) {
        Internal.b(cls, "messageType");
        Schema<T> schema = (Schema) this.schemaCache.get(cls);
        if (schema != null) {
            return schema;
        }
        Schema<T> schemaCreateSchema = this.schemaFactory.createSchema(cls);
        Schema<T> schema2 = (Schema<T>) c(cls, schemaCreateSchema);
        return schema2 != null ? schema2 : schemaCreateSchema;
    }

    private Protobuf() {
    }

    public <T> void b(T t5, Reader reader, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        e(t5).b(t5, reader, extensionRegistryLite);
    }

    public <T> Schema<T> e(T t5) {
        return d(t5.getClass());
    }

    public <T> void f(T t5, Writer writer) throws IOException {
        e(t5).a(t5, writer);
    }
}
