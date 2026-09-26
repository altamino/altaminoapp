package androidx.datastore.preferences.protobuf;

import java.util.Map;

/* JADX INFO: loaded from: classes10.dex */
class MapFieldSchemaLite implements MapFieldSchema {
    @Override // androidx.datastore.preferences.protobuf.MapFieldSchema
    public Object toImmutable(Object obj) {
        ((MapFieldLite) obj).n();
        return obj;
    }

    private static <K, V> int a(int i10, Object obj, Object obj2) {
        MapFieldLite mapFieldLite = (MapFieldLite) obj;
        MapEntryLite mapEntryLite = (MapEntryLite) obj2;
        int iA = 0;
        if (mapFieldLite.isEmpty()) {
            return 0;
        }
        for (Map.Entry<K, V> entry : mapFieldLite.entrySet()) {
            iA += mapEntryLite.a(i10, entry.getKey(), entry.getValue());
        }
        return iA;
    }

    private static <K, V> MapFieldLite<K, V> b(Object obj, Object obj2) {
        MapFieldLite<K, V> mapFieldLiteP = (MapFieldLite) obj;
        MapFieldLite<K, V> mapFieldLite = (MapFieldLite) obj2;
        if (!mapFieldLite.isEmpty()) {
            if (!mapFieldLiteP.m()) {
                mapFieldLiteP = mapFieldLiteP.p();
            }
            mapFieldLiteP.o(mapFieldLite);
        }
        return mapFieldLiteP;
    }

    @Override // androidx.datastore.preferences.protobuf.MapFieldSchema
    public Map<?, ?> forMapData(Object obj) {
        return (MapFieldLite) obj;
    }

    @Override // androidx.datastore.preferences.protobuf.MapFieldSchema
    public MapEntryLite.Metadata<?, ?> forMapMetadata(Object obj) {
        return ((MapEntryLite) obj).c();
    }

    @Override // androidx.datastore.preferences.protobuf.MapFieldSchema
    public Map<?, ?> forMutableMapData(Object obj) {
        return (MapFieldLite) obj;
    }

    @Override // androidx.datastore.preferences.protobuf.MapFieldSchema
    public boolean isImmutable(Object obj) {
        return !((MapFieldLite) obj).m();
    }

    MapFieldSchemaLite() {
    }

    @Override // androidx.datastore.preferences.protobuf.MapFieldSchema
    public int getSerializedSize(int i10, Object obj, Object obj2) {
        return a(i10, obj, obj2);
    }

    @Override // androidx.datastore.preferences.protobuf.MapFieldSchema
    public Object mergeFrom(Object obj, Object obj2) {
        return b(obj, obj2);
    }

    @Override // androidx.datastore.preferences.protobuf.MapFieldSchema
    public Object newMapField(Object obj) {
        return MapFieldLite.i().p();
    }
}
