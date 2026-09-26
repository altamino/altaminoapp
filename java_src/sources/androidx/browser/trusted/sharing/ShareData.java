package androidx.browser.trusted.sharing;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public final class ShareData {
    public static final String KEY_TEXT = "androidx.browser.trusted.sharing.KEY_TEXT";
    public static final String KEY_TITLE = "androidx.browser.trusted.sharing.KEY_TITLE";
    public static final String KEY_URIS = "androidx.browser.trusted.sharing.KEY_URIS";

    @Nullable
    public final String text;

    @Nullable
    public final String title;

    @Nullable
    public final List<Uri> uris;

    public ShareData(@Nullable String str, @Nullable String str2, @Nullable List<Uri> list) {
        this.title = str;
        this.text = str2;
        this.uris = list;
    }
}
