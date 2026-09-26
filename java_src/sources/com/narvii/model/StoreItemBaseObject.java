package com.narvii.model;

import android.content.Context;
import com.narvii.lib.R;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public abstract class StoreItemBaseObject extends NVObject implements IStoreItem {
    public AdditionalBenefits additionalBenefits;
    public List<Integer> availableNdcIds;
    public boolean isActivated;
    public boolean isNew;
    public OwnershipInfo ownershipInfo;
    public RestrictionInfo restrictionInfo;

    @Override // com.narvii.model.IStoreItem
    public List<Integer> availableNdcIds() {
        return this.availableNdcIds;
    }

    @Override // com.narvii.model.IStoreItem
    public AdditionalBenefits getAdditionalBenefits() {
        return this.additionalBenefits;
    }

    @Override // com.narvii.model.IStoreItem
    public OwnershipInfo getOwnershipInfo() {
        return this.ownershipInfo;
    }

    @Override // com.narvii.model.IStoreItem
    public RestrictionInfo getRestrictionInfo() {
        return this.restrictionInfo;
    }

    public boolean isActivated() {
        return this.isActivated;
    }

    @Override // com.narvii.model.IStoreItem
    public boolean isNew() {
        return this.isNew;
    }

    @Override // com.narvii.model.IStoreItem
    public void setActivated(boolean z6) {
        this.isActivated = z6;
    }

    @Override // com.narvii.model.IStoreItem
    public void setOwnershipInfo(OwnershipInfo ownershipInfo) {
        this.ownershipInfo = ownershipInfo;
    }

    @Override // com.narvii.model.IStoreItem
    public boolean availableInAnyStore() {
        List<Integer> list = this.availableNdcIds;
        return (list == null || list.isEmpty()) ? false : true;
    }

    public boolean availableInStore(int i10) {
        List<Integer> list = this.availableNdcIds;
        if (list == null) {
            return false;
        }
        return list.contains(0) || this.availableNdcIds.contains(Integer.valueOf(i10));
    }

    @Override // com.narvii.model.IBaseProduct
    public int getAvailableDurationInDays() {
        RestrictionInfo restrictionInfo = this.restrictionInfo;
        if (restrictionInfo == null || !restrictionInfo.hasAvailableDuration()) {
            return -1;
        }
        return this.restrictionInfo.getAvailableDurationInDays();
    }

    @Override // com.narvii.model.IBaseProduct
    public int getProductPrice(boolean z6) {
        RestrictionInfo restrictionInfo = this.restrictionInfo;
        if (restrictionInfo == null || restrictionInfo.restrictType != 4) {
            return -1;
        }
        return (z6 && restrictionInfo.discountStatus == 1) ? restrictionInfo.discountValue : restrictionInfo.restrictValue;
    }

    @Override // com.narvii.model.IBaseProduct
    public boolean isMembershipPrice(boolean z6) {
        RestrictionInfo restrictionInfo = this.restrictionInfo;
        return restrictionInfo != null && restrictionInfo.restrictType == 4 && z6 && restrictionInfo.discountStatus == 1;
    }

    @Override // com.narvii.model.IStoreItem
    public boolean isTotalOwned() {
        OwnershipInfo ownershipInfo = this.ownershipInfo;
        return ownershipInfo != null && ownershipInfo.ownershipStatus == 1;
    }

    public boolean isUsable(boolean z6) {
        RestrictionInfo restrictionInfo = this.restrictionInfo;
        if (restrictionInfo != null) {
            int i10 = restrictionInfo.restrictType;
            if (i10 == 3) {
                return true;
            }
            if (((i10 == 2 && z6) || i10 == 1 || i10 == 4) && restrictionInfo.isSupported() && isTotalOwned()) {
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

    @Override // com.narvii.model.IBaseProduct
    @NotNull
    public String getProductTitle() {
        return getName();
    }

    public String getStoreItemTypeName(Context context) {
        int iObjectType = objectType();
        if (iObjectType != 114) {
            if (iObjectType != 116) {
                if (iObjectType != 122) {
                    return null;
                }
                return context.getString(R.string.store_item_type_name_avatar_frame);
            }
            return context.getString(R.string.store_item_type_name_bubble);
        }
        return context.getString(R.string.store_item_type_name_sticker);
    }
}
