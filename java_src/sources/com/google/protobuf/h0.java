package com.google.protobuf;

import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes10.dex */
final class h0 {
    private static final h0 INSTANCE = new h0();
    private final ConcurrentMap<Class<?>, m0<?>> schemaCache = new ConcurrentHashMap();
    private final n0 schemaFactory = new s();

    public static h0 getInstance() {
        return INSTANCE;
    }

    public <T> void mergeFrom(T t5, k0 k0Var) throws IOException {
        mergeFrom(t5, k0Var, ExtensionRegistryLite.getEmptyRegistry());
    }

    public <T> m0<T> schemaFor(Class<T> cls) {
        Internal.checkNotNull(cls, "messageType");
        m0<T> m0Var = (m0) this.schemaCache.get(cls);
        if (m0Var != null) {
            return m0Var;
        }
        m0<T> m0VarCreateSchema = this.schemaFactory.createSchema(cls);
        m0<T> m0Var2 = (m0<T>) registerSchema(cls, m0VarCreateSchema);
        return m0Var2 != null ? m0Var2 : m0VarCreateSchema;
    }

    int getTotalSchemaSize() {
        int schemaSize = 0;
        for (m0<?> m0Var : this.schemaCache.values()) {
            if (m0Var instanceof z) {
                schemaSize += ((z) m0Var).getSchemaSize();
            }
        }
        return schemaSize;
    }

    public <T> void mergeFrom(T t5, k0 k0Var, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        schemaFor(t5).mergeFrom(t5, k0Var, extensionRegistryLite);
    }

    public m0<?> registerSchema(Class<?> cls, m0<?> m0Var) {
        Internal.checkNotNull(cls, "messageType");
        Internal.checkNotNull(m0Var, "schema");
        return this.schemaCache.putIfAbsent(cls, m0Var);
    }

    public m0<?> registerSchemaOverride(Class<?> cls, m0<?> m0Var) {
        Internal.checkNotNull(cls, "messageType");
        Internal.checkNotNull(m0Var, "schema");
        return this.schemaCache.put(cls, m0Var);
    }

    private h0() {
    }

    <T> boolean isInitialized(T t5) {
        return schemaFor(t5).isInitialized(t5);
    }

    public <T> void makeImmutable(T t5) {
        schemaFor(t5).makeImmutable(t5);
    }

    public <T> void writeTo(T t5, Writer writer) throws IOException {
        schemaFor(t5).writeTo(t5, writer);
    }

    public <T> m0<T> schemaFor(T t5) {
        return schemaFor((Class) t5.getClass());
    }
}
