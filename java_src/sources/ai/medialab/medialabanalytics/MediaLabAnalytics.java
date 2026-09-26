package ai.medialab.medialabanalytics;

import android.content.Context;
import android.util.Pair;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class MediaLabAnalytics {
    public static Companion Companion = new Companion();
    public static MediaLabAnalytics INSTANCE$stub = new MediaLabAnalytics();

    public class Companion {
        public static Companion INSTANCE$stub = new Companion();

        public MediaLabAnalytics getInstance() {
            return MediaLabAnalytics.INSTANCE$stub;
        }
    }

    public static MediaLabAnalytics getInstance() {
        return INSTANCE$stub;
    }

    public void getUid(UidListener uidListener) {
    }

    public void initialize(Context context) {
    }

    public void trackEvent(String str, Map map) {
    }

    public void trackEvent(String str, Pair[] pairArr) {
    }
}
