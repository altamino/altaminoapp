package u5;

import android.content.Context;
import java.util.concurrent.atomic.AtomicBoolean;
import org.threeten.bp.zone.h;

/* JADX INFO: loaded from: classes10.dex */
public final class a {
    private static final AtomicBoolean initialized = new AtomicBoolean();

    public static void a(Context context) {
        b(context, "org/threeten/bp/TZDB.dat");
    }

    public static void b(Context context, String str) {
        if (initialized.getAndSet(true)) {
            return;
        }
        h.c(new b(context, str));
    }
}
