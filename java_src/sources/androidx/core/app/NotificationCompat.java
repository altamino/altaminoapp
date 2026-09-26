package androidx.core.app;

import android.annotation.SuppressLint;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.LocusId;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.widget.RemoteViews;
import androidx.annotation.ColorInt;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.R;
import androidx.core.content.LocusIdCompat;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.text.BidiFormatter;
import androidx.core.view.ViewCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class NotificationCompat {
    public static final int BADGE_ICON_LARGE = 2;
    public static final int BADGE_ICON_NONE = 0;
    public static final int BADGE_ICON_SMALL = 1;
    public static final String CATEGORY_ALARM = "alarm";
    public static final String CATEGORY_CALL = "call";
    public static final String CATEGORY_EMAIL = "email";
    public static final String CATEGORY_ERROR = "err";
    public static final String CATEGORY_EVENT = "event";
    public static final String CATEGORY_LOCATION_SHARING = "location_sharing";
    public static final String CATEGORY_MESSAGE = "msg";
    public static final String CATEGORY_MISSED_CALL = "missed_call";
    public static final String CATEGORY_NAVIGATION = "navigation";
    public static final String CATEGORY_PROGRESS = "progress";
    public static final String CATEGORY_PROMO = "promo";
    public static final String CATEGORY_RECOMMENDATION = "recommendation";
    public static final String CATEGORY_REMINDER = "reminder";
    public static final String CATEGORY_SERVICE = "service";
    public static final String CATEGORY_SOCIAL = "social";
    public static final String CATEGORY_STATUS = "status";
    public static final String CATEGORY_STOPWATCH = "stopwatch";
    public static final String CATEGORY_SYSTEM = "sys";
    public static final String CATEGORY_TRANSPORT = "transport";
    public static final String CATEGORY_WORKOUT = "workout";

    @ColorInt
    public static final int COLOR_DEFAULT = 0;
    public static final int DEFAULT_ALL = -1;
    public static final int DEFAULT_LIGHTS = 4;
    public static final int DEFAULT_SOUND = 1;
    public static final int DEFAULT_VIBRATE = 2;

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_AUDIO_CONTENTS_URI = "android.audioContents";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_BACKGROUND_IMAGE_URI = "android.backgroundImageUri";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_BIG_TEXT = "android.bigText";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_CHANNEL_GROUP_ID = "android.intent.extra.CHANNEL_GROUP_ID";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_CHANNEL_ID = "android.intent.extra.CHANNEL_ID";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_CHRONOMETER_COUNT_DOWN = "android.chronometerCountDown";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_COLORIZED = "android.colorized";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_COMPACT_ACTIONS = "android.compactActions";
    public static final String EXTRA_COMPAT_TEMPLATE = "androidx.core.app.extra.COMPAT_TEMPLATE";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_CONVERSATION_TITLE = "android.conversationTitle";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_HIDDEN_CONVERSATION_TITLE = "android.hiddenConversationTitle";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_HISTORIC_MESSAGES = "android.messages.historic";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_INFO_TEXT = "android.infoText";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_IS_GROUP_CONVERSATION = "android.isGroupConversation";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_LARGE_ICON = "android.largeIcon";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_LARGE_ICON_BIG = "android.largeIcon.big";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_MEDIA_SESSION = "android.mediaSession";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_MESSAGES = "android.messages";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_MESSAGING_STYLE_USER = "android.messagingStyleUser";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_NOTIFICATION_ID = "android.intent.extra.NOTIFICATION_ID";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_NOTIFICATION_TAG = "android.intent.extra.NOTIFICATION_TAG";

    @SuppressLint({"ActionValue"})
    @Deprecated
    public static final String EXTRA_PEOPLE = "android.people";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_PEOPLE_LIST = "android.people.list";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_PICTURE = "android.picture";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_PICTURE_CONTENT_DESCRIPTION = "android.pictureContentDescription";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_PICTURE_ICON = "android.pictureIcon";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_PROGRESS = "android.progress";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_PROGRESS_INDETERMINATE = "android.progressIndeterminate";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_PROGRESS_MAX = "android.progressMax";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_REMOTE_INPUT_HISTORY = "android.remoteInputHistory";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SELF_DISPLAY_NAME = "android.selfDisplayName";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SHOW_BIG_PICTURE_WHEN_COLLAPSED = "android.showBigPictureWhenCollapsed";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SHOW_CHRONOMETER = "android.showChronometer";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SHOW_WHEN = "android.showWhen";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SMALL_ICON = "android.icon";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SUB_TEXT = "android.subText";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SUMMARY_TEXT = "android.summaryText";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_TEMPLATE = "android.template";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_TEXT = "android.text";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_TEXT_LINES = "android.textLines";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_TITLE = "android.title";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_TITLE_BIG = "android.title.big";
    public static final int FLAG_AUTO_CANCEL = 16;
    public static final int FLAG_BUBBLE = 4096;
    public static final int FLAG_FOREGROUND_SERVICE = 64;
    public static final int FLAG_GROUP_SUMMARY = 512;

    @Deprecated
    public static final int FLAG_HIGH_PRIORITY = 128;
    public static final int FLAG_INSISTENT = 4;
    public static final int FLAG_LOCAL_ONLY = 256;
    public static final int FLAG_NO_CLEAR = 32;
    public static final int FLAG_ONGOING_EVENT = 2;
    public static final int FLAG_ONLY_ALERT_ONCE = 8;
    public static final int FLAG_SHOW_LIGHTS = 1;
    public static final int FOREGROUND_SERVICE_DEFAULT = 0;
    public static final int FOREGROUND_SERVICE_DEFERRED = 2;
    public static final int FOREGROUND_SERVICE_IMMEDIATE = 1;
    public static final int GROUP_ALERT_ALL = 0;
    public static final int GROUP_ALERT_CHILDREN = 2;
    public static final int GROUP_ALERT_SUMMARY = 1;
    public static final String GROUP_KEY_SILENT = "silent";

    @SuppressLint({"ActionValue"})
    public static final String INTENT_CATEGORY_NOTIFICATION_PREFERENCES = "android.intent.category.NOTIFICATION_PREFERENCES";
    public static final int PRIORITY_DEFAULT = 0;
    public static final int PRIORITY_HIGH = 1;
    public static final int PRIORITY_LOW = -1;
    public static final int PRIORITY_MAX = 2;
    public static final int PRIORITY_MIN = -2;
    public static final int STREAM_DEFAULT = -1;
    public static final int VISIBILITY_PRIVATE = 0;
    public static final int VISIBILITY_PUBLIC = 1;
    public static final int VISIBILITY_SECRET = -1;

    public static class Action {
        static final String EXTRA_SEMANTIC_ACTION = "android.support.action.semanticAction";
        static final String EXTRA_SHOWS_USER_INTERFACE = "android.support.action.showsUserInterface";
        public static final int SEMANTIC_ACTION_ARCHIVE = 5;
        public static final int SEMANTIC_ACTION_CALL = 10;
        public static final int SEMANTIC_ACTION_DELETE = 4;
        public static final int SEMANTIC_ACTION_MARK_AS_READ = 2;
        public static final int SEMANTIC_ACTION_MARK_AS_UNREAD = 3;
        public static final int SEMANTIC_ACTION_MUTE = 6;
        public static final int SEMANTIC_ACTION_NONE = 0;
        public static final int SEMANTIC_ACTION_REPLY = 1;
        public static final int SEMANTIC_ACTION_THUMBS_DOWN = 9;
        public static final int SEMANTIC_ACTION_THUMBS_UP = 8;
        public static final int SEMANTIC_ACTION_UNMUTE = 7;
        public PendingIntent actionIntent;

        @Deprecated
        public int icon;
        private boolean mAllowGeneratedReplies;
        private boolean mAuthenticationRequired;
        private final RemoteInput[] mDataOnlyRemoteInputs;
        final Bundle mExtras;

        @Nullable
        private IconCompat mIcon;
        private final boolean mIsContextual;
        private final RemoteInput[] mRemoteInputs;
        private final int mSemanticAction;
        boolean mShowsUserInterface;
        public CharSequence title;

        public static final class Builder {
            private boolean mAllowGeneratedReplies;
            private boolean mAuthenticationRequired;
            private final Bundle mExtras;
            private final IconCompat mIcon;
            private final PendingIntent mIntent;
            private boolean mIsContextual;
            private ArrayList<RemoteInput> mRemoteInputs;
            private int mSemanticAction;
            private boolean mShowsUserInterface;
            private final CharSequence mTitle;

            public Builder(@Nullable IconCompat iconCompat, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent) {
                this(iconCompat, charSequence, pendingIntent, new Bundle(), null, true, 0, true, false, false);
            }

            @NonNull
            public Builder e(boolean z6) {
                this.mAuthenticationRequired = z6;
                return this;
            }

            @NonNull
            public Builder f(boolean z6) {
                this.mIsContextual = z6;
                return this;
            }

            @NonNull
            public Builder g(int i10) {
                this.mSemanticAction = i10;
                return this;
            }

            public Builder(int i10, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent) {
                this(i10 != 0 ? IconCompat.p(null, "", i10) : null, charSequence, pendingIntent, new Bundle(), null, true, 0, true, false, false);
            }

            private void c() {
                if (this.mIsContextual && this.mIntent == null) {
                    throw new NullPointerException("Contextual Actions must contain a valid PendingIntent");
                }
            }

            @NonNull
            public Builder a(@Nullable RemoteInput remoteInput) {
                if (this.mRemoteInputs == null) {
                    this.mRemoteInputs = new ArrayList<>();
                }
                if (remoteInput != null) {
                    this.mRemoteInputs.add(remoteInput);
                }
                return this;
            }

            @NonNull
            public Action b() {
                c();
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                ArrayList<RemoteInput> arrayList3 = this.mRemoteInputs;
                if (arrayList3 != null) {
                    for (RemoteInput remoteInput : arrayList3) {
                        if (remoteInput.k()) {
                            arrayList.add(remoteInput);
                        } else {
                            arrayList2.add(remoteInput);
                        }
                    }
                }
                return new Action(this.mIcon, this.mTitle, this.mIntent, this.mExtras, arrayList2.isEmpty() ? null : (RemoteInput[]) arrayList2.toArray(new RemoteInput[arrayList2.size()]), arrayList.isEmpty() ? null : (RemoteInput[]) arrayList.toArray(new RemoteInput[arrayList.size()]), this.mAllowGeneratedReplies, this.mSemanticAction, this.mShowsUserInterface, this.mIsContextual, this.mAuthenticationRequired);
            }

            public Builder(@NonNull Action action) {
                this(action.e(), action.title, action.actionIntent, new Bundle(action.mExtras), action.f(), action.b(), action.g(), action.mShowsUserInterface, action.k(), action.j());
            }

            @NonNull
            @RequiresApi
            @RestrictTo
            public static Builder d(@NonNull Notification.Action action) {
                Builder builder;
                if (action.getIcon() != null) {
                    builder = new Builder(IconCompat.g(action.getIcon()), action.title, action.actionIntent);
                } else {
                    builder = new Builder(action.icon, action.title, action.actionIntent);
                }
                android.app.RemoteInput[] remoteInputs = action.getRemoteInputs();
                if (remoteInputs != null && remoteInputs.length != 0) {
                    for (android.app.RemoteInput remoteInput : remoteInputs) {
                        builder.a(RemoteInput.c(remoteInput));
                    }
                }
                int i10 = Build.VERSION.SDK_INT;
                if (i10 >= 24) {
                    builder.mAllowGeneratedReplies = action.getAllowGeneratedReplies();
                }
                if (i10 >= 28) {
                    builder.g(action.getSemanticAction());
                }
                if (i10 >= 29) {
                    builder.f(action.isContextual());
                }
                if (i10 >= 31) {
                    builder.e(action.isAuthenticationRequired());
                }
                return builder;
            }

            private Builder(@Nullable IconCompat iconCompat, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent, @NonNull Bundle bundle, @Nullable RemoteInput[] remoteInputArr, boolean z6, int i10, boolean z10, boolean z11, boolean z12) {
                this.mAllowGeneratedReplies = true;
                this.mShowsUserInterface = true;
                this.mIcon = iconCompat;
                this.mTitle = Builder.q(charSequence);
                this.mIntent = pendingIntent;
                this.mExtras = bundle;
                this.mRemoteInputs = remoteInputArr == null ? null : new ArrayList<>(Arrays.asList(remoteInputArr));
                this.mAllowGeneratedReplies = z6;
                this.mSemanticAction = i10;
                this.mShowsUserInterface = z10;
                this.mIsContextual = z11;
                this.mAuthenticationRequired = z12;
            }
        }

        public interface Extender {
        }

        @Retention(RetentionPolicy.SOURCE)
        public @interface SemanticAction {
        }

        public static final class WearableExtender implements Extender {
            private static final int DEFAULT_FLAGS = 1;
            private static final String EXTRA_WEARABLE_EXTENSIONS = "android.wearable.EXTENSIONS";
            private static final int FLAG_AVAILABLE_OFFLINE = 1;
            private static final int FLAG_HINT_DISPLAY_INLINE = 4;
            private static final int FLAG_HINT_LAUNCHES_ACTIVITY = 2;
            private static final String KEY_CANCEL_LABEL = "cancelLabel";
            private static final String KEY_CONFIRM_LABEL = "confirmLabel";
            private static final String KEY_FLAGS = "flags";
            private static final String KEY_IN_PROGRESS_LABEL = "inProgressLabel";
            private CharSequence mCancelLabel;
            private CharSequence mConfirmLabel;
            private int mFlags;
            private CharSequence mInProgressLabel;

            public WearableExtender() {
                this.mFlags = 1;
            }

            public WearableExtender(@NonNull Action action) {
                this.mFlags = 1;
                Bundle bundle = action.c().getBundle(EXTRA_WEARABLE_EXTENSIONS);
                if (bundle != null) {
                    this.mFlags = bundle.getInt(KEY_FLAGS, 1);
                    this.mInProgressLabel = bundle.getCharSequence(KEY_IN_PROGRESS_LABEL);
                    this.mConfirmLabel = bundle.getCharSequence(KEY_CONFIRM_LABEL);
                    this.mCancelLabel = bundle.getCharSequence(KEY_CANCEL_LABEL);
                }
            }

            @NonNull
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public WearableExtender clone() {
                WearableExtender wearableExtender = new WearableExtender();
                wearableExtender.mFlags = this.mFlags;
                wearableExtender.mInProgressLabel = this.mInProgressLabel;
                wearableExtender.mConfirmLabel = this.mConfirmLabel;
                wearableExtender.mCancelLabel = this.mCancelLabel;
                return wearableExtender;
            }
        }

        public Action(int i10, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent) {
            this(i10 != 0 ? IconCompat.p(null, "", i10) : null, charSequence, pendingIntent);
        }

        @Nullable
        public PendingIntent a() {
            return this.actionIntent;
        }

        public boolean b() {
            return this.mAllowGeneratedReplies;
        }

        @NonNull
        public Bundle c() {
            return this.mExtras;
        }

        @Deprecated
        public int d() {
            return this.icon;
        }

        @Nullable
        public RemoteInput[] f() {
            return this.mRemoteInputs;
        }

        public int g() {
            return this.mSemanticAction;
        }

        public boolean h() {
            return this.mShowsUserInterface;
        }

        @Nullable
        public CharSequence i() {
            return this.title;
        }

        public boolean j() {
            return this.mAuthenticationRequired;
        }

        public boolean k() {
            return this.mIsContextual;
        }

        public Action(@Nullable IconCompat iconCompat, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent) {
            this(iconCompat, charSequence, pendingIntent, new Bundle(), (RemoteInput[]) null, (RemoteInput[]) null, true, 0, true, false, false);
        }

        @Nullable
        public IconCompat e() {
            int i10;
            if (this.mIcon == null && (i10 = this.icon) != 0) {
                this.mIcon = IconCompat.p(null, "", i10);
            }
            return this.mIcon;
        }

        Action(int i10, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent, @Nullable Bundle bundle, @Nullable RemoteInput[] remoteInputArr, @Nullable RemoteInput[] remoteInputArr2, boolean z6, int i11, boolean z10, boolean z11, boolean z12) {
            this(i10 != 0 ? IconCompat.p(null, "", i10) : null, charSequence, pendingIntent, bundle, remoteInputArr, remoteInputArr2, z6, i11, z10, z11, z12);
        }

        Action(@Nullable IconCompat iconCompat, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent, @Nullable Bundle bundle, @Nullable RemoteInput[] remoteInputArr, @Nullable RemoteInput[] remoteInputArr2, boolean z6, int i10, boolean z10, boolean z11, boolean z12) {
            this.mShowsUserInterface = true;
            this.mIcon = iconCompat;
            if (iconCompat != null && iconCompat.u() == 2) {
                this.icon = iconCompat.r();
            }
            this.title = Builder.q(charSequence);
            this.actionIntent = pendingIntent;
            this.mExtras = bundle == null ? new Bundle() : bundle;
            this.mRemoteInputs = remoteInputArr;
            this.mDataOnlyRemoteInputs = remoteInputArr2;
            this.mAllowGeneratedReplies = z6;
            this.mSemanticAction = i10;
            this.mShowsUserInterface = z10;
            this.mIsContextual = z11;
            this.mAuthenticationRequired = z12;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface BadgeIconType {
    }

    public static class BigPictureStyle extends Style {
        private static final String TEMPLATE_CLASS_NAME = "androidx.core.app.NotificationCompat$BigPictureStyle";
        private IconCompat mBigLargeIcon;
        private boolean mBigLargeIconSet;
        private CharSequence mPictureContentDescription;
        private IconCompat mPictureIcon;
        private boolean mShowBigPictureWhenCollapsed;

        public BigPictureStyle() {
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @NonNull
        @RestrictTo
        protected String q() {
            return TEMPLATE_CLASS_NAME;
        }

        @RequiresApi
        private static class Api16Impl {
            private Api16Impl() {
            }

            @RequiresApi
            static void a(Notification.BigPictureStyle bigPictureStyle, Bitmap bitmap) {
                bigPictureStyle.bigLargeIcon(bitmap);
            }

            @RequiresApi
            static void b(Notification.BigPictureStyle bigPictureStyle, CharSequence charSequence) {
                bigPictureStyle.setSummaryText(charSequence);
            }
        }

        @RequiresApi
        private static class Api23Impl {
            private Api23Impl() {
            }

            @RequiresApi
            static void a(Notification.BigPictureStyle bigPictureStyle, Icon icon) {
                bigPictureStyle.bigLargeIcon(icon);
            }
        }

        @RequiresApi
        private static class Api31Impl {
            private Api31Impl() {
            }

            @RequiresApi
            static void a(Notification.BigPictureStyle bigPictureStyle, Icon icon) {
                bigPictureStyle.bigPicture(icon);
            }

            @RequiresApi
            static void b(Notification.BigPictureStyle bigPictureStyle, CharSequence charSequence) {
                bigPictureStyle.setContentDescription(charSequence);
            }

            @RequiresApi
            static void c(Notification.BigPictureStyle bigPictureStyle, boolean z6) {
                bigPictureStyle.showBigPictureWhenCollapsed(z6);
            }
        }

        public BigPictureStyle(@Nullable Builder builder) {
            w(builder);
        }

        @Nullable
        @RestrictTo
        public static IconCompat A(@Nullable Bundle bundle) {
            if (bundle == null) {
                return null;
            }
            Parcelable parcelable = bundle.getParcelable(NotificationCompat.EXTRA_PICTURE);
            return parcelable != null ? x(parcelable) : x(bundle.getParcelable(NotificationCompat.EXTRA_PICTURE_ICON));
        }

        @Nullable
        private static IconCompat x(@Nullable Parcelable parcelable) {
            if (parcelable == null) {
                return null;
            }
            if (parcelable instanceof Icon) {
                return IconCompat.g((Icon) parcelable);
            }
            if (parcelable instanceof Bitmap) {
                return IconCompat.l((Bitmap) parcelable);
            }
            return null;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo
        public void b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            int i10 = Build.VERSION.SDK_INT;
            Notification.BigPictureStyle bigContentTitle = new Notification.BigPictureStyle(notificationBuilderWithBuilderAccessor.a()).setBigContentTitle(this.mBigContentTitle);
            IconCompat iconCompat = this.mPictureIcon;
            if (iconCompat != null) {
                if (i10 >= 31) {
                    Api31Impl.a(bigContentTitle, this.mPictureIcon.C(notificationBuilderWithBuilderAccessor instanceof NotificationCompatBuilder ? ((NotificationCompatBuilder) notificationBuilderWithBuilderAccessor).f() : null));
                } else if (iconCompat.u() == 1) {
                    bigContentTitle = bigContentTitle.bigPicture(this.mPictureIcon.q());
                }
            }
            if (this.mBigLargeIconSet) {
                if (this.mBigLargeIcon == null) {
                    Api16Impl.a(bigContentTitle, null);
                } else {
                    Api23Impl.a(bigContentTitle, this.mBigLargeIcon.C(notificationBuilderWithBuilderAccessor instanceof NotificationCompatBuilder ? ((NotificationCompatBuilder) notificationBuilderWithBuilderAccessor).f() : null));
                }
            }
            if (this.mSummaryTextSet) {
                Api16Impl.b(bigContentTitle, this.mSummaryText);
            }
            if (i10 >= 31) {
                Api31Impl.c(bigContentTitle, this.mShowBigPictureWhenCollapsed);
                Api31Impl.b(bigContentTitle, this.mPictureContentDescription);
            }
        }

        @NonNull
        public BigPictureStyle y(@Nullable Bitmap bitmap) {
            this.mBigLargeIcon = bitmap == null ? null : IconCompat.l(bitmap);
            this.mBigLargeIconSet = true;
            return this;
        }

        @NonNull
        public BigPictureStyle z(@Nullable Bitmap bitmap) {
            this.mPictureIcon = bitmap == null ? null : IconCompat.l(bitmap);
            return this;
        }

        @NonNull
        public BigPictureStyle B(@Nullable CharSequence charSequence) {
            this.mSummaryText = Builder.q(charSequence);
            this.mSummaryTextSet = true;
            return this;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo
        protected void f(@NonNull Bundle bundle) {
            super.f(bundle);
            bundle.remove(NotificationCompat.EXTRA_LARGE_ICON_BIG);
            bundle.remove(NotificationCompat.EXTRA_PICTURE);
            bundle.remove(NotificationCompat.EXTRA_PICTURE_ICON);
            bundle.remove(NotificationCompat.EXTRA_SHOW_BIG_PICTURE_WHEN_COLLAPSED);
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo
        protected void v(@NonNull Bundle bundle) {
            super.v(bundle);
            if (bundle.containsKey(NotificationCompat.EXTRA_LARGE_ICON_BIG)) {
                this.mBigLargeIcon = x(bundle.getParcelable(NotificationCompat.EXTRA_LARGE_ICON_BIG));
                this.mBigLargeIconSet = true;
            }
            this.mPictureIcon = A(bundle);
            this.mShowBigPictureWhenCollapsed = bundle.getBoolean(NotificationCompat.EXTRA_SHOW_BIG_PICTURE_WHEN_COLLAPSED);
        }
    }

    public static class BigTextStyle extends Style {
        private static final String TEMPLATE_CLASS_NAME = "androidx.core.app.NotificationCompat$BigTextStyle";
        private CharSequence mBigText;

        public BigTextStyle() {
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @NonNull
        @RestrictTo
        protected String q() {
            return TEMPLATE_CLASS_NAME;
        }

        public BigTextStyle(@Nullable Builder builder) {
            w(builder);
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo
        public void b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            Notification.BigTextStyle bigTextStyleBigText = new Notification.BigTextStyle(notificationBuilderWithBuilderAccessor.a()).setBigContentTitle(this.mBigContentTitle).bigText(this.mBigText);
            if (this.mSummaryTextSet) {
                bigTextStyleBigText.setSummaryText(this.mSummaryText);
            }
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo
        public void a(@NonNull Bundle bundle) {
            super.a(bundle);
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo
        protected void f(@NonNull Bundle bundle) {
            super.f(bundle);
            bundle.remove(NotificationCompat.EXTRA_BIG_TEXT);
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo
        protected void v(@NonNull Bundle bundle) {
            super.v(bundle);
            this.mBigText = bundle.getCharSequence(NotificationCompat.EXTRA_BIG_TEXT);
        }

        @NonNull
        public BigTextStyle x(@Nullable CharSequence charSequence) {
            this.mBigText = Builder.q(charSequence);
            return this;
        }
    }

    public static final class BubbleMetadata {
        private static final int FLAG_AUTO_EXPAND_BUBBLE = 1;
        private static final int FLAG_SUPPRESS_NOTIFICATION = 2;
        private PendingIntent mDeleteIntent;
        private int mDesiredHeight;

        @DimenRes
        private int mDesiredHeightResId;
        private int mFlags;
        private IconCompat mIcon;
        private PendingIntent mPendingIntent;
        private String mShortcutId;

        @RequiresApi
        private static class Api30Impl {
            @Nullable
            @RequiresApi
            static BubbleMetadata a(@Nullable Notification.BubbleMetadata bubbleMetadata) {
                if (bubbleMetadata == null) {
                    return null;
                }
                Builder builder = bubbleMetadata.getShortcutId() != null ? new Builder(bubbleMetadata.getShortcutId()) : new Builder(bubbleMetadata.getIntent(), IconCompat.g(bubbleMetadata.getIcon()));
                builder.b(bubbleMetadata.getAutoExpandBubble()).c(bubbleMetadata.getDeleteIntent()).g(bubbleMetadata.isNotificationSuppressed());
                if (bubbleMetadata.getDesiredHeight() != 0) {
                    builder.d(bubbleMetadata.getDesiredHeight());
                }
                if (bubbleMetadata.getDesiredHeightResId() != 0) {
                    builder.e(bubbleMetadata.getDesiredHeightResId());
                }
                return builder.a();
            }

            @Nullable
            @RequiresApi
            static Notification.BubbleMetadata b(@Nullable BubbleMetadata bubbleMetadata) {
                if (bubbleMetadata == null) {
                    return null;
                }
                Notification.BubbleMetadata.Builder builder = bubbleMetadata.h() != null ? new Notification.BubbleMetadata.Builder(bubbleMetadata.h()) : new Notification.BubbleMetadata.Builder(bubbleMetadata.g(), bubbleMetadata.f().B());
                builder.setDeleteIntent(bubbleMetadata.c()).setAutoExpandBubble(bubbleMetadata.b()).setSuppressNotification(bubbleMetadata.i());
                if (bubbleMetadata.d() != 0) {
                    builder.setDesiredHeight(bubbleMetadata.d());
                }
                if (bubbleMetadata.e() != 0) {
                    builder.setDesiredHeightResId(bubbleMetadata.e());
                }
                return builder.build();
            }

            private Api30Impl() {
            }
        }

        public static final class Builder {
            private PendingIntent mDeleteIntent;
            private int mDesiredHeight;

            @DimenRes
            private int mDesiredHeightResId;
            private int mFlags;
            private IconCompat mIcon;
            private PendingIntent mPendingIntent;
            private String mShortcutId;

            @Deprecated
            public Builder() {
            }

            @NonNull
            private Builder f(int i10, boolean z6) {
                if (z6) {
                    this.mFlags = i10 | this.mFlags;
                } else {
                    this.mFlags = (~i10) & this.mFlags;
                }
                return this;
            }

            @NonNull
            public Builder b(boolean z6) {
                f(1, z6);
                return this;
            }

            @NonNull
            public Builder c(@Nullable PendingIntent pendingIntent) {
                this.mDeleteIntent = pendingIntent;
                return this;
            }

            @NonNull
            public Builder d(@Dimension int i10) {
                this.mDesiredHeight = Math.max(i10, 0);
                this.mDesiredHeightResId = 0;
                return this;
            }

            @NonNull
            public Builder e(@DimenRes int i10) {
                this.mDesiredHeightResId = i10;
                this.mDesiredHeight = 0;
                return this;
            }

            @NonNull
            public Builder g(boolean z6) {
                f(2, z6);
                return this;
            }

            @RequiresApi
            public Builder(@NonNull String str) {
                if (TextUtils.isEmpty(str)) {
                    throw new NullPointerException("Bubble requires a non-null shortcut id");
                }
                this.mShortcutId = str;
            }

            @NonNull
            @SuppressLint({"SyntheticAccessor"})
            public BubbleMetadata a() {
                String str = this.mShortcutId;
                if (str == null && this.mPendingIntent == null) {
                    throw new NullPointerException("Must supply pending intent or shortcut to bubble");
                }
                if (str == null && this.mIcon == null) {
                    throw new NullPointerException("Must supply an icon or shortcut for the bubble");
                }
                BubbleMetadata bubbleMetadata = new BubbleMetadata(this.mPendingIntent, this.mDeleteIntent, this.mIcon, this.mDesiredHeight, this.mDesiredHeightResId, this.mFlags, str);
                bubbleMetadata.j(this.mFlags);
                return bubbleMetadata;
            }

            public Builder(@NonNull PendingIntent pendingIntent, @NonNull IconCompat iconCompat) {
                if (pendingIntent == null) {
                    throw new NullPointerException("Bubble requires non-null pending intent");
                }
                if (iconCompat == null) {
                    throw new NullPointerException("Bubbles require non-null icon");
                }
                this.mPendingIntent = pendingIntent;
                this.mIcon = iconCompat;
            }
        }

        @Nullable
        public static BubbleMetadata a(@Nullable Notification.BubbleMetadata bubbleMetadata) {
            if (bubbleMetadata == null) {
                return null;
            }
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 30) {
                return Api30Impl.a(bubbleMetadata);
            }
            if (i10 == 29) {
                return Api29Impl.a(bubbleMetadata);
            }
            return null;
        }

        @Nullable
        public static Notification.BubbleMetadata k(@Nullable BubbleMetadata bubbleMetadata) {
            if (bubbleMetadata == null) {
                return null;
            }
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 30) {
                return Api30Impl.b(bubbleMetadata);
            }
            if (i10 == 29) {
                return Api29Impl.b(bubbleMetadata);
            }
            return null;
        }

        public boolean b() {
            return (this.mFlags & 1) != 0;
        }

        @Nullable
        public PendingIntent c() {
            return this.mDeleteIntent;
        }

        @Dimension
        public int d() {
            return this.mDesiredHeight;
        }

        @DimenRes
        public int e() {
            return this.mDesiredHeightResId;
        }

        @Nullable
        @SuppressLint({"InvalidNullConversion"})
        public IconCompat f() {
            return this.mIcon;
        }

        @Nullable
        @SuppressLint({"InvalidNullConversion"})
        public PendingIntent g() {
            return this.mPendingIntent;
        }

        @Nullable
        public String h() {
            return this.mShortcutId;
        }

        public boolean i() {
            return (this.mFlags & 2) != 0;
        }

        @RestrictTo
        public void j(int i10) {
            this.mFlags = i10;
        }

        @RequiresApi
        private static class Api29Impl {
            @Nullable
            @RequiresApi
            static BubbleMetadata a(@Nullable Notification.BubbleMetadata bubbleMetadata) {
                if (bubbleMetadata == null || bubbleMetadata.getIntent() == null) {
                    return null;
                }
                Builder builderG = new Builder(bubbleMetadata.getIntent(), IconCompat.g(bubbleMetadata.getIcon())).b(bubbleMetadata.getAutoExpandBubble()).c(bubbleMetadata.getDeleteIntent()).g(bubbleMetadata.isNotificationSuppressed());
                if (bubbleMetadata.getDesiredHeight() != 0) {
                    builderG.d(bubbleMetadata.getDesiredHeight());
                }
                if (bubbleMetadata.getDesiredHeightResId() != 0) {
                    builderG.e(bubbleMetadata.getDesiredHeightResId());
                }
                return builderG.a();
            }

            @Nullable
            @RequiresApi
            static Notification.BubbleMetadata b(@Nullable BubbleMetadata bubbleMetadata) {
                if (bubbleMetadata == null || bubbleMetadata.g() == null) {
                    return null;
                }
                Notification.BubbleMetadata.Builder suppressNotification = new Notification.BubbleMetadata.Builder().setIcon(bubbleMetadata.f().B()).setIntent(bubbleMetadata.g()).setDeleteIntent(bubbleMetadata.c()).setAutoExpandBubble(bubbleMetadata.b()).setSuppressNotification(bubbleMetadata.i());
                if (bubbleMetadata.d() != 0) {
                    suppressNotification.setDesiredHeight(bubbleMetadata.d());
                }
                if (bubbleMetadata.e() != 0) {
                    suppressNotification.setDesiredHeightResId(bubbleMetadata.e());
                }
                return suppressNotification.build();
            }

            private Api29Impl() {
            }
        }

        private BubbleMetadata(@Nullable PendingIntent pendingIntent, @Nullable PendingIntent pendingIntent2, @Nullable IconCompat iconCompat, int i10, @DimenRes int i11, int i12, @Nullable String str) {
            this.mPendingIntent = pendingIntent;
            this.mIcon = iconCompat;
            this.mDesiredHeight = i10;
            this.mDesiredHeightResId = i11;
            this.mDeleteIntent = pendingIntent2;
            this.mFlags = i12;
            this.mShortcutId = str;
        }
    }

    public static class Builder {
        private static final int MAX_CHARSEQUENCE_LENGTH = 5120;

        @RestrictTo
        public ArrayList<Action> mActions;
        boolean mAllowSystemGeneratedContextualActions;
        int mBadgeIcon;
        RemoteViews mBigContentView;
        BubbleMetadata mBubbleMetadata;
        String mCategory;
        String mChannelId;
        boolean mChronometerCountDown;
        int mColor;
        boolean mColorized;
        boolean mColorizedSet;
        CharSequence mContentInfo;
        PendingIntent mContentIntent;
        CharSequence mContentText;
        CharSequence mContentTitle;
        RemoteViews mContentView;

        @RestrictTo
        public Context mContext;
        Bundle mExtras;
        int mFgsDeferBehavior;
        PendingIntent mFullScreenIntent;
        int mGroupAlertBehavior;
        String mGroupKey;
        boolean mGroupSummary;
        RemoteViews mHeadsUpContentView;
        ArrayList<Action> mInvisibleActions;
        Bitmap mLargeIcon;
        boolean mLocalOnly;
        LocusIdCompat mLocusId;
        Notification mNotification;
        int mNumber;

        @Deprecated
        public ArrayList<String> mPeople;

        @NonNull
        @RestrictTo
        public ArrayList<Person> mPersonList;
        int mPriority;
        int mProgress;
        boolean mProgressIndeterminate;
        int mProgressMax;
        Notification mPublicVersion;
        CharSequence[] mRemoteInputHistory;
        CharSequence mSettingsText;
        String mShortcutId;
        boolean mShowWhen;
        boolean mSilent;
        Icon mSmallIcon;
        String mSortKey;
        Style mStyle;
        CharSequence mSubText;
        RemoteViews mTickerView;
        long mTimeout;
        boolean mUseChronometer;
        int mVisibility;

        @RequiresApi
        public Builder(@NonNull Context context, @NonNull Notification notification) {
            ArrayList parcelableArrayList;
            this(context, NotificationCompat.getChannelId(notification));
            Bundle bundle = notification.extras;
            Style styleP = Style.p(notification);
            E(NotificationCompat.getContentTitle(notification)).D(NotificationCompat.getContentText(notification)).B(NotificationCompat.getContentInfo(notification)).g0(NotificationCompat.getSubText(notification)).X(NotificationCompat.getSettingsText(notification)).f0(styleP).C(notification.contentIntent).L(NotificationCompat.getGroup(notification)).M(NotificationCompat.isGroupSummary(notification)).Q(NotificationCompat.getLocusId(notification)).m0(notification.when).Z(NotificationCompat.getShowWhen(notification)).j0(NotificationCompat.getUsesChronometer(notification)).t(NotificationCompat.getAutoCancel(notification)).T(NotificationCompat.getOnlyAlertOnce(notification)).S(NotificationCompat.getOngoing(notification)).P(NotificationCompat.getLocalOnly(notification)).N(notification.largeIcon).u(NotificationCompat.getBadgeIconType(notification)).w(NotificationCompat.getCategory(notification)).v(NotificationCompat.getBubbleMetadata(notification)).R(notification.number).h0(notification.tickerText).C(notification.contentIntent).H(notification.deleteIntent).K(notification.fullScreenIntent, NotificationCompat.getHighPriority(notification)).e0(notification.sound, notification.audioStreamType).k0(notification.vibrate).O(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).G(notification.defaults).U(notification.priority).z(NotificationCompat.getColor(notification)).l0(NotificationCompat.getVisibility(notification)).W(NotificationCompat.getPublicVersion(notification)).c0(NotificationCompat.getSortKey(notification)).i0(NotificationCompat.getTimeoutAfter(notification)).Y(NotificationCompat.getShortcutId(notification)).V(bundle.getInt(NotificationCompat.EXTRA_PROGRESS_MAX), bundle.getInt(NotificationCompat.EXTRA_PROGRESS), bundle.getBoolean(NotificationCompat.EXTRA_PROGRESS_INDETERMINATE)).s(NotificationCompat.getAllowSystemGeneratedContextualActions(notification)).b0(notification.icon, notification.iconLevel).c(l(notification, styleP));
            this.mSmallIcon = notification.getSmallIcon();
            Notification.Action[] actionArr = notification.actions;
            if (actionArr != null && actionArr.length != 0) {
                for (Notification.Action action : actionArr) {
                    b(Action.Builder.d(action).b());
                }
            }
            List<Action> invisibleActions = NotificationCompat.getInvisibleActions(notification);
            if (!invisibleActions.isEmpty()) {
                Iterator<Action> it = invisibleActions.iterator();
                while (it.hasNext()) {
                    d(it.next());
                }
            }
            String[] stringArray = notification.extras.getStringArray(NotificationCompat.EXTRA_PEOPLE);
            if (stringArray != null && stringArray.length != 0) {
                for (String str : stringArray) {
                    f(str);
                }
            }
            if (Build.VERSION.SDK_INT >= 28 && (parcelableArrayList = notification.extras.getParcelableArrayList(NotificationCompat.EXTRA_PEOPLE_LIST)) != null && !parcelableArrayList.isEmpty()) {
                Iterator it2 = parcelableArrayList.iterator();
                while (it2.hasNext()) {
                    e(Person.a(k.a(it2.next())));
                }
            }
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 24 && bundle.containsKey(NotificationCompat.EXTRA_CHRONOMETER_COUNT_DOWN)) {
                y(bundle.getBoolean(NotificationCompat.EXTRA_CHRONOMETER_COUNT_DOWN));
            }
            if (i10 < 26 || !bundle.containsKey(NotificationCompat.EXTRA_COLORIZED)) {
                return;
            }
            A(bundle.getBoolean(NotificationCompat.EXTRA_COLORIZED));
        }

        @NonNull
        public Builder A(boolean z6) {
            this.mColorized = z6;
            this.mColorizedSet = true;
            return this;
        }

        @NonNull
        public Builder C(@Nullable PendingIntent pendingIntent) {
            this.mContentIntent = pendingIntent;
            return this;
        }

        @NonNull
        public Builder F(@Nullable RemoteViews remoteViews) {
            this.mContentView = remoteViews;
            return this;
        }

        @NonNull
        public Builder J(int i10) {
            this.mFgsDeferBehavior = i10;
            return this;
        }

        @NonNull
        public Builder L(@Nullable String str) {
            this.mGroupKey = str;
            return this;
        }

        @NonNull
        public Builder M(boolean z6) {
            this.mGroupSummary = z6;
            return this;
        }

        @NonNull
        public Builder P(boolean z6) {
            this.mLocalOnly = z6;
            return this;
        }

        @NonNull
        public Builder Q(@Nullable LocusIdCompat locusIdCompat) {
            this.mLocusId = locusIdCompat;
            return this;
        }

        @NonNull
        public Builder R(int i10) {
            this.mNumber = i10;
            return this;
        }

        @NonNull
        public Builder S(boolean z6) {
            I(2, z6);
            return this;
        }

        @NonNull
        public Builder U(int i10) {
            this.mPriority = i10;
            return this;
        }

        @NonNull
        public Builder V(int i10, int i11, boolean z6) {
            this.mProgressMax = i10;
            this.mProgress = i11;
            this.mProgressIndeterminate = z6;
            return this;
        }

        @NonNull
        public Builder W(@Nullable Notification notification) {
            this.mPublicVersion = notification;
            return this;
        }

        @NonNull
        public Builder Y(@Nullable String str) {
            this.mShortcutId = str;
            return this;
        }

        @NonNull
        public Builder Z(boolean z6) {
            this.mShowWhen = z6;
            return this;
        }

        @NonNull
        public Builder c0(@Nullable String str) {
            this.mSortKey = str;
            return this;
        }

        @RestrictTo
        public RemoteViews h() {
            return this.mBigContentView;
        }

        @ColorInt
        @RestrictTo
        public int i() {
            return this.mColor;
        }

        @NonNull
        public Builder i0(long j6) {
            this.mTimeout = j6;
            return this;
        }

        @RestrictTo
        public RemoteViews j() {
            return this.mContentView;
        }

        @NonNull
        public Builder j0(boolean z6) {
            this.mUseChronometer = z6;
            return this;
        }

        @NonNull
        public Builder l0(int i10) {
            this.mVisibility = i10;
            return this;
        }

        @RestrictTo
        public RemoteViews m() {
            return this.mHeadsUpContentView;
        }

        @RestrictTo
        public int o() {
            return this.mPriority;
        }

        @NonNull
        public Builder s(boolean z6) {
            this.mAllowSystemGeneratedContextualActions = z6;
            return this;
        }

        @NonNull
        public Builder u(int i10) {
            this.mBadgeIcon = i10;
            return this;
        }

        @NonNull
        public Builder v(@Nullable BubbleMetadata bubbleMetadata) {
            this.mBubbleMetadata = bubbleMetadata;
            return this;
        }

        @NonNull
        public Builder w(@Nullable String str) {
            this.mCategory = str;
            return this;
        }

        @NonNull
        public Builder x(@NonNull String str) {
            this.mChannelId = str;
            return this;
        }

        @NonNull
        public Builder z(@ColorInt int i10) {
            this.mColor = i10;
            return this;
        }

        private void I(int i10, boolean z6) {
            if (z6) {
                Notification notification = this.mNotification;
                notification.flags = i10 | notification.flags;
            } else {
                Notification notification2 = this.mNotification;
                notification2.flags = (~i10) & notification2.flags;
            }
        }

        @Nullable
        @RequiresApi
        private static Bundle l(@NonNull Notification notification, @Nullable Style style) {
            if (notification.extras == null) {
                return null;
            }
            Bundle bundle = new Bundle(notification.extras);
            bundle.remove(NotificationCompat.EXTRA_TITLE);
            bundle.remove(NotificationCompat.EXTRA_TEXT);
            bundle.remove(NotificationCompat.EXTRA_INFO_TEXT);
            bundle.remove(NotificationCompat.EXTRA_SUB_TEXT);
            bundle.remove(NotificationCompat.EXTRA_CHANNEL_ID);
            bundle.remove(NotificationCompat.EXTRA_CHANNEL_GROUP_ID);
            bundle.remove(NotificationCompat.EXTRA_SHOW_WHEN);
            bundle.remove(NotificationCompat.EXTRA_PROGRESS);
            bundle.remove(NotificationCompat.EXTRA_PROGRESS_MAX);
            bundle.remove(NotificationCompat.EXTRA_PROGRESS_INDETERMINATE);
            bundle.remove(NotificationCompat.EXTRA_CHRONOMETER_COUNT_DOWN);
            bundle.remove(NotificationCompat.EXTRA_COLORIZED);
            bundle.remove(NotificationCompat.EXTRA_PEOPLE_LIST);
            bundle.remove(NotificationCompat.EXTRA_PEOPLE);
            bundle.remove(NotificationCompatExtras.EXTRA_SORT_KEY);
            bundle.remove(NotificationCompatExtras.EXTRA_GROUP_KEY);
            bundle.remove(NotificationCompatExtras.EXTRA_GROUP_SUMMARY);
            bundle.remove(NotificationCompatExtras.EXTRA_LOCAL_ONLY);
            bundle.remove(NotificationCompatExtras.EXTRA_ACTION_EXTRAS);
            Bundle bundle2 = bundle.getBundle("android.car.EXTENSIONS");
            if (bundle2 != null) {
                Bundle bundle3 = new Bundle(bundle2);
                bundle3.remove("invisible_actions");
                bundle.putBundle("android.car.EXTENSIONS", bundle3);
            }
            if (style != null) {
                style.f(bundle);
            }
            return bundle;
        }

        @Nullable
        protected static CharSequence q(@Nullable CharSequence charSequence) {
            return (charSequence != null && charSequence.length() > MAX_CHARSEQUENCE_LENGTH) ? charSequence.subSequence(0, MAX_CHARSEQUENCE_LENGTH) : charSequence;
        }

        @Nullable
        private Bitmap r(@Nullable Bitmap bitmap) {
            if (bitmap == null || Build.VERSION.SDK_INT >= 27) {
                return bitmap;
            }
            Resources resources = this.mContext.getResources();
            int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.compat_notification_large_icon_max_width);
            int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.compat_notification_large_icon_max_height);
            if (bitmap.getWidth() <= dimensionPixelSize && bitmap.getHeight() <= dimensionPixelSize2) {
                return bitmap;
            }
            double dMin = Math.min(((double) dimensionPixelSize) / ((double) Math.max(1, bitmap.getWidth())), ((double) dimensionPixelSize2) / ((double) Math.max(1, bitmap.getHeight())));
            return Bitmap.createScaledBitmap(bitmap, (int) Math.ceil(((double) bitmap.getWidth()) * dMin), (int) Math.ceil(((double) bitmap.getHeight()) * dMin), true);
        }

        @NonNull
        public Builder G(int i10) {
            Notification notification = this.mNotification;
            notification.defaults = i10;
            if ((i10 & 4) != 0) {
                notification.flags |= 1;
            }
            return this;
        }

        @NonNull
        public Builder H(@Nullable PendingIntent pendingIntent) {
            this.mNotification.deleteIntent = pendingIntent;
            return this;
        }

        @NonNull
        public Builder K(@Nullable PendingIntent pendingIntent, boolean z6) {
            this.mFullScreenIntent = pendingIntent;
            I(128, z6);
            return this;
        }

        @NonNull
        public Builder O(@ColorInt int i10, int i11, int i12) {
            Notification notification = this.mNotification;
            notification.ledARGB = i10;
            notification.ledOnMS = i11;
            notification.ledOffMS = i12;
            notification.flags = ((i11 == 0 || i12 == 0) ? 0 : 1) | (notification.flags & (-2));
            return this;
        }

        @NonNull
        public Builder T(boolean z6) {
            I(8, z6);
            return this;
        }

        @NonNull
        public Builder a(int i10, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent) {
            this.mActions.add(new Action(i10, charSequence, pendingIntent));
            return this;
        }

        @NonNull
        public Builder a0(int i10) {
            this.mNotification.icon = i10;
            return this;
        }

        @NonNull
        public Builder b(@Nullable Action action) {
            if (action != null) {
                this.mActions.add(action);
            }
            return this;
        }

        @NonNull
        public Builder b0(int i10, int i11) {
            Notification notification = this.mNotification;
            notification.icon = i10;
            notification.iconLevel = i11;
            return this;
        }

        @NonNull
        public Builder c(@Nullable Bundle bundle) {
            if (bundle != null) {
                Bundle bundle2 = this.mExtras;
                if (bundle2 == null) {
                    this.mExtras = new Bundle(bundle);
                } else {
                    bundle2.putAll(bundle);
                }
            }
            return this;
        }

        @NonNull
        @RequiresApi
        public Builder d(@Nullable Action action) {
            if (action != null) {
                this.mInvisibleActions.add(action);
            }
            return this;
        }

        @NonNull
        public Builder d0(@Nullable Uri uri) {
            Notification notification = this.mNotification;
            notification.sound = uri;
            notification.audioStreamType = -1;
            notification.audioAttributes = new AudioAttributes.Builder().setContentType(4).setUsage(5).build();
            return this;
        }

        @NonNull
        public Builder e(@Nullable Person person) {
            if (person != null) {
                this.mPersonList.add(person);
            }
            return this;
        }

        @NonNull
        public Builder e0(@Nullable Uri uri, int i10) {
            Notification notification = this.mNotification;
            notification.sound = uri;
            notification.audioStreamType = i10;
            notification.audioAttributes = new AudioAttributes.Builder().setContentType(4).setLegacyStreamType(i10).build();
            return this;
        }

        @NonNull
        @Deprecated
        public Builder f(@Nullable String str) {
            if (str != null && !str.isEmpty()) {
                this.mPeople.add(str);
            }
            return this;
        }

        @NonNull
        public Builder f0(@Nullable Style style) {
            if (this.mStyle != style) {
                this.mStyle = style;
                if (style != null) {
                    style.w(this);
                }
            }
            return this;
        }

        @NonNull
        public Notification g() {
            return new NotificationCompatBuilder(this).c();
        }

        @NonNull
        public Builder h0(@Nullable CharSequence charSequence) {
            this.mNotification.tickerText = q(charSequence);
            return this;
        }

        @NonNull
        public Bundle k() {
            if (this.mExtras == null) {
                this.mExtras = new Bundle();
            }
            return this.mExtras;
        }

        @NonNull
        public Builder k0(@Nullable long[] jArr) {
            this.mNotification.vibrate = jArr;
            return this;
        }

        @NonNull
        public Builder m0(long j6) {
            this.mNotification.when = j6;
            return this;
        }

        @RestrictTo
        public long p() {
            if (this.mShowWhen) {
                return this.mNotification.when;
            }
            return 0L;
        }

        @NonNull
        public Builder t(boolean z6) {
            I(16, z6);
            return this;
        }

        @NonNull
        @RequiresApi
        public Builder y(boolean z6) {
            this.mChronometerCountDown = z6;
            k().putBoolean(NotificationCompat.EXTRA_CHRONOMETER_COUNT_DOWN, z6);
            return this;
        }

        @NonNull
        public Builder B(@Nullable CharSequence charSequence) {
            this.mContentInfo = q(charSequence);
            return this;
        }

        @NonNull
        public Builder D(@Nullable CharSequence charSequence) {
            this.mContentText = q(charSequence);
            return this;
        }

        @NonNull
        public Builder E(@Nullable CharSequence charSequence) {
            this.mContentTitle = q(charSequence);
            return this;
        }

        @NonNull
        public Builder N(@Nullable Bitmap bitmap) {
            this.mLargeIcon = r(bitmap);
            return this;
        }

        @NonNull
        public Builder X(@Nullable CharSequence charSequence) {
            this.mSettingsText = q(charSequence);
            return this;
        }

        @NonNull
        public Builder g0(@Nullable CharSequence charSequence) {
            this.mSubText = q(charSequence);
            return this;
        }

        @NonNull
        @Deprecated
        public Notification n() {
            return g();
        }

        public Builder(@NonNull Context context, @NonNull String str) {
            this.mActions = new ArrayList<>();
            this.mPersonList = new ArrayList<>();
            this.mInvisibleActions = new ArrayList<>();
            this.mShowWhen = true;
            this.mLocalOnly = false;
            this.mColor = 0;
            this.mVisibility = 0;
            this.mBadgeIcon = 0;
            this.mGroupAlertBehavior = 0;
            this.mFgsDeferBehavior = 0;
            Notification notification = new Notification();
            this.mNotification = notification;
            this.mContext = context;
            this.mChannelId = str;
            notification.when = System.currentTimeMillis();
            this.mNotification.audioStreamType = -1;
            this.mPriority = 0;
            this.mPeople = new ArrayList<>();
            this.mAllowSystemGeneratedContextualActions = true;
        }

        @Deprecated
        public Builder(@NonNull Context context) {
            this(context, (String) null);
        }
    }

    public static final class CarExtender implements Extender {

        @RestrictTo
        static final String EXTRA_CAR_EXTENDER = "android.car.EXTENSIONS";
        private static final String EXTRA_COLOR = "app_color";
        private static final String EXTRA_CONVERSATION = "car_conversation";

        @RestrictTo
        static final String EXTRA_INVISIBLE_ACTIONS = "invisible_actions";
        private static final String EXTRA_LARGE_ICON = "large_icon";
        private static final String KEY_AUTHOR = "author";
        private static final String KEY_MESSAGES = "messages";
        private static final String KEY_ON_READ = "on_read";
        private static final String KEY_ON_REPLY = "on_reply";
        private static final String KEY_PARTICIPANTS = "participants";
        private static final String KEY_REMOTE_INPUT = "remote_input";
        private static final String KEY_TEXT = "text";
        private static final String KEY_TIMESTAMP = "timestamp";
        private int mColor;
        private Bitmap mLargeIcon;
        private UnreadConversation mUnreadConversation;

        @Deprecated
        public static class UnreadConversation {
            private final long mLatestTimestamp;
            private final String[] mMessages;
            private final String[] mParticipants;
            private final PendingIntent mReadPendingIntent;
            private final RemoteInput mRemoteInput;
            private final PendingIntent mReplyPendingIntent;

            public static class Builder {
                private long mLatestTimestamp;
                private final List<String> mMessages = new ArrayList();
                private final String mParticipant;
                private PendingIntent mReadPendingIntent;
                private RemoteInput mRemoteInput;
                private PendingIntent mReplyPendingIntent;

                public Builder(@NonNull String str) {
                    this.mParticipant = str;
                }
            }

            UnreadConversation(@Nullable String[] strArr, @Nullable RemoteInput remoteInput, @Nullable PendingIntent pendingIntent, @Nullable PendingIntent pendingIntent2, @Nullable String[] strArr2, long j6) {
                this.mMessages = strArr;
                this.mRemoteInput = remoteInput;
                this.mReadPendingIntent = pendingIntent2;
                this.mReplyPendingIntent = pendingIntent;
                this.mParticipants = strArr2;
                this.mLatestTimestamp = j6;
            }
        }

        public CarExtender() {
            this.mColor = 0;
        }

        public CarExtender(@NonNull Notification notification) {
            this.mColor = 0;
            Bundle bundle = NotificationCompat.getExtras(notification) == null ? null : NotificationCompat.getExtras(notification).getBundle(EXTRA_CAR_EXTENDER);
            if (bundle != null) {
                this.mLargeIcon = (Bitmap) bundle.getParcelable(EXTRA_LARGE_ICON);
                this.mColor = bundle.getInt(EXTRA_COLOR, 0);
                this.mUnreadConversation = a(bundle.getBundle(EXTRA_CONVERSATION));
            }
        }

        @RequiresApi
        private static UnreadConversation a(@Nullable Bundle bundle) {
            String[] strArr;
            if (bundle == null) {
                return null;
            }
            Parcelable[] parcelableArray = bundle.getParcelableArray(KEY_MESSAGES);
            if (parcelableArray != null) {
                int length = parcelableArray.length;
                String[] strArr2 = new String[length];
                for (int i10 = 0; i10 < length; i10++) {
                    Parcelable parcelable = parcelableArray[i10];
                    if (parcelable instanceof Bundle) {
                        String string = ((Bundle) parcelable).getString("text");
                        strArr2[i10] = string;
                        if (string != null) {
                        }
                    }
                    return null;
                }
                strArr = strArr2;
            } else {
                strArr = null;
            }
            PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable(KEY_ON_READ);
            PendingIntent pendingIntent2 = (PendingIntent) bundle.getParcelable(KEY_ON_REPLY);
            android.app.RemoteInput remoteInput = (android.app.RemoteInput) bundle.getParcelable(KEY_REMOTE_INPUT);
            String[] stringArray = bundle.getStringArray(KEY_PARTICIPANTS);
            if (stringArray == null || stringArray.length != 1) {
                return null;
            }
            return new UnreadConversation(strArr, remoteInput != null ? new RemoteInput(remoteInput.getResultKey(), remoteInput.getLabel(), remoteInput.getChoices(), remoteInput.getAllowFreeFormInput(), Build.VERSION.SDK_INT >= 29 ? remoteInput.getEditChoicesBeforeSending() : 0, remoteInput.getExtras(), null) : null, pendingIntent2, pendingIntent, stringArray, bundle.getLong(KEY_TIMESTAMP));
        }
    }

    public static class DecoratedCustomViewStyle extends Style {
        private static final int MAX_ACTION_BUTTONS = 3;
        private static final String TEMPLATE_CLASS_NAME = "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle";

        @Override // androidx.core.app.NotificationCompat.Style
        @NonNull
        @RestrictTo
        protected String q() {
            return TEMPLATE_CLASS_NAME;
        }

        private RemoteViews x(RemoteViews remoteViews, boolean z6) {
            int iMin;
            int i10 = 0;
            RemoteViews remoteViewsC = c(true, R.layout.notification_template_custom_big, false);
            remoteViewsC.removeAllViews(R.id.actions);
            List<Action> listZ = z(this.mBuilder.mActions);
            if (!z6 || listZ == null || (iMin = Math.min(listZ.size(), 3)) <= 0) {
                i10 = 8;
            } else {
                for (int i11 = 0; i11 < iMin; i11++) {
                    remoteViewsC.addView(R.id.actions, y(listZ.get(i11)));
                }
            }
            remoteViewsC.setViewVisibility(R.id.actions, i10);
            remoteViewsC.setViewVisibility(R.id.action_divider, i10);
            d(remoteViewsC, remoteViews);
            return remoteViewsC;
        }

        private RemoteViews y(Action action) {
            boolean z6 = action.actionIntent == null;
            RemoteViews remoteViews = new RemoteViews(this.mBuilder.mContext.getPackageName(), z6 ? R.layout.notification_action_tombstone : R.layout.notification_action);
            IconCompat iconCompatE = action.e();
            if (iconCompatE != null) {
                remoteViews.setImageViewBitmap(R.id.action_image, m(iconCompatE, this.mBuilder.mContext.getResources().getColor(R.color.notification_action_color_filter)));
            }
            remoteViews.setTextViewText(R.id.action_text, action.title);
            if (!z6) {
                remoteViews.setOnClickPendingIntent(R.id.action_container, action.actionIntent);
            }
            remoteViews.setContentDescription(R.id.action_container, action.title);
            return remoteViews;
        }

        private static List<Action> z(List<Action> list) {
            if (list == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (Action action : list) {
                if (!action.k()) {
                    arrayList.add(action);
                }
            }
            return arrayList;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo
        public void b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 24) {
                notificationBuilderWithBuilderAccessor.a().setStyle(v.a());
            }
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo
        public RemoteViews s(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 24) {
                return null;
            }
            RemoteViews remoteViewsH = this.mBuilder.h();
            if (remoteViewsH == null) {
                remoteViewsH = this.mBuilder.j();
            }
            if (remoteViewsH == null) {
                return null;
            }
            return x(remoteViewsH, true);
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo
        public RemoteViews t(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT < 24 && this.mBuilder.j() != null) {
                return x(this.mBuilder.j(), false);
            }
            return null;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo
        public RemoteViews u(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 24) {
                return null;
            }
            RemoteViews remoteViewsM = this.mBuilder.m();
            RemoteViews remoteViewsJ = remoteViewsM != null ? remoteViewsM : this.mBuilder.j();
            if (remoteViewsM == null) {
                return null;
            }
            return x(remoteViewsJ, true);
        }
    }

    public interface Extender {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface GroupAlertBehavior {
    }

    public static class InboxStyle extends Style {
        private static final String TEMPLATE_CLASS_NAME = "androidx.core.app.NotificationCompat$InboxStyle";
        private ArrayList<CharSequence> mTexts = new ArrayList<>();

        public InboxStyle() {
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @NonNull
        @RestrictTo
        protected String q() {
            return TEMPLATE_CLASS_NAME;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo
        public void b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            Notification.InboxStyle bigContentTitle = new Notification.InboxStyle(notificationBuilderWithBuilderAccessor.a()).setBigContentTitle(this.mBigContentTitle);
            if (this.mSummaryTextSet) {
                bigContentTitle.setSummaryText(this.mSummaryText);
            }
            Iterator<CharSequence> it = this.mTexts.iterator();
            while (it.hasNext()) {
                bigContentTitle.addLine(it.next());
            }
        }

        @NonNull
        public InboxStyle x(@Nullable CharSequence charSequence) {
            if (charSequence != null) {
                this.mTexts.add(Builder.q(charSequence));
            }
            return this;
        }

        public InboxStyle(@Nullable Builder builder) {
            w(builder);
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo
        protected void f(@NonNull Bundle bundle) {
            super.f(bundle);
            bundle.remove(NotificationCompat.EXTRA_TEXT_LINES);
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo
        protected void v(@NonNull Bundle bundle) {
            super.v(bundle);
            this.mTexts.clear();
            if (bundle.containsKey(NotificationCompat.EXTRA_TEXT_LINES)) {
                Collections.addAll(this.mTexts, bundle.getCharSequenceArray(NotificationCompat.EXTRA_TEXT_LINES));
            }
        }
    }

    public static class MessagingStyle extends Style {
        public static final int MAXIMUM_RETAINED_MESSAGES = 25;
        private static final String TEMPLATE_CLASS_NAME = "androidx.core.app.NotificationCompat$MessagingStyle";

        @Nullable
        private CharSequence mConversationTitle;

        @Nullable
        private Boolean mIsGroupConversation;
        private Person mUser;
        private final List<Message> mMessages = new ArrayList();
        private final List<Message> mHistoricMessages = new ArrayList();

        public static final class Message {
            static final String KEY_DATA_MIME_TYPE = "type";
            static final String KEY_DATA_URI = "uri";
            static final String KEY_EXTRAS_BUNDLE = "extras";
            static final String KEY_NOTIFICATION_PERSON = "sender_person";
            static final String KEY_PERSON = "person";
            static final String KEY_SENDER = "sender";
            static final String KEY_TEXT = "text";
            static final String KEY_TIMESTAMP = "time";

            @Nullable
            private String mDataMimeType;

            @Nullable
            private Uri mDataUri;
            private Bundle mExtras;

            @Nullable
            private final Person mPerson;
            private final CharSequence mText;
            private final long mTimestamp;

            public Message(@Nullable CharSequence charSequence, long j6, @Nullable Person person) {
                this.mExtras = new Bundle();
                this.mText = charSequence;
                this.mTimestamp = j6;
                this.mPerson = person;
            }

            @Nullable
            public String b() {
                return this.mDataMimeType;
            }

            @Nullable
            public Uri c() {
                return this.mDataUri;
            }

            @NonNull
            public Bundle d() {
                return this.mExtras;
            }

            @Nullable
            public Person g() {
                return this.mPerson;
            }

            @Nullable
            public CharSequence h() {
                return this.mText;
            }

            public long i() {
                return this.mTimestamp;
            }

            @NonNull
            public Message j(@Nullable String str, @Nullable Uri uri) {
                this.mDataMimeType = str;
                this.mDataUri = uri;
                return this;
            }

            @Nullable
            static Message e(@NonNull Bundle bundle) {
                Person personA;
                try {
                    if (bundle.containsKey("text") && bundle.containsKey(KEY_TIMESTAMP)) {
                        if (bundle.containsKey(KEY_PERSON)) {
                            personA = Person.b(bundle.getBundle(KEY_PERSON));
                        } else if (!bundle.containsKey(KEY_NOTIFICATION_PERSON) || Build.VERSION.SDK_INT < 28) {
                            personA = bundle.containsKey(KEY_SENDER) ? new Person.Builder().f(bundle.getCharSequence(KEY_SENDER)).a() : null;
                        } else {
                            personA = Person.a(k.a(bundle.getParcelable(KEY_NOTIFICATION_PERSON)));
                        }
                        Message message = new Message(bundle.getCharSequence("text"), bundle.getLong(KEY_TIMESTAMP), personA);
                        if (bundle.containsKey("type") && bundle.containsKey(KEY_DATA_URI)) {
                            message.j(bundle.getString("type"), (Uri) bundle.getParcelable(KEY_DATA_URI));
                        }
                        if (bundle.containsKey(KEY_EXTRAS_BUNDLE)) {
                            message.d().putAll(bundle.getBundle(KEY_EXTRAS_BUNDLE));
                        }
                        return message;
                    }
                } catch (ClassCastException unused) {
                }
                return null;
            }

            @NonNull
            static List<Message> f(@NonNull Parcelable[] parcelableArr) {
                Message messageE;
                ArrayList arrayList = new ArrayList(parcelableArr.length);
                for (Parcelable parcelable : parcelableArr) {
                    if ((parcelable instanceof Bundle) && (messageE = e((Bundle) parcelable)) != null) {
                        arrayList.add(messageE);
                    }
                }
                return arrayList;
            }

            @NonNull
            private Bundle l() {
                Bundle bundle = new Bundle();
                CharSequence charSequence = this.mText;
                if (charSequence != null) {
                    bundle.putCharSequence("text", charSequence);
                }
                bundle.putLong(KEY_TIMESTAMP, this.mTimestamp);
                Person person = this.mPerson;
                if (person != null) {
                    bundle.putCharSequence(KEY_SENDER, person.f());
                    if (Build.VERSION.SDK_INT >= 28) {
                        bundle.putParcelable(KEY_NOTIFICATION_PERSON, this.mPerson.k());
                    } else {
                        bundle.putBundle(KEY_PERSON, this.mPerson.l());
                    }
                }
                String str = this.mDataMimeType;
                if (str != null) {
                    bundle.putString("type", str);
                }
                Uri uri = this.mDataUri;
                if (uri != null) {
                    bundle.putParcelable(KEY_DATA_URI, uri);
                }
                Bundle bundle2 = this.mExtras;
                if (bundle2 != null) {
                    bundle.putBundle(KEY_EXTRAS_BUNDLE, bundle2);
                }
                return bundle;
            }

            @Deprecated
            public Message(@Nullable CharSequence charSequence, long j6, @Nullable CharSequence charSequence2) {
                this(charSequence, j6, new Person.Builder().f(charSequence2).a());
            }

            @NonNull
            static Bundle[] a(@NonNull List<Message> list) {
                Bundle[] bundleArr = new Bundle[list.size()];
                int size = list.size();
                for (int i10 = 0; i10 < size; i10++) {
                    bundleArr[i10] = list.get(i10).l();
                }
                return bundleArr;
            }

            @NonNull
            @RequiresApi
            @RestrictTo
            Notification.MessagingStyle.Message k() {
                Notification.MessagingStyle.Message messageA;
                Person personG = g();
                CharSequence charSequenceF = null;
                android.app.Person personK = null;
                if (Build.VERSION.SDK_INT >= 28) {
                    g0.a();
                    CharSequence charSequenceH = h();
                    long jI = i();
                    if (personG != null) {
                        personK = personG.k();
                    }
                    messageA = e0.a(charSequenceH, jI, personK);
                } else {
                    g0.a();
                    CharSequence charSequenceH2 = h();
                    long jI2 = i();
                    if (personG != null) {
                        charSequenceF = personG.f();
                    }
                    messageA = f0.a(charSequenceH2, jI2, charSequenceF);
                }
                if (b() != null) {
                    messageA.setData(b(), c());
                }
                return messageA;
            }
        }

        MessagingStyle() {
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @NonNull
        @RestrictTo
        protected String q() {
            return TEMPLATE_CLASS_NAME;
        }

        @NonNull
        private TextAppearanceSpan A(int i10) {
            return new TextAppearanceSpan(null, 0, 0, ColorStateList.valueOf(i10), null);
        }

        @Nullable
        private Message x() {
            for (int size = this.mMessages.size() - 1; size >= 0; size--) {
                Message message = this.mMessages.get(size);
                if (message.g() != null && !TextUtils.isEmpty(message.g().f())) {
                    return message;
                }
            }
            if (this.mMessages.isEmpty()) {
                return null;
            }
            List<Message> list = this.mMessages;
            return list.get(list.size() - 1);
        }

        private boolean y() {
            for (int size = this.mMessages.size() - 1; size >= 0; size--) {
                Message message = this.mMessages.get(size);
                if (message.g() != null && message.g().f() == null) {
                    return true;
                }
            }
            return false;
        }

        public boolean z() {
            Builder builder = this.mBuilder;
            if (builder != null && builder.mContext.getApplicationInfo().targetSdkVersion < 28 && this.mIsGroupConversation == null) {
                return this.mConversationTitle != null;
            }
            Boolean bool = this.mIsGroupConversation;
            if (bool != null) {
                return bool.booleanValue();
            }
            return false;
        }

        private CharSequence B(@NonNull Message message) {
            CharSequence charSequenceF;
            BidiFormatter bidiFormatterC = BidiFormatter.c();
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            CharSequence charSequenceH = "";
            if (message.g() == null) {
                charSequenceF = "";
            } else {
                charSequenceF = message.g().f();
            }
            boolean zIsEmpty = TextUtils.isEmpty(charSequenceF);
            int i10 = ViewCompat.MEASURED_STATE_MASK;
            if (zIsEmpty) {
                charSequenceF = this.mUser.f();
                if (this.mBuilder.i() != 0) {
                    i10 = this.mBuilder.i();
                }
            }
            CharSequence charSequenceH2 = bidiFormatterC.h(charSequenceF);
            spannableStringBuilder.append(charSequenceH2);
            spannableStringBuilder.setSpan(A(i10), spannableStringBuilder.length() - charSequenceH2.length(), spannableStringBuilder.length(), 33);
            if (message.h() != null) {
                charSequenceH = message.h();
            }
            spannableStringBuilder.append((CharSequence) "  ").append(bidiFormatterC.h(charSequenceH));
            return spannableStringBuilder;
        }

        @NonNull
        public MessagingStyle C(boolean z6) {
            this.mIsGroupConversation = Boolean.valueOf(z6);
            return this;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public void a(@NonNull Bundle bundle) {
            super.a(bundle);
            bundle.putCharSequence(NotificationCompat.EXTRA_SELF_DISPLAY_NAME, this.mUser.f());
            bundle.putBundle(NotificationCompat.EXTRA_MESSAGING_STYLE_USER, this.mUser.l());
            bundle.putCharSequence(NotificationCompat.EXTRA_HIDDEN_CONVERSATION_TITLE, this.mConversationTitle);
            if (this.mConversationTitle != null && this.mIsGroupConversation.booleanValue()) {
                bundle.putCharSequence(NotificationCompat.EXTRA_CONVERSATION_TITLE, this.mConversationTitle);
            }
            if (!this.mMessages.isEmpty()) {
                bundle.putParcelableArray(NotificationCompat.EXTRA_MESSAGES, Message.a(this.mMessages));
            }
            if (!this.mHistoricMessages.isEmpty()) {
                bundle.putParcelableArray(NotificationCompat.EXTRA_HISTORIC_MESSAGES, Message.a(this.mHistoricMessages));
            }
            Boolean bool = this.mIsGroupConversation;
            if (bool != null) {
                bundle.putBoolean(NotificationCompat.EXTRA_IS_GROUP_CONVERSATION, bool.booleanValue());
            }
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo
        public void b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            boolean z6;
            CharSequence charSequenceH;
            CharSequence charSequenceH2;
            Notification.MessagingStyle messagingStyleA;
            C(z());
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 24) {
                if (i10 >= 28) {
                    d0.a();
                    messagingStyleA = b0.a(this.mUser.k());
                } else {
                    d0.a();
                    messagingStyleA = c0.a(this.mUser.f());
                }
                Iterator<Message> it = this.mMessages.iterator();
                while (it.hasNext()) {
                    messagingStyleA.addMessage(it.next().k());
                }
                if (Build.VERSION.SDK_INT >= 26) {
                    Iterator<Message> it2 = this.mHistoricMessages.iterator();
                    while (it2.hasNext()) {
                        messagingStyleA.addHistoricMessage(it2.next().k());
                    }
                }
                if (this.mIsGroupConversation.booleanValue() || Build.VERSION.SDK_INT >= 28) {
                    messagingStyleA.setConversationTitle(this.mConversationTitle);
                }
                if (Build.VERSION.SDK_INT >= 28) {
                    messagingStyleA.setGroupConversation(this.mIsGroupConversation.booleanValue());
                }
                messagingStyleA.setBuilder(notificationBuilderWithBuilderAccessor.a());
                return;
            }
            Message messageX = x();
            if (this.mConversationTitle != null && this.mIsGroupConversation.booleanValue()) {
                notificationBuilderWithBuilderAccessor.a().setContentTitle(this.mConversationTitle);
            } else if (messageX != null) {
                notificationBuilderWithBuilderAccessor.a().setContentTitle("");
                if (messageX.g() != null) {
                    notificationBuilderWithBuilderAccessor.a().setContentTitle(messageX.g().f());
                }
            }
            if (messageX != null) {
                Notification.Builder builderA = notificationBuilderWithBuilderAccessor.a();
                if (this.mConversationTitle != null) {
                    charSequenceH2 = B(messageX);
                } else {
                    charSequenceH2 = messageX.h();
                }
                builderA.setContentText(charSequenceH2);
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            if (this.mConversationTitle == null && !y()) {
                z6 = false;
            } else {
                z6 = true;
            }
            for (int size = this.mMessages.size() - 1; size >= 0; size--) {
                Message message = this.mMessages.get(size);
                if (z6) {
                    charSequenceH = B(message);
                } else {
                    charSequenceH = message.h();
                }
                if (size != this.mMessages.size() - 1) {
                    spannableStringBuilder.insert(0, (CharSequence) "\n");
                }
                spannableStringBuilder.insert(0, charSequenceH);
            }
            new Notification.BigTextStyle(notificationBuilderWithBuilderAccessor.a()).setBigContentTitle(null).bigText(spannableStringBuilder);
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo
        protected void f(@NonNull Bundle bundle) {
            super.f(bundle);
            bundle.remove(NotificationCompat.EXTRA_MESSAGING_STYLE_USER);
            bundle.remove(NotificationCompat.EXTRA_SELF_DISPLAY_NAME);
            bundle.remove(NotificationCompat.EXTRA_CONVERSATION_TITLE);
            bundle.remove(NotificationCompat.EXTRA_HIDDEN_CONVERSATION_TITLE);
            bundle.remove(NotificationCompat.EXTRA_MESSAGES);
            bundle.remove(NotificationCompat.EXTRA_HISTORIC_MESSAGES);
            bundle.remove(NotificationCompat.EXTRA_IS_GROUP_CONVERSATION);
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo
        protected void v(@NonNull Bundle bundle) {
            super.v(bundle);
            this.mMessages.clear();
            if (bundle.containsKey(NotificationCompat.EXTRA_MESSAGING_STYLE_USER)) {
                this.mUser = Person.b(bundle.getBundle(NotificationCompat.EXTRA_MESSAGING_STYLE_USER));
            } else {
                this.mUser = new Person.Builder().f(bundle.getString(NotificationCompat.EXTRA_SELF_DISPLAY_NAME)).a();
            }
            CharSequence charSequence = bundle.getCharSequence(NotificationCompat.EXTRA_CONVERSATION_TITLE);
            this.mConversationTitle = charSequence;
            if (charSequence == null) {
                this.mConversationTitle = bundle.getCharSequence(NotificationCompat.EXTRA_HIDDEN_CONVERSATION_TITLE);
            }
            Parcelable[] parcelableArray = bundle.getParcelableArray(NotificationCompat.EXTRA_MESSAGES);
            if (parcelableArray != null) {
                this.mMessages.addAll(Message.f(parcelableArray));
            }
            Parcelable[] parcelableArray2 = bundle.getParcelableArray(NotificationCompat.EXTRA_HISTORIC_MESSAGES);
            if (parcelableArray2 != null) {
                this.mHistoricMessages.addAll(Message.f(parcelableArray2));
            }
            if (bundle.containsKey(NotificationCompat.EXTRA_IS_GROUP_CONVERSATION)) {
                this.mIsGroupConversation = Boolean.valueOf(bundle.getBoolean(NotificationCompat.EXTRA_IS_GROUP_CONVERSATION));
            }
        }

        @Deprecated
        public MessagingStyle(@NonNull CharSequence charSequence) {
            this.mUser = new Person.Builder().f(charSequence).a();
        }

        public MessagingStyle(@NonNull Person person) {
            if (TextUtils.isEmpty(person.f())) {
                throw new IllegalArgumentException("User's name must not be empty.");
            }
            this.mUser = person;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface NotificationVisibility {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface ServiceNotificationBehavior {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface StreamType {
    }

    public static abstract class Style {
        CharSequence mBigContentTitle;

        @RestrictTo
        protected Builder mBuilder;
        CharSequence mSummaryText;
        boolean mSummaryTextSet = false;

        private static float g(float f, float f6, float f7) {
            if (f < f6) {
                return f6;
            }
            return f > f7 ? f7 : f;
        }

        @Nullable
        private static Style i(@Nullable String str) {
            if (str == null) {
                return null;
            }
            int i10 = Build.VERSION.SDK_INT;
            if (str.equals(Notification.BigPictureStyle.class.getName())) {
                return new BigPictureStyle();
            }
            if (str.equals(Notification.BigTextStyle.class.getName())) {
                return new BigTextStyle();
            }
            if (str.equals(Notification.InboxStyle.class.getName())) {
                return new InboxStyle();
            }
            if (i10 >= 24) {
                if (str.equals(j0.a().getName())) {
                    return new MessagingStyle();
                }
                if (str.equals(k0.a().getName())) {
                    return new DecoratedCustomViewStyle();
                }
            }
            return null;
        }

        @RestrictTo
        public void b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        }

        Bitmap m(@NonNull IconCompat iconCompat, int i10) {
            return n(iconCompat, i10, 0);
        }

        @Nullable
        @RestrictTo
        protected String q() {
            return null;
        }

        @RestrictTo
        public RemoteViews s(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return null;
        }

        @RestrictTo
        public RemoteViews t(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return null;
        }

        @RestrictTo
        public RemoteViews u(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return null;
        }

        private int e() {
            Resources resources = this.mBuilder.mContext.getResources();
            int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.notification_top_pad);
            int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.notification_top_pad_large_text);
            float fG = (g(resources.getConfiguration().fontScale, 1.0f, 1.3f) - 1.0f) / 0.29999995f;
            return Math.round(((1.0f - fG) * dimensionPixelSize) + (fG * dimensionPixelSize2));
        }

        @Nullable
        static Style h(@Nullable String str) {
            if (str == null) {
                return null;
            }
            switch (str) {
                case "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle":
                    return new DecoratedCustomViewStyle();
                case "androidx.core.app.NotificationCompat$BigPictureStyle":
                    return new BigPictureStyle();
                case "androidx.core.app.NotificationCompat$InboxStyle":
                    return new InboxStyle();
                case "androidx.core.app.NotificationCompat$BigTextStyle":
                    return new BigTextStyle();
                case "androidx.core.app.NotificationCompat$MessagingStyle":
                    return new MessagingStyle();
                default:
                    return null;
            }
        }

        @Nullable
        static Style j(@NonNull Bundle bundle) {
            Style styleH = h(bundle.getString(NotificationCompat.EXTRA_COMPAT_TEMPLATE));
            if (styleH != null) {
                return styleH;
            }
            if (bundle.containsKey(NotificationCompat.EXTRA_SELF_DISPLAY_NAME) || bundle.containsKey(NotificationCompat.EXTRA_MESSAGING_STYLE_USER)) {
                return new MessagingStyle();
            }
            if (bundle.containsKey(NotificationCompat.EXTRA_PICTURE) || bundle.containsKey(NotificationCompat.EXTRA_PICTURE_ICON)) {
                return new BigPictureStyle();
            }
            if (bundle.containsKey(NotificationCompat.EXTRA_BIG_TEXT)) {
                return new BigTextStyle();
            }
            return bundle.containsKey(NotificationCompat.EXTRA_TEXT_LINES) ? new InboxStyle() : i(bundle.getString(NotificationCompat.EXTRA_TEMPLATE));
        }

        private Bitmap l(int i10, int i11, int i12) {
            return n(IconCompat.o(this.mBuilder.mContext, i10), i11, i12);
        }

        private Bitmap n(@NonNull IconCompat iconCompat, int i10, int i11) {
            Drawable drawableX = iconCompat.x(this.mBuilder.mContext);
            int intrinsicWidth = i11 == 0 ? drawableX.getIntrinsicWidth() : i11;
            if (i11 == 0) {
                i11 = drawableX.getIntrinsicHeight();
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(intrinsicWidth, i11, Bitmap.Config.ARGB_8888);
            drawableX.setBounds(0, 0, intrinsicWidth, i11);
            if (i10 != 0) {
                drawableX.mutate().setColorFilter(new PorterDuffColorFilter(i10, PorterDuff.Mode.SRC_IN));
            }
            drawableX.draw(new Canvas(bitmapCreateBitmap));
            return bitmapCreateBitmap;
        }

        private Bitmap o(int i10, int i11, int i12, int i13) {
            int i14 = R.drawable.notification_icon_background;
            if (i13 == 0) {
                i13 = 0;
            }
            Bitmap bitmapL = l(i14, i13, i11);
            Canvas canvas = new Canvas(bitmapL);
            Drawable drawableMutate = this.mBuilder.mContext.getResources().getDrawable(i10).mutate();
            drawableMutate.setFilterBitmap(true);
            int i15 = (i11 - i12) / 2;
            int i16 = i12 + i15;
            drawableMutate.setBounds(i15, i15, i16, i16);
            drawableMutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_ATOP));
            drawableMutate.draw(canvas);
            return bitmapL;
        }

        private void r(RemoteViews remoteViews) {
            remoteViews.setViewVisibility(R.id.title, 8);
            remoteViews.setViewVisibility(R.id.text2, 8);
            remoteViews.setViewVisibility(R.id.text, 8);
        }

        @RestrictTo
        public void a(@NonNull Bundle bundle) {
            if (this.mSummaryTextSet) {
                bundle.putCharSequence(NotificationCompat.EXTRA_SUMMARY_TEXT, this.mSummaryText);
            }
            CharSequence charSequence = this.mBigContentTitle;
            if (charSequence != null) {
                bundle.putCharSequence(NotificationCompat.EXTRA_TITLE_BIG, charSequence);
            }
            String strQ = q();
            if (strQ != null) {
                bundle.putString(NotificationCompat.EXTRA_COMPAT_TEMPLATE, strQ);
            }
        }

        /* JADX WARN: Code duplicated, block: B:34:0x00fe  */
        /* JADX WARN: Code duplicated, block: B:36:0x0109  */
        /* JADX WARN: Code duplicated, block: B:38:0x0113  */
        /* JADX WARN: Code duplicated, block: B:40:0x0128  */
        /* JADX WARN: Code duplicated, block: B:43:0x0139  */
        /* JADX WARN: Code duplicated, block: B:45:0x013f  */
        /* JADX WARN: Code duplicated, block: B:50:0x016e  */
        /* JADX WARN: Code duplicated, block: B:51:0x0180  */
        /* JADX WARN: Code duplicated, block: B:54:0x0185  */
        /* JADX WARN: Code duplicated, block: B:55:0x0187  */
        /* JADX WARN: Code duplicated, block: B:59:0x0190  */
        @NonNull
        @RestrictTo
        public RemoteViews c(boolean z6, int i10, boolean z10) {
            boolean z11;
            boolean z12;
            CharSequence charSequence;
            int i11;
            int i12;
            boolean z13;
            int i13;
            CharSequence charSequence2;
            Resources resources = this.mBuilder.mContext.getResources();
            RemoteViews remoteViews = new RemoteViews(this.mBuilder.mContext.getPackageName(), i10);
            this.mBuilder.o();
            int i14 = Build.VERSION.SDK_INT;
            Builder builder = this.mBuilder;
            if (builder.mLargeIcon != null) {
                int i15 = R.id.icon;
                remoteViews.setViewVisibility(i15, 0);
                remoteViews.setImageViewBitmap(i15, this.mBuilder.mLargeIcon);
                if (z6 && this.mBuilder.mNotification.icon != 0) {
                    int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.notification_right_icon_size);
                    int dimensionPixelSize2 = dimensionPixelSize - (resources.getDimensionPixelSize(R.dimen.notification_small_icon_background_padding) * 2);
                    Builder builder2 = this.mBuilder;
                    Bitmap bitmapO = o(builder2.mNotification.icon, dimensionPixelSize, dimensionPixelSize2, builder2.i());
                    int i16 = R.id.right_icon;
                    remoteViews.setImageViewBitmap(i16, bitmapO);
                    remoteViews.setViewVisibility(i16, 0);
                }
            } else if (z6 && builder.mNotification.icon != 0) {
                int i17 = R.id.icon;
                remoteViews.setViewVisibility(i17, 0);
                int dimensionPixelSize3 = resources.getDimensionPixelSize(R.dimen.notification_large_icon_width) - resources.getDimensionPixelSize(R.dimen.notification_big_circle_margin);
                int dimensionPixelSize4 = resources.getDimensionPixelSize(R.dimen.notification_small_icon_size_as_large);
                Builder builder3 = this.mBuilder;
                remoteViews.setImageViewBitmap(i17, o(builder3.mNotification.icon, dimensionPixelSize3, dimensionPixelSize4, builder3.i()));
            }
            CharSequence charSequence3 = this.mBuilder.mContentTitle;
            if (charSequence3 != null) {
                remoteViews.setTextViewText(R.id.title, charSequence3);
            }
            CharSequence charSequence4 = this.mBuilder.mContentText;
            boolean z14 = true;
            if (charSequence4 != null) {
                remoteViews.setTextViewText(R.id.text, charSequence4);
                z11 = true;
            } else {
                z11 = false;
            }
            Builder builder4 = this.mBuilder;
            CharSequence charSequence5 = builder4.mContentInfo;
            if (charSequence5 == null) {
                if (builder4.mNumber > 0) {
                    if (this.mBuilder.mNumber > resources.getInteger(R.integer.status_bar_notification_info_maxnum)) {
                        remoteViews.setTextViewText(R.id.info, resources.getString(R.string.status_bar_notification_info_overflow));
                    } else {
                        remoteViews.setTextViewText(R.id.info, NumberFormat.getIntegerInstance().format(this.mBuilder.mNumber));
                    }
                    remoteViews.setViewVisibility(R.id.info, 0);
                } else {
                    remoteViews.setViewVisibility(R.id.info, 8);
                    z12 = false;
                }
                charSequence = this.mBuilder.mSubText;
                if (charSequence != null) {
                    i13 = R.id.text;
                    remoteViews.setTextViewText(i13, charSequence);
                    charSequence2 = this.mBuilder.mContentText;
                    if (charSequence2 != null) {
                        int i18 = R.id.text2;
                        remoteViews.setTextViewText(i18, charSequence2);
                        remoteViews.setViewVisibility(i18, 0);
                        if (z10) {
                            remoteViews.setTextViewTextSize(i13, 0, resources.getDimensionPixelSize(R.dimen.notification_subtext_size));
                        }
                        remoteViews.setViewPadding(R.id.line1, 0, 0, 0, 0);
                    } else {
                        remoteViews.setViewVisibility(R.id.text2, 8);
                    }
                }
                if (this.mBuilder.p() != 0) {
                    z14 = z12;
                } else if (this.mBuilder.mUseChronometer) {
                    i12 = R.id.chronometer;
                    remoteViews.setViewVisibility(i12, 0);
                    remoteViews.setLong(i12, "setBase", this.mBuilder.p() + (SystemClock.elapsedRealtime() - System.currentTimeMillis()));
                    remoteViews.setBoolean(i12, "setStarted", true);
                    z13 = this.mBuilder.mChronometerCountDown;
                    if (z13 && i14 >= 24) {
                        remoteViews.setChronometerCountDown(i12, z13);
                    }
                } else {
                    int i19 = R.id.time;
                    remoteViews.setViewVisibility(i19, 0);
                    remoteViews.setLong(i19, "setTime", this.mBuilder.p());
                }
                int i20 = R.id.right_side;
                if (z14) {
                    i11 = 0;
                } else {
                    i11 = 8;
                }
                remoteViews.setViewVisibility(i20, i11);
                remoteViews.setViewVisibility(R.id.line3, z11 ? 0 : 8);
                return remoteViews;
            }
            int i21 = R.id.info;
            remoteViews.setTextViewText(i21, charSequence5);
            remoteViews.setViewVisibility(i21, 0);
            z11 = true;
            z12 = true;
            charSequence = this.mBuilder.mSubText;
            if (charSequence != null) {
                i13 = R.id.text;
                remoteViews.setTextViewText(i13, charSequence);
                charSequence2 = this.mBuilder.mContentText;
                if (charSequence2 != null) {
                    int i110 = R.id.text2;
                    remoteViews.setTextViewText(i110, charSequence2);
                    remoteViews.setViewVisibility(i110, 0);
                    if (z10) {
                        remoteViews.setTextViewTextSize(i13, 0, resources.getDimensionPixelSize(R.dimen.notification_subtext_size));
                    }
                    remoteViews.setViewPadding(R.id.line1, 0, 0, 0, 0);
                } else {
                    remoteViews.setViewVisibility(R.id.text2, 8);
                }
            }
            if (this.mBuilder.p() != 0) {
                z14 = z12;
            } else if (this.mBuilder.mUseChronometer) {
                i12 = R.id.chronometer;
                remoteViews.setViewVisibility(i12, 0);
                remoteViews.setLong(i12, "setBase", this.mBuilder.p() + (SystemClock.elapsedRealtime() - System.currentTimeMillis()));
                remoteViews.setBoolean(i12, "setStarted", true);
                z13 = this.mBuilder.mChronometerCountDown;
                if (z13) {
                    remoteViews.setChronometerCountDown(i12, z13);
                }
            } else {
                int i111 = R.id.time;
                remoteViews.setViewVisibility(i111, 0);
                remoteViews.setLong(i111, "setTime", this.mBuilder.p());
            }
            int i22 = R.id.right_side;
            if (z14) {
                i11 = 0;
            } else {
                i11 = 8;
            }
            remoteViews.setViewVisibility(i22, i11);
            remoteViews.setViewVisibility(R.id.line3, z11 ? 0 : 8);
            return remoteViews;
        }

        @RestrictTo
        protected void f(@NonNull Bundle bundle) {
            bundle.remove(NotificationCompat.EXTRA_SUMMARY_TEXT);
            bundle.remove(NotificationCompat.EXTRA_TITLE_BIG);
            bundle.remove(NotificationCompat.EXTRA_COMPAT_TEMPLATE);
        }

        @RestrictTo
        protected void v(@NonNull Bundle bundle) {
            if (bundle.containsKey(NotificationCompat.EXTRA_SUMMARY_TEXT)) {
                this.mSummaryText = bundle.getCharSequence(NotificationCompat.EXTRA_SUMMARY_TEXT);
                this.mSummaryTextSet = true;
            }
            this.mBigContentTitle = bundle.getCharSequence(NotificationCompat.EXTRA_TITLE_BIG);
        }

        public void w(@Nullable Builder builder) {
            if (this.mBuilder != builder) {
                this.mBuilder = builder;
                if (builder != null) {
                    builder.f0(this);
                }
            }
        }

        @Nullable
        static Style k(@NonNull Bundle bundle) {
            Style styleJ = j(bundle);
            if (styleJ == null) {
                return null;
            }
            try {
                styleJ.v(bundle);
                return styleJ;
            } catch (ClassCastException unused) {
                return null;
            }
        }

        @Nullable
        @RestrictTo
        public static Style p(@NonNull Notification notification) {
            Bundle extras = NotificationCompat.getExtras(notification);
            if (extras == null) {
                return null;
            }
            return k(extras);
        }

        @RestrictTo
        public void d(RemoteViews remoteViews, RemoteViews remoteViews2) {
            r(remoteViews);
            int i10 = R.id.notification_main_column;
            remoteViews.removeAllViews(i10);
            remoteViews.addView(i10, remoteViews2.clone());
            remoteViews.setViewVisibility(i10, 0);
            remoteViews.setViewPadding(R.id.notification_main_column_container, 0, e(), 0, 0);
        }
    }

    public static final class WearableExtender implements Extender {
        private static final int DEFAULT_CONTENT_ICON_GRAVITY = 8388613;
        private static final int DEFAULT_FLAGS = 1;
        private static final int DEFAULT_GRAVITY = 80;
        private static final String EXTRA_WEARABLE_EXTENSIONS = "android.wearable.EXTENSIONS";
        private static final int FLAG_BIG_PICTURE_AMBIENT = 32;
        private static final int FLAG_CONTENT_INTENT_AVAILABLE_OFFLINE = 1;
        private static final int FLAG_HINT_AVOID_BACKGROUND_CLIPPING = 16;
        private static final int FLAG_HINT_CONTENT_INTENT_LAUNCHES_ACTIVITY = 64;
        private static final int FLAG_HINT_HIDE_ICON = 2;
        private static final int FLAG_HINT_SHOW_BACKGROUND_ONLY = 4;
        private static final int FLAG_START_SCROLL_BOTTOM = 8;
        private static final String KEY_ACTIONS = "actions";
        private static final String KEY_BACKGROUND = "background";
        private static final String KEY_BRIDGE_TAG = "bridgeTag";
        private static final String KEY_CONTENT_ACTION_INDEX = "contentActionIndex";
        private static final String KEY_CONTENT_ICON = "contentIcon";
        private static final String KEY_CONTENT_ICON_GRAVITY = "contentIconGravity";
        private static final String KEY_CUSTOM_CONTENT_HEIGHT = "customContentHeight";
        private static final String KEY_CUSTOM_SIZE_PRESET = "customSizePreset";
        private static final String KEY_DISMISSAL_ID = "dismissalId";
        private static final String KEY_DISPLAY_INTENT = "displayIntent";
        private static final String KEY_FLAGS = "flags";
        private static final String KEY_GRAVITY = "gravity";
        private static final String KEY_HINT_SCREEN_TIMEOUT = "hintScreenTimeout";
        private static final String KEY_PAGES = "pages";

        @Deprecated
        public static final int SCREEN_TIMEOUT_LONG = -1;

        @Deprecated
        public static final int SCREEN_TIMEOUT_SHORT = 0;

        @Deprecated
        public static final int SIZE_DEFAULT = 0;

        @Deprecated
        public static final int SIZE_FULL_SCREEN = 5;

        @Deprecated
        public static final int SIZE_LARGE = 4;

        @Deprecated
        public static final int SIZE_MEDIUM = 3;

        @Deprecated
        public static final int SIZE_SMALL = 2;

        @Deprecated
        public static final int SIZE_XSMALL = 1;
        public static final int UNSET_ACTION_INDEX = -1;
        private ArrayList<Action> mActions;
        private Bitmap mBackground;
        private String mBridgeTag;
        private int mContentActionIndex;
        private int mContentIcon;
        private int mContentIconGravity;
        private int mCustomContentHeight;
        private int mCustomSizePreset;
        private String mDismissalId;
        private PendingIntent mDisplayIntent;
        private int mFlags;
        private int mGravity;
        private int mHintScreenTimeout;
        private ArrayList<Notification> mPages;

        public WearableExtender() {
            this.mActions = new ArrayList<>();
            this.mFlags = 1;
            this.mPages = new ArrayList<>();
            this.mContentIconGravity = 8388613;
            this.mContentActionIndex = -1;
            this.mCustomSizePreset = 0;
            this.mGravity = 80;
        }

        @NonNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public WearableExtender clone() {
            WearableExtender wearableExtender = new WearableExtender();
            wearableExtender.mActions = new ArrayList<>(this.mActions);
            wearableExtender.mFlags = this.mFlags;
            wearableExtender.mDisplayIntent = this.mDisplayIntent;
            wearableExtender.mPages = new ArrayList<>(this.mPages);
            wearableExtender.mBackground = this.mBackground;
            wearableExtender.mContentIcon = this.mContentIcon;
            wearableExtender.mContentIconGravity = this.mContentIconGravity;
            wearableExtender.mContentActionIndex = this.mContentActionIndex;
            wearableExtender.mCustomSizePreset = this.mCustomSizePreset;
            wearableExtender.mCustomContentHeight = this.mCustomContentHeight;
            wearableExtender.mGravity = this.mGravity;
            wearableExtender.mHintScreenTimeout = this.mHintScreenTimeout;
            wearableExtender.mDismissalId = this.mDismissalId;
            wearableExtender.mBridgeTag = this.mBridgeTag;
            return wearableExtender;
        }

        public WearableExtender(@NonNull Notification notification) {
            this.mActions = new ArrayList<>();
            this.mFlags = 1;
            this.mPages = new ArrayList<>();
            this.mContentIconGravity = 8388613;
            this.mContentActionIndex = -1;
            this.mCustomSizePreset = 0;
            this.mGravity = 80;
            Bundle extras = NotificationCompat.getExtras(notification);
            Bundle bundle = extras != null ? extras.getBundle(EXTRA_WEARABLE_EXTENSIONS) : null;
            if (bundle != null) {
                ArrayList parcelableArrayList = bundle.getParcelableArrayList(KEY_ACTIONS);
                if (parcelableArrayList != null) {
                    int size = parcelableArrayList.size();
                    Action[] actionArr = new Action[size];
                    for (int i10 = 0; i10 < size; i10++) {
                        actionArr[i10] = NotificationCompat.getActionCompatFromAction((Notification.Action) parcelableArrayList.get(i10));
                    }
                    Collections.addAll(this.mActions, actionArr);
                }
                this.mFlags = bundle.getInt(KEY_FLAGS, 1);
                this.mDisplayIntent = (PendingIntent) bundle.getParcelable(KEY_DISPLAY_INTENT);
                Notification[] notificationArrayFromBundle = NotificationCompat.getNotificationArrayFromBundle(bundle, KEY_PAGES);
                if (notificationArrayFromBundle != null) {
                    Collections.addAll(this.mPages, notificationArrayFromBundle);
                }
                this.mBackground = (Bitmap) bundle.getParcelable("background");
                this.mContentIcon = bundle.getInt(KEY_CONTENT_ICON);
                this.mContentIconGravity = bundle.getInt(KEY_CONTENT_ICON_GRAVITY, 8388613);
                this.mContentActionIndex = bundle.getInt(KEY_CONTENT_ACTION_INDEX, -1);
                this.mCustomSizePreset = bundle.getInt(KEY_CUSTOM_SIZE_PRESET, 0);
                this.mCustomContentHeight = bundle.getInt(KEY_CUSTOM_CONTENT_HEIGHT);
                this.mGravity = bundle.getInt(KEY_GRAVITY, 80);
                this.mHintScreenTimeout = bundle.getInt(KEY_HINT_SCREEN_TIMEOUT);
                this.mDismissalId = bundle.getString(KEY_DISMISSAL_ID);
                this.mBridgeTag = bundle.getString(KEY_BRIDGE_TAG);
            }
        }
    }

    @Nullable
    public static Action getAction(@NonNull Notification notification, int i10) {
        return getActionCompatFromAction(notification.actions[i10]);
    }

    @NonNull
    @RequiresApi
    static Action getActionCompatFromAction(@NonNull Notification.Action action) {
        RemoteInput[] remoteInputArr;
        int i10;
        android.app.RemoteInput[] remoteInputs = action.getRemoteInputs();
        if (remoteInputs == null) {
            remoteInputArr = null;
        } else {
            RemoteInput[] remoteInputArr2 = new RemoteInput[remoteInputs.length];
            for (int i11 = 0; i11 < remoteInputs.length; i11++) {
                android.app.RemoteInput remoteInput = remoteInputs[i11];
                remoteInputArr2[i11] = new RemoteInput(remoteInput.getResultKey(), remoteInput.getLabel(), remoteInput.getChoices(), remoteInput.getAllowFreeFormInput(), Build.VERSION.SDK_INT >= 29 ? remoteInput.getEditChoicesBeforeSending() : 0, remoteInput.getExtras(), null);
            }
            remoteInputArr = remoteInputArr2;
        }
        int i12 = Build.VERSION.SDK_INT;
        boolean z6 = i12 >= 24 ? action.getExtras().getBoolean("android.support.allowGeneratedReplies") || action.getAllowGeneratedReplies() : action.getExtras().getBoolean("android.support.allowGeneratedReplies");
        boolean z10 = action.getExtras().getBoolean("android.support.action.showsUserInterface", true);
        int semanticAction = i12 >= 28 ? action.getSemanticAction() : action.getExtras().getInt("android.support.action.semanticAction", 0);
        boolean zIsContextual = i12 >= 29 ? action.isContextual() : false;
        boolean zIsAuthenticationRequired = i12 >= 31 ? action.isAuthenticationRequired() : false;
        if (action.getIcon() != null || (i10 = action.icon) == 0) {
            return new Action(action.getIcon() != null ? IconCompat.h(action.getIcon()) : null, action.title, action.actionIntent, action.getExtras(), remoteInputArr, (RemoteInput[]) null, z6, semanticAction, z10, zIsContextual, zIsAuthenticationRequired);
        }
        return new Action(i10, action.title, action.actionIntent, action.getExtras(), remoteInputArr, (RemoteInput[]) null, z6, semanticAction, z10, zIsContextual, zIsAuthenticationRequired);
    }

    public static int getActionCount(@NonNull Notification notification) {
        Notification.Action[] actionArr = notification.actions;
        if (actionArr != null) {
            return actionArr.length;
        }
        return 0;
    }

    public static boolean getAllowSystemGeneratedContextualActions(@NonNull Notification notification) {
        if (Build.VERSION.SDK_INT >= 29) {
            return notification.getAllowSystemGeneratedContextualActions();
        }
        return false;
    }

    public static boolean getAutoCancel(@NonNull Notification notification) {
        return (notification.flags & 16) != 0;
    }

    public static int getBadgeIconType(@NonNull Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return notification.getBadgeIconType();
        }
        return 0;
    }

    @Nullable
    public static BubbleMetadata getBubbleMetadata(@NonNull Notification notification) {
        if (Build.VERSION.SDK_INT >= 29) {
            return BubbleMetadata.a(notification.getBubbleMetadata());
        }
        return null;
    }

    @Nullable
    public static String getCategory(@NonNull Notification notification) {
        return notification.category;
    }

    @Nullable
    public static String getChannelId(@NonNull Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return notification.getChannelId();
        }
        return null;
    }

    public static int getColor(@NonNull Notification notification) {
        return notification.color;
    }

    @Nullable
    @RequiresApi
    public static CharSequence getContentInfo(@NonNull Notification notification) {
        return notification.extras.getCharSequence(EXTRA_INFO_TEXT);
    }

    @Nullable
    @RequiresApi
    public static CharSequence getContentText(@NonNull Notification notification) {
        return notification.extras.getCharSequence(EXTRA_TEXT);
    }

    @Nullable
    @RequiresApi
    public static CharSequence getContentTitle(@NonNull Notification notification) {
        return notification.extras.getCharSequence(EXTRA_TITLE);
    }

    @Nullable
    public static Bundle getExtras(@NonNull Notification notification) {
        return notification.extras;
    }

    public static int getGroupAlertBehavior(@NonNull Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return notification.getGroupAlertBehavior();
        }
        return 0;
    }

    @RestrictTo
    static boolean getHighPriority(@NonNull Notification notification) {
        return (notification.flags & 128) != 0;
    }

    @NonNull
    @RequiresApi
    public static List<Action> getInvisibleActions(@NonNull Notification notification) {
        Bundle bundle;
        ArrayList arrayList = new ArrayList();
        Bundle bundle2 = notification.extras.getBundle("android.car.EXTENSIONS");
        if (bundle2 != null && (bundle = bundle2.getBundle("invisible_actions")) != null) {
            for (int i10 = 0; i10 < bundle.size(); i10++) {
                arrayList.add(NotificationCompatJellybean.c(bundle.getBundle(Integer.toString(i10))));
            }
        }
        return arrayList;
    }

    public static boolean getLocalOnly(@NonNull Notification notification) {
        return (notification.flags & 256) != 0;
    }

    @Nullable
    public static LocusIdCompat getLocusId(@NonNull Notification notification) {
        LocusId locusId;
        if (Build.VERSION.SDK_INT < 29 || (locusId = notification.getLocusId()) == null) {
            return null;
        }
        return LocusIdCompat.c(locusId);
    }

    public static boolean getOngoing(@NonNull Notification notification) {
        return (notification.flags & 2) != 0;
    }

    public static boolean getOnlyAlertOnce(@NonNull Notification notification) {
        return (notification.flags & 8) != 0;
    }

    @NonNull
    public static List<Person> getPeople(@NonNull Notification notification) {
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 28) {
            ArrayList parcelableArrayList = notification.extras.getParcelableArrayList(EXTRA_PEOPLE_LIST);
            if (parcelableArrayList != null && !parcelableArrayList.isEmpty()) {
                Iterator it = parcelableArrayList.iterator();
                while (it.hasNext()) {
                    arrayList.add(Person.a(k.a(it.next())));
                }
            }
        } else {
            String[] stringArray = notification.extras.getStringArray(EXTRA_PEOPLE);
            if (stringArray != null && stringArray.length != 0) {
                for (String str : stringArray) {
                    arrayList.add(new Person.Builder().g(str).a());
                }
            }
        }
        return arrayList;
    }

    @Nullable
    public static Notification getPublicVersion(@NonNull Notification notification) {
        return notification.publicVersion;
    }

    @Nullable
    public static CharSequence getSettingsText(@NonNull Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return notification.getSettingsText();
        }
        return null;
    }

    @Nullable
    public static String getShortcutId(@NonNull Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return notification.getShortcutId();
        }
        return null;
    }

    @RequiresApi
    public static boolean getShowWhen(@NonNull Notification notification) {
        return notification.extras.getBoolean(EXTRA_SHOW_WHEN);
    }

    @Nullable
    @RequiresApi
    public static CharSequence getSubText(@NonNull Notification notification) {
        return notification.extras.getCharSequence(EXTRA_SUB_TEXT);
    }

    public static long getTimeoutAfter(@NonNull Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return notification.getTimeoutAfter();
        }
        return 0L;
    }

    @RequiresApi
    public static boolean getUsesChronometer(@NonNull Notification notification) {
        return notification.extras.getBoolean(EXTRA_SHOW_CHRONOMETER);
    }

    public static int getVisibility(@NonNull Notification notification) {
        return notification.visibility;
    }

    public static boolean isGroupSummary(@NonNull Notification notification) {
        return (notification.flags & 512) != 0;
    }

    @Deprecated
    public NotificationCompat() {
    }

    @Nullable
    public static String getGroup(@NonNull Notification notification) {
        return notification.getGroup();
    }

    @NonNull
    static Notification[] getNotificationArrayFromBundle(@NonNull Bundle bundle, @NonNull String str) {
        Parcelable[] parcelableArray = bundle.getParcelableArray(str);
        if (!(parcelableArray instanceof Notification[]) && parcelableArray != null) {
            Notification[] notificationArr = new Notification[parcelableArray.length];
            for (int i10 = 0; i10 < parcelableArray.length; i10++) {
                notificationArr[i10] = (Notification) parcelableArray[i10];
            }
            bundle.putParcelableArray(str, notificationArr);
            return notificationArr;
        }
        return (Notification[]) parcelableArray;
    }

    @Nullable
    public static String getSortKey(@NonNull Notification notification) {
        return notification.getSortKey();
    }
}
