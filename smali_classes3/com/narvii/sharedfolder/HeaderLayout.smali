.class public Lcom/narvii/sharedfolder/HeaderLayout;
.super Landroid/widget/RelativeLayout;
.source "HeaderLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field authorLayout:Landroid/view/View;

.field public avatar:Lcom/narvii/widget/UserAvatarLayout;

.field private blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

.field public cover:Lcom/narvii/widget/NVImageView;

.field public description:Landroid/widget/TextView;

.field public gradient:Landroid/view/View;

.field height1:I

.field lock:Landroid/view/View;

.field nicknameView:Lcom/narvii/widget/NicknameView;

.field public photosCount:Landroid/widget/TextView;

.field sharedAlbum:Lcom/narvii/model/SharedAlbum;

.field public title:Landroid/widget/TextView;

.field public title2:Landroid/widget/TextView;

.field public votesCount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setAlpha(Landroid/view/View;II)V
    .locals 3

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    if-gt v0, p2, :cond_0

    const/4 p2, 0x0

    .line 161
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    const/4 p2, 0x4

    .line 162
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-lt v0, p3, :cond_1

    .line 164
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 165
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    sub-int v0, p3, v0

    int-to-float v0, v0

    mul-float v0, v0, v2

    sub-int/2addr p3, p2

    int-to-float p2, p3

    div-float/2addr v0, p2

    sub-float/2addr v2, v0

    .line 168
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 169
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->sharedAlbum:Lcom/narvii/model/SharedAlbum;

    if-nez v0, :cond_0

    return-void

    .line 178
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900e0

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 181
    :cond_1
    iget-object p1, p0, Lcom/narvii/sharedfolder/HeaderLayout;->sharedAlbum:Lcom/narvii/model/SharedAlbum;

    iget-object p1, p1, Lcom/narvii/model/SharedAlbum;->author:Lcom/narvii/model/User;

    if-nez p1, :cond_2

    return-void

    .line 184
    :cond_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->sharedAlbum:Lcom/narvii/model/SharedAlbum;

    iget-object v0, v0, Lcom/narvii/model/SharedAlbum;->author:Lcom/narvii/model/User;

    invoke-static {p1, v0}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 188
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 190
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 53
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0902fc

    .line 54
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->cover:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f090b9a

    .line 55
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->title:Landroid/widget/TextView;

    const v0, 0x7f090b9c

    .line 56
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->title2:Landroid/widget/TextView;

    const v0, 0x7f09082d

    .line 57
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->photosCount:Landroid/widget/TextView;

    const v0, 0x7f090cd7

    .line 58
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->votesCount:Landroid/widget/TextView;

    const v0, 0x7f0902d0

    .line 59
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->description:Landroid/widget/TextView;

    const v0, 0x7f09013c

    .line 60
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mmin18/widget/RealtimeBlurView;

    iput-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    const v0, 0x7f090764

    .line 61
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NicknameView;

    iput-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->nicknameView:Lcom/narvii/widget/NicknameView;

    const v0, 0x7f090c10

    .line 62
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    iput-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    const v0, 0x7f0906a1

    .line 63
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->lock:Landroid/view/View;

    const v0, 0x7f0902fd

    .line 64
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->gradient:Landroid/view/View;

    const v0, 0x7f0900e0

    .line 65
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->authorLayout:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->authorLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    move-result v0

    .line 69
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/narvii/app/NVActivity;

    invoke-virtual {v1}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    move-result v1

    .line 70
    iget-object v2, p0, Lcom/narvii/sharedfolder/HeaderLayout;->title2:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 71
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 72
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 102
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 103
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 104
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    move-result p1

    .line 105
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/narvii/app/NVActivity;

    invoke-virtual {p2}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    move-result p2

    add-int p3, p1, p2

    .line 106
    div-int/lit8 p4, p3, 0x2

    add-int p5, p3, p4

    .line 109
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const-string v3, "fade"

    if-ge v2, v0, :cond_1

    .line 110
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 111
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    invoke-direct {p0, v4, p4, p5}, Lcom/narvii/sharedfolder/HeaderLayout;->setAlpha(Landroid/view/View;II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p4

    const/4 v0, 0x0

    const/4 v2, 0x4

    const/high16 v4, 0x3f800000    # 1.0f

    if-le p4, p5, :cond_2

    .line 120
    iget-object p3, p0, Lcom/narvii/sharedfolder/HeaderLayout;->title2:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object p3, p0, Lcom/narvii/sharedfolder/HeaderLayout;->title2:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_1

    :cond_2
    if-gt p4, p3, :cond_3

    .line 123
    iget-object p3, p0, Lcom/narvii/sharedfolder/HeaderLayout;->title2:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object p3, p0, Lcom/narvii/sharedfolder/HeaderLayout;->title2:Landroid/widget/TextView;

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_1

    :cond_3
    sub-int v5, p5, p4

    int-to-float v5, v5

    mul-float v5, v5, v4

    sub-int/2addr p5, p3

    int-to-float p3, p5

    div-float/2addr v5, p3

    .line 127
    iget-object p3, p0, Lcom/narvii/sharedfolder/HeaderLayout;->title2:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object p3, p0, Lcom/narvii/sharedfolder/HeaderLayout;->title2:Landroid/widget/TextView;

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 131
    :goto_1
    iget p3, p0, Lcom/narvii/sharedfolder/HeaderLayout;->height1:I

    .line 132
    div-int/lit8 p3, p3, 0x2

    if-ge p4, p3, :cond_4

    sub-int/2addr p4, p1

    sub-int/2addr p4, p2

    int-to-float p4, p4

    mul-float p4, p4, v4

    sub-int/2addr p3, p1

    sub-int/2addr p3, p2

    int-to-float p1, p3

    div-float/2addr p4, p1

    goto :goto_2

    :cond_4
    const/high16 p4, 0x3f800000    # 1.0f

    :goto_2
    cmpg-float p1, p4, v0

    if-gez p1, :cond_5

    const/4 p4, 0x0

    .line 140
    :cond_5
    iget-object p1, p0, Lcom/narvii/sharedfolder/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    cmpl-float p2, p4, v4

    if-ltz p2, :cond_6

    const/4 p2, 0x4

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    :goto_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object p1, p0, Lcom/narvii/sharedfolder/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    const/high16 p2, 0x66000000

    invoke-virtual {p1, p2}, Lcom/github/mmin18/widget/RealtimeBlurView;->setOverlayColor(I)V

    .line 142
    iget-object p1, p0, Lcom/narvii/sharedfolder/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    sub-float/2addr v4, p4

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 143
    iget-object p1, p0, Lcom/narvii/sharedfolder/HeaderLayout;->gradient:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setAlpha(F)V

    cmpl-float p1, p4, v0

    if-nez p1, :cond_8

    .line 145
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result p1

    :goto_4
    if-ge v1, p1, :cond_8

    .line 146
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 147
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 148
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 149
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 153
    :cond_8
    iget-object p1, p0, Lcom/narvii/sharedfolder/HeaderLayout;->sharedAlbum:Lcom/narvii/model/SharedAlbum;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/narvii/model/SharedAlbum;->description:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 154
    :cond_9
    iget-object p1, p0, Lcom/narvii/sharedfolder/HeaderLayout;->description:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method public setHeight1(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/narvii/sharedfolder/HeaderLayout;->height1:I

    return-void
.end method

.method public setSharedAlbum(Lcom/narvii/model/SharedAlbum;)V
    .locals 6

    .line 81
    iget-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->sharedAlbum:Lcom/narvii/model/SharedAlbum;

    if-ne v0, p1, :cond_0

    return-void

    .line 84
    :cond_0
    iput-object p1, p0, Lcom/narvii/sharedfolder/HeaderLayout;->sharedAlbum:Lcom/narvii/model/SharedAlbum;

    .line 85
    iget-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/narvii/model/SharedAlbum;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->title2:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/narvii/model/SharedAlbum;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->lock:Landroid/view/View;

    invoke-virtual {p1}, Lcom/narvii/model/SharedAlbum;->isLocked()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->cover:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1}, Lcom/narvii/model/SharedAlbum;->getCoverImage()Lcom/narvii/model/Media;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 89
    iget-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->description:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/narvii/model/SharedAlbum;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->description:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/narvii/model/SharedAlbum;->description:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->photosCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Lcom/narvii/model/SharedAlbum;->filesCount:I

    const v4, 0x7f0f0cd5

    const v5, 0x7f0f0c01

    invoke-static {v1, v2, v4, v5}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->votesCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Lcom/narvii/model/SharedAlbum;->votesCount:I

    const v4, 0x7f0f0cd2

    const v5, 0x7f0f0bfd

    invoke-static {v1, v2, v4, v5}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->nicknameView:Lcom/narvii/widget/NicknameView;

    iget-object v1, p1, Lcom/narvii/model/SharedAlbum;->author:Lcom/narvii/model/User;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 94
    iget-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v3}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarStroke(FZ)V

    .line 95
    iget-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v1

    const-string v2, "#38000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarShadow(IIZ)V

    .line 96
    iget-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    iget-object v1, p1, Lcom/narvii/model/SharedAlbum;->author:Lcom/narvii/model/User;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 97
    iget-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->authorLayout:Landroid/view/View;

    invoke-virtual {p1}, Lcom/narvii/model/SharedAlbum;->isDefaultAlbum()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    return-void
.end method
