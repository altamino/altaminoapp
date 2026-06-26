.class public Lcom/narvii/community/JoinCommunityDialog;
.super Lcom/narvii/widget/ACMAlertDialog;
.source "JoinCommunityDialog.java"


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

    .line 30
    invoke-direct {p0, p1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0f075b

    .line 31
    invoke-virtual {p0, p1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 32
    new-instance p1, Lcom/narvii/community/JoinCommunityDialog$1;

    invoke-direct {p1, p0}, Lcom/narvii/community/JoinCommunityDialog$1;-><init>(Lcom/narvii/community/JoinCommunityDialog;)V

    const v0, 0x7f0f0193

    invoke-virtual {p0, v0, p1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 41
    new-instance p1, Lcom/narvii/community/JoinCommunityDialog$2;

    invoke-direct {p1, p0}, Lcom/narvii/community/JoinCommunityDialog$2;-><init>(Lcom/narvii/community/JoinCommunityDialog;)V

    const v0, 0x7f0f0aa0

    invoke-virtual {p0, v0, p1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;ILcom/narvii/model/Community;)V
    .locals 0

    .line 25
    invoke-static {p0, p1, p2}, Lcom/narvii/community/JoinCommunityDialog;->tryJoinPrivateCommunity(Landroid/content/Context;ILcom/narvii/model/Community;)V

    return-void
.end method

.method public static join(Lcom/narvii/app/NVContext;Lcom/narvii/model/Community;)Landroid/app/Dialog;
    .locals 2

    .line 69
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 70
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

    .line 62
    new-instance p1, Lcom/narvii/community/JoinCommunityDialog;

    invoke-direct {p1, p0}, Lcom/narvii/community/JoinCommunityDialog;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {p1, p2}, Lcom/narvii/community/JoinCommunityDialog;->setCallback(Lcom/narvii/util/Callback;)V

    .line 64
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-object p1
.end method

.method public static showInnerJoinDialog(Lcom/narvii/app/NVContext;)Landroid/app/Dialog;
    .locals 1

    const-string v0, "config"

    .line 100
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 101
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/narvii/community/JoinCommunityDialog;->showInnerJoinDialog(Lcom/narvii/app/NVContext;I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public static showInnerJoinDialog(Lcom/narvii/app/NVContext;I)Landroid/app/Dialog;
    .locals 3

    const-string v0, "community"

    .line 106
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/CommunityService;

    .line 107
    invoke-virtual {v0, p1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v0

    .line 108
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 109
    new-instance v2, Lcom/narvii/community/JoinCommunityDialog$4;

    invoke-direct {v2, v0, p0, p1, v1}, Lcom/narvii/community/JoinCommunityDialog$4;-><init>(Lcom/narvii/model/Community;Lcom/narvii/app/NVContext;ILandroid/content/Context;)V

    invoke-static {v1, v0, v2}, Lcom/narvii/community/JoinCommunityDialog;->join(Landroid/content/Context;Lcom/narvii/model/Community;Lcom/narvii/util/Callback;)Lcom/narvii/community/JoinCommunityDialog;

    move-result-object p0

    return-object p0
.end method

.method private static tryJoinPrivateCommunity(Landroid/content/Context;ILcom/narvii/model/Community;)V
    .locals 2

    .line 125
    const-class v0, Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    .line 126
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "prefetch"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "joinOnly"

    const/4 p2, 0x1

    .line 128
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "JoinCommunityDialog"

    return-object v0
.end method

.method public setCallback(Lcom/narvii/util/Callback;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/narvii/community/JoinCommunityDialog;->callback:Lcom/narvii/util/Callback;

    return-void
.end method
