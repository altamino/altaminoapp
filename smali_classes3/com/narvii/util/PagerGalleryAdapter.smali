.class public abstract Lcom/narvii/util/PagerGalleryAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "PagerGalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/view/PagerAdapter;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private convertView:Landroid/view/View;

.field private inflater:Landroid/view/LayoutInflater;

.field private layoutId:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private width:I

.field private widthPercent:F


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/util/PagerGalleryAdapter;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/narvii/util/PagerGalleryAdapter;->context:Landroid/content/Context;

    .line 29
    iget-object v0, p0, Lcom/narvii/util/PagerGalleryAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/util/PagerGalleryAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 30
    iput p2, p0, Lcom/narvii/util/PagerGalleryAdapter;->layoutId:I

    if-nez p3, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 32
    iput p1, p0, Lcom/narvii/util/PagerGalleryAdapter;->widthPercent:F

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 35
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/narvii/util/PagerGalleryAdapter;->width:I

    .line 36
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 37
    iget p2, p0, Lcom/narvii/util/PagerGalleryAdapter;->width:I

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    iput p2, p0, Lcom/narvii/util/PagerGalleryAdapter;->widthPercent:F

    :goto_0
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3

    .line 88
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p3, :cond_0

    const/4 p2, 0x0

    .line 91
    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 92
    iput-object v1, p0, Lcom/narvii/util/PagerGalleryAdapter;->convertView:Landroid/view/View;

    .line 93
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/narvii/util/PagerGalleryAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/narvii/util/PagerGalleryAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public getPageWidth(I)F
    .locals 0

    .line 101
    iget p1, p0, Lcom/narvii/util/PagerGalleryAdapter;->widthPercent:F

    return p1
.end method

.method public abstract getView(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .line 74
    invoke-virtual {p0, p2}, Lcom/narvii/util/PagerGalleryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    .line 75
    iget-object v0, p0, Lcom/narvii/util/PagerGalleryAdapter;->convertView:Landroid/view/View;

    const/4 v1, 0x0

    .line 76
    iput-object v1, p0, Lcom/narvii/util/PagerGalleryAdapter;->convertView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/narvii/util/PagerGalleryAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/narvii/util/PagerGalleryAdapter;->layoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 80
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/narvii/util/PagerGalleryAdapter;->getView(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 81
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/narvii/util/PagerGalleryAdapter;->list:Ljava/util/List;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/narvii/util/PagerGalleryAdapter;->list:Ljava/util/List;

    .line 47
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 48
    iget-object p1, p0, Lcom/narvii/util/PagerGalleryAdapter;->list:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 50
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method
