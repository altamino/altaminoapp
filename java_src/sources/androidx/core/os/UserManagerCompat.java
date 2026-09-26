package androidx.core.os;

import android.content.Context;
import android.os.Build;
import android.os.UserManager;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes8.dex */
public class UserManagerCompat {

    @RequiresApi
    static class Api24Impl {
        @DoNotInline
        static boolean a(Context context) {
            return ((UserManager) context.getSystemService(UserManager.class)).isUserUnlocked();
        }

        private Api24Impl() {
        }
    }

    public static boolean a(@NonNull Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return Api24Impl.a(context);
        }
        return true;
    }

    private UserManagerCompat() {
    }
}
