package androidx.versionedparcelable;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes11.dex */
public class ParcelUtils {
    private static final String INNER_BUNDLE_KEY = "a";

    @Nullable
    public static <T extends VersionedParcelable> T b(@NonNull Bundle bundle, @NonNull String str) {
        try {
            Bundle bundle2 = (Bundle) bundle.getParcelable(str);
            if (bundle2 == null) {
                return null;
            }
            bundle2.setClassLoader(ParcelUtils.class.getClassLoader());
            return (T) a(bundle2.getParcelable("a"));
        } catch (RuntimeException unused) {
            return null;
        }
    }

    @RestrictTo
    public static <T extends VersionedParcelable> T a(Parcelable parcelable) {
        if (parcelable instanceof ParcelImpl) {
            return (T) ((ParcelImpl) parcelable).c();
        }
        throw new IllegalArgumentException("Invalid parcel");
    }

    public static void c(@NonNull Bundle bundle, @NonNull String str, @Nullable VersionedParcelable versionedParcelable) {
        if (versionedParcelable == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("a", d(versionedParcelable));
        bundle.putParcelable(str, bundle2);
    }

    @RestrictTo
    public static Parcelable d(VersionedParcelable versionedParcelable) {
        return new ParcelImpl(versionedParcelable);
    }

    private ParcelUtils() {
    }
}
