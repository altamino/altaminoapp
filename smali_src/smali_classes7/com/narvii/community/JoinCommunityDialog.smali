.class public Lcom/narvii/community/JoinCommunityDialog;
.super Lcom/narvii/widget/ACMAlertDialog;
.source "SourceFile"


# instance fields
.field public callback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f120808

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 10
    .line 11
    new-instance p1, Lcom/narvii/community/JoinCommunityDialog$1;

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, p0}, Lcom/narvii/community/JoinCommunityDialog$1;-><init>(Lcom/narvii/community/JoinCommunityDialog;)V

    .line 15
    .line 16
    .line 17
    const v0, 0x7f1201e2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0, p1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 21
    .line 22
    new-instance p1, Lcom/narvii/community/JoinCommunityDialog$2;

    .line 23
    .line 24
    .line 25
    invoke-direct {p1, p0}, Lcom/narvii/community/JoinCommunityDialog$2;-><init>(Lcom/narvii/community/JoinCommunityDialog;)V

    .line 26
    .line 27
    .line 28
    const v0, 0x7f120b53

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0, p1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 32
    return-void
.end method

.method static bridge synthetic a(Landroid/content/Context;ILcom/narvii/model/Community;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/community/JoinCommunityDialog;->tryJoinPrivateCommunity(Landroid/content/Context;ILcom/narvii/model/Community;)V

    return-void
.end method

.method public static join(Lcom/narvii/app/NVContext;Lcom/narvii/model/Community;)Landroid/app/Dialog;
    .locals 2

    .line 4
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/narvii/community/JoinCommunityDialog$3;

    invoke-direct {v1, p1, p0, v0}, Lcom/narvii/community/JoinCommunityDialog$3;-><init>(Lcom/narvii/model/Community;Lcom/narvii/app/NVContext;Landroid/content/Context;)V

    invoke-static {v0, p1, v1}, Lcom/narvii/community/JoinCommunityDialog;->join(Landroid/content/Context;Lcom/narvii/model/Community;Lcom/narvii/util/Callback;)Lcom/narvii/community/JoinCommunityDialog;

    move-result-object p0

    return-object p0
.end method

.method public static join(Landroid/content/Context;Lcom/narvii/model/Community;Lcom/narvii/util/Callback;)Lcom/narvii/community/JoinCommunityDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/narvii/model/Community;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/narvii/community/JoinCommunityDialog;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/narvii/community/JoinCommunityDialog;

    invoke-direct {p1, p0}, Lcom/narvii/community/JoinCommunityDialog;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p1, p2}, Lcom/narvii/community/JoinCommunityDialog;->setCallback(Lcom/narvii/util/Callback;)V

    .line 3
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-object p1
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static showInnerJoinDialog(Lcom/narvii/app/NVContext;)Landroid/app/Dialog;
    .locals 1

    const-string v0, "config"

    .line 1
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 2
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/narvii/community/JoinCommunityDialog;->showInnerJoinDialog(Lcom/narvii/app/NVContext;I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public static showInnerJoinDialog(Lcom/narvii/app/NVContext;I)Landroid/app/Dialog;
    .locals 3

    const-string v0, "community"

    .line 3
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/CommunityService;

    .line 4
    invoke-virtual {v0, p1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v0

    .line 5
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/narvii/community/JoinCommunityDialog$4;

    invoke-direct {v2, v0, p0, p1, v1}, Lcom/narvii/community/JoinCommunityDialog$4;-><init>(Lcom/narvii/model/Community;Lcom/narvii/app/NVContext;ILandroid/content/Context;)V

    invoke-static {v1, v0, v2}, Lcom/narvii/community/JoinCommunityDialog;->join(Landroid/content/Context;Lcom/narvii/model/Community;Lcom/narvii/util/Callback;)Lcom/narvii/community/JoinCommunityDialog;

    move-result-object p0

    return-object p0
.end method

.method private static tryJoinPrivateCommunity(Landroid/content/Context;ILcom/narvii/model/Community;)V
    .locals 2

    .line 1
    .line 2
    const-class v0, Lcom/narvii/master/CommunityDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "id"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 12
    .line 13
    const-string p1, "prefetch"

    .line 14
    .line 15
    .line 16
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    const-string p1, "joinOnly"

    .line 23
    const/4 p2, 0x1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    invoke-static {p0, v0}, Lcom/narvii/community/JoinCommunityDialog;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "join_community_dialog"

    return-object v0
.end method

.method public setCallback(Lcom/narvii/util/Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/community/JoinCommunityDialog;->callback:Lcom/narvii/util/Callback;

    return-void
.end method
