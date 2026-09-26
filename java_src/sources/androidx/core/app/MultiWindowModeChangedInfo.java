package androidx.core.app;

import android.content.res.Configuration;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes10.dex */
public final class MultiWindowModeChangedInfo {
    private final boolean mIsInMultiWindowMode;
    private final Configuration mNewConfig;

    public MultiWindowModeChangedInfo(boolean z6) {
        this.mIsInMultiWindowMode = z6;
        this.mNewConfig = null;
    }

    public boolean a() {
        return this.mIsInMultiWindowMode;
    }

    @RequiresApi
    public MultiWindowModeChangedInfo(boolean z6, @NonNull Configuration configuration) {
        this.mIsInMultiWindowMode = z6;
        this.mNewConfig = configuration;
    }
}
