.class public Lcom/narvii/master/HeadlineDividerAdapter;
.super Lcom/narvii/list/DividerAdapter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    return-void
.end method


# virtual methods
.method protected getDividerLayoutId()I
    .locals 1

    const v0, 0x7f0d0410

    return v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4
    const/4 p1, 0x3

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/list/DividerAdapter;->flags:I

    .line 7
    return-void
.end method
