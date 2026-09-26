package androidx.media3.datasource.cache;

import androidx.annotation.Nullable;
import androidx.media3.common.util.UnstableApi;

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public interface ContentMetadata {
    public static final String KEY_CONTENT_LENGTH = "exo_len";
    public static final String KEY_CUSTOM_PREFIX = "custom_";
    public static final String KEY_REDIRECTED_URI = "exo_redir";

    long get(String str, long j6);

    @Nullable
    String get(String str, @Nullable String str2);
}
