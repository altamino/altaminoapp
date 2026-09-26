package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes11.dex */
@RequiresApi
class CardViewApi21Impl implements CardViewImpl {
    @Override // androidx.cardview.widget.CardViewImpl
    public void n() {
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public void l(CardViewDelegate cardViewDelegate, Context context, ColorStateList colorStateList, float f, float f6, float f7) {
        cardViewDelegate.d(new RoundRectDrawable(colorStateList, f));
        View viewG = cardViewDelegate.g();
        viewG.setClipToOutline(true);
        viewG.setElevation(f6);
        g(cardViewDelegate, f7);
    }

    CardViewApi21Impl() {
    }

    private RoundRectDrawable p(CardViewDelegate cardViewDelegate) {
        return (RoundRectDrawable) cardViewDelegate.e();
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public float a(CardViewDelegate cardViewDelegate) {
        return p(cardViewDelegate).d();
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public float b(CardViewDelegate cardViewDelegate) {
        return p(cardViewDelegate).c();
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public float c(CardViewDelegate cardViewDelegate) {
        return a(cardViewDelegate) * 2.0f;
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public float d(CardViewDelegate cardViewDelegate) {
        return cardViewDelegate.g().getElevation();
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public void e(CardViewDelegate cardViewDelegate) {
        if (!cardViewDelegate.b()) {
            cardViewDelegate.a(0, 0, 0, 0);
            return;
        }
        float fB = b(cardViewDelegate);
        float fA = a(cardViewDelegate);
        int iCeil = (int) Math.ceil(RoundRectDrawableWithShadow.c(fB, fA, cardViewDelegate.f()));
        int iCeil2 = (int) Math.ceil(RoundRectDrawableWithShadow.d(fB, fA, cardViewDelegate.f()));
        cardViewDelegate.a(iCeil, iCeil2, iCeil, iCeil2);
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public float f(CardViewDelegate cardViewDelegate) {
        return a(cardViewDelegate) * 2.0f;
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public void g(CardViewDelegate cardViewDelegate, float f) {
        p(cardViewDelegate).g(f, cardViewDelegate.b(), cardViewDelegate.f());
        e(cardViewDelegate);
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public void h(CardViewDelegate cardViewDelegate, float f) {
        p(cardViewDelegate).h(f);
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public void i(CardViewDelegate cardViewDelegate, float f) {
        cardViewDelegate.g().setElevation(f);
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public ColorStateList j(CardViewDelegate cardViewDelegate) {
        return p(cardViewDelegate).b();
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public void k(CardViewDelegate cardViewDelegate) {
        g(cardViewDelegate, b(cardViewDelegate));
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public void m(CardViewDelegate cardViewDelegate) {
        g(cardViewDelegate, b(cardViewDelegate));
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public void o(CardViewDelegate cardViewDelegate, @Nullable ColorStateList colorStateList) {
        p(cardViewDelegate).f(colorStateList);
    }
}
