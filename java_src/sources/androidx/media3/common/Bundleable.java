package androidx.media3.common;

import android.os.Bundle;
import androidx.media3.common.util.UnstableApi;

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public interface Bundleable {

    public interface Creator<T extends Bundleable> {
        T a(Bundle bundle);
    }

    Bundle toBundle();
}
