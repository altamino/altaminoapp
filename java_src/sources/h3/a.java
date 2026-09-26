package h3;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.circularreveal.c;
import com.google.android.material.circularreveal.d;

/* JADX INFO: loaded from: classes9.dex */
public class a extends com.google.android.material.card.a implements d {

    @NonNull
    private final c helper;

    public a(Context context) {
        this(context, null);
    }

    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.helper = new c(this);
    }

    @Override // com.google.android.material.circularreveal.d
    public void a() {
        this.helper.b();
    }

    @Override // com.google.android.material.circularreveal.d
    public void d() {
        this.helper.a();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        c cVar = this.helper;
        if (cVar != null) {
            cVar.c(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Nullable
    public Drawable getCircularRevealOverlayDrawable() {
        return this.helper.e();
    }

    @Override // com.google.android.material.circularreveal.d
    public int getCircularRevealScrimColor() {
        return this.helper.f();
    }

    @Override // com.google.android.material.circularreveal.d
    @Nullable
    public d.e getRevealInfo() {
        return this.helper.h();
    }

    @Override // android.view.View
    public boolean isOpaque() {
        c cVar = this.helper;
        return cVar != null ? cVar.j() : super.isOpaque();
    }

    @Override // com.google.android.material.circularreveal.d
    public void setCircularRevealOverlayDrawable(@Nullable Drawable drawable) {
        this.helper.k(drawable);
    }

    @Override // com.google.android.material.circularreveal.d
    public void setCircularRevealScrimColor(@ColorInt int i10) {
        this.helper.l(i10);
    }

    @Override // com.google.android.material.circularreveal.d
    public void setRevealInfo(@Nullable d.e eVar) {
        this.helper.m(eVar);
    }

    @Override // com.google.android.material.circularreveal.c.a
    public void b(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // com.google.android.material.circularreveal.c.a
    public boolean c() {
        return super.isOpaque();
    }
}
