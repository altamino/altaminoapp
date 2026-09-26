package com.bumptech.glide.load.resource.drawable;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.r;
import com.bumptech.glide.load.engine.v;
import com.bumptech.glide.util.j;

/* JADX INFO: loaded from: classes5.dex */
public abstract class b<T extends Drawable> implements v<T>, r {
    protected final T drawable;

    @Override // com.bumptech.glide.load.engine.v
    @NonNull
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final T get() {
        Drawable.ConstantState constantState = this.drawable.getConstantState();
        return constantState == null ? this.drawable : (T) constantState.newDrawable();
    }

    @Override // com.bumptech.glide.load.engine.r
    public void initialize() {
        T t5 = this.drawable;
        if (t5 instanceof BitmapDrawable) {
            ((BitmapDrawable) t5).getBitmap().prepareToDraw();
        } else if (t5 instanceof com.bumptech.glide.load.resource.gif.c) {
            ((com.bumptech.glide.load.resource.gif.c) t5).e().prepareToDraw();
        }
    }

    public b(T t5) {
        this.drawable = (T) j.d(t5);
    }
}
