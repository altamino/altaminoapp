package androidx.core.os;

import android.os.Message;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes11.dex */
public final class MessageCompat {
    private static boolean sTryIsAsynchronous = true;
    private static boolean sTrySetAsynchronous = true;

    @RequiresApi
    static class Api22Impl {
        private Api22Impl() {
        }

        @DoNotInline
        static boolean a(Message message) {
            return message.isAsynchronous();
        }

        @DoNotInline
        static void b(Message message, boolean z6) {
            message.setAsynchronous(z6);
        }
    }

    private MessageCompat() {
    }
}
