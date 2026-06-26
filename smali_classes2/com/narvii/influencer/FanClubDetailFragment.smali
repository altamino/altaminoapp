.class public Lcom/narvii/influencer/FanClubDetailFragment;
.super Lcom/narvii/list/NVListFragment;
.source "FanClubDetailFragment.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;,
        Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;
    }
.end annotation


# instance fields
.field private dateFmt:Ljava/text/DateFormat;

.field fanClub:Lcom/narvii/influencer/FanClub;

.field private fanClubHeaderAdapter:Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;

.field private renewAdapter:Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/influencer/FanClubDetailFragment;)Ljava/text/DateFormat;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/narvii/influencer/FanClubDetailFragment;->dateFmt:Ljava/text/DateFormat;

    return-object p0
.end method

.method static synthetic access$002(Lcom/narvii/influencer/FanClubDetailFragment;Ljava/text/DateFormat;)Ljava/text/DateFormat;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment;->dateFmt:Ljava/text/DateFormat;

    return-object p1
.end method

.method static synthetic access$100(Lcom/narvii/influencer/FanClubDetailFragment;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/narvii/influencer/FanClubDetailFragment;->deleteWhenClosed()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/influencer/FanClubDetailFragment;)Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/narvii/influencer/FanClubDetailFragment;->renewAdapter:Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/influencer/FanClubDetailFragment;Z)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/narvii/influencer/FanClubDetailFragment;->changeAutoRenewRequest(Z)V

    return-void
.end method

.method private changeAutoRenewRequest(Z)V
    .locals 5

    .line 270
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 271
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 272
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    const-string v2, "isAutoRenew"

    .line 273
    invoke-virtual {v1, v2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 274
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    iget p1, p1, Lcom/narvii/influencer/FanClub;->ndcId:I

    .line 275
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "influencer/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    iget-object v4, v4, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/config"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string v3, "paymentContext"

    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    const-string v2, "api"

    .line 276
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 277
    new-instance v3, Lcom/narvii/influencer/FanClubDetailFragment$3;

    const-class v4, Lcom/narvii/influencer/FanClubResponse;

    invoke-direct {v3, p0, v4, p1, v0}, Lcom/narvii/influencer/FanClubDetailFragment$3;-><init>(Lcom/narvii/influencer/FanClubDetailFragment;Ljava/lang/Class;ILcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private deleteWhenClosed()V
    .locals 4

    .line 235
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0684

    .line 236
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    .line 237
    new-instance v1, Lcom/narvii/influencer/FanClubDetailFragment$1;

    invoke-direct {v1, p0}, Lcom/narvii/influencer/FanClubDetailFragment$1;-><init>(Lcom/narvii/influencer/FanClubDetailFragment;)V

    const v2, 0x7f0f0193

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 245
    new-instance v1, Lcom/narvii/influencer/FanClubDetailFragment$2;

    invoke-direct {v1, p0}, Lcom/narvii/influencer/FanClubDetailFragment$2;-><init>(Lcom/narvii/influencer/FanClubDetailFragment;)V

    const v2, 0x7f0f119f

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 266
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 1

    .line 105
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 106
    new-instance v0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;-><init>(Lcom/narvii/influencer/FanClubDetailFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/influencer/FanClubDetailFragment;->fanClubHeaderAdapter:Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;

    .line 107
    iget-object v0, p0, Lcom/narvii/influencer/FanClubDetailFragment;->fanClubHeaderAdapter:Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    new-instance v0, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;-><init>(Lcom/narvii/influencer/FanClubDetailFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/influencer/FanClubDetailFragment;->renewAdapter:Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;

    .line 109
    iget-object v0, p0, Lcom/narvii/influencer/FanClubDetailFragment;->renewAdapter:Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    new-instance v0, Lcom/narvii/list/DividerAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 111
    invoke-virtual {v0, p1}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object v0
.end method

.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 86
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xd25b19

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 62
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "fanClub"

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/influencer/FanClub;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/influencer/FanClub;

    iput-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/influencer/FanClub;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/influencer/FanClub;

    iput-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    .line 69
    :goto_0
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    if-nez p1, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void

    .line 73
    :cond_1
    iget p1, p1, Lcom/narvii/influencer/FanClub;->ndcId:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    const-string p1, "config"

    .line 74
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 75
    iget-object v0, p0, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    iput p1, v0, Lcom/narvii/influencer/FanClub;->ndcId:I

    .line 78
    :cond_2
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    iget p1, p1, Lcom/narvii/influencer/FanClub;->ndcId:I

    if-gtz p1, :cond_3

    .line 79
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_3
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 97
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 98
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    const/4 p2, 0x0

    .line 99
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 100
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/util/ViewUtils;->setTopBottomPrefColor(Landroid/widget/ListView;Landroid/content/Context;)V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 4

    .line 117
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string/jumbo v1, "update"

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/influencer/FanClub;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    iget v2, v1, Lcom/narvii/influencer/FanClub;->ndcId:I

    move-object v3, v0

    check-cast v3, Lcom/narvii/influencer/FanClub;

    iget v3, v3, Lcom/narvii/influencer/FanClub;->ndcId:I

    if-ne v2, v3, :cond_0

    iget-object v1, v1, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    check-cast v0, Lcom/narvii/influencer/FanClub;

    iget-object v0, v0, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    .line 119
    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/narvii/influencer/FanClub;

    iput-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    .line 121
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment;->renewAdapter:Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 91
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 92
    iget-object v0, p0, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fanClub"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
