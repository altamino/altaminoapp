.class public Lcom/narvii/monetization/common/ManageEntryAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "ManageEntryAdapter.java"


# instance fields
.field number:I

.field strId:I


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 24
    iput p2, p0, Lcom/narvii/monetization/common/ManageEntryAdapter;->strId:I

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b03bd

    .line 38
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 39
    iget p2, p0, Lcom/narvii/monetization/common/ManageEntryAdapter;->strId:I

    if-eqz p2, :cond_0

    const p2, 0x7f090b5b

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 41
    iget p3, p0, Lcom/narvii/monetization/common/ManageEntryAdapter;->strId:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const p2, 0x7f090115

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 45
    iget p3, p0, Lcom/narvii/monetization/common/ManageEntryAdapter;->number:I

    invoke-static {p3}, Lcom/narvii/util/Utils;->getBadgeCount(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget p3, p0, Lcom/narvii/monetization/common/ManageEntryAdapter;->number:I

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    invoke-static {p2, p3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setNumber(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/narvii/monetization/common/ManageEntryAdapter;->number:I

    return-void
.end method
