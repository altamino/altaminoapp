package c5;

import androidx.annotation.NonNull;
import com.google.auto.value.AutoValue;
import java.util.Set;

/* JADX INFO: loaded from: classes7.dex */
@AutoValue
public abstract class b {
    @NonNull
    public abstract Set<String> b();

    @NonNull
    public static b a(@NonNull Set<String> set) {
        return new a(set);
    }
}
