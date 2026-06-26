.class public Lcom/narvii/monetization/sticker/post/StickerPostItemList;
.super Lcom/narvii/widget/DragSortLinearLayout;
.source "StickerPostItemList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/sticker/post/StickerPostItemList$OnStickerItemDeleteListener;,
        Lcom/narvii/monetization/sticker/post/StickerPostItemList$OnIconClickListener;
    }
.end annotation


# instance fields
.field onClickListener:Landroid/view/View$OnClickListener;

.field onIconClickListener:Lcom/narvii/monetization/sticker/post/StickerPostItemList$OnIconClickListener;

.field stickerItemDeleteListener:Lcom/narvii/monetization/sticker/post/StickerPostItemList$OnStickerItemDeleteListener;

.field thumbnailCell:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/DragSortLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance p1, Lcom/narvii/monetization/sticker/post/StickerPostItemList$1;

    invoke-direct {p1, p0}, Lcom/narvii/monetization/sticker/post/StickerPostItemList$1;-><init>(Lcom/narvii/monetization/sticker/post/StickerPostItemList;)V

    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private changeStickerPostItem(ILcom/narvii/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/monetization/sticker/post/StickerPostItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 168
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b059e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 169
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 170
    instance-of v0, p1, Lcom/narvii/monetization/sticker/post/StickerPostItem;

    if-eqz v0, :cond_1

    .line 171
    check-cast p1, Lcom/narvii/monetization/sticker/post/StickerPostItem;

    if-eqz p2, :cond_0

    .line 174
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 176
    :cond_0
    iget-object p2, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/narvii/monetization/sticker/post/StickerPostItem;->setIconLayoutClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->thumbnailCell:Landroid/view/View;

    if-nez p1, :cond_2

    .line 179
    invoke-virtual {p0, v1}, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->setThumbnailCell(I)V

    :cond_2
    return-void

    .line 183
    :cond_3
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->isIndexValid(I)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 187
    :cond_4
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/sticker/post/StickerPostItem;

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 190
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 191
    new-instance p2, Lcom/narvii/monetization/sticker/post/StickerPostItemList$4;

    invoke-direct {p2, p0, p1}, Lcom/narvii/monetization/sticker/post/StickerPostItemList$4;-><init>(Lcom/narvii/monetization/sticker/post/StickerPostItemList;Lcom/narvii/monetization/sticker/post/StickerPostItem;)V

    const-wide/16 v0, 0x32

    invoke-static {p2, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_5
    return-void
.end method

.method private isIndexValid(I)Z
    .locals 1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 105
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public deleteItem(I)V
    .locals 3

    .line 229
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->isIndexValid(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->thumbnailCell:Landroid/view/View;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 234
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 236
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->thumbnailCell:Landroid/view/View;

    .line 237
    invoke-virtual {p0, v2}, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->setThumbnailCell(I)V

    .line 239
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->stickerItemDeleteListener:Lcom/narvii/monetization/sticker/post/StickerPostItemList$OnStickerItemDeleteListener;

    if-eqz p1, :cond_2

    .line 240
    invoke-interface {p1}, Lcom/narvii/monetization/sticker/post/StickerPostItemList$OnStickerItemDeleteListener;->onStickerItemDeleted()V

    :cond_2
    return-void
.end method

.method public getStickerList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/monetization/sticker/post/StickerPost;",
            ">;"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 95
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 96
    instance-of v4, v3, Lcom/narvii/monetization/sticker/post/StickerPostItem;

    if-eqz v4, :cond_0

    .line 97
    check-cast v3, Lcom/narvii/monetization/sticker/post/StickerPostItem;

    .line 98
    invoke-virtual {v3}, Lcom/narvii/monetization/sticker/post/StickerPostItem;->getStickerPost()Lcom/narvii/monetization/sticker/post/StickerPost;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method public getThumbnailIndex()I
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->thumbnailCell:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 224
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 225
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public onPickMediaResult(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 143
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 144
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Media;

    if-nez v1, :cond_1

    return-void

    .line 149
    :cond_1
    new-instance v2, Lcom/narvii/monetization/sticker/post/StickerPostItemList$3;

    invoke-direct {v2, p0, v1, v0}, Lcom/narvii/monetization/sticker/post/StickerPostItemList$3;-><init>(Lcom/narvii/monetization/sticker/post/StickerPostItemList;Lcom/narvii/model/Media;I)V

    invoke-direct {p0, p1, v2}, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->changeStickerPostItem(ILcom/narvii/util/Callback;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onPickStickerResult(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/narvii/model/Sticker;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 114
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 115
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Sticker;

    if-nez v1, :cond_1

    return-void

    .line 120
    :cond_1
    new-instance v2, Lcom/narvii/monetization/sticker/post/StickerPostItemList$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/narvii/monetization/sticker/post/StickerPostItemList$2;-><init>(Lcom/narvii/monetization/sticker/post/StickerPostItemList;Lcom/narvii/model/Sticker;I)V

    invoke-direct {p0, p1, v2}, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->changeStickerPostItem(ILcom/narvii/util/Callback;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setOnIconClickListener(Lcom/narvii/monetization/sticker/post/StickerPostItemList$OnIconClickListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->onIconClickListener:Lcom/narvii/monetization/sticker/post/StickerPostItemList$OnIconClickListener;

    return-void
.end method

.method public setStickerItemDeleteListener(Lcom/narvii/monetization/sticker/post/StickerPostItemList$OnStickerItemDeleteListener;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->stickerItemDeleteListener:Lcom/narvii/monetization/sticker/post/StickerPostItemList$OnStickerItemDeleteListener;

    return-void
.end method

.method public setThumbnailCell(I)V
    .locals 4

    .line 202
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->isIndexValid(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 203
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 209
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->thumbnailCell:Landroid/view/View;

    const/4 v0, 0x0

    .line 211
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 212
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 213
    instance-of v3, v2, Lcom/narvii/monetization/sticker/post/StickerPostItem;

    if-eqz v3, :cond_3

    .line 214
    check-cast v2, Lcom/narvii/monetization/sticker/post/StickerPostItem;

    if-ne v0, p1, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Lcom/narvii/monetization/sticker/post/StickerPostItem;->showThumbnail(Z)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public updateStickerList(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/monetization/sticker/post/StickerPost;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 72
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v2, v1, :cond_1

    .line 73
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b059e

    invoke-virtual {v2, v3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 74
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 76
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 77
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v0, v1, :cond_5

    .line 81
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ge v0, v1, :cond_3

    .line 82
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/monetization/sticker/post/StickerPost;

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    .line 84
    :goto_3
    instance-of v4, v2, Lcom/narvii/monetization/sticker/post/StickerPostItem;

    if-eqz v4, :cond_4

    .line 85
    check-cast v2, Lcom/narvii/monetization/sticker/post/StickerPostItem;

    .line 86
    invoke-virtual {v2, v3}, Lcom/narvii/monetization/sticker/post/StickerPostItem;->setStickerPost(Lcom/narvii/monetization/sticker/post/StickerPost;)V

    .line 87
    iget-object v3, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/narvii/monetization/sticker/post/StickerPostItem;->setIconLayoutClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method
