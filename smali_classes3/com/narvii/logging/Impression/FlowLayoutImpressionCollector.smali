.class public Lcom/narvii/logging/Impression/FlowLayoutImpressionCollector;
.super Lcom/narvii/logging/Impression/ContainerInListViewImpressionCollector;
.source "FlowLayoutImpressionCollector.java"


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/narvii/logging/Impression/ContainerInListViewImpressionCollector;-><init>(Ljava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method protected getContainTag()I
    .locals 1

    .line 12
    sget v0, Lcom/narvii/lib/R$id;->_contains_flowLayout:I

    return v0
.end method
