package androidx.privacysandbox.ads.adservices.internal;

import android.os.Build;
import android.os.ext.SdkExtensions;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class AdServicesInfo {

    @NotNull
    public static final AdServicesInfo INSTANCE = new AdServicesInfo();

    @RequiresApi
    private static final class Extensions30Impl {

        @NotNull
        public static final Extensions30Impl INSTANCE = new Extensions30Impl();

        private Extensions30Impl() {
        }

        @DoNotInline
        public final int a() {
            return SdkExtensions.getExtensionVersion(1000000);
        }
    }

    public final int a() {
        if (Build.VERSION.SDK_INT >= 30) {
            return Extensions30Impl.INSTANCE.a();
        }
        return 0;
    }

    private AdServicesInfo() {
    }
}
