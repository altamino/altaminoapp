package androidx.core.app;

import android.app.Service;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes4.dex */
public final class ServiceCompat {
    public static final int START_STICKY = 1;
    public static final int STOP_FOREGROUND_DETACH = 2;
    public static final int STOP_FOREGROUND_REMOVE = 1;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface StopForegroundFlags {
    }

    @RequiresApi
    static class Api24Impl {
        private Api24Impl() {
        }

        @DoNotInline
        static void a(Service service, int i10) {
            service.stopForeground(i10);
        }
    }

    private ServiceCompat() {
    }
}
