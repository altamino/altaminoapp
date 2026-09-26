package g2;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.auto.value.AutoValue;

/* JADX INFO: loaded from: classes11.dex */
@AutoValue
public abstract class h {
    private static final String DEFAULT_BACKEND_NAME = "cct";

    public abstract Context b();

    @NonNull
    public abstract String c();

    public abstract m2.a d();

    public abstract m2.a e();

    public static h a(Context context, m2.a aVar, m2.a aVar2, String str) {
        return new c(context, aVar, aVar2, str);
    }
}
