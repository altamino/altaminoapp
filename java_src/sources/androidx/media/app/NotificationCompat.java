package androidx.media.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.media.session.MediaSession;
import android.os.Build;
import android.support.v4.media.session.MediaSessionCompat;
import android.widget.RemoteViews;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.app.NotificationBuilderWithBuilderAccessor;
import androidx.media.R;

/* JADX INFO: loaded from: classes8.dex */
public class NotificationCompat {

    @RequiresApi
    private static class Api21Impl {
        @DoNotInline
        static Notification.MediaStyle a() {
            return new Notification.MediaStyle();
        }

        @DoNotInline
        static Notification.MediaStyle b(Notification.MediaStyle mediaStyle, int[] iArr, MediaSessionCompat.Token token) {
            if (iArr != null) {
                e(mediaStyle, iArr);
            }
            if (token != null) {
                c(mediaStyle, (MediaSession.Token) token.h());
            }
            return mediaStyle;
        }

        private Api21Impl() {
        }

        @DoNotInline
        static void c(Notification.MediaStyle mediaStyle, MediaSession.Token token) {
            mediaStyle.setMediaSession(token);
        }

        @DoNotInline
        static void d(Notification.Builder builder, Notification.MediaStyle mediaStyle) {
            builder.setStyle(mediaStyle);
        }

        @DoNotInline
        static void e(Notification.MediaStyle mediaStyle, int... iArr) {
            mediaStyle.setShowActionsInCompactView(iArr);
        }
    }

    @RequiresApi
    private static class Api24Impl {
        @DoNotInline
        static Notification.DecoratedMediaCustomViewStyle a() {
            return new Notification.DecoratedMediaCustomViewStyle();
        }

        private Api24Impl() {
        }
    }

    public static class DecoratedMediaCustomViewStyle extends MediaStyle {
        @Override // androidx.media.app.NotificationCompat.MediaStyle
        int A(int i10) {
            return i10 <= 3 ? R.layout.notification_template_big_media_narrow_custom : R.layout.notification_template_big_media_custom;
        }

        private void C(RemoteViews remoteViews) {
            remoteViews.setInt(R.id.status_bar_latest_event_content, "setBackgroundColor", this.mBuilder.i() != 0 ? this.mBuilder.i() : this.mBuilder.mContext.getResources().getColor(R.color.notification_material_background_media_default_color));
        }

        @Override // androidx.media.app.NotificationCompat.MediaStyle
        int B() {
            return this.mBuilder.j() != null ? R.layout.notification_template_media_custom : super.B();
        }

