.class public Lcom/narvii/chat/ChatBackgroundFragment;
.super Lcom/narvii/app/NVFragment;
.source "ChatBackgroundFragment.java"

# interfaces
.implements Lcom/narvii/chat/ThreadInfoHost;


# instance fields
.field blurView:Lcom/narvii/widget/BlurImageView;

.field frame:Landroid/view/View;

.field frameHeight:I

.field imageView:Lcom/narvii/widget/NVImageView;

.field private keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    return-void
.end method

.method private themeBackground()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 158
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 159
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 160
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const-string v2, "config"

    .line 161
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/config/ConfigService;

    const-string v3, "themePack"

    .line 162
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/theme/ThemePackService;

    .line 163
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v2

    sget-object v4, Lcom/narvii/theme/ThemePackService$ThemeObject;->BACKGROUND:Lcom/narvii/theme/ThemePackService$ThemeObject;

    invoke-virtual {v3, v2, v4, v1, v0}, Lcom/narvii/theme/ThemePackService;->getDrawable(ILcom/narvii/theme/ThemePackService$ThemeObject;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private themeColor()Landroid/graphics/drawable/Drawable;
    .locals 4

    const-string v0, "config"

    .line 167
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 168
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 170
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0

    :cond_1
    const-string v1, "themePack"

    .line 172
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/theme/ThemePackService;

    .line 173
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/narvii/theme/ThemePackService;->getThemeColor(I)I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 175
    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v0, 0x2

    .line 176
    aget v2, v1, v0

    const v3, 0x3f59999a    # 0.85f

    mul-float v2, v2, v3

    aput v2, v1, v0

    .line 177
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 178
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v1
.end method


# virtual methods
.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 1

    .line 149
    sget-object v0, Lcom/narvii/chat/util/ChatHelper;->Companion:Lcom/narvii/chat/util/ChatHelper$Companion;

    invoke-virtual {v0, p0}, Lcom/narvii/chat/util/ChatHelper$Companion;->getThreadFromThreadInfoHost(Lcom/narvii/app/NVFragment;)Lcom/narvii/model/ChatThread;

    move-result-object v0

    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 1

    const-string v0, "id"

    .line 144
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b008d

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundFragment;->keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->dispose()V

    .line 100
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    return-void
.end method

.method public onThreadChanged(Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 154
    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatBackgroundFragment;->setThread(Lcom/narvii/model/ChatThread;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 49
    iput-object p1, p0, Lcom/narvii/chat/ChatBackgroundFragment;->frame:Landroid/view/View;

    const p2, 0x7f0901cf

    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVImageView;

    iput-object p2, p0, Lcom/narvii/chat/ChatBackgroundFragment;->imageView:Lcom/narvii/widget/NVImageView;

    const p2, 0x7f0901d7

    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/BlurImageView;

    iput-object p2, p0, Lcom/narvii/chat/ChatBackgroundFragment;->blurView:Lcom/narvii/widget/BlurImageView;

    .line 52
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result p2

    if-nez p2, :cond_0

    .line 53
    iget-object p1, p0, Lcom/narvii/chat/ChatBackgroundFragment;->frame:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/narvii/chat/ChatBackgroundFragment$1;

    invoke-direct {p2, p0}, Lcom/narvii/chat/ChatBackgroundFragment$1;-><init>(Lcom/narvii/chat/ChatBackgroundFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 73
    :cond_0
    new-instance p2, Lcom/narvii/chat/ChatBackgroundFragment$2;

    invoke-direct {p2, p0}, Lcom/narvii/chat/ChatBackgroundFragment$2;-><init>(Lcom/narvii/chat/ChatBackgroundFragment;)V

    invoke-static {p1, p2}, Lcom/narvii/util/SoftKeyboard;->observeKeyboard(Landroid/view/View;Lcom/narvii/util/Callback;)Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/ChatBackgroundFragment;->keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    :goto_0
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundFragment;->imageView:Lcom/narvii/widget/NVImageView;

    invoke-direct {p0}, Lcom/narvii/chat/ChatBackgroundFragment;->themeColor()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundFragment;->imageView:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    iget-object p1, p0, Lcom/narvii/chat/ChatBackgroundFragment;->imageView:Lcom/narvii/widget/NVImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iget-object p1, p0, Lcom/narvii/chat/ChatBackgroundFragment;->blurView:Lcom/narvii/widget/BlurImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    iget-object p1, p0, Lcom/narvii/chat/ChatBackgroundFragment;->frame:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackground(Lcom/narvii/model/Media;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundFragment;->imageView:Lcom/narvii/widget/NVImageView;

    invoke-direct {p0}, Lcom/narvii/chat/ChatBackgroundFragment;->themeColor()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundFragment;->imageView:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 106
    iget-object p1, p0, Lcom/narvii/chat/ChatBackgroundFragment;->imageView:Lcom/narvii/widget/NVImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-object p1, p0, Lcom/narvii/chat/ChatBackgroundFragment;->blurView:Lcom/narvii/widget/BlurImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    iget-object p1, p0, Lcom/narvii/chat/ChatBackgroundFragment;->frame:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDefaultBackground()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundFragment;->imageView:Lcom/narvii/widget/NVImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    invoke-direct {p0}, Lcom/narvii/chat/ChatBackgroundFragment;->themeBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundFragment;->blurView:Lcom/narvii/widget/BlurImageView;

    invoke-virtual {v0, v2}, Lcom/narvii/widget/BlurImageView;->setImageDrawable2(Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundFragment;->blurView:Lcom/narvii/widget/BlurImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundFragment;->frame:Landroid/view/View;

    invoke-direct {p0}, Lcom/narvii/chat/ChatBackgroundFragment;->themeColor()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/ChatBackgroundFragment;->blurView:Lcom/narvii/widget/BlurImageView;

    invoke-virtual {v1, v0}, Lcom/narvii/widget/BlurImageView;->setImageDrawable2(Landroid/graphics/drawable/Drawable;)V

    .line 128
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundFragment;->blurView:Lcom/narvii/widget/BlurImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundFragment;->frame:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setThread(Lcom/narvii/model/ChatThread;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 134
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getBackground()Lcom/narvii/model/Media;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getBackground()Lcom/narvii/model/Media;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatBackgroundFragment;->setBackground(Lcom/narvii/model/Media;)V

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/ChatBackgroundFragment;->setDefaultBackground()V

    :goto_0
    return-void
.end method
