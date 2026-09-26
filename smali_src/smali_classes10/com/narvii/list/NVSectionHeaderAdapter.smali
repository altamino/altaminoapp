.class public Lcom/narvii/list/NVSectionHeaderAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/Tag;

    .line 3
    .line 4
    const-string v1, "NVSectionHeaderAdapter"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    sput-object v0, Lcom/narvii/list/NVSectionHeaderAdapter;->TAG:Lcom/narvii/util/Tag;

    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/list/NVSectionHeaderAdapter;->showIndicator:Z

    .line 7
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVSectionHeaderAdapter;->mAttachAdapter:Lcom/narvii/list/NVAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVSectionHeaderAdapter;->layoutId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    sget-object v0, Lcom/narvii/list/NVSectionHeaderAdapter;->TAG:Lcom/narvii/util/Tag;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    sget p2, Lcom/narvii/lib/R$id;->icon:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    instance-of p3, p2, Landroid/widget/ImageView;

    .line 19
    .line 20
    if-eqz p3, :cond_0

    .line 21
    move-object p3, p2

    .line 22
    .line 23
    check-cast p3, Landroid/widget/ImageView;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/list/NVSectionHeaderAdapter;->indicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    .line 30
    :cond_0
    instance-of p3, p2, Lcom/narvii/widget/TintButton;

    .line 31
    .line 32
    if-eqz p3, :cond_1

    .line 33
    .line 34
    iget p3, p0, Lcom/narvii/list/NVSectionHeaderAdapter;->iconColor:I

    .line 35
    .line 36
    if-eqz p3, :cond_1

    .line 37
    move-object v0, p2

    .line 38
    .line 39
    check-cast v0, Lcom/narvii/widget/TintButton;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p3}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 43
    .line 44
    :cond_1
    iget-boolean p3, p0, Lcom/narvii/list/NVSectionHeaderAdapter;->showIndicator:Z

    .line 45
    .line 46
    if-eqz p3, :cond_2

    .line 47
    const/4 p3, 0x0

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_2
    const/16 p3, 0x8

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    sget p2, Lcom/narvii/lib/R$id;->title:I

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    instance-of p3, p2, Landroid/widget/TextView;

    .line 62
    .line 63
    if-eqz p3, :cond_4

    .line 64
    .line 65
    check-cast p2, Landroid/widget/TextView;

    .line 66
    .line 67
    iget-object p3, p0, Lcom/narvii/list/NVSectionHeaderAdapter;->title:Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 73
    .line 74
    if-eqz p3, :cond_3

    .line 75
    const/4 p3, -0x1

    .line 76
    goto :goto_1

    .line 77
    .line 78
    .line 79
    :cond_3
    const p3, -0xb7b7b8

    .line 80
    .line 81
    .line 82
    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
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

    sget v0, Lcom/narvii/lib/R$layout;->item_section_header_with_indicator:I

    return v0
.end method

.method public setAttachAdapter(Lcom/narvii/list/NVAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/list/NVSectionHeaderAdapter;->mAttachAdapter:Lcom/narvii/list/NVAdapter;

    return-void
.end method

.method public setShowIndicator(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/list/NVSectionHeaderAdapter;->showIndicator:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/list/NVSectionHeaderAdapter;->title:Ljava/lang/String;

    return-void
.end method
