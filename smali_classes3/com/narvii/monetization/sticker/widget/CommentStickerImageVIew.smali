.class public Lcom/narvii/monetization/sticker/widget/CommentStickerImageVIew;
.super Lcom/narvii/monetization/sticker/widget/StickerImageView;
.source "CommentStickerImageVIew.java"

# interfaces
.implements Lcom/narvii/widget/IFlexSizeImageView;
.implements Lcom/narvii/widget/FlexSizeImageViewDelegate$IFlexSizeCallback;


# instance fields
.field private flexSizeImageViewDelegate:Lcom/narvii/widget/FlexSizeImageViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/sticker/widget/StickerImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance p1, Lcom/narvii/widget/FlexSizeImageViewDelegate;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/narvii/widget/FlexSizeImageViewDelegate;-><init>(Lcom/narvii/widget/NVImageView;FIILcom/narvii/widget/FlexSizeImageViewDelegate$IFlexSizeCallback;)V

    iput-object p1, p0, Lcom/narvii/monetization/sticker/widget/CommentStickerImageVIew;->flexSizeImageViewDelegate:Lcom/narvii/widget/FlexSizeImageViewDelegate;

    return-void
.end method


# virtual methods
.method public adjustSize([I)V
    .locals 0

    return-void
.end method

.method public flexMeasure(II)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/narvii/monetization/sticker/widget/CommentStickerImageVIew;->flexSizeImageViewDelegate:Lcom/narvii/widget/FlexSizeImageViewDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/FlexSizeImageViewDelegate;->flexMeasure(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/sticker/widget/CommentStickerImageVIew;->flexMeasure(II)V

    return-void
.end method

.method public onSuperMeasuredCalled(II)V
    .locals 0

    .line 43
    invoke-super {p0, p1, p2}, Lcom/narvii/widget/NVImageView;->onMeasure(II)V

    return-void
.end method

.method public processImageUrl(Ljava/lang/String;)F
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/narvii/monetization/sticker/widget/CommentStickerImageVIew;->flexSizeImageViewDelegate:Lcom/narvii/widget/FlexSizeImageViewDelegate;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/FlexSizeImageViewDelegate;->processImageUrl(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method public setImageSizeFromUrl(Ljava/lang/String;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/narvii/monetization/sticker/widget/CommentStickerImageVIew;->flexSizeImageViewDelegate:Lcom/narvii/widget/FlexSizeImageViewDelegate;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/FlexSizeImageViewDelegate;->setImageSizeFromUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setImageSizeFromUrl(Ljava/lang/String;Z)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/narvii/monetization/sticker/widget/CommentStickerImageVIew;->flexSizeImageViewDelegate:Lcom/narvii/widget/FlexSizeImageViewDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/FlexSizeImageViewDelegate;->setImageSizeFromUrl(Ljava/lang/String;Z)V

    return-void
.end method
