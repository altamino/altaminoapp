.class public Lcom/narvii/story/widgets/GuideViewHelper;
.super Ljava/lang/Object;
.source "GuideViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;,
        Lcom/narvii/story/widgets/GuideViewHelper$OnGuideEventListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/narvii/story/widgets/GuideViewHelper$OnGuideEventListener;

.field private nvContext:Lcom/narvii/app/NVContext;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/narvii/story/widgets/GuideViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "prefs"

    .line 34
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/narvii/story/widgets/GuideViewHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/story/widgets/GuideViewHelper;)Lcom/narvii/story/widgets/GuideViewHelper$OnGuideEventListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/narvii/story/widgets/GuideViewHelper;->listener:Lcom/narvii/story/widgets/GuideViewHelper$OnGuideEventListener;

    return-object p0
.end method

.method private findCurrentGuideView(Landroid/app/Activity;)Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;
    .locals 1

    .line 126
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 127
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const v0, 0x7f0904ed

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 129
    instance-of v0, p1, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;

    if-eqz v0, :cond_0

    .line 130
    check-cast p1, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private makeGuideView(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;",
            ">(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 73
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 75
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    const v2, 0x7f0904ed

    .line 76
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 78
    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v3, 0x1

    :try_start_0
    new-array v4, v3, [Ljava/lang/Class;

    .line 82
    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    .line 83
    invoke-virtual {p2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;

    .line 85
    iput-object p0, p1, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;->guideViewHelper:Lcom/narvii/story/widgets/GuideViewHelper;

    .line 87
    iput-object p3, p1, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;->info:Landroid/os/Bundle;

    .line 88
    invoke-virtual {p1}, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;->init()V

    .line 90
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 91
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 92
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "constructor target View fail: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-object v0
.end method


# virtual methods
.method public checkAndShowGuideView(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;",
            ">(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/story/widgets/GuideViewHelper;->checkAndShowGuideView(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;

    move-result-object p1

    return-object p1
.end method

.method public checkAndShowGuideView(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;",
            ">(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p2}, Lcom/narvii/story/widgets/GuideViewHelper;->hasGuideShown(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 43
    invoke-virtual {p0, p1, p3, p4}, Lcom/narvii/story/widgets/GuideViewHelper;->showGuideViewWithoutCheck(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasGuideShown(Ljava/lang/String;)Z
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/narvii/story/widgets/GuideViewHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public hideGuideViewIfExist(Landroid/app/Activity;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 118
    invoke-direct {p0, p1}, Lcom/narvii/story/widgets/GuideViewHelper;->findCurrentGuideView(Landroid/app/Activity;)Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p1, p2}, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;->hideGuide(Z)V

    :cond_0
    return-void
.end method

.method public markGuideShown(Ljava/lang/String;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/narvii/story/widgets/GuideViewHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public pressBackKey(Landroid/app/Activity;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 109
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/story/widgets/GuideViewHelper;->findCurrentGuideView(Landroid/app/Activity;)Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 111
    invoke-virtual {p1}, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;->onBackPressed()Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public setOnGuideEventListener(Lcom/narvii/story/widgets/GuideViewHelper$OnGuideEventListener;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/narvii/story/widgets/GuideViewHelper;->listener:Lcom/narvii/story/widgets/GuideViewHelper$OnGuideEventListener;

    return-void
.end method

.method public showGuideViewWithoutCheck(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;",
            ">(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/story/widgets/GuideViewHelper;->makeGuideView(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p1}, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;->showGuide()V

    :cond_0
    return-object p1
.end method
