package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes3.dex */
abstract class Action<T> {
    boolean cancelled;
    final Drawable errorDrawable;
    final int errorResId;
    final String key;
    final int memoryPolicy;
    final int networkPolicy;
    final boolean noFade;
    final Picasso picasso;
    final Request request;
    final Object tag;
    final WeakReference<T> target;
    boolean willReplay;

    void cancel() {
        this.cancelled = true;
    }

    abstract void complete(Bitmap bitmap, Picasso.LoadedFrom loadedFrom);

    abstract void error(Exception exc);

    String getKey() {
        return this.key;
    }

    int getMemoryPolicy() {
        return this.memoryPolicy;
    }

    int getNetworkPolicy() {
        return this.networkPolicy;
    }

    Picasso getPicasso() {
        return this.picasso;
    }

    Request getRequest() {
        return this.request;
    }

    Object getTag() {
        return this.tag;
    }

    boolean isCancelled() {
        return this.cancelled;
    }

    boolean willReplay() {
        return this.willReplay;
    }

    static class RequestWeakReference<M> extends WeakReference<M> {
        final Action action;

        RequestWeakReference(Action action, M m, ReferenceQueue<? super M> referenceQueue) {
            super(m, referenceQueue);
            this.action = action;
        }
    }

    Picasso.Priority getPriority() {
        return this.request.priority;
    }

    T getTarget() {
        WeakReference<T> weakReference = this.target;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    Action(Picasso picasso, T t5, Request request, int i10, int i11, int i12, Drawable drawable, String str, Object obj, boolean z6) {
        RequestWeakReference requestWeakReference;
        this.picasso = picasso;
        this.request = request;
        if (t5 == null) {
            requestWeakReference = null;
        } else {
            requestWeakReference = new RequestWeakReference(this, t5, picasso.referenceQueue);
        }
        this.target = requestWeakReference;
        this.memoryPolicy = i10;
        this.networkPolicy = i11;
        this.noFade = z6;
        this.errorResId = i12;
        this.errorDrawable = drawable;
        this.key = str;
        this.tag = obj == null ? this : obj;
    }
}
