package f2;

import androidx.annotation.Nullable;
import com.google.auto.value.AutoValue;

/* JADX INFO: loaded from: classes10.dex */
@AutoValue
public abstract class c<T> {
    @Nullable
    public abstract Integer a();

    public abstract T b();

    public abstract d c();

    public static <T> c<T> d(T t5) {
        return new a(null, t5, d.DEFAULT);
    }

    public static <T> c<T> e(T t5) {
        return new a(null, t5, d.HIGHEST);
    }
}
