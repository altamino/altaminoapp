.class public Lcom/narvii/monetization/common/ManageTitleAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "ManageTitleAdapter.java"


# instance fields
.field strId:I


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 21
    iput p2, p0, Lcom/narvii/monetization/common/ManageTitleAdapter;->strId:I

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b065a

    .line 26
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 27
    iget p2, p0, Lcom/narvii/monetization/common/ManageTitleAdapter;->strId:I

    if-eqz p2, :cond_0

    const p2, 0x7f090b9a

    .line 28
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 29
    iget p3, p0, Lcom/narvii/monetization/common/ManageTitleAdapter;->strId:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-object p1
.end method
