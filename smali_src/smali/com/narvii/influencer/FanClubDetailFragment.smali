.class public Lcom/narvii/influencer/FanClubDetailFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;,
        Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method

.method private changeAutoRenewRequest(Z)V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    const-string v2, "isAutoRenew"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    .line 24
    .line 25
    iget p1, p1, Lcom/narvii/influencer/FanClub;->ndcId:I

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    const-string v4, "influencer/"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    iget-object v4, p0, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    .line 50
    .line 51
    iget-object v4, v4, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v4, "/config"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v3

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    const-string v3, "paymentContext"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    const-string v2, "api"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    move-result-object v2

    .line 84
    .line 85
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 86
    .line 87
    new-instance v3, Lcom/narvii/influencer/FanClubDetailFragment$3;

    .line 88
    .line 89
    const-class v4, Lcom/narvii/influencer/FanClubResponse;

    .line 90
    .line 91
    .line 92
    invoke-direct {v3, p0, v4, p1, v0}, Lcom/narvii/influencer/FanClubDetailFragment$3;-><init>(Lcom/narvii/influencer/FanClubDetailFragment;Ljava/lang/Class;ILcom/narvii/util/dialog/ProgressDialog;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 96
    return-void
.end method

.method private deleteWhenClosed()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    const v1, 0x7f120732

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    .line 16
    .line 17
    new-instance v1, Lcom/narvii/influencer/FanClubDetailFragment$1;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/narvii/influencer/FanClubDetailFragment$1;-><init>(Lcom/narvii/influencer/FanClubDetailFragment;)V

    .line 21
    .line 22
    .line 23
    const v2, 0x7f1201e2

    .line 24
    const/4 v3, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2, v3, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 28
    .line 29
    new-instance v1, Lcom/narvii/influencer/FanClubDetailFragment$2;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/narvii/influencer/FanClubDetailFragment$2;-><init>(Lcom/narvii/influencer/FanClubDetailFragment;)V

    .line 33
    .line 34
    .line 35
    const v2, 0x7f1212a7

    .line 36
    .line 37
    const/16 v3, 0x8

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2, v3, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 44
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/influencer/FanClubDetailFragment;)Ljava/text/DateFormat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/influencer/FanClubDetailFragment;->dateFmt:Ljava/text/DateFormat;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/influencer/FanClubDetailFragment;)Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/influencer/FanClubDetailFragment;->renewAdapter:Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;

    return-object p0
.end method

.method static bridge synthetic v(Lcom/narvii/influencer/FanClubDetailFragment;Ljava/text/DateFormat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment;->dateFmt:Ljava/text/DateFormat;

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/influencer/FanClubDetailFragment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/influencer/FanClubDetailFragment;->changeAutoRenewRequest(Z)V

    return-void
.end method

.method static bridge synthetic x(Lcom/narvii/influencer/FanClubDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/influencer/FanClubDetailFragment;->deleteWhenClosed()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 1

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, p0}, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;-><init>(Lcom/narvii/influencer/FanClubDetailFragment;Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/influencer/FanClubDetailFragment;->fanClubHeaderAdapter:Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 16
    .line 17
    new-instance v0, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p0, p0}, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;-><init>(Lcom/narvii/influencer/FanClubDetailFragment;Lcom/narvii/app/NVContext;)V

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/influencer/FanClubDetailFragment;->renewAdapter:Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 26
    .line 27
    new-instance v0, Lcom/narvii/list/DividerAdapter;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 34
    return-object v0
.end method

.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    .line 4
    .line 5
    const v1, -0xd25b19

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 9
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    const-class v0, Lcom/narvii/influencer/FanClub;

    .line 10
    .line 11
    const-string v1, "fanClub"

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Lcom/narvii/influencer/FanClub;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    check-cast p1, Lcom/narvii/influencer/FanClub;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    .line 39
    .line 40
    :goto_0
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    .line 41
    .line 42
    if-nez p1, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 46
    return-void

    .line 47
    .line 48
    :cond_1
    iget p1, p1, Lcom/narvii/influencer/FanClub;->ndcId:I

    .line 49
    const/4 v0, -0x1

    .line 50
    .line 51
    if-ne p1, v0, :cond_2

    .line 52
    .line 53
    const-string p1, "config"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 65
    move-result p1

    .line 66
    .line 67
    iput p1, v0, Lcom/narvii/influencer/FanClub;->ndcId:I

    .line 68
    .line 69
    :cond_2
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    .line 70
    .line 71
    iget p1, p1, Lcom/narvii/influencer/FanClub;->ndcId:I

    .line 72
    .line 73
    if-gtz p1, :cond_3

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 77
    :cond_3
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2}, Lcom/narvii/util/ViewUtils;->setTopBottomPrefColor(Landroid/widget/ListView;Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 3
    .line 4
    const-string/jumbo v1, "update"

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 9
    .line 10
    instance-of v1, v0, Lcom/narvii/influencer/FanClub;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    .line 15
    .line 16
    iget v2, v1, Lcom/narvii/influencer/FanClub;->ndcId:I

    .line 17
    move-object v3, v0

    .line 18
    .line 19
    check-cast v3, Lcom/narvii/influencer/FanClub;

    .line 20
    .line 21
    iget v3, v3, Lcom/narvii/influencer/FanClub;->ndcId:I

    .line 22
    .line 23
    if-ne v2, v3, :cond_0

    .line 24
    .line 25
    iget-object v1, v1, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    .line 26
    .line 27
    check-cast v0, Lcom/narvii/influencer/FanClub;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Lcom/narvii/influencer/FanClub;

    .line 40
    .line 41
    iput-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    .line 42
    .line 43
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment;->renewAdapter:Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;

    .line 44
    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    .line 49
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "fanClub"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method
