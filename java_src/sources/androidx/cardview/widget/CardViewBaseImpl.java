package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
class CardViewBaseImpl implements CardViewImpl {
    final RectF mCornerRect = new RectF();

    @Override // androidx.cardview.widget.CardViewImpl
    public void l(CardViewDelegate cardViewDelegate, Context context, ColorStateList colorStateList, float f, float f6, float f7) {
        RoundRectDrawableWithShadow roundRectDrawableWithShadowP = p(context, colorStateList, f, f6, f7);
        roundRectDrawableWithShadowP.m(cardViewDelegate.f());
        cardViewDelegate.d(roundRectDrawableWithShadowP);
        e(cardViewDelegate);
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public void m(CardViewDelegate cardViewDelegate) {
    }

    private RoundRectDrawableWithShadow p(Context context, ColorStateList colorStateList, float f, float f6, float f7) {
        return new RoundRectDrawableWithShadow(context.getResources(), colorStateList, f, f6, f7);
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public void e(CardViewDelegate cardViewDelegate) {
        Rect rect = new Rect();
        q(cardViewDelegate).h(rect);
        cardViewDelegate.c((int) Math.ceil(f(cardViewDelegate)), (int) Math.ceil(c(cardViewDelegate)));
        cardViewDelegate.a(rect.left, rect.top, rect.right, rect.bottom);
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public void n() {
        RoundRectDrawableWithShadow.sRoundRectHelper = new RoundRectDrawableWithShadow.RoundRectHelper() { // from class: androidx.cardview.widget.CardViewBaseImpl.1
            @Override // androidx.cardview.widget.RoundRectDrawableWithShadow.RoundRectHelper
            public void a(Canvas canvas, RectF rectF, float f, Paint paint) {
                float f6 = 2.0f * f;
                float fWidth = (rectF.width() - f6) - 1.0f;
                float fHeight = (rectF.height() - f6) - 1.0f;
                if (f >= 1.0f) {
                    float f7 = f + 0.5f;
                    float f10 = -f7;
                    CardViewBaseImpl.this.mCornerRect.set(f10, f10, f7, f7);
                    int iSave = canvas.save();
                    canvas.translate(rectF.left + f7, rectF.top + f7);
                    canvas.drawArc(CardViewBaseImpl.this.mCornerRect, 180.0f, 90.0f, true, paint);
                    canvas.translate(fWidth, 0.0f);
                    canvas.rotate(90.0f);
                    canvas.drawArc(CardViewBaseImpl.this.mCornerRect, 180.0f, 90.0f, true, paint);
                    canvas.translate(fHeight, 0.0f);
                    canvas.rotate(90.0f);
                    canvas.drawArc(CardViewBaseImpl.this.mCornerRect, 180.0f, 90.0f, true, paint);
                    canvas.translate(fWidth, 0.0f);
                    canvas.rotate(90.0f);
                    canvas.drawArc(CardViewBaseImpl.this.mCornerRect, 180.0f, 90.0f, true, paint);
                    canvas.restoreToCount(iSave);
                    float f11 = (rectF.left + f7) - 1.0f;
                    float f12 = rectF.top;
                    canvas.drawRect(f11, f12, (rectF.right - f7) + 1.0f, f12 + f7, paint);
                    float f13 = (rectF.left + f7) - 1.0f;
                    float f14 = rectF.bottom;
                    canvas.drawRect(f13, f14 - f7, (rectF.right - f7) + 1.0f, f14, paint);
                }
                canvas.drawRect(rectF.left, rectF.top + f, rectF.right, rectF.bottom - f, paint);
            }
        };
    }

    CardViewBaseImpl() {
    }

    private RoundRectDrawableWithShadow q(CardViewDelegate cardViewDelegate) {
        return (RoundRectDrawableWithShadow) cardViewDelegate.e();
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public float a(CardViewDelegate cardViewDelegate) {
        return q(cardViewDelegate).g();
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public float b(CardViewDelegate cardViewDelegate) {
        return q(cardViewDelegate).i();
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public float c(CardViewDelegate cardViewDelegate) {
        return q(cardViewDelegate).j();
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public float d(CardViewDelegate cardViewDelegate) {
        return q(cardViewDelegate).l();
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public float f(CardViewDelegate cardViewDelegate) {
        return q(cardViewDelegate).k();
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public void g(CardViewDelegate cardViewDelegate, float f) {
        q(cardViewDelegate).q(f);
        e(cardViewDelegate);
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public void h(CardViewDelegate cardViewDelegate, float f) {
        q(cardViewDelegate).p(f);
        e(cardViewDelegate);
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public void i(CardViewDelegate cardViewDelegate, float f) {
        q(cardViewDelegate).r(f);
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public ColorStateList j(CardViewDelegate cardViewDelegate) {
        return q(cardViewDelegate).f();
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public void k(CardViewDelegate cardViewDelegate) {
        q(cardViewDelegate).m(cardViewDelegate.f());
        e(cardViewDelegate);
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public void o(CardViewDelegate cardViewDelegate, @Nullable ColorStateList colorStateList) {
        q(cardViewDelegate).o(colorStateList);
    }
}
