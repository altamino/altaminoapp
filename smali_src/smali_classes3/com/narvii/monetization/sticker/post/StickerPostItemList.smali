.class public Lcom/narvii/monetization/sticker/post/StickerPostItemList;
.super Lcom/narvii/widget/DragSortLinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/sticker/post/StickerPostItemList$OnIconClickListener;,
        Lcom/narvii/monetization/sticker/post/StickerPostItemList$OnStickerItemDeleteListener;
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/DragSortLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/monetization/sticker/post/StickerPostItemList$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/narvii/monetization/sticker/post/StickerPostItemList$1;-><init>(Lcom/narvii/monetization/sticker/post/StickerPostItemList;)V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->onClickListener:Landroid/view/View$OnClickListener;

    .line 11
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

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-ne p1, v0, :cond_3

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0d0646

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 23
    .line 24
    instance-of v0, p1, Lcom/narvii/monetization/sticker/post/StickerPostItem;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    check-cast p1, Lcom/narvii/monetization/sticker/post/StickerPostItem;

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 34
    .line 35
    :cond_0
    iget-object p2, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->onClickListener:Landroid/view/View$OnClickListener;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lcom/narvii/monetization/sticker/post/StickerPostItem;->setIconLayoutClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->thumbnailCell:Landroid/view/View;

    .line 41
    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->setThumbnailCell(I)V

    .line 46
    :cond_2
    return-void

    .line 47
    .line 48
    .line 49
    :cond_3
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->isIndexValid(I)Z

    .line 50
    move-result v0

    .line 51
    .line 52
    if-nez v0, :cond_4

    .line 53
    return-void

    .line 54
    .line 55
    .line 56
    :cond_4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    check-cast p1, Lcom/narvii/monetization/sticker/post/StickerPostItem;

    .line 60
    .line 61
    if-eqz p1, :cond_5

    .line 62
    .line 63
    if-eqz p2, :cond_5

    .line 64
    .line 65
    .line 66
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 67
    .line 68
    new-instance p2, Lcom/narvii/monetization/sticker/post/StickerPostItemList$4;

    .line 69
    .line 70
    .line 71
    invoke-direct {p2, p0, p1}, Lcom/narvii/monetization/sticker/post/StickerPostItemList$4;-><init>(Lcom/narvii/monetization/sticker/post/StickerPostItemList;Lcom/narvii/monetization/sticker/post/StickerPostItem;)V

    .line 72
    .line 73
    const-wide/16 v0, 0x32

    .line 74
    .line 75
    .line 76
    invoke-static {p2, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 77
    :cond_5
    return-void
.end method

.method private isIndexValid(I)Z
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-le p1, v0, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    move-result v0

    .line 8
    .line 9
    if-ge p1, v0, :cond_0

    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return p1
.end method


# virtual methods
.method public deleteItem(I)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->isIndexValid(I)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->thumbnailCell:Landroid/view/View;

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v2

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    const/4 p1, 0x0

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->thumbnailCell:Landroid/view/View;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v2}, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->setThumbnailCell(I)V

    .line 30
    .line 31
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->stickerItemDeleteListener:Lcom/narvii/monetization/sticker/post/StickerPostItemList$OnStickerItemDeleteListener;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Lcom/narvii/monetization/sticker/post/StickerPostItemList$OnStickerItemDeleteListener;->onStickerItemDeleted()V

    .line 37
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

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    instance-of v4, v3, Lcom/narvii/monetization/sticker/post/StickerPostItem;

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    check-cast v3, Lcom/narvii/monetization/sticker/post/StickerPostItem;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/narvii/monetization/sticker/post/StickerPostItem;->getStickerPost()Lcom/narvii/monetization/sticker/post/StickerPost;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 36
    move-result v1

    .line 37
    .line 38
    if-nez v1, :cond_2

    .line 39
    const/4 v0, 0x0

    .line 40
    :cond_2
    return-object v0
.end method

