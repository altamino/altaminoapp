.class public Lcom/narvii/monetization/sticker/widget/CommentStickerImageVIew;
.super Lcom/narvii/monetization/sticker/widget/StickerImageView;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/IFlexSizeImageView;
.implements Lcom/narvii/widget/FlexSizeImageViewDelegate$IFlexSizeCallback;


# instance fields
.field private flexSizeImageViewDelegate:Lcom/narvii/widget/FlexSizeImageViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/sticker/widget/StickerImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/widget/FlexSizeImageViewDelegate;

    .line 6
    .line 7
    const/high16 v2, 0x3f800000    # 1.0f

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    move-object v0, p1

    .line 11
    move-object v1, p0

    .line 12
    move-object v5, p0

    .line 13
    .line 14
    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/narvii/widget/FlexSizeImageViewDelegate;-><init>(Lcom/narvii/widget/NVImageView;FIILcom/narvii/widget/FlexSizeImageViewDelegate$IFlexSizeCallback;)V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/monetization/sticker/widget/CommentStickerImageVIew;->flexSizeImageViewDelegate:Lcom/narvii/widget/FlexSizeImageViewDelegate;

    .line 18
    return-void
.end method


# virtual methods
.method public adjustSize([I)V
    .locals 0

    return-void
.end method

.method public flexMeasure(II)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/widget/CommentStickerImageVIew;->flexSizeImageViewDelegate:Lcom/narvii/widget/FlexSizeImageViewDelegate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/FlexSizeImageViewDelegate;->flexMeasure(II)V

    .line 6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/sticker/widget/CommentStickerImageVIew;->flexMeasure(II)V

    .line 4
    return-void
.end method

.method public onSuperMeasuredCalled(II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/widget/NVImageView;->onMeasure(II)V

    .line 4
    return-void
.end method

.method public processImageUrl(Ljava/lang/String;)F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/widget/CommentStickerImageVIew;->flexSizeImageViewDelegate:Lcom/narvii/widget/FlexSizeImageViewDelegate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/widget/FlexSizeImageViewDelegate;->processImageUrl(Ljava/lang/String;)F

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setImageSizeFromUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/monetization/sticker/widget/CommentStickerImageVIew;->flexSizeImageViewDelegate:Lcom/narvii/widget/FlexSizeImageViewDelegate;

    .line 1
    invoke-virtual {v0, p1}, Lcom/narvii/widget/FlexSizeImageViewDelegate;->setImageSizeFromUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setImageSizeFromUrl(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/monetization/sticker/widget/CommentStickerImageVIew;->flexSizeImageViewDelegate:Lcom/narvii/widget/FlexSizeImageViewDelegate;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/FlexSizeImageViewDelegate;->setImageSizeFromUrl(Ljava/lang/String;Z)V

    return-void
.end method
