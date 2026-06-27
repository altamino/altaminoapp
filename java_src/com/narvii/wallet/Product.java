package com.narvii.wallet;

import com.narvii.model.IBaseProduct;
import com.narvii.model.NVObject;

/* loaded from: classes3.dex */
public class Product extends NVObject implements IBaseProduct {
    public String badge;
    public boolean canAutoRenew;
    public String description;
    public Double dollarPrice;
    public String icon;
    public int numberOfCoins;
    public int numberOfMonths;
    public int price;
    public int savePercent;
    public String[] skuList;
    public boolean suggested;
    public String title;

    @Override // com.narvii.model.IBaseProduct
    public boolean isMembershipPrice(boolean z) {
        return false;
    }

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        String[] strArr = this.skuList;
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        return strArr[0];
    }

    @Override // com.narvii.model.IBaseProduct
    public int getProductPrice(boolean z) {
        return this.price;
    }

    @Override // com.narvii.model.IBaseProduct
    public String getProductTitle() {
        return this.title;
    }

    @Override // com.narvii.model.IBaseProduct
    public int getAvailableDurationInDays() {
        return this.numberOfMonths * 31;
    }
}
