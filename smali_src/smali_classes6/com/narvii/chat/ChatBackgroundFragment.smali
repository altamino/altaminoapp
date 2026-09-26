.class public Lcom/narvii/chat/ChatBackgroundFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    return-void
.end method

.method private themeBackground()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 15
    .line 16
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 20
    move-result v1

    .line 21
    .line 22
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 23
    .line 24
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 25
    .line 26
    .line 27
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 28
    move-result v0

    .line 29
    .line 30
    const-string v2, "config"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    check-cast v2, Lcom/narvii/config/ConfigService;

    .line 37
    .line 38
    const-string v3, "themePack"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    check-cast v3, Lcom/narvii/theme/ThemePackService;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 48
    move-result v2

    .line 49
    .line 50
    sget-object v4, Lcom/narvii/theme/ThemePackService$ThemeObject;->BACKGROUND:Lcom/narvii/theme/ThemePackService$ThemeObject;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v2, v4, v1, v0}, Lcom/narvii/theme/ThemePackService;->getDrawable(ILcom/narvii/theme/ThemePackService$ThemeObject;II)Landroid/graphics/drawable/Drawable;

    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method

.method private themeColor()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 12
    move-result v1

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    const v2, 0x7f0600a1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 27
    move-result v1

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 31
    return-object v0

    .line 32
    .line 33
    :cond_0
    const-string v1, "themePack"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    check-cast v1, Lcom/narvii/theme/ThemePackService;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 43
    move-result v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v0}, Lcom/narvii/theme/ThemePackService;->getThemeColor(I)I

    .line 47
    move-result v0

    .line 48
    const/4 v1, 0x3

    .line 49
    .line 50
    new-array v1, v1, [F

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 54
    const/4 v0, 0x2

    .line 55
    .line 56
    aget v2, v1, v0

    .line 57
    .line 58
    .line 59
    const v3, 0x3f59999a    # 0.85f

    .line 60
    mul-float/2addr v2, v3

    .line 61
    .line 62
    aput v2, v1, v0

    .line 63
    .line 64
    .line 65
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 66
    move-result v0

    .line 67
    .line 68
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 69
    .line 70
    .line 71
    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 72
    return-object v1
.end method


# virtual methods
.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/chat/util/ChatHelper;->Companion:Lcom/narvii/chat/util/ChatHelper$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/narvii/chat/util/ChatHelper$Companion;->getThreadFromThreadInfoHost(Lcom/narvii/app/NVFragment;)Lcom/narvii/model/ChatThread;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "id"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d00a3

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundFragment;->keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->dispose()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 11
    return-void
.end method

.method public onThreadChanged(Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatBackgroundFragment;->setThread(Lcom/narvii/model/ChatThread;)V

    .line 4
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/chat/ChatBackgroundFragment;->frame:Landroid/view/View;

    .line 6
    .line 7
    .line 8
    const p2, 0x7f0a0286

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    check-cast p2, Lcom/narvii/widget/NVImageView;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/narvii/chat/ChatBackgroundFragment;->imageView:Lcom/narvii/widget/NVImageView;

    .line 17
    .line 18
    .line 19
    const p2, 0x7f0a028e

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    check-cast p2, Lcom/narvii/widget/BlurImageView;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/narvii/chat/ChatBackgroundFragment;->blurView:Lcom/narvii/widget/BlurImageView;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 31
    move-result p2

    .line 32
    .line 33
    if-nez p2, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/chat/ChatBackgroundFragment;->frame:Landroid/view/View;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    new-instance p2, Lcom/narvii/chat/ChatBackgroundFragment$1;

    .line 42
    .line 43
    .line 44
    invoke-direct {p2, p0}, Lcom/narvii/chat/ChatBackgroundFragment$1;-><init>(Lcom/narvii/chat/ChatBackgroundFragment;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_0
    new-instance p2, Lcom/narvii/chat/ChatBackgroundFragment$2;

    .line 51
    .line 52
    .line 53
    invoke-direct {p2, p0}, Lcom/narvii/chat/ChatBackgroundFragment$2;-><init>(Lcom/narvii/chat/ChatBackgroundFragment;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p1, p2}, Lcom/narvii/util/SoftKeyboard;->observeKeyboard(Landroid/view/View;Lcom/narvii/util/Callback;)Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    iput-object p1, p0, Lcom/narvii/chat/ChatBackgroundFragment;->keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    .line 60
    :goto_0
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundFragment;->imageView:Lcom/narvii/widget/NVImageView;

    .line 6
    invoke-direct {p0}, Lcom/narvii/chat/ChatBackgroundFragment;->themeColor()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundFragment;->imageView:Lcom/narvii/widget/NVImageView;

    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/narvii/chat/ChatBackgroundFragment;->imageView:Lcom/narvii/widget/NVImageView;

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/narvii/chat/ChatBackgroundFragment;->blurView:Lcom/narvii/widget/BlurImageView;

    const/4 v0, 0x4

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/narvii/chat/ChatBackgroundFragment;->frame:Landroid/view/View;

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackground(Lcom/narvii/model/Media;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundFragment;->imageView:Lcom/narvii/widget/NVImageView;

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/ChatBackgroundFragment;->themeColor()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundFragment;->imageView:Lcom/narvii/widget/NVImageView;

    .line 2
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    iget-object p1, p0, Lcom/narvii/chat/ChatBackgroundFragment;->imageView:Lcom/narvii/widget/NVImageView;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/narvii/chat/ChatBackgroundFragment;->blurView:Lcom/narvii/widget/BlurImageView;

    const/4 v0, 0x4

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/narvii/chat/ChatBackgroundFragment;->frame:Landroid/view/View;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDefaultBackground()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundFragment;->imageView:Lcom/narvii/widget/NVImageView;

    .line 3
    const/4 v1, 0x4

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/chat/ChatBackgroundFragment;->themeBackground()Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v0

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundFragment;->blurView:Lcom/narvii/widget/BlurImageView;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2}, Lcom/narvii/widget/BlurImageView;->setImageDrawable2(Landroid/graphics/drawable/Drawable;)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundFragment;->blurView:Lcom/narvii/widget/BlurImageView;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundFragment;->frame:Landroid/view/View;

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/narvii/chat/ChatBackgroundFragment;->themeColor()Landroid/graphics/drawable/Drawable;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/ChatBackgroundFragment;->blurView:Lcom/narvii/widget/BlurImageView;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Lcom/narvii/widget/BlurImageView;->setImageDrawable2(Landroid/graphics/drawable/Drawable;)V

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundFragment;->blurView:Lcom/narvii/widget/BlurImageView;

    .line 41
    const/4 v1, 0x0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundFragment;->frame:Landroid/view/View;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    :goto_0
    return-void
.end method

.method public setThread(Lcom/narvii/model/ChatThread;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getBackground()Lcom/narvii/model/Media;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getBackground()Lcom/narvii/model/Media;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatBackgroundFragment;->setBackground(Lcom/narvii/model/Media;)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/ChatBackgroundFragment;->setDefaultBackground()V

    .line 20
    :goto_0
    return-void
.end method
