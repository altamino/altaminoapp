package i6;

import androidx.annotation.NonNull;
import com.smaato.sdk.core.util.fi.NullableFunction;

/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class e {
    public static /* synthetic */ Object b(Object obj) {
        return obj;
    }

    @NonNull
    public static <T> NullableFunction<T, T> a() {
        return new NullableFunction() { // from class: i6.d
            public final Object apply(Object obj) {
                return e.b(obj);
            }
        };
    }
}
