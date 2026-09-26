package androidx.activity;

import android.graphics.Rect;
import android.view.View;

/* JADX INFO: loaded from: classes11.dex */
public final class PipHintTrackerKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Rect b(View view) {
        Rect rect = new Rect();
        view.getGlobalVisibleRect(rect);
        return rect;
    }
}
