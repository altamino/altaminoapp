package androidx.media3.datasource;

import android.text.TextUtils;
import com.google.common.base.p;

/* JADX INFO: loaded from: classes9.dex */
public final /* synthetic */ class f {
    static {
        p<String> pVar = HttpDataSource.REJECT_PAYWALL_TYPES;
    }

    public static /* synthetic */ boolean a(String str) {
        if (str == null) {
            return false;
        }
        String strE = com.google.common.base.c.e(str);
        if (TextUtils.isEmpty(strE)) {
            return false;
        }
        return ((strE.contains("text") && !strE.contains("text/vtt")) || strE.contains("html") || strE.contains("xml")) ? false : true;
    }
}
