.class public Lcom/narvii/chat/detail/HeaderLayout;
.super Landroid/widget/RelativeLayout;
.source "HeaderLayout.java"

# interfaces
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/detail/HeaderLayout$UserClickListener;
    }
.end annotation


# instance fields
.field private absentView:Landroid/widget/TextView;

.field private blurReady:Z

.field private blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

.field private chatThread:Lcom/narvii/model/ChatThread;

.field height1:I

.field private imgThreadBg:Lcom/narvii/widget/FullsizeImageView;

.field private nvContext:Lcom/narvii/app/NVContext;

.field private tvTitle:Landroid/widget/TextView;

.field userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

.field userClickListener:Lcom/narvii/chat/detail/HeaderLayout$UserClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/detail/HeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/detail/HeaderLayout;->nvContext:Lcom/narvii/app/NVContext;

    const/4 p1, 0x0

    .line 58
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setClipChildren(Z)V

    return-void
.end method

.method private setAlpha(Landroid/view/View;II)V
    .locals 3

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    if-gt v0, p2, :cond_0

    const/4 p2, 0x0

    .line 186
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    const/4 p2, 0x4

    .line 187
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-lt v0, p3, :cond_1

    .line 189
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 190
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

    .line 193
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 194
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 63
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f09013c

    .line 64
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mmin18/widget/RealtimeBlurView;

    iput-object v0, p0, Lcom/narvii/chat/detail/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    const v0, 0x7f090571

    .line 65
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/FullsizeImageView;

    iput-object v0, p0, Lcom/narvii/chat/detail/HeaderLayout;->imgThreadBg:Lcom/narvii/widget/FullsizeImageView;

    const v0, 0x7f090b9a

    .line 66
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/detail/HeaderLayout;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f0901cd

    .line 67
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/detail/HeaderLayout;->absentView:Landroid/widget/TextView;

    const v0, 0x7f090c10

    .line 68
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    iput-object v0, p0, Lcom/narvii/chat/detail/HeaderLayout;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 69
    iget-object v0, p0, Lcom/narvii/chat/detail/HeaderLayout;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 70
    iget-object v0, p0, Lcom/narvii/chat/detail/HeaderLayout;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 71
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    .line 72
    iget-object v1, p0, Lcom/narvii/chat/detail/HeaderLayout;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 73
    iget-object v1, p0, Lcom/narvii/chat/detail/HeaderLayout;->absentView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 74
    iget-object v0, p0, Lcom/narvii/chat/detail/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/detail/HeaderLayout;->imgThreadBg:Lcom/narvii/widget/FullsizeImageView;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0, p0}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    :cond_0
    return-void
.end method

