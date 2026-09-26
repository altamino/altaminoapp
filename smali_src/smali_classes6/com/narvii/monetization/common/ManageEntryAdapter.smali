.class public Lcom/narvii/monetization/common/ManageEntryAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "SourceFile"


# instance fields
.field number:I

.field strId:I


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    iput p2, p0, Lcom/narvii/monetization/common/ManageEntryAdapter;->strId:I

    .line 6
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d03f3

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iget p2, p0, Lcom/narvii/monetization/common/ManageEntryAdapter;->strId:I

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    .line 14
    const p2, 0x7f0a0e51

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    check-cast p2, Landroid/widget/TextView;

    .line 21
    .line 22
    iget p3, p0, Lcom/narvii/monetization/common/ManageEntryAdapter;->strId:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    const p2, 0x7f0a01a7

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    check-cast p2, Landroid/widget/TextView;

    .line 35
    .line 36
    iget p3, p0, Lcom/narvii/monetization/common/ManageEntryAdapter;->number:I

    .line 37
    .line 38
    .line 39
    invoke-static {p3}, Lcom/narvii/util/Utils;->getBadgeCount(I)Ljava/lang/String;

    .line 40
    move-result-object p3

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    iget p3, p0, Lcom/narvii/monetization/common/ManageEntryAdapter;->number:I

    .line 46
    .line 47
    if-eqz p3, :cond_1

    .line 48
    const/4 p3, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 p3, 0x0

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-static {p2, p3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 54
    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setNumber(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/monetization/common/ManageEntryAdapter;->number:I

    return-void
.end method
