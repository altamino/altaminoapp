package com.narvii.model;

import android.content.Context;
import com.narvii.lib.R;
import java.util.List;

/* loaded from: classes.dex */
public abstract class StoreItemBaseObject extends NVObject implements IStoreItem {
    public AdditionalBenefits additionalBenefits;
    public List<Integer> availableNdcIds;
    public boolean isActivated;
    public boolean isNew;
    public OwnershipInfo ownershipInfo;
    public RestrictionInfo restrictionInfo;

    @Override // com.narvii.model.IStoreItem
    public boolean isNew() {
        return this.isNew;
    }

    public boolean isActivated() {
        return this.isActivated;
    }

    @Override // com.narvii.model.IStoreItem
    public void setActivated(boolean z) {
        this.isActivated = z;
    }

    @Override // com.narvii.model.IStoreItem
    public boolean isTotalOwned() {
        OwnershipInfo ownershipInfo = this.ownershipInfo;
        return ownershipInfo != null && ownershipInfo.ownershipStatus == 1;
    }

    @Override // com.narvii.model.IStoreItem
    public List<Integer> availableNdcIds() {
        return this.availableNdcIds;
    }

    @Override // com.narvii.model.IStoreItem
    public RestrictionInfo getRestrictionInfo() {
        return this.restrictionInfo;
    }

    public boolean isUsable(boolean z) {
        int i;
        RestrictionInfo restrictionInfo = this.restrictionInfo;
        if (restrictionInfo != null) {
            int i2 = restrictionInfo.restrictType;
            if (i2 == 3) {
                return true;
            }
            if (((i2 == 2 && z) || (i = this.restrictionInfo.restrictType) == 1 || i == 4) && this.restrictionInfo.isSupported() && isTotalOwned()) {
                if (!this.restrictionInfo.hasAvailableDuration()) {
                    return true;
                }
                OwnershipInfo ownershipInfo = this.ownershipInfo;
                if (ownershipInfo != null && !ownershipInfo.isExpired()) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.narvii.model.IStoreItem
    public void setOwnershipInfo(OwnershipInfo ownershipInfo) {
        this.ownershipInfo = ownershipInfo;
    }

    @Override // com.narvii.model.IStoreItem
    public OwnershipInfo getOwnershipInfo() {
        return this.ownershipInfo;
    }

    @Override // com.narvii.model.IStoreItem
    public boolean availableInAnyStore() {
        List<Integer> list = this.availableNdcIds;
        return (list == null || list.isEmpty()) ? false : true;
    }

    public boolean availableInStore(int i) {
        List<Integer> list = this.availableNdcIds;
        if (list == null) {
            return false;
        }
        return list.contains(0) || this.availableNdcIds.contains(Integer.valueOf(i));
    }

    @Override // com.narvii.model.IBaseProduct
    public int getProductPrice(boolean z) {
        RestrictionInfo restrictionInfo = this.restrictionInfo;
        if (restrictionInfo == null || restrictionInfo.restrictType != 4) {
            return -1;
        }
        if (z && restrictionInfo.discountStatus == 1) {
            return restrictionInfo.discountValue;
        }
        return this.restrictionInfo.restrictValue;
    }

    @Override // com.narvii.model.IBaseProduct
    public boolean isMembershipPrice(boolean z) {
        RestrictionInfo restrictionInfo = this.restrictionInfo;
        return restrictionInfo != null && restrictionInfo.restrictType == 4 && z && restrictionInfo.discountStatus == 1;
    }

    @Override // com.narvii.model.IBaseProduct
    public String getProductTitle() {
        return getName();
    }

    @Override // com.narvii.model.IBaseProduct
    public int getAvailableDurationInDays() {
        RestrictionInfo restrictionInfo = this.restrictionInfo;
        if (restrictionInfo == null || !restrictionInfo.hasAvailableDuration()) {
            return -1;
        }
        return this.restrictionInfo.getAvailableDurationInDays();
    }

    @Override // com.narvii.model.IStoreItem
    public AdditionalBenefits getAdditionalBenefits() {
        return this.additionalBenefits;
    }

    public String getStoreItemTypeName(Context context) {
        int iObjectType = objectType();
        if (iObjectType == 114) {
            return context.getString(R.string.store_item_type_name_sticker);
        }
        if (iObjectType == 116) {
            return context.getString(R.string.store_item_type_name_bubble);
        }
        if (iObjectType != 122) {
            return null;
        }
        return context.getString(R.string.store_item_type_name_avatar_frame);
    }
}
