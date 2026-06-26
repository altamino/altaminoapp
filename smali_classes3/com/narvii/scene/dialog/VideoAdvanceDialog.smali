.class public Lcom/narvii/scene/dialog/VideoAdvanceDialog;
.super Lcom/narvii/app/NVDialog;
.source "VideoAdvanceDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private backgroundImage:Landroid/widget/ImageView;

.field private contentView:Landroid/view/ViewGroup;

.field nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 30
    sget v0, Lcom/narvii/lib/R$style;->CustomDialogWithAnimation:I

    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 31
    iput-object p1, p0, Lcom/narvii/scene/dialog/VideoAdvanceDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 32
    sget p1, Lcom/narvii/mediaeditor/R$layout;->dialog_video_advance:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 33
    sget p1, Lcom/narvii/mediaeditor/R$id;->layout_inshot:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    sget p1, Lcom/narvii/mediaeditor/R$id;->layout_vue:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    sget p1, Lcom/narvii/mediaeditor/R$id;->layout_storyboard:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    sget p1, Lcom/narvii/mediaeditor/R$id;->content_view:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/narvii/scene/dialog/VideoAdvanceDialog;->contentView:Landroid/view/ViewGroup;

    .line 37
    sget p1, Lcom/narvii/mediaeditor/R$id;->blur_bg:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/scene/dialog/VideoAdvanceDialog;->backgroundImage:Landroid/widget/ImageView;

    .line 38
    iget-object p1, p0, Lcom/narvii/scene/dialog/VideoAdvanceDialog;->backgroundImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private launch(Ljava/lang/String;)V
    .locals 1

    .line 74
    invoke-virtual {p0, p1}, Lcom/narvii/scene/dialog/VideoAdvanceDialog;->checkAppExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0, p1}, Lcom/narvii/scene/dialog/VideoAdvanceDialog;->launchApp(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 77
    invoke-virtual {p0, p1, v0}, Lcom/narvii/scene/dialog/VideoAdvanceDialog;->launchStoreDetail(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private sendClickVideoAppLog(Ljava/lang/String;)V
    .locals 2

    .line 59
    invoke-static {p0}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "Tools"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->actClick()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "toolName"

    invoke-virtual {v0, v1, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->toThirdParty()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method


# virtual methods
.method public checkAppExist(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 93
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 95
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "AdvancedEditingTools"

    return-object v0
.end method

.method public launchApp(Ljava/lang/String;)V
    .locals 1

    .line 82
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 84
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/high16 v0, 0x10000000

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 86
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public launchStoreDetail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 102
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 106
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 107
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const/high16 p1, 0x10000000

    .line 109
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 44
    sget v0, Lcom/narvii/mediaeditor/R$id;->layout_inshot:I

    if-ne p1, v0, :cond_0

    const-string p1, "InShot"

    .line 45
    invoke-direct {p0, p1}, Lcom/narvii/scene/dialog/VideoAdvanceDialog;->sendClickVideoAppLog(Ljava/lang/String;)V

    const-string p1, "com.camerasideas.instashot"

    .line 46
    invoke-direct {p0, p1}, Lcom/narvii/scene/dialog/VideoAdvanceDialog;->launch(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_0
    sget v0, Lcom/narvii/mediaeditor/R$id;->layout_vue:I

    if-ne p1, v0, :cond_1

    const-string p1, "Vue"

    .line 48
    invoke-direct {p0, p1}, Lcom/narvii/scene/dialog/VideoAdvanceDialog;->sendClickVideoAppLog(Ljava/lang/String;)V

    const-string p1, "video.vue.android"

    .line 49
    invoke-direct {p0, p1}, Lcom/narvii/scene/dialog/VideoAdvanceDialog;->launch(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_1
    sget v0, Lcom/narvii/mediaeditor/R$id;->layout_storyboard:I

    if-ne p1, v0, :cond_2

    const-string p1, "Storyboard"

    .line 51
    invoke-direct {p0, p1}, Lcom/narvii/scene/dialog/VideoAdvanceDialog;->sendClickVideoAppLog(Ljava/lang/String;)V

    .line 52
    new-instance p1, Lcom/narvii/util/PackageUtils;

    iget-object v0, p0, Lcom/narvii/scene/dialog/VideoAdvanceDialog;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/narvii/util/PackageUtils;->getStoryboardName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/scene/dialog/VideoAdvanceDialog;->launch(Ljava/lang/String;)V

    .line 54
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method

.method protected sendPageViewEventToThirdParty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public show()V
    .locals 3

    .line 64
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 65
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xc8

    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 67
    iget-object v1, p0, Lcom/narvii/scene/dialog/VideoAdvanceDialog;->backgroundImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/dialog/VideoAdvanceDialog;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$anim;->slide_up:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
