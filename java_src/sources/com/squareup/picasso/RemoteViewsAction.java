package com.squareup.picasso;

import android.app.Notification;
import android.app.NotificationManager;
import android.appwidget.AppWidgetManager;
import android.graphics.Bitmap;
import android.widget.RemoteViews;

/* JADX INFO: loaded from: classes4.dex */
abstract class RemoteViewsAction extends Action<RemoteViewsTarget> {
    Callback callback;
    final RemoteViews remoteViews;
    private RemoteViewsTarget target;
    final int viewId;

    static class AppWidgetAction extends RemoteViewsAction {
        private final int[] appWidgetIds;

        AppWidgetAction(Picasso picasso, Request request, RemoteViews remoteViews, int i10, int[] iArr, int i11, int i12, String str, Object obj, int i13, Callback callback) {
            super(picasso, request, remoteViews, i10, i13, i11, i12, obj, str, callback);
            this.appWidgetIds = iArr;
        }

        @Override // com.squareup.picasso.RemoteViewsAction
        void update() {
            AppWidgetManager.getInstance(this.picasso.context).updateAppWidget(this.appWidgetIds, this.remoteViews);
        }

        @Override // com.squareup.picasso.RemoteViewsAction, com.squareup.picasso.Action
        /* bridge */ /* synthetic */ RemoteViewsTarget getTarget() {
            return super.getTarget();
        }
    }

    static class NotificationAction extends RemoteViewsAction {
        private final Notification notification;
        private final int notificationId;
        private final String notificationTag;

        NotificationAction(Picasso picasso, Request request, RemoteViews remoteViews, int i10, int i11, Notification notification, String str, int i12, int i13, String str2, Object obj, int i14, Callback callback) {
            super(picasso, request, remoteViews, i10, i14, i12, i13, obj, str2, callback);
            this.notificationId = i11;
            this.notificationTag = str;
            this.notification = notification;
        }

        @Override // com.squareup.picasso.RemoteViewsAction
        void update() {
            ((NotificationManager) Utils.getService(this.picasso.context, "notification")).notify(this.notificationTag, this.notificationId, this.notification);
        }

        @Override // com.squareup.picasso.RemoteViewsAction, com.squareup.picasso.Action
        /* bridge */ /* synthetic */ RemoteViewsTarget getTarget() {
            return super.getTarget();
        }
    }

    static class RemoteViewsTarget {
        final RemoteViews remoteViews;
        final int viewId;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            RemoteViewsTarget remoteViewsTarget = (RemoteViewsTarget) obj;
            return this.viewId == remoteViewsTarget.viewId && this.remoteViews.equals(remoteViewsTarget.remoteViews);
        }

        public int hashCode() {
            return (this.remoteViews.hashCode() * 31) + this.viewId;
        }

        RemoteViewsTarget(RemoteViews remoteViews, int i10) {
            this.remoteViews = remoteViews;
            this.viewId = i10;
        }
    }

    RemoteViewsAction(Picasso picasso, Request request, RemoteViews remoteViews, int i10, int i11, int i12, int i13, Object obj, String str, Callback callback) {
        super(picasso, null, request, i12, i13, i11, null, str, obj, false);
        this.remoteViews = remoteViews;
        this.viewId = i10;
        this.callback = callback;
    }

    abstract void update();

    @Override // com.squareup.picasso.Action
    void complete(Bitmap bitmap, Picasso.LoadedFrom loadedFrom) {
        this.remoteViews.setImageViewBitmap(this.viewId, bitmap);
        update();
        Callback callback = this.callback;
        if (callback != null) {
            callback.onSuccess();
        }
    }

    @Override // com.squareup.picasso.Action
    public void error(Exception exc) {
        int i10 = this.errorResId;
        if (i10 != 0) {
            setImageResource(i10);
        }
        Callback callback = this.callback;
        if (callback != null) {
            callback.onError(exc);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.squareup.picasso.Action
    public RemoteViewsTarget getTarget() {
        if (this.target == null) {
            this.target = new RemoteViewsTarget(this.remoteViews, this.viewId);
        }
        return this.target;
    }

    void setImageResource(int i10) {
        this.remoteViews.setImageViewResource(this.viewId, i10);
        update();
    }

    @Override // com.squareup.picasso.Action
    void cancel() {
        super.cancel();
        if (this.callback != null) {
            this.callback = null;
        }
    }
}
