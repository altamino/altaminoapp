.class public Lcom/narvii/list/NVSectionHeaderAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "NVSectionHeaderAdapter.java"


# static fields
.field private static final TAG:Lcom/narvii/util/Tag;


# instance fields
.field private bgDrawable:Landroid/graphics/drawable/Drawable;

.field private iconColor:I

.field private indicatorDrawable:Landroid/graphics/drawable/Drawable;

.field mAttachAdapter:Lcom/narvii/list/NVAdapter;

.field private showIndicator:Z

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "NVSectionHeaderAdapter"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/list/NVSectionHeaderAdapter;->TAG:Lcom/narvii/util/Tag;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/narvii/list/NVSectionHeaderAdapter;->showIndicator:Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/narvii/list/NVSectionHeaderAdapter;->mAttachAdapter:Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/narvii/list/NVSectionHeaderAdapter;->layoutId()I

    move-result p1

    sget-object v0, Lcom/narvii/list/NVSectionHeaderAdapter;->TAG:Lcom/narvii/util/Tag;

    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    .line 68
    sget p2, Lcom/narvii/lib/R$id;->icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 69
    instance-of p3, p2, Landroid/widget/ImageView;

    if-eqz p3, :cond_0

    .line 70
    move-object p3, p2

    check-cast p3, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/narvii/list/NVSectionHeaderAdapter;->indicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    :cond_0
    instance-of p3, p2, Lcom/narvii/widget/TintButton;

    if-eqz p3, :cond_1

    iget p3, p0, Lcom/narvii/list/NVSectionHeaderAdapter;->iconColor:I

    if-eqz p3, :cond_1

    .line 73
    move-object v0, p2

    check-cast v0, Lcom/narvii/widget/TintButton;

    invoke-virtual {v0, p3}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 76
    :cond_1
    iget-boolean p3, p0, Lcom/narvii/list/NVSectionHeaderAdapter;->showIndicator:Z

    if-eqz p3, :cond_2

    const/4 p3, 0x0

    goto :goto_0

    :cond_2
    const/16 p3, 0x8

    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 78
    sget p2, Lcom/narvii/lib/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 79
    instance-of p3, p2, Landroid/widget/TextView;

    if-eqz p3, :cond_4

    .line 80
    check-cast p2, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/narvii/list/NVSectionHeaderAdapter;->title:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz p3, :cond_3

    const/4 p3, -0x1

    goto :goto_1

    :cond_3
    const p3, -0xb7b7b8

    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected layoutId()I
    .locals 1

    .line 51
    sget v0, Lcom/narvii/lib/R$layout;->item_section_header_with_indicator:I

    return v0
.end method

.method public setAttachAdapter(Lcom/narvii/list/NVAdapter;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/narvii/list/NVSectionHeaderAdapter;->mAttachAdapter:Lcom/narvii/list/NVAdapter;

    return-void
.end method

.method public setShowIndicator(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/narvii/list/NVSectionHeaderAdapter;->showIndicator:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/narvii/list/NVSectionHeaderAdapter;->title:Ljava/lang/String;

    return-void
.end method