.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    .line 126
    iget-boolean p1, p0, Lcom/narvii/chat/detail/HeaderLayout;->blurReady:Z

    if-nez p1, :cond_0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    .line 127
    iput-boolean p1, p0, Lcom/narvii/chat/detail/HeaderLayout;->blurReady:Z

    .line 128
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .line 139
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 140
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    .line 141
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p2

    .line 142
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    check-cast p3, Lcom/narvii/app/NVActivity;

    invoke-virtual {p3}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    move-result p3

    .line 143
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    check-cast p4, Lcom/narvii/app/NVActivity;

    invoke-virtual {p4}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    move-result p4

    add-int p5, p3, p4

    .line 144
    div-int/lit8 v0, p5, 0x2

    add-int v1, p5, v0

    .line 147
    iget-object v2, p0, Lcom/narvii/chat/detail/HeaderLayout;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    sub-int v3, p1, v2

    .line 148
    div-int/lit8 v3, v3, 0x2

    int-to-float v4, v2

    const v5, 0x3f0f5c29    # 0.56f

    mul-float v4, v4, v5

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float v4, v4, v5

    float-to-int v4, v4

    sub-int v5, p2, v2

    sub-int/2addr v5, v4

    .line 151
    iget-object v6, p0, Lcom/narvii/chat/detail/HeaderLayout;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    add-int v7, v3, v2

    add-int v8, v5, v2

    invoke-virtual {v6, v3, v5, v7, v8}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 152
    iget-object v6, p0, Lcom/narvii/chat/detail/HeaderLayout;->imgThreadBg:Lcom/narvii/widget/FullsizeImageView;

    div-int/lit8 v2, v2, 0x2

    sub-int v9, p2, v2

    sub-int/2addr v9, v4

    invoke-static {v9, p5}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v9, p1, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 153
    iget-object v4, p0, Lcom/narvii/chat/detail/HeaderLayout;->absentView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 154
    iget-object v4, p0, Lcom/narvii/chat/detail/HeaderLayout;->absentView:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v5, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 157
    :cond_0
    iget-object v3, p0, Lcom/narvii/chat/detail/HeaderLayout;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    .line 158
    iget-object v4, p0, Lcom/narvii/chat/detail/HeaderLayout;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    sub-int v5, p2, p4

    sub-int/2addr v5, p3

    sub-int/2addr v5, v3

    .line 159
    div-int/lit8 v5, v5, 0x2

    add-int/2addr p5, v5

    sub-int/2addr p5, v2

    .line 161
    iget-object v2, p0, Lcom/narvii/chat/detail/HeaderLayout;->tvTitle:Landroid/widget/TextView;

    sub-int v5, p1, v4

    div-int/lit8 v5, v5, 0x2

    add-int/2addr p1, v4

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v3, p5

    invoke-virtual {v2, v5, p5, p1, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 163
    iget-object p1, p0, Lcom/narvii/chat/detail/HeaderLayout;->tvTitle:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0, v1}, Lcom/narvii/chat/detail/HeaderLayout;->setAlpha(Landroid/view/View;II)V

    .line 164
    iget-object p1, p0, Lcom/narvii/chat/detail/HeaderLayout;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    invoke-direct {p0, p1, v0, v1}, Lcom/narvii/chat/detail/HeaderLayout;->setAlpha(Landroid/view/View;II)V

    .line 166
    iget p1, p0, Lcom/narvii/chat/detail/HeaderLayout;->height1:I

    .line 167
    iget-boolean p5, p0, Lcom/narvii/chat/detail/HeaderLayout;->blurReady:Z

    const/4 v0, 0x4

    if-eqz p5, :cond_4

    .line 168
    div-int/lit8 p1, p1, 0x2

    const/high16 p5, 0x3f800000    # 1.0f

    if-ge p2, p1, :cond_1

    sub-int/2addr p2, p3

    sub-int/2addr p2, p4

    int-to-float p2, p2

    mul-float p2, p2, p5

    sub-int/2addr p1, p3

    sub-int/2addr p1, p4

    int-to-float p1, p1

    div-float p1, p2, p1

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    const/4 p2, 0x0

    cmpg-float p3, p1, p2

    if-gez p3, :cond_2

    const/4 p1, 0x0

    .line 176
    :cond_2
    iget-object p2, p0, Lcom/narvii/chat/detail/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    cmpl-float p3, p1, p5

    if-ltz p3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object p2, p0, Lcom/narvii/chat/detail/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    sub-float/2addr p5, p1

    invoke-virtual {p2, p5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 179
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/detail/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public setHeight1(I)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/narvii/chat/detail/HeaderLayout;->height1:I

    return-void
.end method

.method public setThread(Lcom/narvii/model/ChatThread;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 83
    :cond_0
    iput-object p1, p0, Lcom/narvii/chat/detail/HeaderLayout;->chatThread:Lcom/narvii/model/ChatThread;

    .line 84
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->icon:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 85
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->isJumpstart()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "res://ic_amino"

    :cond_1
    if-nez v0, :cond_3

    .line 88
    iget-object v1, p0, Lcom/narvii/chat/detail/HeaderLayout;->nvContext:Lcom/narvii/app/NVContext;

    if-eqz v1, :cond_3

    const-string v0, "config"

    .line 89
    invoke-interface {v1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 90
    iget-object v1, p0, Lcom/narvii/chat/detail/HeaderLayout;->nvContext:Lcom/narvii/app/NVContext;

    const-string v2, "community"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/community/CommunityService;

    .line 91
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 93
    iget-object v2, p0, Lcom/narvii/chat/detail/HeaderLayout;->imgThreadBg:Lcom/narvii/widget/FullsizeImageView;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f06007d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Lcom/narvii/model/Community;->themeColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_0
    invoke-virtual {v2, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 96
    :cond_3
    iget-object v1, p0, Lcom/narvii/chat/detail/HeaderLayout;->imgThreadBg:Lcom/narvii/widget/FullsizeImageView;

    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 98
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/narvii/chat/detail/HeaderLayout;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/narvii/model/ChatThread;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getAuthor()Lcom/narvii/model/User;

    move-result-object v0

    if-nez v0, :cond_6

    .line 100
    iget-object v1, p1, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    if-eqz v1, :cond_6

    .line 101
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/User;

    .line 102
    iget-object v3, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, v2

    .line 108
    :cond_6
    iget-object v1, p0, Lcom/narvii/chat/detail/HeaderLayout;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {v1, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 110
    iget-object v1, p0, Lcom/narvii/chat/detail/HeaderLayout;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    new-instance v2, Lcom/narvii/chat/detail/HeaderLayout$1;

    invoke-direct {v2, p0, v0}, Lcom/narvii/chat/detail/HeaderLayout$1;-><init>(Lcom/narvii/chat/detail/HeaderLayout;Lcom/narvii/model/User;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/narvii/chat/detail/HeaderLayout;->absentView:Landroid/widget/TextView;

    iget p1, p1, Lcom/narvii/model/ChatThread;->condition:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    const/4 p1, 0x0

    goto :goto_2

    :cond_7
    const/4 p1, 0x4

    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setUserClickListener(Lcom/narvii/chat/detail/HeaderLayout$UserClickListener;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/narvii/chat/detail/HeaderLayout;->userClickListener:Lcom/narvii/chat/detail/HeaderLayout$UserClickListener;

    return-void
.end method
