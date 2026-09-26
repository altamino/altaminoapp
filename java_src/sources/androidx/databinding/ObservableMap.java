package androidx.databinding;

import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public interface ObservableMap<K, V> extends Map<K, V> {

    public static abstract class OnMapChangedCallback<T extends ObservableMap<K, V>, K, V> {
        public abstract void a(T sender, K key);
    }

    void b(OnMapChangedCallback<? extends ObservableMap<K, V>, K, V> callback);

    void c(OnMapChangedCallback<? extends ObservableMap<K, V>, K, V> callback);
}
