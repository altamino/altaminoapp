package androidx.databinding;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public interface ObservableList<T> extends List<T> {

    public static abstract class OnListChangedCallback<T extends ObservableList> {
        public abstract void a(T sender);

        public abstract void e(T sender, int positionStart, int itemCount);

        public abstract void f(T sender, int positionStart, int itemCount);

        public abstract void g(T sender, int fromPosition, int toPosition, int itemCount);

        public abstract void h(T sender, int positionStart, int itemCount);
    }

    void k(OnListChangedCallback<? extends ObservableList<T>> callback);

    void l(OnListChangedCallback<? extends ObservableList<T>> callback);
}
