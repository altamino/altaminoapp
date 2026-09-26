package com.narvii.monetization.store;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.model.IStoreItem;
import com.narvii.model.RestrictionInfo;
import com.narvii.monetization.sticker.model.MoodStickerCollection;
import com.narvii.monetization.store.data.StoreItem;
import com.narvii.util.ViewUtils;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes10.dex */
public class StoreItemView extends FrameLayout {
    private final View disCountLabelAminoPlus;
    private final TextView freeLabel;
    private boolean isMemberShip;
    private boolean isSelected;
    private final View isSelectedLabel;
    private final ImageView membershipLabel;
    private final TextView nameView;
    private final ImageView ownedLabel;
    private final NVImageView previewView;
    private final ViewGroup priceLabel;
    private final TextView priceLabelMainText;
    private StoreItem storeItem;

    public StoreItemView(@NonNull Context context) {
        this(context, null);
    }

    public StoreItemView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void updateView() {
        StoreItem.ItemBasicInfo itemBasicInfo;
        StoreItem storeItem = this.storeItem;
        if (storeItem == null || (itemBasicInfo = storeItem.itemBasicInfo) == null) {
            return;
        }
        this.previewView.setImageUrl(itemBasicInfo.icon);
        this.nameView.setText(this.storeItem.itemBasicInfo.name);
        Cloneable refObject = this.storeItem.getRefObject();
        RestrictionInfo restrictionInfo = this.storeItem.itemRestrictionInfo;
        this.membershipLabel.setVisibility(8);
        this.freeLabel.setVisibility(8);
        this.ownedLabel.setVisibility(8);
        this.priceLabel.setVisibility(8);
        boolean z6 = refObject instanceof IStoreItem;
        if (z6 && ((IStoreItem) refObject).isTotalOwned() && !(refObject instanceof MoodStickerCollection)) {
            this.ownedLabel.setVisibility(0);
        } else if (restrictionInfo != null && this.storeItem.itemRestrictionInfo.isSupported()) {
            int i10 = restrictionInfo.restrictType;
            if (i10 == 2) {
                this.membershipLabel.setVisibility(0);
                this.freeLabel.setText(R.string.get);
                this.freeLabel.setVisibility(0);
            } else if (i10 == 4) {
                this.priceLabel.setVisibility(0);
                if (restrictionInfo.discountStatus == 1 && this.isMemberShip) {
                    this.priceLabelMainText.setText(String.valueOf(restrictionInfo.discountValue));
                    this.disCountLabelAminoPlus.setVisibility(0);
                } else {
                    this.priceLabelMainText.setText(String.valueOf(restrictionInfo.restrictValue));
                    this.disCountLabelAminoPlus.setVisibility(8);
                }
            } else if (i10 != 3 && i10 == 1) {
                this.freeLabel.setText(R.string.get);
                this.freeLabel.setVisibility(0);
            }
        } else if (restrictionInfo == null || restrictionInfo.restrictType != 4) {
            this.freeLabel.setText("- -");
            this.freeLabel.setVisibility(0);
        } else {
            this.priceLabel.setVisibility(0);
            this.priceLabelMainText.setText("- -");
        }
        if (z6) {
            ViewUtils.show(this, R.id._new, ((IStoreItem) refObject).isNew());
        } else {
            ViewUtils.show(this, R.id._new, false);
        }
        this.isSelectedLabel.setVisibility(this.isSelected ? 0 : 8);
    }

    public void setIsSelected(boolean z6) {
        this.isSelected = z6;
        updateView();
    }

    public void setStoreItem(StoreItem storeItem, boolean z6) {
        this.storeItem = storeItem;
        this.isMemberShip = z6;
        updateView();
    }

    public StoreItemView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        View.inflate(context, R.layout.monetization_store_list_item, this);
        this.previewView = (NVImageView) findViewById(R.id.store_item_preview);
        this.nameView = (TextView) findViewById(R.id.store_item_name);
        this.membershipLabel = (ImageView) findViewById(R.id.store_item_membership_label);
        this.freeLabel = (TextView) findViewById(R.id.store_item_free_label);
        this.ownedLabel = (ImageView) findViewById(R.id.store_item_owned_label);
        this.priceLabel = (ViewGroup) findViewById(R.id.store_item_price_label);
        this.priceLabelMainText = (TextView) findViewById(R.id.store_item_price_label_main_text);
        this.disCountLabelAminoPlus = findViewById(R.id.store_item_discount_amino_plus_label);
        this.isSelectedLabel = findViewById(R.id.store_item_is_selected);
    }
}
