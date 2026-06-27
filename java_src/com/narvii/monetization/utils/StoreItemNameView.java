package com.narvii.monetization.utils;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.monetization.sticker.StickerHelper;
import com.narvii.widget.ShrinkLayout;

/* loaded from: classes3.dex */
public class StoreItemNameView extends ShrinkLayout {
    View aminoBadge;
    TextView nameTV;
    View newLabel;
    StickerHelper stickerHelper;
    int textColor;

    protected int getLayoutId() {
        return R.layout.store_item_name;
    }

    public StoreItemNameView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        FrameLayout.inflate(getContext(), getLayoutId(), this);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.narvii.amino.R.styleable.StoreItemNameView);
        float dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, getContext().getResources().getDimensionPixelSize(R.dimen.store_item_name_size_default));
        this.textColor = typedArrayObtainStyledAttributes.getColor(2, -13421772);
        int i = typedArrayObtainStyledAttributes.getInt(3, -1);
        int i2 = typedArrayObtainStyledAttributes.getInt(1, 1);
        typedArrayObtainStyledAttributes.recycle();
        this.nameTV = (TextView) findViewById(R.id.collection_name);
        this.nameTV.setTextSize(0, dimensionPixelSize);
        this.nameTV.setTextColor(this.textColor);
        this.nameTV.setTypeface(Typeface.defaultFromStyle(i2));
        if (i > 0) {
            this.nameTV.setMaxLines(i);
        }
        this.aminoBadge = findViewById(R.id.amino_plus_badge);
        this.newLabel = findViewById(R.id._new);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setStoreItem(com.narvii.model.IStoreItem r6) {
        /*
            r5 = this;
            if (r6 != 0) goto L10
            android.widget.TextView r6 = r5.nameTV
            r0 = 0
            r6.setText(r0)
            android.view.View r6 = r5.aminoBadge
            r0 = 8
            r6.setVisibility(r0)
            return
        L10:
            android.widget.TextView r0 = r5.nameTV
            java.lang.String r1 = r6.getName()
            r0.setText(r1)
            boolean r0 = r6 instanceof com.narvii.model.NVObject
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L34
            r0 = r6
            com.narvii.model.NVObject r0 = (com.narvii.model.NVObject) r0
            int r3 = r0.status()
            r4 = 9
            if (r3 == r4) goto L32
            int r0 = r0.status()
            r3 = 10
            if (r0 != r3) goto L34
        L32:
            r0 = 1
            goto L35
        L34:
            r0 = 0
        L35:
            android.widget.TextView r3 = r5.nameTV
            if (r0 == 0) goto L3d
            r0 = -501929(0xfffffffffff85757, float:NaN)
            goto L3f
        L3d:
            int r0 = r5.textColor
        L3f:
            r3.setTextColor(r0)
            com.narvii.model.RestrictionInfo r0 = r6.getRestrictionInfo()
            if (r0 == 0) goto L4e
            int r0 = r0.restrictType
            r3 = 2
            if (r0 != r3) goto L4e
            goto L4f
        L4e:
            r1 = 0
        L4f:
            android.view.View r0 = r5.aminoBadge
            com.narvii.util.ViewUtils.show(r0, r1)
            android.view.View r0 = r5.newLabel
            boolean r6 = r6.isNew()
            com.narvii.util.ViewUtils.show(r0, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.monetization.utils.StoreItemNameView.setStoreItem(com.narvii.model.IStoreItem):void");
    }

    public void setTextColor(int i) {
        this.textColor = i;
    }
}
