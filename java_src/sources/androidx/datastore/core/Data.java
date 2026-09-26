package androidx.datastore.core;

/* JADX INFO: loaded from: classes4.dex */
final class Data<T> extends State<T> {
    private final int hashCode;
    private final T value;

    public Data(T t5, int i10) {
        super(null);
        this.value = t5;
        this.hashCode = i10;
    }

    public final T b() {
        return this.value;
    }

    public final void a() {
        T t5 = this.value;
        if (!((t5 != null ? t5.hashCode() : 0) == this.hashCode)) {
            throw new IllegalStateException("Data in DataStore was mutated but DataStore is only compatible with Immutable types.".toString());
        }
    }
}
