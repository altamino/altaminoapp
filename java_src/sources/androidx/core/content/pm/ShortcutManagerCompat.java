package androidx.core.content.pm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class ShortcutManagerCompat {

    @VisibleForTesting
    static final String ACTION_INSTALL_SHORTCUT = "com.android.launcher.action.INSTALL_SHORTCUT";
    private static final int DEFAULT_MAX_ICON_DIMENSION_DP = 96;
    private static final int DEFAULT_MAX_ICON_DIMENSION_LOWRAM_DP = 48;
    public static final String EXTRA_SHORTCUT_ID = "android.intent.extra.shortcut.ID";
    public static final int FLAG_MATCH_CACHED = 8;
    public static final int FLAG_MATCH_DYNAMIC = 2;
    public static final int FLAG_MATCH_MANIFEST = 1;
    public static final int FLAG_MATCH_PINNED = 4;

    @VisibleForTesting
    static final String INSTALL_SHORTCUT_PERMISSION = "com.android.launcher.permission.INSTALL_SHORTCUT";
    private static final String SHORTCUT_LISTENER_INTENT_FILTER_ACTION = "androidx.core.content.pm.SHORTCUT_LISTENER";
    private static final String SHORTCUT_LISTENER_META_DATA_KEY = "androidx.core.content.pm.shortcut_listener_impl";
    private static volatile List<ShortcutInfoChangeListener> sShortcutInfoChangeListeners;
    private static volatile ShortcutInfoCompatSaver<?> sShortcutInfoCompatSaver;

    /* JADX INFO: renamed from: androidx.core.content.pm.ShortcutManagerCompat$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes10.dex */
    class AnonymousClass1 extends BroadcastReceiver {
        final /* synthetic */ IntentSender val$callback;

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                this.val$callback.sendIntent(context, 0, null, null, null);
            } catch (IntentSender.SendIntentException unused) {
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface ShortcutMatchFlags {
    }

    @RequiresApi
    private static class Api25Impl {
        private Api25Impl() {
        }
    }

    private ShortcutManagerCompat() {
    }
}
