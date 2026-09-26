package c2;

import androidx.annotation.RestrictTo;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo
public final class a {

    @NotNull
    public static final a INSTANCE = new a();
    private static final String TAG = a.class.getCanonicalName();
    private static boolean enabled;

    public static final void a() {
        enabled = true;
    }

    private a() {
    }
}
