package androidx.appcompat.app;

import android.R;
import android.widget.ImageView;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes8.dex */
class ActionBarDrawerToggleHoneycomb {
    private static final String TAG = "ActionBarDrawerToggleHC";
    private static final int[] THEME_ATTRS = {R.attr.homeAsUpIndicator};

    static class SetIndicatorInfo {
        public Method setHomeActionContentDescription;
        public Method setHomeAsUpIndicator;
        public ImageView upIndicatorView;
    }

    private ActionBarDrawerToggleHoneycomb() {
    }
}
