package com.narvii.model;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public interface IBaseProduct {
    int getAvailableDurationInDays();

    int getProductPrice(boolean z6);

    @NotNull
    String getProductTitle();

    boolean isMembershipPrice(boolean z6);
}
