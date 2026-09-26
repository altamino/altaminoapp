package androidx.databinding;

import androidx.annotation.Nullable;
import java.io.Serializable;

/* JADX INFO: loaded from: classes11.dex */
public class ObservableField<T> extends BaseObservableField implements Serializable {
    static final long serialVersionUID = 1;
    private T mValue;

    public ObservableField(T t5) {
        this.mValue = t5;
    }

    @Nullable
    public T c() {
        return this.mValue;
    }

    public ObservableField() {
    }

    public ObservableField(Observable... observableArr) {
        super(observableArr);
    }
}
