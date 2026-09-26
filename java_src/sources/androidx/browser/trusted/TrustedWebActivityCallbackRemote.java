package androidx.browser.trusted;

import android.os.IBinder;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class TrustedWebActivityCallbackRemote {
    private final android.support.customtabs.trusted.a mCallbackBinder;

    @Nullable
    static TrustedWebActivityCallbackRemote a(@Nullable IBinder iBinder) {
        android.support.customtabs.trusted.a aVarX1 = iBinder == null ? null : android.support.customtabs.trusted.a.AbstractBinderC0011a.x1(iBinder);
        if (aVarX1 == null) {
            return null;
        }
        return new TrustedWebActivityCallbackRemote(aVarX1);
    }

    private TrustedWebActivityCallbackRemote(@NonNull android.support.customtabs.trusted.a aVar) {
        this.mCallbackBinder = aVar;
    }
}
