package androidx.core.telephony;

import android.telephony.SubscriptionManager;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes9.dex */
@RequiresApi
public class SubscriptionManagerCompat {
    private static Method sGetSlotIndexMethod;

    @RequiresApi
    private static class Api29Impl {
        private Api29Impl() {
        }

        @DoNotInline
        static int a(int i10) {
            return SubscriptionManager.getSlotIndex(i10);
        }
    }

    private SubscriptionManagerCompat() {
    }
}
