package com.google.protobuf;

/* JADX INFO: loaded from: classes10.dex */
final class d0 {
    private static final b0 FULL_SCHEMA = loadSchemaForFullRuntime();
    private static final b0 LITE_SCHEMA = new c0();

    static b0 full() {
        return FULL_SCHEMA;
    }

    static b0 lite() {
        return LITE_SCHEMA;
    }

    private static b0 loadSchemaForFullRuntime() {
        try {
            return (b0) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    d0() {
    }
}
