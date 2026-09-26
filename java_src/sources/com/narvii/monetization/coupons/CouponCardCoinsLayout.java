package com.narvii.monetization.coupons;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.R;
import com.narvii.wallet.CouponDetail;

/* JADX INFO: loaded from: classes10.dex */
public class CouponCardCoinsLayout extends FlexLayout {
    private TextView coinAmount;
    private TextView couponsDesc;
    private TextView couponsSource;
    private final float dividePosition;

    public CouponCardCoinsLayout(@NonNull Context context) {
        this(context, null);
    }

    public CouponCardCoinsLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void setCouponInfo(CouponDetail couponDetail) {
        this.coinAmount.setText(String.valueOf(couponDetail.getValue()));
        this.couponsSource.setText(couponDetail.getCouponTitle());
        this.couponsDesc.setText(couponDetail.getCouponScopeDesc());
    }

    public CouponCardCoinsLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CouponCardCoinsLayout);
        float f = typedArrayObtainStyledAttributes.getFloat(0, 0.7f);
        this.dividePosition = f;
        typedArrayObtainStyledAttributes.recycle();
        CouponBackgroundDrawable couponBackgroundDrawable = new CouponBackgroundDrawable(getContext());
        couponBackgroundDrawable.setDividePosition(f);
        setBackgroundDrawable(couponBackgroundDrawable);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.coinAmount = (TextView) findViewById(com.narvii.amino.master.R.id.coupons_coins_amount);
        this.couponsSource = (TextView) findViewById(com.narvii.amino.master.R.id.coupons_card_source_desc);
        this.couponsDesc = (TextView) findViewById(com.narvii.amino.master.R.id.coupons_card_coins_desc);
    }
}
