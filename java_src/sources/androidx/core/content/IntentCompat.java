package androidx.core.content;

import android.annotation.SuppressLint;
import android.content.Intent;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes7.dex */
public final class IntentCompat {

    @SuppressLint({"ActionValue"})
    public static final String ACTION_CREATE_REMINDER = "android.intent.action.CREATE_REMINDER";
    public static final String CATEGORY_LEANBACK_LAUNCHER = "android.intent.category.LEANBACK_LAUNCHER";
    public static final String EXTRA_HTML_TEXT = "android.intent.extra.HTML_TEXT";
    public static final String EXTRA_START_PLAYBACK = "android.intent.extra.START_PLAYBACK";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_TIME = "android.intent.extra.TIME";

    @RequiresApi
    static class Api15Impl {
        private Api15Impl() {
        }

        @DoNotInline
        static Intent a(String str, String str2) {
            return Intent.makeMainSelectorActivity(str, str2);
        }
    }

    private IntentCompat() {
    }
}
