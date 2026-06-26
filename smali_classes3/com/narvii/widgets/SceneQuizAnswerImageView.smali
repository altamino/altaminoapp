.class public Lcom/narvii/widgets/SceneQuizAnswerImageView;
.super Lcom/narvii/widget/NVImageView;
.source "SceneQuizAnswerImageView.java"


# instance fields
.field size:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/narvii/widgets/SceneQuizAnswerImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/NVImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$dimen;->scene_answer_item_padding_h:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 19
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$dimen;->scene_answer_item_margin:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 20
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v1

    int-to-float p2, p2

    sub-float/2addr v0, p2

    mul-int/lit8 p1, p1, 0x4

    int-to-float p1, p1

    sub-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/narvii/widgets/SceneQuizAnswerImageView;->size:I

    return-void
.end method


# virtual methods
.method protected getImageRequestHeight(I)I
    .locals 1

    .line 38
    iget v0, p0, Lcom/narvii/widgets/SceneQuizAnswerImageView;->size:I

    if-eqz v0, :cond_0

    return v0

    .line 41
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/widget/NVImageView;->getImageRequestHeight(I)I

    move-result p1

    return p1
.end method

.method protected getImageRequestWidth(I)I
    .locals 1

    .line 29
    iget v0, p0, Lcom/narvii/widgets/SceneQuizAnswerImageView;->size:I

    if-eqz v0, :cond_0

    return v0

    .line 32
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/widget/NVImageView;->getImageRequestWidth(I)I

    move-result p1

    return p1
.end method

.method protected getRequestUrl(Lcom/narvii/model/Media;ZII)Ljava/lang/String;
    .locals 0

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/widget/NVImageView;->getRequestUrl(Lcom/narvii/model/Media;ZII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
