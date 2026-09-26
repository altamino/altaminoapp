package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes10.dex */
final class NewInstanceSchemas {
    private static final NewInstanceSchema FULL_SCHEMA = c();
    private static final NewInstanceSchema LITE_SCHEMA = new NewInstanceSchemaLite();

    static NewInstanceSchema a() {
        return FULL_SCHEMA;
    }

    static NewInstanceSchema b() {
        return LITE_SCHEMA;
    }

    private static NewInstanceSchema c() {
        try {
            return (NewInstanceSchema) Class.forName("androidx.datastore.preferences.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    NewInstanceSchemas() {
    }
}
