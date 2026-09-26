.class public Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;
.super Lcom/narvii/logging/Impression/ContainerInListViewImpressionCollector;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/logging/Impression/ContainerInListViewImpressionCollector;-><init>(Ljava/lang/Class;I)V

    .line 4
    return-void
.end method


# virtual methods
.method protected getContainTag()I
    .locals 1

    sget v0, Lcom/narvii/lib/R$id;->_contains_recycler:I

    return v0
.end method
