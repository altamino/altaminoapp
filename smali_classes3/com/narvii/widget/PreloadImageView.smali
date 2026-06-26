.class public Lcom/narvii/widget/PreloadImageView;
.super Lcom/narvii/widget/ThumbImageView;
.source "PreloadImageView.java"


# instance fields
.field private height:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/ThumbImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected getRequestUrl(Lcom/narvii/model/Media;ZII)Ljava/lang/String;
    .locals 0

    .line 28
    iget p2, p0, Lcom/narvii/widget/PreloadImageView;->width:I

    iget p3, p0, Lcom/narvii/widget/PreloadImageView;->height:I

    const/4 p4, 0x1

    invoke-super {p0, p1, p4, p2, p3}, Lcom/narvii/widget/ThumbImageView;->getRequestUrl(Lcom/narvii/model/Media;ZII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setSize(II)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/narvii/widget/PreloadImageView;->width:I

    .line 23
    iput p2, p0, Lcom/narvii/widget/PreloadImageView;->height:I

    return-void
.end method
