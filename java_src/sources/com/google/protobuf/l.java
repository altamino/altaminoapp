package com.google.protobuf;

/* JADX INFO: loaded from: classes10.dex */
final class l {
    private static final j<?> LITE_SCHEMA = new k();
    private static final j<?> FULL_SCHEMA = loadSchemaForFullRuntime();

    static j<?> lite() {
        return LITE_SCHEMA;
    }

    static j<?> full() {
        j<?> jVar = FULL_SCHEMA;
        if (jVar != null) {
            return jVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    private static j<?> loadSchemaForFullRuntime() {
        try {
            return (j) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    l() {
    }
}
