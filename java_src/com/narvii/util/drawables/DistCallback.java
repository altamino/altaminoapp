package com.narvii.util.drawables;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import com.narvii.util.drawables.WrapDrawable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class DistCallback<T extends WrapDrawable> implements Drawable.Callback {
    private final ArrayList<WeakReference<T>> list = new ArrayList<>();
    private final Handler handler = new Handler(Looper.getMainLooper());

    public synchronized void add(T t) {
        Iterator<WeakReference<T>> it = this.list.iterator();
        while (it.hasNext()) {
            T t2 = it.next().get();
            if (t2 == null) {
                it.remove();
            } else if (t2 == t) {
                return;
            }
        }
        this.list.add(new WeakReference<>(t));
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public synchronized void invalidateDrawable(Drawable drawable) {
        Iterator<WeakReference<T>> it = this.list.iterator();
        while (it.hasNext()) {
            T t = it.next().get();
            if (t == null) {
                it.remove();
            } else {
                t.invalidateSelf();
            }
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public synchronized void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Iterator<WeakReference<T>> it = this.list.iterator();
        while (it.hasNext()) {
            T t = it.next().get();
            if (t != null) {
                t.scheduleSelf(runnable, j);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public synchronized void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Iterator<WeakReference<T>> it = this.list.iterator();
        while (it.hasNext()) {
            T t = it.next().get();
            if (t != null) {
                t.unscheduleSelf(runnable);
            }
        }
    }
}
