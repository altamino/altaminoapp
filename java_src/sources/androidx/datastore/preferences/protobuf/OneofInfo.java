package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes11.dex */
final class OneofInfo {
    private final java.lang.reflect.Field caseField;
    private final int id;
    private final java.lang.reflect.Field valueField;

    public java.lang.reflect.Field a() {
        return this.caseField;
    }

    public java.lang.reflect.Field b() {
        return this.valueField;
    }

    public OneofInfo(int i10, java.lang.reflect.Field field, java.lang.reflect.Field field2) {
        this.id = i10;
        this.caseField = field;
        this.valueField = field2;
    }
}
