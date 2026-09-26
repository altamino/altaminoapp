package io.ktor.util;

import java.util.Map;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
final class o<Key, Value> implements Map.Entry<Key, Value>, f8.e.a {
    private final Key key;
    private Value value;

    public void a(Value value) {
        this.value = value;
    }

    @Override // java.util.Map.Entry
    public boolean equals(@Nullable Object obj) {
        if (obj == null || !(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return kotlin.jvm.internal.t.e(entry.getKey(), getKey()) && kotlin.jvm.internal.t.e(entry.getValue(), getValue());
    }

    @Override // java.util.Map.Entry
    public Key getKey() {
        return this.key;
    }

    @Override // java.util.Map.Entry
    public Value getValue() {
        return this.value;
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getKey());
        sb.append('=');
        sb.append(getValue());
        return sb.toString();
    }

    public o(Key key, Value value) {
        this.key = key;
        this.value = value;
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        Key key = getKey();
        kotlin.jvm.internal.t.g(key);
        int iHashCode = key.hashCode() + 527;
        Value value = getValue();
        kotlin.jvm.internal.t.g(value);
        return iHashCode + value.hashCode();
    }

    @Override // java.util.Map.Entry
    public Value setValue(Value value) {
        a(value);
        return getValue();
    }
}
