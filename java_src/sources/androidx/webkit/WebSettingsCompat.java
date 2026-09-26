package androidx.webkit;

import androidx.annotation.RestrictTo;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes5.dex */
public class WebSettingsCompat {
    public static final int ATTRIBUTION_BEHAVIOR_APP_SOURCE_AND_APP_TRIGGER = 3;
    public static final int ATTRIBUTION_BEHAVIOR_APP_SOURCE_AND_WEB_TRIGGER = 1;
    public static final int ATTRIBUTION_BEHAVIOR_DISABLED = 0;
    public static final int ATTRIBUTION_BEHAVIOR_WEB_SOURCE_AND_WEB_TRIGGER = 2;

    @Deprecated
    public static final int DARK_STRATEGY_PREFER_WEB_THEME_OVER_USER_AGENT_DARKENING = 2;

    @Deprecated
    public static final int DARK_STRATEGY_USER_AGENT_DARKENING_ONLY = 0;

    @Deprecated
    public static final int DARK_STRATEGY_WEB_THEME_DARKENING_ONLY = 1;

    @Deprecated
    public static final int FORCE_DARK_AUTO = 1;

    @Deprecated
    public static final int FORCE_DARK_OFF = 0;

    @Deprecated
    public static final int FORCE_DARK_ON = 2;

    @Target({ElementType.PARAMETER, ElementType.METHOD})
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface ForceDark {
    }

    @Target({ElementType.PARAMETER, ElementType.METHOD})
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface ForceDarkStrategy {
    }

    @Target({ElementType.PARAMETER, ElementType.METHOD})
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface MenuItemFlags {
    }

    private WebSettingsCompat() {
    }
}
