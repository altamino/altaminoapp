package androidx.webkit.internal;

import android.os.Build;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.NonNull;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ApiFeature implements ConditionallySupportedFeature {
    private static final Set<ApiFeature> sValues = new HashSet();
    private final String mInternalFeatureValue;
    private final String mPublicFeatureValue;

    @Override // androidx.webkit.internal.ConditionallySupportedFeature
    @NonNull
    public String a() {
        return this.mPublicFeatureValue;
    }

    public abstract boolean b();

    private static class LAZY_HOLDER {
        static final Set<String> WEBVIEW_APK_FEATURES = new HashSet(Arrays.asList(WebViewGlueCommunicator.d().a()));

        private LAZY_HOLDER() {
        }
    }

    public static class M extends ApiFeature {
        @Override // androidx.webkit.internal.ApiFeature
        public final boolean b() {
            return true;
        }

        M(@NonNull String str, @NonNull String str2) {
            super(str, str2);
        }
    }

    public static class N extends ApiFeature {
        @Override // androidx.webkit.internal.ApiFeature
        public final boolean b() {
            return Build.VERSION.SDK_INT >= 24;
        }

        N(@NonNull String str, @NonNull String str2) {
            super(str, str2);
        }
    }

    public static class NoFramework extends ApiFeature {
        @Override // androidx.webkit.internal.ApiFeature
        public final boolean b() {
            return false;
        }

        NoFramework(@NonNull String str, @NonNull String str2) {
            super(str, str2);
        }
    }

    public static class O extends ApiFeature {
        @Override // androidx.webkit.internal.ApiFeature
        public final boolean b() {
            return Build.VERSION.SDK_INT >= 26;
        }

        O(@NonNull String str, @NonNull String str2) {
            super(str, str2);
        }
    }

    public static class O_MR1 extends ApiFeature {
        @Override // androidx.webkit.internal.ApiFeature
        public final boolean b() {
            return Build.VERSION.SDK_INT >= 27;
        }

        O_MR1(@NonNull String str, @NonNull String str2) {
            super(str, str2);
        }
    }

    public static class P extends ApiFeature {
        @Override // androidx.webkit.internal.ApiFeature
        public final boolean b() {
            return Build.VERSION.SDK_INT >= 28;
        }

        P(@NonNull String str, @NonNull String str2) {
            super(str, str2);
        }
    }

    public static class Q extends ApiFeature {
        @Override // androidx.webkit.internal.ApiFeature
        public final boolean b() {
            return Build.VERSION.SDK_INT >= 29;
        }

        Q(@NonNull String str, @NonNull String str2) {
            super(str, str2);
        }
    }

    public static class T extends ApiFeature {
        @Override // androidx.webkit.internal.ApiFeature
        public final boolean b() {
            return Build.VERSION.SDK_INT >= 33;
        }

        T(@NonNull String str, @NonNull String str2) {
            super(str, str2);
        }
    }

    @NonNull
    public static Set<ApiFeature> d() {
        return Collections.unmodifiableSet(sValues);
    }

    @ChecksSdkIntAtLeast
    public boolean c() {
        return org.chromium.support_lib_boundary.util.a.b(LAZY_HOLDER.WEBVIEW_APK_FEATURES, this.mInternalFeatureValue);
    }

    ApiFeature(@NonNull String str, @NonNull String str2) {
        this.mPublicFeatureValue = str;
        this.mInternalFeatureValue = str2;
        sValues.add(this);
    }

    @Override // androidx.webkit.internal.ConditionallySupportedFeature
    public boolean isSupported() {
        if (!b() && !c()) {
            return false;
        }
        return true;
    }
}
