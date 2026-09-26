package l4;

import com.google.firebase.components.f0;

/* JADX INFO: loaded from: classes3.dex */
public class a<T> {
    private final T payload;
    private final Class<T> type;

    public T a() {
        return this.payload;
    }

    public Class<T> b() {
        return this.type;
    }

    public String toString() {
        return String.format("Event{type: %s, payload: %s}", this.type, this.payload);
    }

    public a(Class<T> cls, T t5) {
        this.type = (Class) f0.b(cls);
        this.payload = (T) f0.b(t5);
    }
}