.method public getThumbnailIndex()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->thumbnailCell:Landroid/view/View;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 14
    move-result v0

    .line 15
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

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-ge v0, v1, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lcom/narvii/model/Media;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    return-void

    .line 20
    .line 21
    :cond_1
    new-instance v2, Lcom/narvii/monetization/sticker/post/StickerPostItemList$3;

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, p0, v1, v0}, Lcom/narvii/monetization/sticker/post/StickerPostItemList$3;-><init>(Lcom/narvii/monetization/sticker/post/StickerPostItemList;Lcom/narvii/model/Media;I)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1, v2}, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->changeStickerPostItem(ILcom/narvii/util/Callback;)V

    .line 28
    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    goto :goto_0

    .line 31
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

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-ge v0, v1, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lcom/narvii/model/Sticker;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    return-void

    .line 20
    .line 21
    :cond_1
    new-instance v2, Lcom/narvii/monetization/sticker/post/StickerPostItemList$2;

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, p0, v1, v0}, Lcom/narvii/monetization/sticker/post/StickerPostItemList$2;-><init>(Lcom/narvii/monetization/sticker/post/StickerPostItemList;Lcom/narvii/model/Sticker;I)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1, v2}, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->changeStickerPostItem(ILcom/narvii/util/Callback;)V

    .line 28
    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    return-void
.end method

.method public setOnIconClickListener(Lcom/narvii/monetization/sticker/post/StickerPostItemList$OnIconClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->onIconClickListener:Lcom/narvii/monetization/sticker/post/StickerPostItemList$OnIconClickListener;

    return-void
.end method

.method public setStickerItemDeleteListener(Lcom/narvii/monetization/sticker/post/StickerPostItemList$OnStickerItemDeleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->stickerItemDeleteListener:Lcom/narvii/monetization/sticker/post/StickerPostItemList$OnStickerItemDeleteListener;

    return-void
.end method

.method public setThumbnailCell(I)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->isIndexValid(I)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 11
    move-result p1

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    return-void

    .line 15
    :cond_0
    move p1, v1

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->thumbnailCell:Landroid/view/View;

    .line 22
    move v0, v1

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 26
    move-result v2

    .line 27
    .line 28
    if-ge v0, v2, :cond_4

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    instance-of v3, v2, Lcom/narvii/monetization/sticker/post/StickerPostItem;

    .line 35
    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    check-cast v2, Lcom/narvii/monetization/sticker/post/StickerPostItem;

    .line 39
    .line 40
    if-ne v0, p1, :cond_2

    .line 41
    const/4 v3, 0x1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move v3, v1

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-virtual {v2, v3}, Lcom/narvii/monetization/sticker/post/StickerPostItem;->showThumbnail(Z)V

    .line 47
    .line 48
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 49
    goto :goto_0

    .line 50
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

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    move v1, v0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v1

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    move-result v2

    .line 14
    .line 15
    if-ge v2, v1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    .line 22
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    const v3, 0x7f0d0646

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 38
    move-result v2

    .line 39
    .line 40
    if-le v2, v1, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 44
    move-result v2

    .line 45
    .line 46
    add-int/lit8 v2, v2, -0x1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 50
    goto :goto_1

    .line 51
    .line 52
    :cond_2
    :goto_2
    if-ge v0, v1, :cond_5

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    if-ge v0, v1, :cond_3

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object v3

    .line 63
    .line 64
    check-cast v3, Lcom/narvii/monetization/sticker/post/StickerPost;

    .line 65
    goto :goto_3

    .line 66
    :cond_3
    const/4 v3, 0x0

    .line 67
    .line 68
    :goto_3
    instance-of v4, v2, Lcom/narvii/monetization/sticker/post/StickerPostItem;

    .line 69
    .line 70
    if-eqz v4, :cond_4

    .line 71
    .line 72
    check-cast v2, Lcom/narvii/monetization/sticker/post/StickerPostItem;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v3}, Lcom/narvii/monetization/sticker/post/StickerPostItem;->setStickerPost(Lcom/narvii/monetization/sticker/post/StickerPost;)V

    .line 76
    .line 77
    iget-object v3, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->onClickListener:Landroid/view/View$OnClickListener;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v3}, Lcom/narvii/monetization/sticker/post/StickerPostItem;->setIconLayoutClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    .line 82
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 83
    goto :goto_2

    .line 84
    :cond_5
    return-void
.end method
