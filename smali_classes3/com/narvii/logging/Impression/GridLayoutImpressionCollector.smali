.class public Lcom/narvii/logging/Impression/GridLayoutImpressionCollector;
.super Lcom/narvii/logging/Impression/ContainerInListViewImpressionCollector;
.source "GridLayoutImpressionCollector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/NVObject;",
        ">",
        "Lcom/narvii/logging/Impression/ContainerInListViewImpressionCollector<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/narvii/logging/Impression/ContainerInListViewImpressionCollector;-><init>(Ljava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method protected getContainTag()I
    .locals 1

    .line 13
    sget v0, Lcom/narvii/lib/R$id;->_contains_gridlayout:I

    return v0
.end method
