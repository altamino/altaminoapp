package kotlinx.coroutines.flow;

/* JADX INFO: loaded from: classes9.dex */
public interface x<T> extends l0<T>, w<T> {
    boolean a(T t5, T t10);

    @Override // kotlinx.coroutines.flow.l0
    T getValue();

    void setValue(T t5);
}
