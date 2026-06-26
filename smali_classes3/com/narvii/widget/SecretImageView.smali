.class public Lcom/narvii/widget/SecretImageView;
.super Lcom/narvii/widget/ThumbImageView;
.source "SecretImageView.java"

# interfaces
.implements Lcom/narvii/widget/ISecretImage;


# instance fields
.field delegate:Lcom/narvii/widget/SecretImageViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/SecretImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/ThumbImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance p1, Lcom/narvii/widget/SecretImageViewDelegate;

    iget p2, p0, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    invoke-direct {p1, p0, p2}, Lcom/narvii/widget/SecretImageViewDelegate;-><init>(Lcom/narvii/widget/NVImageView;I)V

    iput-object p1, p0, Lcom/narvii/widget/SecretImageView;->delegate:Lcom/narvii/widget/SecretImageViewDelegate;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/narvii/widget/SecretImageView;->delegate:Lcom/narvii/widget/SecretImageViewDelegate;

    invoke-virtual {v0}, Lcom/narvii/widget/SecretImageViewDelegate;->needBlur()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-super {p0, p1}, Lcom/narvii/widget/ThumbImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/SecretImageView;->delegate:Lcom/narvii/widget/SecretImageViewDelegate;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/SecretImageViewDelegate;->drawSecret(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/narvii/widget/SecretImageView;->delegate:Lcom/narvii/widget/SecretImageViewDelegate;

    invoke-virtual {v0}, Lcom/narvii/widget/SecretImageViewDelegate;->layout()V

    .line 44
    invoke-super/range {p0 .. p5}, Lcom/narvii/widget/NVImageView;->onLayout(ZIIII)V

    return-void
.end method

.method public setImageForceBlur(Lcom/narvii/model/Media;ZI)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/narvii/widget/SecretImageView;->delegate:Lcom/narvii/widget/SecretImageViewDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/widget/SecretImageViewDelegate;->setImageForceBlur(Lcom/narvii/model/Media;ZI)V

    return-void
.end method

.method public setImageMedia(Lcom/narvii/model/Media;Z)Z
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/narvii/widget/SecretImageView;->delegate:Lcom/narvii/widget/SecretImageViewDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/SecretImageViewDelegate;->setImageMedia(Lcom/narvii/model/Media;Z)Z

    move-result p1

    return p1
.end method

.method public setImageUrl(Ljava/lang/String;Z)Z
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/narvii/widget/SecretImageView;->delegate:Lcom/narvii/widget/SecretImageViewDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/SecretImageViewDelegate;->setImageUrl(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
