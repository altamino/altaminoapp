package androidx.browser.trusted;

import android.content.pm.PackageManager;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes9.dex */
public final class Token {
    private static final String TAG = "Token";

    @NonNull
    private final TokenContents mContents;

    public boolean a(@NonNull String str, @NonNull PackageManager packageManager) {
        return PackageIdentityUtils.c(str, packageManager, this.mContents);
    }
}
