package com.narvii.monetization.utils;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.model.IStoreItem;
import com.narvii.model.NVObject;
import com.narvii.model.RestrictionInfo;
import com.narvii.monetization.sticker.StickerHelper;
import com.narvii.util.ViewUtils;
import com.narvii.widget.ShrinkLayout;

/* JADX INFO: loaded from: classes10.dex */
public class StoreItemNameView extends ShrinkLayout {
    View aminoBadge;
    TextView nameTV;
    View newLabel;
    StickerHelper stickerHelper;
    int textColor;

    protected int getLayoutId() {
        return R.layout.store_item_name;
    }

    public void setTextColor(int i10) {
        this.textColor = i10;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0034  */
    /* JADX WARN: Multi-variable type inference failed */
    public void setStoreItem(IStoreItem iStoreItem) {
        boolean z6;
        if (iStoreItem == 0) {
            this.nameTV.setText((CharSequence) null);
            this.aminoBadge.setVisibility(8);
            return;
        }
        this.nameTV.setText(iStoreItem.getName());
        if (iStoreItem instanceof NVObject) {
            NVObject nVObject = (NVObject) iStoreItem;
            if (nVObject.status() == 9 || nVObject.status() == 10) {
                z6 = true;
            } else {
                z6 = false;
            }
        } else {
            z6 = false;
        }
        this.nameTV.setTextColor(z6 ? -501929 : this.textColor);
        RestrictionInfo restrictionInfo = iStoreItem.getRestrictionInfo();
        ViewUtils.show(this.aminoBadge, restrictionInfo != null && restrictionInfo.restrictType == 2);
        ViewUtils.show(this.newLabel, iStoreItem.isNew());
    }

    public StoreItemNameView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        View.inflate(getContext(), getLayoutId(), this);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.narvii.amino.R.styleable.StoreItemNameView);
        float dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, getContext().getResources().getDimensionPixelSize(R.dimen.store_item_name_size_default));
        this.textColor = typedArrayObtainStyledAttributes.getColor(2, -13421772);
        int i10 = typedArrayObtainStyledAttributes.getInt(3, -1);
        int i11 = typedArrayObtainStyledAttributes.getInt(1, 1);
        typedArrayObtainStyledAttributes.recycle();
        TextView textView = (TextView) findViewById(R.id.collection_name);
        this.nameTV = textView;
        textView.setTextSize(0, dimensionPixelSize);
        this.nameTV.setTextColor(this.textColor);
        this.nameTV.setTypeface(Typeface.defaultFromStyle(i11));
        if (i10 > 0) {
            this.nameTV.setMaxLines(i10);
        }
        this.aminoBadge = findViewById(R.id.amino_plus_badge);
        this.newLabel = findViewById(R.id._new);
    }
}
