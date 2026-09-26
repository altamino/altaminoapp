package com.google.protobuf;

/* JADX INFO: loaded from: classes10.dex */
final class v {
    private static final t FULL_SCHEMA = loadSchemaForFullRuntime();
    private static final t LITE_SCHEMA = new u();

    static t full() {
        return FULL_SCHEMA;
    }

    static t lite() {
        return LITE_SCHEMA;
    }

    private static t loadSchemaForFullRuntime() {
        try {
            return (t) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    v() {
    }
}
