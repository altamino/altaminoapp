package androidx.core.app;

import android.content.res.Configuration;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes9.dex */
public final class PictureInPictureModeChangedInfo {
    private final boolean mIsInPictureInPictureMode;
    private final Configuration mNewConfig;

    public PictureInPictureModeChangedInfo(boolean z6) {
        this.mIsInPictureInPictureMode = z6;
        this.mNewConfig = null;
    }

    public boolean a() {
        return this.mIsInPictureInPictureMode;
    }

    @RequiresApi
    public PictureInPictureModeChangedInfo(boolean z6, @NonNull Configuration configuration) {
        this.mIsInPictureInPictureMode = z6;
        this.mNewConfig = configuration;
    }
}
