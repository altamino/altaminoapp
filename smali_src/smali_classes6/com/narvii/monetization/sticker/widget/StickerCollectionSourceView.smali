.class public Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field authorIcon:Lcom/narvii/widget/NVImageView;

.field authorLayout:Landroid/view/View;

.field authorName:Landroid/widget/TextView;

.field meIcon:Landroid/widget/ImageView;

.field stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/monetization/sticker/StickerHelper;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, p2}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 19
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0d57

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->authorLayout:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a0d56

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->authorIcon:Lcom/narvii/widget/NVImageView;

    .line 24
    .line 25
    .line 26
    const v0, 0x7f0a0928

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Landroid/widget/ImageView;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->meIcon:Landroid/widget/ImageView;

    .line 35
    .line 36
    .line 37
    const v0, 0x7f0a0d58

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    check-cast v0, Landroid/widget/TextView;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->authorName:Landroid/widget/TextView;

    .line 46
    return-void
.end method

.method public setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->authorLayout:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isUserCreated()Z

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isUserCreated()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_4

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/narvii/monetization/sticker/StickerHelper;->isCreatedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    const/16 v1, 0x8

    .line 24
    const/4 v2, 0x0

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->meIcon:Landroid/widget/ImageView;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->authorIcon:Lcom/narvii/widget/NVImageView;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    iget-object p1, p0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->meIcon:Landroid/widget/ImageView;

    .line 39
    .line 40
    .line 41
    const v0, 0x7f080638

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    .line 46
    iget-object p1, p0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->authorName:Landroid/widget/TextView;

    .line 47
    .line 48
    .line 49
    const v0, 0x7f120c2a

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 53
    goto :goto_2

    .line 54
    .line 55
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->meIcon:Landroid/widget/ImageView;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->authorIcon:Lcom/narvii/widget/NVImageView;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getOriginalCommunity()Lcom/narvii/model/Community;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    iget-object v0, p0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->authorLayout:Landroid/view/View;

    .line 70
    .line 71
    if-eqz p1, :cond_1

    .line 72
    const/4 v2, 0x1

    .line 73
    .line 74
    .line 75
    :cond_1
    invoke-static {v0, v2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 76
    .line 77
    iget-object v0, p0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->authorIcon:Lcom/narvii/widget/NVImageView;

    .line 78
    const/4 v1, 0x0

    .line 79
    .line 80
    if-nez p1, :cond_2

    .line 81
    move-object v2, v1

    .line 82
    goto :goto_0

    .line 83
    .line 84
    :cond_2
    iget-object v2, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    :goto_0
    invoke-virtual {v0, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 88
    .line 89
    iget-object v0, p0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->authorName:Landroid/widget/TextView;

    .line 90
    .line 91
    if-nez p1, :cond_3

    .line 92
    goto :goto_1

    .line 93
    .line 94
    :cond_3
    iget-object v1, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :cond_4
    :goto_2
    return-void
.end method
