package androidx.browser.trusted;

import androidx.annotation.BinderThread;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public interface TokenStore {
    @Nullable
    @BinderThread
    Token load();
}
