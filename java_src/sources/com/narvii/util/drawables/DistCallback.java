package com.narvii.util.drawables;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.narvii.util.drawables.WrapDrawable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes10.dex */
public class DistCallback<T extends WrapDrawable> implements Drawable.Callback {
    private final ArrayList<WeakReference<T>> list = new ArrayList<>();
    private final Handler handler = new Handler(Looper.getMainLooper());

    public synchronized void add(T t5) {
        Iterator<WeakReference<T>> it = this.list.iterator();
        while (it.hasNext()) {
            T t10 = it.next().get();
            if (t10 == null) {
                it.remove();
            } else if (t10 == t5) {
                return;
            }
        }
        this.list.add(new WeakReference<>(t5));
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public synchronized void invalidateDrawable(@NonNull Drawable drawable) {
        try {
            Iterator<WeakReference<T>> it = this.list.iterator();
            while (it.hasNext()) {
                T t5 = it.next().get();
                if (t5 == null) {
                    it.remove();
                } else {
                    t5.invalidateSelf();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public synchronized void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j6) {
        Iterator<WeakReference<T>> it = this.list.iterator();
        while (it.hasNext()) {
            T t5 = it.next().get();
            if (t5 != null) {
                t5.scheduleSelf(runnable, j6);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public synchronized void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        Iterator<WeakReference<T>> it = this.list.iterator();
        while (it.hasNext()) {
            T t5 = it.next().get();
            if (t5 != null) {
                t5.unscheduleSelf(runnable);
            }
        }
    }
}
