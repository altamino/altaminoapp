.class public Lcom/narvii/story/SceneListFragment;
.super Lcom/narvii/scene/BaseSceneListFragment;
.source "SceneListFragment.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# instance fields
.field private configService:Lcom/narvii/config/ConfigService;

.field private doneButton:Landroid/widget/Button;

.field private final doneListener:Landroid/view/View$OnClickListener;

.field private sceneDraftHelper:Lcom/narvii/scene/service/SceneDraftHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;-><init>()V

    .line 40
    new-instance v0, Lcom/narvii/story/-$$Lambda$SceneListFragment$qspdeRm423FZNSAHFg9mY39-ShA;

    invoke-direct {v0, p0}, Lcom/narvii/story/-$$Lambda$SceneListFragment$qspdeRm423FZNSAHFg9mY39-ShA;-><init>(Lcom/narvii/story/SceneListFragment;)V

    iput-object v0, p0, Lcom/narvii/story/SceneListFragment;->doneListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private saveModify()V
    .locals 3

    .line 52
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 54
    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sceneList"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 55
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 56
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/SceneListFragment;->sceneDraftHelper:Lcom/narvii/scene/service/SceneDraftHelper;

    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    new-instance v2, Lcom/narvii/story/-$$Lambda$SceneListFragment$F5ExiayVE-K5GPgq_H9cf7zBIsk;

    invoke-direct {v2, p0}, Lcom/narvii/story/-$$Lambda$SceneListFragment$F5ExiayVE-K5GPgq_H9cf7zBIsk;-><init>(Lcom/narvii/story/SceneListFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/scene/service/SceneDraftHelper;->correctCoverImage(Lcom/narvii/scene/model/SceneDraft;Lkotlin/jvm/functions/Function1;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected checkActivation()V
    .locals 3

    .line 142
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0dc9

    .line 143
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f0d7d

    .line 144
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 145
    sget-object v1, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 146
    new-instance v1, Lcom/narvii/story/-$$Lambda$SceneListFragment$8aWrRIO_l_sUanAG7II_wZaShJc;

    invoke-direct {v1, p0}, Lcom/narvii/story/-$$Lambda$SceneListFragment$8aWrRIO_l_sUanAG7II_wZaShJc;-><init>(Lcom/narvii/story/SceneListFragment;)V

    const v2, 0x7f0f0d7c

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 153
    new-instance v1, Lcom/narvii/story/-$$Lambda$SceneListFragment$HnECCGbBlWi1DwUQkRfRMPhaTFw;

    invoke-direct {v1, p0}, Lcom/narvii/story/-$$Lambda$SceneListFragment$HnECCGbBlWi1DwUQkRfRMPhaTFw;-><init>(Lcom/narvii/story/SceneListFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 158
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method protected eligibleFail(Ljava/lang/String;)V
    .locals 2

    .line 130
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 131
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 132
    sget-object p1, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    const v1, 0x7f0f0274

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 133
    new-instance p1, Lcom/narvii/story/-$$Lambda$SceneListFragment$XDfRcwqh_7sEi-g0P6Hg_wwCSNo;

    invoke-direct {p1, p0}, Lcom/narvii/story/-$$Lambda$SceneListFragment$XDfRcwqh_7sEi-g0P6Hg_wwCSNo;-><init>(Lcom/narvii/story/SceneListFragment;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 138
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public synthetic lambda$checkActivation$3$SceneListFragment(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 148
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 149
    new-instance p1, Landroid/content/Intent;

    const-string p2, "ndc://activation"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 150
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 151
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public synthetic lambda$checkActivation$4$SceneListFragment(Landroid/content/DialogInterface;)V
    .locals 4

    .line 154
    new-instance p1, Lcom/narvii/notification/Notification;

    new-instance v0, Lcom/narvii/scene/notification/StoryCheckEligible;

    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->draftId:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/narvii/scene/notification/StoryCheckEligible;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "update"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 155
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 156
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public synthetic lambda$eligibleFail$2$SceneListFragment(Landroid/content/DialogInterface;)V
    .locals 4

    .line 134
    new-instance p1, Lcom/narvii/notification/Notification;

    new-instance v0, Lcom/narvii/scene/notification/StoryCheckEligible;

    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->draftId:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/narvii/scene/notification/StoryCheckEligible;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "update"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 135
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 136
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public synthetic lambda$new$0$SceneListFragment(Landroid/view/View;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/narvii/story/SceneListFragment;->saveModify()V

    return-void
.end method

.method public synthetic lambda$saveModify$1$SceneListFragment(Lcom/narvii/scene/model/SceneDraft;)Lkotlin/Unit;
    .locals 2

    .line 59
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 60
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "sceneDraft"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 62
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 103
    invoke-super {p0, p1}, Lcom/narvii/scene/BaseSceneListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f080264

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Lcom/narvii/scene/BaseSceneListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "config"

    .line 95
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    iput-object p1, p0, Lcom/narvii/story/SceneListFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 96
    new-instance p1, Lcom/narvii/scene/service/SceneDraftHelper;

    invoke-direct {p1, p0}, Lcom/narvii/scene/service/SceneDraftHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/story/SceneListFragment;->sceneDraftHelper:Lcom/narvii/scene/service/SceneDraftHelper;

    const/4 p1, 0x1

    .line 97
    invoke-static {p0, p1}, Lcom/narvii/util/statusbar/StatusBarUtils;->setSystemUiFlagLightStatusBar(Lcom/narvii/app/NVContext;Z)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .line 70
    invoke-super {p0, p1, p2}, Lcom/narvii/scene/BaseSceneListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 71
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b002b

    const/4 v1, 0x0

    .line 72
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090051

    .line 73
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/narvii/story/SceneListFragment;->doneButton:Landroid/widget/Button;

    .line 75
    iget-object v0, p0, Lcom/narvii/story/SceneListFragment;->doneButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 76
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v2, 0x41200000    # 10.0f

    const/16 v3, 0x11

    if-lt v1, v3, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 81
    :goto_0
    iget-object v1, p0, Lcom/narvii/story/SceneListFragment;->doneButton:Landroid/widget/Button;

    const v2, 0x7f0f03aa

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 82
    iget-object v1, p0, Lcom/narvii/story/SceneListFragment;->doneButton:Landroid/widget/Button;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 83
    iget-object v1, p0, Lcom/narvii/story/SceneListFragment;->doneButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/narvii/story/SceneListFragment;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v2

    invoke-static {p0, v2}, Lcom/narvii/scene/helper/SceneUtils;->getStoryThemeColor(Lcom/narvii/app/NVContext;I)I

    move-result v2

    invoke-static {v2}, Lcom/narvii/app/NVActivity;->getRightButtonBackground(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 84
    iget-object v1, p0, Lcom/narvii/story/SceneListFragment;->doneButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iget-object v0, p0, Lcom/narvii/story/SceneListFragment;->doneButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/narvii/story/SceneListFragment;->doneListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0df3

    const/4 v1, 0x0

    .line 87
    invoke-interface {p1, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 88
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 89
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 109
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/scene/notification/StoryCheckEligible;

    if-eqz v1, :cond_2

    .line 110
    check-cast v0, Lcom/narvii/scene/notification/StoryCheckEligible;

    .line 111
    invoke-virtual {v0}, Lcom/narvii/scene/notification/StoryCheckEligible;->id()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/scene/BaseSceneListFragment;->draftId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 114
    :cond_0
    iget v1, v0, Lcom/narvii/scene/notification/StoryCheckEligible;->action:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/narvii/story/SceneListFragment;->checkActivation()V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 117
    iget-object v0, v0, Lcom/narvii/scene/notification/StoryCheckEligible;->message:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/narvii/story/SceneListFragment;->eligibleFail(Ljava/lang/String;)V

    .line 120
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/narvii/scene/BaseSceneListFragment;->onNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method protected useRoundCornerCover()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
