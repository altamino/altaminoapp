package h4;

import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.firebase.dynamiclinks.internal.DynamicLinkData;

/* JADX INFO: loaded from: classes7.dex */
public class b {

    @Nullable
    private final DynamicLinkData dynamicLinkData;

    @Nullable
    private final com.google.firebase.dynamiclinks.internal.b dynamicLinkUTMParams;

    public long a() {
        DynamicLinkData dynamicLinkData = this.dynamicLinkData;
        if (dynamicLinkData == null) {
            return 0L;
        }
        return dynamicLinkData.m();
    }

    @Nullable
    @KeepForSdk
    public Bundle b() {
        DynamicLinkData dynamicLinkData = this.dynamicLinkData;
        return dynamicLinkData == null ? new Bundle() : dynamicLinkData.y0();
    }

    @Nullable
    public Uri c() {
        String strP;
        DynamicLinkData dynamicLinkData = this.dynamicLinkData;
        if (dynamicLinkData == null || (strP = dynamicLinkData.p()) == null) {
            return null;
        }
        return Uri.parse(strP);
    }

    @VisibleForTesting
    @KeepForSdk
    public b(DynamicLinkData dynamicLinkData) {
        if (dynamicLinkData == null) {
            this.dynamicLinkData = null;
            this.dynamicLinkUTMParams = null;
        } else {
            if (dynamicLinkData.m() == 0) {
                dynamicLinkData.G0(DefaultClock.getInstance().currentTimeMillis());
            }
            this.dynamicLinkData = dynamicLinkData;
            this.dynamicLinkUTMParams = new com.google.firebase.dynamiclinks.internal.b(dynamicLinkData);
        }
    }
}
