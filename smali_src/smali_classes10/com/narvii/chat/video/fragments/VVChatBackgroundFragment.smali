.class public Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/ThreadInfoHost;


# static fields
.field public static final KEY_CHAT_THREAD:Ljava/lang/String; = "key_chat_thread"


# instance fields
.field chatThread:Lcom/narvii/model/ChatThread;

.field imgChatBackground:Lcom/narvii/widget/NVImageView;

.field private themeColorDrawable:Landroid/graphics/drawable/Drawable;

.field private threadBgDrawable:Landroid/graphics/drawable/Drawable;

.field vRealTimeBlurView:Lcom/github/mmin18/widget/RealtimeBlurView;

.field vRootView:Landroid/view/View;


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

.method private getThemeBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->themeColorDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->threadBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 7
    return-object v0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 22
    .line 23
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 27
    move-result v1

    .line 28
    .line 29
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 30
    .line 31
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 32
    .line 33
    .line 34
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 35
    move-result v0

    .line 36
    .line 37
    const-string v2, "config"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    check-cast v2, Lcom/narvii/config/ConfigService;

    .line 44
    .line 45
    const-string v3, "themePack"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    check-cast v3, Lcom/narvii/theme/ThemePackService;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 55
    move-result v2

    .line 56
    .line 57
    sget-object v4, Lcom/narvii/theme/ThemePackService$ThemeObject;->BACKGROUND:Lcom/narvii/theme/ThemePackService$ThemeObject;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v2, v4, v1, v0}, Lcom/narvii/theme/ThemePackService;->getDrawable(ILcom/narvii/theme/ThemePackService$ThemeObject;II)Landroid/graphics/drawable/Drawable;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->threadBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 64
    return-object v0
.end method

.method private getThemeColorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->themeColorDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->threadBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 7
    return-object v0

    .line 8
    .line 9
    :cond_0
    const-string v0, "config"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 16
    .line 17
    const-string v1, "themePack"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    check-cast v1, Lcom/narvii/theme/ThemePackService;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 27
    move-result v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lcom/narvii/theme/ThemePackService;->getThemeColor(I)I

    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x3

    .line 33
    .line 34
    new-array v1, v1, [F

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 38
    const/4 v0, 0x2

    .line 39
    .line 40
    aget v2, v1, v0

    .line 41
    .line 42
    .line 43
    const v3, 0x3f59999a    # 0.85f

    .line 44
    mul-float/2addr v2, v3

    .line 45
    .line 46
    aput v2, v1, v0

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 50
    move-result v0

    .line 51
    .line 52
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 56
    .line 57
    iput-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->themeColorDrawable:Landroid/graphics/drawable/Drawable;

    .line 58
    .line 59
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->threadBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 60
    return-object v0
.end method

.method private updateBackground()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v3, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->imgChatBackground:Lcom/narvii/widget/NVImageView;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getBackground()Lcom/narvii/model/Media;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, v0}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->vRootView:Landroid/view/View;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->vRealTimeBlurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->getThemeBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    iget-object v3, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->imgChatBackground:Lcom/narvii/widget/NVImageView;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->vRealTimeBlurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 40
    const/4 v1, 0x4

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->vRootView:Landroid/view/View;

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->getThemeColorDrawable()Landroid/graphics/drawable/Drawable;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->vRealTimeBlurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->vRootView:Landroid/view/View;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    :goto_0
    return-void
.end method


# virtual methods
.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "key_chat_thread"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    :cond_0
    const-class p1, Lcom/narvii/model/ChatThread;

    .line 18
    .line 19
    .line 20
    invoke-static {v1, p1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 26
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d033f

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

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "key_chat_thread"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_0
    return-void
.end method

.method public onThreadChanged(Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->updateBackground()V

    .line 9
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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
    .line 6
    const p2, 0x7f0a01ca

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    iput-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->vRootView:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    const p2, 0x7f0a0286

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    check-cast p2, Lcom/narvii/widget/NVImageView;

    .line 22
    .line 23
    iput-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->imgChatBackground:Lcom/narvii/widget/NVImageView;

    .line 24
    .line 25
    .line 26
    const p2, 0x7f0a028e

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    check-cast p1, Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->vRealTimeBlurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->updateBackground()V

    .line 38
    return-void
.end method
