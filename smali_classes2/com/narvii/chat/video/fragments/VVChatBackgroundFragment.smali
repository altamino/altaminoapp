.class public Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;
.super Lcom/narvii/app/NVFragment;
.source "VVChatBackgroundFragment.java"

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

    .line 27
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    return-void
.end method

.method private getThemeBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 92
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->themeColorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->threadBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 97
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 98
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const-string v2, "config"

    .line 99
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/config/ConfigService;

    const-string v3, "themePack"

    .line 100
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/theme/ThemePackService;

    .line 101
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v2

    sget-object v4, Lcom/narvii/theme/ThemePackService$ThemeObject;->BACKGROUND:Lcom/narvii/theme/ThemePackService$ThemeObject;

    invoke-virtual {v3, v2, v4, v1, v0}, Lcom/narvii/theme/ThemePackService;->getDrawable(ILcom/narvii/theme/ThemePackService$ThemeObject;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->threadBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 102
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->threadBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getThemeColorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->themeColorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->threadBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_0
    const-string v0, "config"

    .line 110
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    const-string v1, "themePack"

    .line 111
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/theme/ThemePackService;

    .line 112
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/narvii/theme/ThemePackService;->getThemeColor(I)I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 114
    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v0, 0x2

    .line 115
    aget v2, v1, v0

    const v3, 0x3f59999a    # 0.85f

    mul-float v2, v2, v3

    aput v2, v1, v0

    .line 116
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 117
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->themeColorDrawable:Landroid/graphics/drawable/Drawable;

    .line 118
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->threadBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private updateBackground()V
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->chatThread:Lcom/narvii/model/ChatThread;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 74
    iget-object v3, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->imgChatBackground:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getBackground()Lcom/narvii/model/Media;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 75
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->vRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->vRealTimeBlurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->getThemeBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 79
    iget-object v3, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->imgChatBackground:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v3, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->vRealTimeBlurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->vRootView:Landroid/view/View;

    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->getThemeColorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->vRealTimeBlurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->vRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 41
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "key_chat_thread"

    .line 42
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    :cond_0
    const-class p1, Lcom/narvii/model/ChatThread;

    invoke-static {v1, p1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->chatThread:Lcom/narvii/model/ChatThread;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b030c

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 57
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 58
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->chatThread:Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_0

    .line 59
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_chat_thread"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onThreadChanged(Lcom/narvii/model/ChatThread;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 126
    :cond_0
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 127
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->updateBackground()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 65
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f09012e

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->vRootView:Landroid/view/View;

    const p2, 0x7f0901cf

    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVImageView;

    iput-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->imgChatBackground:Lcom/narvii/widget/NVImageView;

    const p2, 0x7f0901d7

    .line 68
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/github/mmin18/widget/RealtimeBlurView;

    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->vRealTimeBlurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 69
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VVChatBackgroundFragment;->updateBackground()V

    return-void
.end method