        @Override // androidx.media.app.NotificationCompat.MediaStyle, androidx.core.app.NotificationCompat.Style
        @RestrictTo
        public void b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 24) {
                Api21Impl.d(notificationBuilderWithBuilderAccessor.a(), Api21Impl.b(Api24Impl.a(), this.mActionsToShowInCompact, this.mToken));
            } else {
                super.b(notificationBuilderWithBuilderAccessor);
            }
        }

        @Override // androidx.media.app.NotificationCompat.MediaStyle, androidx.core.app.NotificationCompat.Style
        @RestrictTo
        public RemoteViews s(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 24) {
                return null;
            }
            RemoteViews remoteViewsH = this.mBuilder.h() != null ? this.mBuilder.h() : this.mBuilder.j();
            if (remoteViewsH == null) {
                return null;
            }
            RemoteViews remoteViewsX = x();
            d(remoteViewsX, remoteViewsH);
            C(remoteViewsX);
            return remoteViewsX;
        }

        @Override // androidx.media.app.NotificationCompat.MediaStyle, androidx.core.app.NotificationCompat.Style
        @RestrictTo
        public RemoteViews t(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 24) {
                return null;
            }
            boolean z6 = this.mBuilder.j() != null;
            if (!z6 && this.mBuilder.h() == null) {
                return null;
            }
            RemoteViews remoteViewsY = y();
            if (z6) {
                d(remoteViewsY, this.mBuilder.j());
            }
            C(remoteViewsY);
            return remoteViewsY;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo
        public RemoteViews u(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 24) {
                return null;
            }
            RemoteViews remoteViewsM = this.mBuilder.m() != null ? this.mBuilder.m() : this.mBuilder.j();
            if (remoteViewsM == null) {
                return null;
            }
            RemoteViews remoteViewsX = x();
            d(remoteViewsX, remoteViewsM);
            C(remoteViewsX);
            return remoteViewsX;
        }
    }

    public static class MediaStyle extends androidx.core.app.NotificationCompat.Style {
        private static final int MAX_MEDIA_BUTTONS = 5;
        private static final int MAX_MEDIA_BUTTONS_IN_COMPACT = 3;
        int[] mActionsToShowInCompact = null;
        PendingIntent mCancelButtonIntent;
        boolean mShowCancelButton;
        MediaSessionCompat.Token mToken;

        public MediaStyle() {
        }

        int A(int i10) {
            return i10 <= 3 ? R.layout.notification_template_big_media_narrow : R.layout.notification_template_big_media;
        }

        int B() {
            return R.layout.notification_template_media;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo
        public RemoteViews s(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return null;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo
        public RemoteViews t(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return null;
        }

        public MediaStyle(androidx.core.app.NotificationCompat.Builder builder) {
            w(builder);
        }

        RemoteViews x() {
            int iMin = Math.min(this.mBuilder.mActions.size(), 5);
            RemoteViews remoteViewsC = c(false, A(iMin), false);
            remoteViewsC.removeAllViews(R.id.media_actions);
            if (iMin > 0) {
                for (int i10 = 0; i10 < iMin; i10++) {
                    remoteViewsC.addView(R.id.media_actions, z(this.mBuilder.mActions.get(i10)));
                }
            }
            if (this.mShowCancelButton) {
                int i11 = R.id.cancel_action;
                remoteViewsC.setViewVisibility(i11, 0);
                remoteViewsC.setInt(i11, "setAlpha", this.mBuilder.mContext.getResources().getInteger(R.integer.cancel_button_image_alpha));
                remoteViewsC.setOnClickPendingIntent(i11, this.mCancelButtonIntent);
            } else {
                remoteViewsC.setViewVisibility(R.id.cancel_action, 8);
            }
            return remoteViewsC;
        }

        private RemoteViews z(androidx.core.app.NotificationCompat.Action action) {
            boolean z6;
            if (action.a() == null) {
                z6 = true;
            } else {
                z6 = false;
            }
            RemoteViews remoteViews = new RemoteViews(this.mBuilder.mContext.getPackageName(), R.layout.notification_media_action);
            int i10 = R.id.action0;
            remoteViews.setImageViewResource(i10, action.d());
            if (!z6) {
                remoteViews.setOnClickPendingIntent(i10, action.a());
            }
            Api15Impl.a(remoteViews, i10, action.i());
            return remoteViews;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo
        public void b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            Api21Impl.d(notificationBuilderWithBuilderAccessor.a(), Api21Impl.b(Api21Impl.a(), this.mActionsToShowInCompact, this.mToken));
        }

        RemoteViews y() {
            int iMin;
            RemoteViews remoteViewsC = c(false, B(), true);
            int size = this.mBuilder.mActions.size();
            int[] iArr = this.mActionsToShowInCompact;
            if (iArr == null) {
                iMin = 0;
            } else {
                iMin = Math.min(iArr.length, 3);
            }
            remoteViewsC.removeAllViews(R.id.media_actions);
            if (iMin > 0) {
                for (int i10 = 0; i10 < iMin; i10++) {
                    if (i10 < size) {
                        remoteViewsC.addView(R.id.media_actions, z(this.mBuilder.mActions.get(this.mActionsToShowInCompact[i10])));
                    } else {
                        throw new IllegalArgumentException(String.format("setShowActionsInCompactView: action %d out of bounds (max %d)", Integer.valueOf(i10), Integer.valueOf(size - 1)));
                    }
                }
            }
            if (this.mShowCancelButton) {
                remoteViewsC.setViewVisibility(R.id.end_padder, 8);
                int i11 = R.id.cancel_action;
                remoteViewsC.setViewVisibility(i11, 0);
                remoteViewsC.setOnClickPendingIntent(i11, this.mCancelButtonIntent);
                remoteViewsC.setInt(i11, "setAlpha", this.mBuilder.mContext.getResources().getInteger(R.integer.cancel_button_image_alpha));
            } else {
                remoteViewsC.setViewVisibility(R.id.end_padder, 0);
                remoteViewsC.setViewVisibility(R.id.cancel_action, 8);
            }
            return remoteViewsC;
        }
    }

    @RequiresApi
    private static class Api15Impl {
        private Api15Impl() {
        }

        @DoNotInline
        static void a(RemoteViews remoteViews, int i10, CharSequence charSequence) {
            remoteViews.setContentDescription(i10, charSequence);
        }
    }

    private NotificationCompat() {
    }
}
