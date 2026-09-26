package com.google.android.material.internal;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo
public class p {

    @Nullable
    private com.google.android.material.resources.d textAppearance;
    private float textWidth;
    private final TextPaint textPaint = new TextPaint(1);
    private final com.google.android.material.resources.f fontCallback = new a();
    private boolean textWidthDirty = true;

    @Nullable
    private WeakReference<b> delegate = new WeakReference<>(null);

    class a extends com.google.android.material.resources.f {
        a() {
        }

        @Override // com.google.android.material.resources.f
        public void a(int i10) {
            p.this.textWidthDirty = true;
            b bVar = (b) p.this.delegate.get();
            if (bVar != null) {
                bVar.a();
            }
        }

        @Override // com.google.android.material.resources.f
        public void b(@NonNull Typeface typeface, boolean z6) {
            if (z6) {
                return;
            }
            p.this.textWidthDirty = true;
            b bVar = (b) p.this.delegate.get();
            if (bVar != null) {
                bVar.a();
            }
        }
    }

    public interface b {
        void a();

        @NonNull
        int[] getState();

        boolean onStateChange(int[] iArr);
    }

    @Nullable
    public com.google.android.material.resources.d d() {
        return this.textAppearance;
    }

    @NonNull
    public TextPaint e() {
        return this.textPaint;
    }

    public void i(boolean z6) {
        this.textWidthDirty = z6;
    }

    private float c(@Nullable CharSequence charSequence) {
        if (charSequence == null) {
            return 0.0f;
        }
        return this.textPaint.measureText(charSequence, 0, charSequence.length());
    }

    public float f(String str) {
        if (!this.textWidthDirty) {
            return this.textWidth;
        }
        float fC = c(str);
        this.textWidth = fC;
        this.textWidthDirty = false;
        return fC;
    }

    public void g(@Nullable b bVar) {
        this.delegate = new WeakReference<>(bVar);
    }

    public void h(@Nullable com.google.android.material.resources.d dVar, Context context) {
        if (this.textAppearance != dVar) {
            this.textAppearance = dVar;
            if (dVar != null) {
                dVar.o(context, this.textPaint, this.fontCallback);
                b bVar = this.delegate.get();
                if (bVar != null) {
                    this.textPaint.drawableState = bVar.getState();
                }
                dVar.n(context, this.textPaint, this.fontCallback);
                this.textWidthDirty = true;
            }
            b bVar2 = this.delegate.get();
            if (bVar2 != null) {
                bVar2.a();
                bVar2.onStateChange(bVar2.getState());
            }
        }
    }

    public void j(Context context) {
        this.textAppearance.n(context, this.textPaint, this.fontCallback);
    }

    public p(@Nullable b bVar) {
        g(bVar);
    }
}
