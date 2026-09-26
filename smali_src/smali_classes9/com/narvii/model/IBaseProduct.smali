.class public interface abstract Lcom/narvii/model/IBaseProduct;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAvailableDurationInDays()I
.end method

.method public abstract getProductPrice(Z)I
.end method

.method public abstract getProductTitle()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract isMembershipPrice(Z)Z
.end method
