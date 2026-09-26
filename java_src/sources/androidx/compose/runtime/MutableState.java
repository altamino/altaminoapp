package androidx.compose.runtime;

/* JADX INFO: loaded from: classes8.dex */
@Stable
public interface MutableState<T> extends State<T> {
    @Override // androidx.compose.runtime.State
    T getValue();

    void setValue(T t5);
}
