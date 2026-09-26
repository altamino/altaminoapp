package com.narvii.model;

import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
public interface IStoreItem extends IBaseProduct {
    boolean availableInAnyStore();

    List<Integer> availableNdcIds();

    AdditionalBenefits getAdditionalBenefits();

    String getName();

    OwnershipInfo getOwnershipInfo();

    RestrictionInfo getRestrictionInfo();

    String getStoreIcon();

    String id();

    boolean isActivated();

    boolean isNew();

    boolean isTotalOwned();

    int objectType();

    void setActivated(boolean z6);

    void setOwnershipInfo(OwnershipInfo ownershipInfo);
}
