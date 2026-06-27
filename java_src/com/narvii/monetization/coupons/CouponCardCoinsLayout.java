package com.narvii.monetization.coupons;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.TextView;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.R;
import com.narvii.wallet.CouponDetail;

/* loaded from: classes3.dex */
public class CouponCardCoinsLayout extends FlexLayout {
    private TextView coinAmount;
    private TextView couponsDesc;
    private TextView couponsSource;
    private final float dividePosition;

    public CouponCardCoinsLayout(Context context) {
        this(context, null);
    }

    public CouponCardCoinsLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CouponCardCoinsLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CouponCardCoinsLayout);
        this.dividePosition = typedArrayObtainStyledAttributes.getFloat(0, 0.7f);
        typedArrayObtainStyledAttributes.recycle();
        CouponBackgroundDrawable couponBackgroundDrawable = new CouponBackgroundDrawable(getContext());
        couponBackgroundDrawable.setDividePosition(this.dividePosition);
        setBackgroundDrawable(couponBackgroundDrawable);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.coinAmount = (TextView) findViewById(com.narvii.amino.mastes.R.id.coupons_coins_amount);
        this.couponsSource = (TextView) findViewById(com.narvii.amino.mastes.R.id.coupons_card_source_desc);
        this.couponsDesc = (TextView) findViewById(com.narvii.amino.mastes.R.id.coupons_card_coins_desc);
    }

    public void setCouponInfo(CouponDetail couponDetail) {
        this.coinAmount.setText(String.valueOf(couponDetail.getValue()));
        this.couponsSource.setText(couponDetail.getCouponTitle());
        this.couponsDesc.setText(couponDetail.getCouponScopeDesc());
    }
}
