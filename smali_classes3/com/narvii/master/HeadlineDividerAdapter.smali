.class public Lcom/narvii/master/HeadlineDividerAdapter;
.super Lcom/narvii/list/DividerAdapter;
.source "HeadlineDividerAdapter.java"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected getDividerLayoutId()I
    .locals 1

    const v0, 0x7f0b03da

    return v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 p1, 0x3

    .line 23
    iput p1, p0, Lcom/narvii/list/DividerAdapter;->flags:I

    return-void
.end method
