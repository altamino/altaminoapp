package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes11.dex */
final class MapFieldSchemas {
    private static final MapFieldSchema FULL_SCHEMA = c();
    private static final MapFieldSchema LITE_SCHEMA = new MapFieldSchemaLite();

    static MapFieldSchema a() {
        return FULL_SCHEMA;
    }

    static MapFieldSchema b() {
        return LITE_SCHEMA;
    }

    private static MapFieldSchema c() {
        try {
            return (MapFieldSchema) Class.forName("androidx.datastore.preferences.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    MapFieldSchemas() {
    }
}
