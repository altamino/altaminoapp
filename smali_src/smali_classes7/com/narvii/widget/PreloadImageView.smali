.class public Lcom/narvii/widget/PreloadImageView;
.super Lcom/narvii/widget/ThumbImageView;
.source "SourceFile"


# instance fields
.field private height:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/ThumbImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    return-void
.end method


# virtual methods
.method protected getRequestUrl(Lcom/narvii/model/Media;ZII)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget p2, p0, Lcom/narvii/widget/PreloadImageView;->width:I

    .line 3
    .line 4
    iget p3, p0, Lcom/narvii/widget/PreloadImageView;->height:I

    .line 5
    const/4 p4, 0x1

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p4, p2, p3}, Lcom/narvii/widget/ThumbImageView;->getRequestUrl(Lcom/narvii/model/Media;ZII)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setSize(II)V
    .locals 0

    iput p1, p0, Lcom/narvii/widget/PreloadImageView;->width:I

    iput p2, p0, Lcom/narvii/widget/PreloadImageView;->height:I

    return-void
.end method
