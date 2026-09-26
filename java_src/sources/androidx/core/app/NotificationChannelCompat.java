package androidx.core.app;

import android.app.Notification;
import android.media.AudioAttributes;
import android.net.Uri;
import android.provider.Settings;
import androidx.annotation.NonNull;
import androidx.core.util.Preconditions;

/* JADX INFO: loaded from: classes5.dex */
public class NotificationChannelCompat {
    public static final String DEFAULT_CHANNEL_ID = "miscellaneous";
    private static final int DEFAULT_LIGHT_COLOR = 0;
    private static final boolean DEFAULT_SHOW_BADGE = true;
    private boolean mBypassDnd;
    private boolean mCanBubble;
    String mConversationId;
    String mDescription;
    String mGroupId;

    @NonNull
    final String mId;
    int mImportance;
    private boolean mImportantConversation;
    boolean mLights;
    private int mLockscreenVisibility;
    CharSequence mName;
    String mParentId;
    boolean mVibrationEnabled;
    long[] mVibrationPattern;
    boolean mShowBadge = true;
    Uri mSound = Settings.System.DEFAULT_NOTIFICATION_URI;
    int mLightColor = 0;
    AudioAttributes mAudioAttributes = Notification.AUDIO_ATTRIBUTES_DEFAULT;

    public static class Builder {
        private final NotificationChannelCompat mChannel;

        public Builder(@NonNull String str, int i10) {
            this.mChannel = new NotificationChannelCompat(str, i10);
        }
    }

    NotificationChannelCompat(@NonNull String str, int i10) {
        this.mId = (String) Preconditions.i(str);
        this.mImportance = i10;
    }
}
