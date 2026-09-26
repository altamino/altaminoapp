package m4;

import com.google.auto.value.AutoValue;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
@AutoValue
public abstract class r {
    public abstract List<String> b();

    public abstract String c();

    public static r a(String str, List<String> list) {
        return new a(str, list);
    }
}
