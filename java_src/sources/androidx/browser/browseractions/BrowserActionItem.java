package androidx.browser.browseractions;

import android.app.PendingIntent;
import android.net.Uri;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes9.dex */
@Deprecated
public class BrowserActionItem {

    @Nullable
    private final PendingIntent mAction;

    @DrawableRes
    private int mIconId;

    @Nullable
    private Uri mIconUri;

    @Nullable
    private Runnable mRunnableAction;
    private final String mTitle;

    public BrowserActionItem(@NonNull String str, @NonNull PendingIntent pendingIntent, @DrawableRes int i10) {
        this.mTitle = str;
        this.mAction = pendingIntent;
        this.mIconId = i10;
    }

    public int b() {
        return this.mIconId;
    }

    @Nullable
    @RestrictTo
    public Uri c() {
        return this.mIconUri;
    }

    @Nullable
    @RestrictTo
    Runnable d() {
        return this.mRunnableAction;
    }

    @NonNull
    public String e() {
        return this.mTitle;
    }

    @RestrictTo
    public BrowserActionItem(@NonNull String str, @NonNull PendingIntent pendingIntent, @NonNull Uri uri) {
        this.mTitle = str;
        this.mAction = pendingIntent;
        this.mIconUri = uri;
    }

    @NonNull
    public PendingIntent a() {
        PendingIntent pendingIntent = this.mAction;
        if (pendingIntent != null) {
            return pendingIntent;
        }
        throw new IllegalStateException("Can't call getAction on BrowserActionItem with null action.");
    }

    public BrowserActionItem(@NonNull String str, @NonNull PendingIntent pendingIntent) {
        this(str, pendingIntent, 0);
    }
}
