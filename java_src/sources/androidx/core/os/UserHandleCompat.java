package androidx.core.os;

import android.os.UserHandle;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes6.dex */
@RequiresApi
public class UserHandleCompat {

    @Nullable
    private static Method sGetUserIdMethod;

    @Nullable
    private static Constructor<UserHandle> sUserHandleConstructor;

    @RequiresApi
    private static class Api24Impl {
        private Api24Impl() {
        }
    }

    private UserHandleCompat() {
    }
}
