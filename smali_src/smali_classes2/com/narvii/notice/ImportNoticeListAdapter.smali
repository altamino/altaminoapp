.class public Lcom/narvii/notice/ImportNoticeListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/account/notice/AccountNotice;",
        "Lcom/narvii/account/notice/AccountNoticeListResponse;",
        ">;",
        "Lcom/narvii/notification/NotificationListener;"
    }
.end annotation


# static fields
.field private static final TYPE_COPYRIGHT:I = 0x3

.field private static final TYPE_PROP:I = 0x1

.field private static final TYPE_SYSTEM_CUSTOM:I = 0x5

.field private static final TYPE_SYSTEM_MESSAGE:I = 0x4

.field private static final TYPE_UNKNOWN:I = 0x2

.field private static final TYPE_WARNING_STRIKE:I


# instance fields
.field account:Lcom/narvii/account/AccountService;

.field final communityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field formatter:Lcom/narvii/util/DateTimeFormatter;

.field public isImportantNoticeLoaded:Z

.field ndcId:I


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/notice/ImportNoticeListAdapter;->communityMap:Ljava/util/HashMap;

    .line 11
    .line 12
    iput p2, p0, Lcom/narvii/notice/ImportNoticeListAdapter;->ndcId:I

    .line 13
    .line 14
    const-string p2, "account"

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/notice/ImportNoticeListAdapter;->account:Lcom/narvii/account/AccountService;

    .line 23
    .line 24
    new-instance p1, Lcom/narvii/util/DateTimeFormatter;

    .line 25
    .line 26
    .line 27
    invoke-direct {p1}, Lcom/narvii/util/DateTimeFormatter;-><init>()V

    .line 28
    .line 29
    iput-object p1, p0, Lcom/narvii/notice/ImportNoticeListAdapter;->formatter:Lcom/narvii/util/DateTimeFormatter;

    .line 30
    return-void
.end method

.method private configCommunityLayout(Lcom/narvii/account/notice/AccountNotice;Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/notice/ImportNoticeListAdapter;->communityMap:Ljava/util/HashMap;

    .line 3
    .line 4
    iget v1, p1, Lcom/narvii/account/notice/AccountNotice;->cid:I

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/model/Community;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/account/notice/AccountNotice;->isGlobal()Z

    .line 18
    move-result p1

    .line 19
    .line 20
    .line 21
    const v1, 0x7f0a0366

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object p2

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    const/16 p1, 0x8

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move p1, v1

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    .line 40
    const p1, 0x7f0a036b

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v1}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 50
    .line 51
    iget-object v1, v0, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    const p1, 0x7f0a037c

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    check-cast p1, Landroid/widget/TextView;

    .line 64
    .line 65
    iget-object p2, v0, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :cond_1
    return-void
.end method

.method private configOperator(Lcom/narvii/account/notice/AccountNotice;Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/notice/ImportNoticeListAdapter;->communityMap:Ljava/util/HashMap;

    .line 3
    .line 4
    iget v1, p1, Lcom/narvii/account/notice/AccountNotice;->cid:I

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/model/Community;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/narvii/account/notice/AccountNotice;->operator:Lcom/narvii/model/User;

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    .line 21
    const v1, 0x7f0a0f36

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    check-cast v1, Lcom/narvii/widget/UserAvatarLayout;

    .line 28
    .line 29
    new-instance v2, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    .line 36
    invoke-static {v3}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 37
    move-result-object v3

    .line 38
    .line 39
    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_0
    iget v0, v0, Lcom/narvii/model/Community;->id:I

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-direct {v2, v3, v0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    .line 50
    move-result v0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    .line 54
    move-result v2

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, p1, v0, v2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;ZZ)V

    .line 58
    .line 59
    .line 60
    const v0, 0x7f0a09f9

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    check-cast p2, Lcom/narvii/widget/NicknameView;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    .line 70
    move-result v0

    .line 71
    .line 72
    if-eqz v0, :cond_1

    .line 73
    const/4 v0, -0x1

    .line 74
    goto :goto_1

    .line 75
    .line 76
    :cond_1
    const/high16 v0, -0x1000000

    .line 77
    .line 78
    .line 79
    :goto_1
    invoke-virtual {p2, v0}, Lcom/narvii/widget/NicknameView;->setTextColor(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, p1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 83
    :cond_2
    return-void
.end method

.method private goAccountSettingPage()V
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/narvii/prefs/AccountSettingFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Lcom/narvii/notice/ImportNoticeListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 10
    return-void
.end method

.method private handleNoticeAction(Lcom/narvii/account/notice/AccountNotice;Z)V
    .locals 9

    .line 1
    .line 2
    new-instance v4, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-direct {v4, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v4}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 18
    .line 19
    const-string v1, "notice/"

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/narvii/account/notice/AccountNotice;->id()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v1, "/accept"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/narvii/account/notice/AccountNotice;->id()Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v1, "/decline"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 77
    .line 78
    :goto_0
    iget v1, p1, Lcom/narvii/account/notice/AccountNotice;->cid:I

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 89
    move-result-object v6

    .line 90
    .line 91
    const-string v0, "api"

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    move-result-object v0

    .line 96
    move-object v7, v0

    .line 97
    .line 98
    check-cast v7, Lcom/narvii/util/http/ApiService;

    .line 99
    .line 100
    new-instance v8, Lcom/narvii/notice/ImportNoticeListAdapter$1;

    .line 101
    .line 102
    const-class v2, Lcom/narvii/model/api/ApiResponse;

    .line 103
    move-object v0, v8

    .line 104
    move-object v1, p0

    .line 105
    move-object v3, p1

    .line 106
    move v5, p2

    .line 107
    .line 108
    .line 109
    invoke-direct/range {v0 .. v5}, Lcom/narvii/notice/ImportNoticeListAdapter$1;-><init>(Lcom/narvii/notice/ImportNoticeListAdapter;Ljava/lang/Class;Lcom/narvii/account/notice/AccountNotice;Lcom/narvii/util/dialog/ProgressDialog;Z)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v7, v6, v8}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 113
    return-void
.end method

.method static bridge synthetic m(Lcom/narvii/notice/ImportNoticeListAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/notice/ImportNoticeListAdapter;->goAccountSettingPage()V

    return-void
.end method

.method static bridge synthetic n(Lcom/narvii/notice/ImportNoticeListAdapter;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/notice/ImportNoticeListAdapter;->requestCommunityInfo(I)V

    return-void
.end method

.method private requestCommunityInfo(I)V
    .locals 5

    .line 1
    .line 2
    if-gtz p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    const-string v0, "api"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 12
    .line 13
    const-string v1, "community"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    check-cast v1, Lcom/narvii/community/CommunityService;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    const-string v3, "/community/info"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    new-instance v3, Lcom/narvii/notice/ImportNoticeListAdapter$3;

    .line 40
    .line 41
    const-class v4, Lcom/narvii/community/FullCommunityResponse;

    .line 42
    .line 43
    .line 44
    invoke-direct {v3, p0, v4, v1, p1}, Lcom/narvii/notice/ImportNoticeListAdapter$3;-><init>(Lcom/narvii/notice/ImportNoticeListAdapter;Ljava/lang/Class;Lcom/narvii/community/CommunityService;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 48
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private upgrateApp()V
    .locals 3

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 7
    .line 8
    const/16 v1, 0x64

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    .line 15
    :goto_0
    new-instance v1, Lcom/narvii/util/PackageUtils;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const-string v0, "com.narvii.amino.master"

    .line 27
    goto :goto_1

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    :goto_1
    invoke-virtual {v1, v0}, Lcom/narvii/util/PackageUtils;->openGooglePlay(Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "/notice"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget v1, p0, Lcom/narvii/notice/ImportNoticeListAdapter;->ndcId:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "type"

    .line 19
    .line 20
    const-string v2, "usersV2"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 24
    const/4 v1, 0x1

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    const-string v2, "status"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    const-string p1, "start0"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 44
    move-result-object p1

    .line 45
    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/account/notice/AccountNotice;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/account/notice/AccountNotice;

    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/account/notice/AccountNotice;

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    check-cast p1, Lcom/narvii/account/notice/AccountNotice;

    .line 8
    .line 9
    iget v0, p1, Lcom/narvii/account/notice/AccountNotice;->type:I

    .line 10
    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    :pswitch_0
    move v0, v1

    .line 14
    goto :goto_0

    .line 15
    :pswitch_1
    const/4 v0, 0x4

    .line 16
    goto :goto_0

    .line 17
    :pswitch_2
    const/4 v0, 0x3

    .line 18
    goto :goto_0

    .line 19
    :pswitch_3
    const/4 v0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :pswitch_4
    const/4 v0, 0x1

    .line 22
    .line 23
    :goto_0
    if-eq v0, v1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/account/notice/AccountNotice;->getConfig()Lcom/narvii/account/notice/AccountNoticeConfig;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    const/4 p1, 0x5

    .line 31
    return p1

    .line 32
    :cond_0
    return v0

    .line 33
    :cond_1
    return v1

    .line 34
    nop

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    move-object/from16 v2, p3

    .line 7
    .line 8
    move-object/from16 v3, p1

    .line 9
    .line 10
    check-cast v3, Lcom/narvii/account/notice/AccountNotice;

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p0 .. p1}, Lcom/narvii/notice/ImportNoticeListAdapter;->getItemType(Ljava/lang/Object;)I

    .line 14
    move-result v4

    .line 15
    const/4 v5, 0x5

    .line 16
    .line 17
    .line 18
    const v6, 0x7f0a0717

    .line 19
    const/4 v7, 0x2

    .line 20
    .line 21
    .line 22
    const v8, 0x7f0a039d

    .line 23
    .line 24
    .line 25
    const v9, 0x7f0a0a26

    .line 26
    .line 27
    .line 28
    const v10, 0x7f0a0408

    .line 29
    .line 30
    const/16 v11, 0x8

    .line 31
    const/4 v12, 0x0

    .line 32
    .line 33
    if-ne v4, v5, :cond_6

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/narvii/account/notice/AccountNotice;->getStyle()Lcom/narvii/account/notice/AccountNoticeStyle;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/narvii/account/notice/AccountNotice;->getConfig()Lcom/narvii/account/notice/AccountNoticeConfig;

    .line 40
    move-result-object v4

    .line 41
    .line 42
    .line 43
    const v5, 0x7f0d043b

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v5, v2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    check-cast v2, Lcom/narvii/widget/NVImageView;

    .line 54
    .line 55
    iget-object v5, v3, Lcom/narvii/account/notice/AccountNotice;->icon:Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    invoke-static {v5}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    move-result v5

    .line 60
    .line 61
    if-eqz v5, :cond_0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 65
    goto :goto_0

    .line 66
    .line 67
    .line 68
    :cond_0
    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    iget-object v5, v3, Lcom/narvii/account/notice/AccountNotice;->icon:Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v5}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    :goto_0
    invoke-direct {v0, v3, v1}, Lcom/narvii/notice/ImportNoticeListAdapter;->configCommunityLayout(Lcom/narvii/account/notice/AccountNotice;Landroid/view/View;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    move-result-object v2

    .line 81
    .line 82
    check-cast v2, Landroid/widget/TextView;

    .line 83
    .line 84
    iget-object v5, v3, Lcom/narvii/account/notice/AccountNotice;->title:Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    move-result-object v2

    .line 92
    .line 93
    check-cast v2, Landroid/widget/TextView;

    .line 94
    .line 95
    iget-object v5, v3, Lcom/narvii/account/notice/AccountNotice;->content:Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    iget-object v5, v3, Lcom/narvii/account/notice/AccountNotice;->content:Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    invoke-static {v5}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 104
    move-result v5

    .line 105
    .line 106
    if-eqz v5, :cond_1

    .line 107
    move v5, v11

    .line 108
    goto :goto_1

    .line 109
    :cond_1
    move v5, v12

    .line 110
    .line 111
    .line 112
    :goto_1
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    move-result-object v5

    .line 117
    .line 118
    check-cast v5, Landroid/widget/TextView;

    .line 119
    .line 120
    iget-object v6, v0, Lcom/narvii/notice/ImportNoticeListAdapter;->formatter:Lcom/narvii/util/DateTimeFormatter;

    .line 121
    .line 122
    iget-object v8, v3, Lcom/narvii/account/notice/AccountNotice;->createdTime:Ljava/util/Date;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6, v8}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 126
    move-result-object v6

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    .line 131
    .line 132
    invoke-direct {v0, v3, v1}, Lcom/narvii/notice/ImportNoticeListAdapter;->configOperator(Lcom/narvii/account/notice/AccountNotice;Landroid/view/View;)V

    .line 133
    .line 134
    .line 135
    invoke-direct {v0, v3, v1}, Lcom/narvii/notice/ImportNoticeListAdapter;->configCommunityLayout(Lcom/narvii/account/notice/AccountNotice;Landroid/view/View;)V

    .line 136
    .line 137
    .line 138
    const v3, 0x7f0a0a24

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 142
    move-result-object v3

    .line 143
    .line 144
    check-cast v3, Landroid/view/ViewGroup;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 148
    .line 149
    iget-boolean v5, v4, Lcom/narvii/account/notice/AccountNoticeConfig;->allowQuickOperation:Z

    .line 150
    .line 151
    .line 152
    const v6, 0x7f0a0a25

    .line 153
    .line 154
    if-eqz v5, :cond_4

    .line 155
    .line 156
    iget-object v5, v4, Lcom/narvii/account/notice/AccountNoticeConfig;->operationList:Ljava/util/List;

    .line 157
    .line 158
    if-eqz v5, :cond_4

    .line 159
    .line 160
    .line 161
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 162
    move-result v5

    .line 163
    .line 164
    if-nez v5, :cond_4

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 168
    move-result-object v5

    .line 169
    .line 170
    .line 171
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 172
    .line 173
    const/16 v5, 0x3e7

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 177
    .line 178
    iget-object v2, v4, Lcom/narvii/account/notice/AccountNoticeConfig;->operationList:Ljava/util/List;

    .line 179
    .line 180
    .line 181
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 182
    move-result-object v2

    .line 183
    .line 184
    .line 185
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    move-result v4

    .line 187
    .line 188
    if-eqz v4, :cond_5

    .line 189
    .line 190
    .line 191
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 192
    move-result-object v4

    .line 193
    .line 194
    check-cast v4, Lcom/narvii/account/notice/AccountNoticeConfig$NoticeButtonInfo;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v4}, Lcom/narvii/account/notice/AccountNoticeConfig$NoticeButtonInfo;->isSupport()Z

    .line 198
    move-result v5

    .line 199
    .line 200
    if-nez v5, :cond_2

    .line 201
    goto :goto_2

    .line 202
    .line 203
    :cond_2
    iget-object v5, v0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 204
    .line 205
    .line 206
    const v6, 0x7f0d043c

    .line 207
    .line 208
    .line 209
    invoke-virtual {v5, v6, v3, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 210
    move-result-object v5

    .line 211
    .line 212
    .line 213
    const v6, 0x7f0a023c

    .line 214
    .line 215
    .line 216
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 217
    move-result-object v6

    .line 218
    .line 219
    check-cast v6, Landroid/widget/TextView;

    .line 220
    .line 221
    iget-object v8, v4, Lcom/narvii/account/notice/AccountNoticeConfig$NoticeButtonInfo;->text:Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    move-object v6, v5

    .line 226
    .line 227
    check-cast v6, Lcom/narvii/widget/PushButton;

    .line 228
    .line 229
    iget v8, v4, Lcom/narvii/account/notice/AccountNoticeConfig$NoticeButtonInfo;->operationType:I

    .line 230
    .line 231
    if-ne v8, v7, :cond_3

    .line 232
    .line 233
    .line 234
    const v8, -0x16f2c5

    .line 235
    goto :goto_3

    .line 236
    .line 237
    .line 238
    :cond_3
    const v8, -0xf3890d

    .line 239
    .line 240
    .line 241
    :goto_3
    invoke-virtual {v6, v8}, Lcom/narvii/widget/PushButton;->setColor(I)V

    .line 242
    .line 243
    iget v4, v4, Lcom/narvii/account/notice/AccountNoticeConfig$NoticeButtonInfo;->operationType:I

    .line 244
    .line 245
    .line 246
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 247
    move-result-object v4

    .line 248
    .line 249
    .line 250
    const v6, 0x7f0a0a23

    .line 251
    .line 252
    .line 253
    invoke-virtual {v5, v6, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 254
    .line 255
    iget-object v4, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v5, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 262
    goto :goto_2

    .line 263
    .line 264
    .line 265
    :cond_4
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 266
    move-result-object v3

    .line 267
    .line 268
    .line 269
    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 273
    :cond_5
    return-object v1

    .line 274
    .line 275
    :cond_6
    iget v4, v3, Lcom/narvii/account/notice/AccountNotice;->type:I

    .line 276
    const/4 v5, 0x4

    .line 277
    const/4 v13, 0x1

    .line 278
    .line 279
    if-eq v4, v5, :cond_8

    .line 280
    .line 281
    const/16 v14, 0xa

    .line 282
    .line 283
    if-ne v4, v14, :cond_7

    .line 284
    goto :goto_4

    .line 285
    :cond_7
    move v4, v12

    .line 286
    goto :goto_5

    .line 287
    :cond_8
    :goto_4
    move v4, v13

    .line 288
    .line 289
    .line 290
    :goto_5
    invoke-virtual/range {p0 .. p1}, Lcom/narvii/notice/ImportNoticeListAdapter;->getItemType(Ljava/lang/Object;)I

    .line 291
    move-result v14

    .line 292
    .line 293
    const/16 v16, -0x1

    .line 294
    .line 295
    .line 296
    const v11, 0x7f0a09f9

    .line 297
    .line 298
    .line 299
    const v15, 0x7f0a037c

    .line 300
    .line 301
    .line 302
    const v5, 0x7f0a036b

    .line 303
    .line 304
    .line 305
    const v7, 0x7f0a0366

    .line 306
    .line 307
    if-nez v14, :cond_f

    .line 308
    .line 309
    .line 310
    const v13, 0x7f0d0441

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, v13, v2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 314
    move-result-object v1

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 318
    move-result-object v2

    .line 319
    .line 320
    check-cast v2, Landroid/widget/ImageView;

    .line 321
    .line 322
    if-eqz v4, :cond_9

    .line 323
    .line 324
    .line 325
    const v4, 0x7f080533

    .line 326
    goto :goto_6

    .line 327
    .line 328
    .line 329
    :cond_9
    const v4, 0x7f080535

    .line 330
    .line 331
    .line 332
    :goto_6
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 336
    move-result-object v2

    .line 337
    .line 338
    check-cast v2, Landroid/widget/TextView;

    .line 339
    .line 340
    iget-object v4, v3, Lcom/narvii/account/notice/AccountNotice;->title:Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    .line 345
    iget-object v2, v0, Lcom/narvii/notice/ImportNoticeListAdapter;->communityMap:Ljava/util/HashMap;

    .line 346
    .line 347
    iget v4, v3, Lcom/narvii/account/notice/AccountNotice;->cid:I

    .line 348
    .line 349
    .line 350
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 351
    move-result-object v4

    .line 352
    .line 353
    .line 354
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    move-result-object v2

    .line 356
    .line 357
    check-cast v2, Lcom/narvii/model/Community;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v3}, Lcom/narvii/account/notice/AccountNotice;->isGlobal()Z

    .line 361
    move-result v4

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 365
    move-result-object v6

    .line 366
    .line 367
    if-eqz v4, :cond_a

    .line 368
    .line 369
    const/16 v4, 0x8

    .line 370
    goto :goto_7

    .line 371
    :cond_a
    move v4, v12

    .line 372
    .line 373
    .line 374
    :goto_7
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 375
    .line 376
    if-eqz v2, :cond_b

    .line 377
    .line 378
    .line 379
    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 380
    move-result-object v4

    .line 381
    .line 382
    check-cast v4, Lcom/narvii/widget/NVImageView;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v4, v12}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 386
    .line 387
    iget-object v5, v2, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v4, v5}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 391
    .line 392
    .line 393
    invoke-virtual {v6, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 394
    move-result-object v4

    .line 395
    .line 396
    check-cast v4, Landroid/widget/TextView;

    .line 397
    .line 398
    iget-object v5, v2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    .line 403
    .line 404
    :cond_b
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 405
    move-result-object v4

    .line 406
    .line 407
    check-cast v4, Landroid/widget/TextView;

    .line 408
    .line 409
    iget-object v5, v3, Lcom/narvii/account/notice/AccountNotice;->content:Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 416
    move-result-object v4

    .line 417
    .line 418
    check-cast v4, Landroid/widget/TextView;

    .line 419
    .line 420
    iget-object v5, v0, Lcom/narvii/notice/ImportNoticeListAdapter;->formatter:Lcom/narvii/util/DateTimeFormatter;

    .line 421
    .line 422
    iget-object v6, v3, Lcom/narvii/account/notice/AccountNotice;->createdTime:Ljava/util/Date;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v5, v6}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 426
    move-result-object v5

    .line 427
    .line 428
    .line 429
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    .line 431
    iget-object v3, v3, Lcom/narvii/account/notice/AccountNotice;->operator:Lcom/narvii/model/User;

    .line 432
    .line 433
    if-eqz v3, :cond_e

    .line 434
    .line 435
    .line 436
    const v4, 0x7f0a0f36

    .line 437
    .line 438
    .line 439
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 440
    move-result-object v4

    .line 441
    .line 442
    check-cast v4, Lcom/narvii/widget/UserAvatarLayout;

    .line 443
    .line 444
    new-instance v5, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 445
    .line 446
    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 448
    move-result-object v6

    .line 449
    .line 450
    .line 451
    invoke-static {v6}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 452
    move-result-object v6

    .line 453
    .line 454
    if-nez v2, :cond_c

    .line 455
    goto :goto_8

    .line 456
    .line 457
    :cond_c
    iget v12, v2, Lcom/narvii/model/Community;->id:I

    .line 458
    .line 459
    .line 460
    :goto_8
    invoke-direct {v5, v6, v12}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v3}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    .line 464
    move-result v2

    .line 465
    .line 466
    .line 467
    invoke-virtual {v5}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    .line 468
    move-result v5

    .line 469
    .line 470
    .line 471
    invoke-virtual {v4, v3, v2, v5}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;ZZ)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 475
    move-result-object v2

    .line 476
    .line 477
    check-cast v2, Lcom/narvii/widget/NicknameView;

    .line 478
    .line 479
    .line 480
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    .line 481
    move-result v4

    .line 482
    .line 483
    if-eqz v4, :cond_d

    .line 484
    .line 485
    move/from16 v15, v16

    .line 486
    goto :goto_9

    .line 487
    .line 488
    :cond_d
    const/high16 v15, -0x1000000

    .line 489
    .line 490
    .line 491
    :goto_9
    invoke-virtual {v2, v15}, Lcom/narvii/widget/NicknameView;->setTextColor(I)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v2, v3}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 495
    :cond_e
    return-object v1

    .line 496
    .line 497
    .line 498
    :cond_f
    invoke-virtual/range {p0 .. p1}, Lcom/narvii/notice/ImportNoticeListAdapter;->getItemType(Ljava/lang/Object;)I

    .line 499
    move-result v4

    .line 500
    const/4 v14, 0x3

    .line 501
    .line 502
    if-ne v4, v13, :cond_14

    .line 503
    .line 504
    .line 505
    const v4, 0x7f0d043e

    .line 506
    .line 507
    .line 508
    invoke-virtual {v0, v4, v2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 509
    move-result-object v1

    .line 510
    .line 511
    .line 512
    const v2, 0x7f0a002d

    .line 513
    .line 514
    .line 515
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 516
    move-result-object v2

    .line 517
    .line 518
    iget-object v4, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 522
    .line 523
    .line 524
    const v2, 0x7f0a040f

    .line 525
    .line 526
    .line 527
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 528
    move-result-object v2

    .line 529
    .line 530
    iget-object v4, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    .line 535
    .line 536
    const v2, 0x7f0a0722

    .line 537
    .line 538
    .line 539
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 540
    move-result-object v2

    .line 541
    .line 542
    check-cast v2, Landroid/widget/TextView;

    .line 543
    .line 544
    iget-object v4, v3, Lcom/narvii/account/notice/AccountNotice;->operator:Lcom/narvii/model/User;

    .line 545
    .line 546
    const-string v5, ""

    .line 547
    .line 548
    if-nez v4, :cond_10

    .line 549
    move-object v4, v5

    .line 550
    goto :goto_a

    .line 551
    .line 552
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 556
    .line 557
    iget-object v6, v3, Lcom/narvii/account/notice/AccountNotice;->operator:Lcom/narvii/model/User;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v6}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 561
    move-result-object v6

    .line 562
    .line 563
    .line 564
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    const-string v6, " "

    .line 567
    .line 568
    .line 569
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 573
    move-result-object v4

    .line 574
    .line 575
    :goto_a
    iget v6, v3, Lcom/narvii/account/notice/AccountNotice;->type:I

    .line 576
    .line 577
    if-eq v6, v13, :cond_13

    .line 578
    const/4 v7, 0x2

    .line 579
    .line 580
    if-eq v6, v7, :cond_12

    .line 581
    .line 582
    if-eq v6, v14, :cond_11

    .line 583
    goto :goto_b

    .line 584
    .line 585
    .line 586
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 587
    move-result-object v5

    .line 588
    .line 589
    new-array v6, v13, [Ljava/lang/Object;

    .line 590
    .line 591
    aput-object v4, v6, v12

    .line 592
    .line 593
    .line 594
    const v4, 0x7f120857

    .line 595
    .line 596
    .line 597
    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 598
    move-result-object v5

    .line 599
    goto :goto_b

    .line 600
    .line 601
    .line 602
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 603
    move-result-object v5

    .line 604
    .line 605
    new-array v6, v13, [Ljava/lang/Object;

    .line 606
    .line 607
    aput-object v4, v6, v12

    .line 608
    .line 609
    .line 610
    const v4, 0x7f120858

    .line 611
    .line 612
    .line 613
    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 614
    move-result-object v5

    .line 615
    goto :goto_b

    .line 616
    .line 617
    .line 618
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 619
    move-result-object v5

    .line 620
    .line 621
    new-array v6, v13, [Ljava/lang/Object;

    .line 622
    .line 623
    aput-object v4, v6, v12

    .line 624
    .line 625
    .line 626
    const v4, 0x7f120859

    .line 627
    .line 628
    .line 629
    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 630
    move-result-object v5

    .line 631
    .line 632
    .line 633
    :goto_b
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 637
    move-result-object v2

    .line 638
    .line 639
    check-cast v2, Landroid/widget/TextView;

    .line 640
    .line 641
    iget-object v4, v0, Lcom/narvii/notice/ImportNoticeListAdapter;->formatter:Lcom/narvii/util/DateTimeFormatter;

    .line 642
    .line 643
    iget-object v5, v3, Lcom/narvii/account/notice/AccountNotice;->createdTime:Ljava/util/Date;

    .line 644
    .line 645
    .line 646
    invoke-virtual {v4, v5}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 647
    move-result-object v4

    .line 648
    .line 649
    .line 650
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    .line 652
    .line 653
    invoke-direct {v0, v3, v1}, Lcom/narvii/notice/ImportNoticeListAdapter;->configCommunityLayout(Lcom/narvii/account/notice/AccountNotice;Landroid/view/View;)V

    .line 654
    return-object v1

    .line 655
    .line 656
    .line 657
    :cond_14
    invoke-virtual/range {p0 .. p1}, Lcom/narvii/notice/ImportNoticeListAdapter;->getItemType(Ljava/lang/Object;)I

    .line 658
    move-result v4

    .line 659
    .line 660
    if-ne v4, v14, :cond_19

    .line 661
    .line 662
    .line 663
    const v4, 0x7f0d043a

    .line 664
    .line 665
    .line 666
    invoke-virtual {v0, v4, v2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 667
    move-result-object v1

    .line 668
    .line 669
    .line 670
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 671
    move-result-object v2

    .line 672
    .line 673
    check-cast v2, Landroid/widget/TextView;

    .line 674
    .line 675
    iget-object v4, v3, Lcom/narvii/account/notice/AccountNotice;->title:Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    .line 680
    iget-object v2, v0, Lcom/narvii/notice/ImportNoticeListAdapter;->communityMap:Ljava/util/HashMap;

    .line 681
    .line 682
    iget v4, v3, Lcom/narvii/account/notice/AccountNotice;->cid:I

    .line 683
    .line 684
    .line 685
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 686
    move-result-object v4

    .line 687
    .line 688
    .line 689
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    move-result-object v2

    .line 691
    .line 692
    check-cast v2, Lcom/narvii/model/Community;

    .line 693
    .line 694
    .line 695
    invoke-virtual {v3}, Lcom/narvii/account/notice/AccountNotice;->isGlobal()Z

    .line 696
    move-result v4

    .line 697
    .line 698
    .line 699
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 700
    move-result-object v6

    .line 701
    .line 702
    if-eqz v4, :cond_15

    .line 703
    .line 704
    const/16 v4, 0x8

    .line 705
    goto :goto_c

    .line 706
    :cond_15
    move v4, v12

    .line 707
    .line 708
    .line 709
    :goto_c
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 710
    .line 711
    if-eqz v2, :cond_16

    .line 712
    .line 713
    .line 714
    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 715
    move-result-object v4

    .line 716
    .line 717
    check-cast v4, Lcom/narvii/widget/NVImageView;

    .line 718
    .line 719
    .line 720
    invoke-virtual {v4, v12}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 721
    .line 722
    iget-object v5, v2, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    invoke-virtual {v4, v5}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 726
    .line 727
    .line 728
    invoke-virtual {v6, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 729
    move-result-object v4

    .line 730
    .line 731
    check-cast v4, Landroid/widget/TextView;

    .line 732
    .line 733
    iget-object v2, v2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    .line 738
    .line 739
    :cond_16
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 740
    move-result-object v2

    .line 741
    .line 742
    check-cast v2, Landroid/widget/TextView;

    .line 743
    .line 744
    iget-object v4, v3, Lcom/narvii/account/notice/AccountNotice;->content:Ljava/lang/String;

    .line 745
    .line 746
    .line 747
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 751
    move-result-object v2

    .line 752
    .line 753
    check-cast v2, Landroid/widget/TextView;

    .line 754
    .line 755
    iget-object v4, v0, Lcom/narvii/notice/ImportNoticeListAdapter;->formatter:Lcom/narvii/util/DateTimeFormatter;

    .line 756
    .line 757
    iget-object v5, v3, Lcom/narvii/account/notice/AccountNotice;->createdTime:Ljava/util/Date;

    .line 758
    .line 759
    .line 760
    invoke-virtual {v4, v5}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 761
    move-result-object v4

    .line 762
    .line 763
    .line 764
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    .line 766
    iget-object v2, v3, Lcom/narvii/account/notice/AccountNotice;->operator:Lcom/narvii/model/User;

    .line 767
    .line 768
    if-eqz v2, :cond_18

    .line 769
    .line 770
    .line 771
    const v3, 0x7f0a0171

    .line 772
    .line 773
    .line 774
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 775
    move-result-object v3

    .line 776
    .line 777
    check-cast v3, Lcom/narvii/widget/NVImageView;

    .line 778
    .line 779
    .line 780
    invoke-virtual {v2}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 781
    move-result-object v4

    .line 782
    .line 783
    .line 784
    invoke-virtual {v3, v4}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 785
    .line 786
    .line 787
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 788
    move-result-object v3

    .line 789
    .line 790
    check-cast v3, Lcom/narvii/widget/NicknameView;

    .line 791
    .line 792
    .line 793
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    .line 794
    move-result v4

    .line 795
    .line 796
    if-eqz v4, :cond_17

    .line 797
    .line 798
    move/from16 v15, v16

    .line 799
    goto :goto_d

    .line 800
    .line 801
    :cond_17
    const/high16 v15, -0x1000000

    .line 802
    .line 803
    .line 804
    :goto_d
    invoke-virtual {v3, v15}, Lcom/narvii/widget/NicknameView;->setTextColor(I)V

    .line 805
    .line 806
    .line 807
    invoke-virtual {v3, v2}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 808
    :cond_18
    return-object v1

    .line 809
    .line 810
    .line 811
    :cond_19
    invoke-virtual/range {p0 .. p1}, Lcom/narvii/notice/ImportNoticeListAdapter;->getItemType(Ljava/lang/Object;)I

    .line 812
    move-result v4

    .line 813
    const/4 v5, 0x4

    .line 814
    .line 815
    if-ne v4, v5, :cond_1c

    .line 816
    .line 817
    .line 818
    const v4, 0x7f0d043f

    .line 819
    .line 820
    .line 821
    invoke-virtual {v0, v4, v2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 822
    move-result-object v1

    .line 823
    .line 824
    .line 825
    invoke-virtual {v3}, Lcom/narvii/account/notice/AccountNotice;->getNoticeLevel()Ljava/lang/String;

    .line 826
    move-result-object v2

    .line 827
    .line 828
    const-string v4, "fail"

    .line 829
    .line 830
    .line 831
    invoke-static {v2, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 832
    move-result v4

    .line 833
    .line 834
    if-eqz v4, :cond_1a

    .line 835
    .line 836
    .line 837
    const v2, 0x7f08052b

    .line 838
    goto :goto_e

    .line 839
    .line 840
    :cond_1a
    const-string v4, "success"

    .line 841
    .line 842
    .line 843
    invoke-static {v2, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 844
    move-result v2

    .line 845
    .line 846
    if-eqz v2, :cond_1b

    .line 847
    .line 848
    .line 849
    const v2, 0x7f080534

    .line 850
    goto :goto_e

    .line 851
    .line 852
    .line 853
    :cond_1b
    const v2, 0x7f08052f

    .line 854
    .line 855
    .line 856
    :goto_e
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 857
    move-result-object v4

    .line 858
    .line 859
    check-cast v4, Landroid/widget/ImageView;

    .line 860
    .line 861
    .line 862
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 863
    move-result-object v5

    .line 864
    .line 865
    .line 866
    invoke-static {v5, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 867
    move-result-object v2

    .line 868
    .line 869
    .line 870
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 871
    .line 872
    .line 873
    invoke-direct {v0, v3, v1}, Lcom/narvii/notice/ImportNoticeListAdapter;->configCommunityLayout(Lcom/narvii/account/notice/AccountNotice;Landroid/view/View;)V

    .line 874
    .line 875
    .line 876
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 877
    move-result-object v2

    .line 878
    .line 879
    check-cast v2, Landroid/widget/TextView;

    .line 880
    .line 881
    iget-object v4, v3, Lcom/narvii/account/notice/AccountNotice;->title:Ljava/lang/String;

    .line 882
    .line 883
    .line 884
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 885
    .line 886
    .line 887
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 888
    move-result-object v2

    .line 889
    .line 890
    check-cast v2, Landroid/widget/TextView;

    .line 891
    .line 892
    iget-object v4, v3, Lcom/narvii/account/notice/AccountNotice;->content:Ljava/lang/String;

    .line 893
    .line 894
    .line 895
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 896
    .line 897
    .line 898
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 899
    move-result-object v2

    .line 900
    .line 901
    check-cast v2, Landroid/widget/TextView;

    .line 902
    .line 903
    iget-object v4, v0, Lcom/narvii/notice/ImportNoticeListAdapter;->formatter:Lcom/narvii/util/DateTimeFormatter;

    .line 904
    .line 905
    iget-object v5, v3, Lcom/narvii/account/notice/AccountNotice;->createdTime:Ljava/util/Date;

    .line 906
    .line 907
    .line 908
    invoke-virtual {v4, v5}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 909
    move-result-object v4

    .line 910
    .line 911
    .line 912
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 913
    .line 914
    .line 915
    invoke-direct {v0, v3, v1}, Lcom/narvii/notice/ImportNoticeListAdapter;->configOperator(Lcom/narvii/account/notice/AccountNotice;Landroid/view/View;)V

    .line 916
    return-object v1

    .line 917
    .line 918
    .line 919
    :cond_1c
    invoke-virtual/range {p0 .. p1}, Lcom/narvii/notice/ImportNoticeListAdapter;->getItemType(Ljava/lang/Object;)I

    .line 920
    move-result v4

    .line 921
    const/4 v5, 0x2

    .line 922
    .line 923
    if-ne v4, v5, :cond_1d

    .line 924
    .line 925
    .line 926
    const v4, 0x7f0d0440

    .line 927
    .line 928
    .line 929
    invoke-virtual {v0, v4, v2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 930
    move-result-object v1

    .line 931
    .line 932
    .line 933
    invoke-direct {v0, v3, v1}, Lcom/narvii/notice/ImportNoticeListAdapter;->configCommunityLayout(Lcom/narvii/account/notice/AccountNotice;Landroid/view/View;)V

    .line 934
    .line 935
    .line 936
    const v2, 0x7f0a0f2e

    .line 937
    .line 938
    .line 939
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 940
    move-result-object v2

    .line 941
    .line 942
    iget-object v3, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 943
    .line 944
    .line 945
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 946
    return-object v1

    .line 947
    :cond_1d
    const/4 v1, 0x0

    .line 948
    return-object v1
.end method

.method public isEnabled(I)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lcom/narvii/account/notice/AccountNotice;

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    move-object v1, v0

    .line 10
    .line 11
    check-cast v1, Lcom/narvii/account/notice/AccountNotice;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/narvii/account/notice/AccountNotice;->getConfig()Lcom/narvii/account/notice/AccountNoticeConfig;

    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/narvii/account/notice/AccountNotice;->getConfig()Lcom/narvii/account/notice/AccountNoticeConfig;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    iget-boolean v2, v2, Lcom/narvii/account/notice/AccountNoticeConfig;->allowQuickOperation:Z

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    return v3

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {v1}, Lcom/narvii/account/notice/AccountNotice;->getConfig()Lcom/narvii/account/notice/AccountNoticeConfig;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/narvii/notice/ImportNoticeListAdapter;->getItemType(Ljava/lang/Object;)I

    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x1

    .line 39
    .line 40
    if-ne v1, v2, :cond_1

    .line 41
    return v3

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {p0, v0}, Lcom/narvii/notice/ImportNoticeListAdapter;->getItemType(Ljava/lang/Object;)I

    .line 45
    move-result v0

    .line 46
    const/4 v1, 0x2

    .line 47
    .line 48
    if-ne v0, v1, :cond_2

    .line 49
    return v3

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->isEnabled(I)Z

    .line 53
    move-result p1

    .line 54
    return p1
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/list/NVPagedAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/notice/ImportNoticeListAdapter;->isImportantNoticeLoaded:Z

    .line 7
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/account/notice/AccountNotice;

    .line 3
    .line 4
    if-eqz v0, :cond_b

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/account/notice/AccountNotice;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/notice/ImportNoticeListAdapter;->getItemType(Ljava/lang/Object;)I

    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x2

    .line 13
    const/4 v3, 0x1

    .line 14
    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    if-nez p5, :cond_0

    .line 18
    return v3

    .line 19
    .line 20
    :cond_0
    if-eqz p5, :cond_7

    .line 21
    .line 22
    .line 23
    const p1, 0x7f0a0a23

    .line 24
    .line 25
    .line 26
    invoke-virtual {p5, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    instance-of p3, p1, Ljava/lang/Integer;

    .line 30
    const/4 p4, 0x0

    .line 31
    .line 32
    if-eqz p3, :cond_1

    .line 33
    .line 34
    check-cast p1, Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 38
    move-result p1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move p1, p4

    .line 41
    .line 42
    :goto_0
    if-eqz p1, :cond_4

    .line 43
    .line 44
    if-eq p1, v3, :cond_3

    .line 45
    .line 46
    if-eq p1, v2, :cond_2

    .line 47
    goto :goto_2

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    check-cast p1, Lcom/narvii/account/notice/AccountNotice;

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, p1, p4}, Lcom/narvii/notice/ImportNoticeListAdapter;->handleNoticeAction(Lcom/narvii/account/notice/AccountNotice;Z)V

    .line 57
    goto :goto_2

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    check-cast p1, Lcom/narvii/account/notice/AccountNotice;

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, p1, v3}, Lcom/narvii/notice/ImportNoticeListAdapter;->handleNoticeAction(Lcom/narvii/account/notice/AccountNotice;Z)V

    .line 67
    goto :goto_2

    .line 68
    .line 69
    .line 70
    :cond_4
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 71
    move-result p1

    .line 72
    .line 73
    .line 74
    sparse-switch p1, :sswitch_data_0

    .line 75
    goto :goto_2

    .line 76
    .line 77
    .line 78
    :sswitch_0
    invoke-direct {p0}, Lcom/narvii/notice/ImportNoticeListAdapter;->upgrateApp()V

    .line 79
    goto :goto_2

    .line 80
    .line 81
    .line 82
    :sswitch_1
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    check-cast p1, Lcom/narvii/account/notice/AccountNotice;

    .line 86
    .line 87
    .line 88
    invoke-direct {p0, p1, p4}, Lcom/narvii/notice/ImportNoticeListAdapter;->handleNoticeAction(Lcom/narvii/account/notice/AccountNotice;Z)V

    .line 89
    goto :goto_2

    .line 90
    .line 91
    .line 92
    :sswitch_2
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    if-nez p1, :cond_5

    .line 96
    const/4 p1, 0x0

    .line 97
    goto :goto_1

    .line 98
    .line 99
    .line 100
    :cond_5
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    check-cast p1, Lcom/narvii/account/notice/AccountNotice;

    .line 104
    .line 105
    iget-object p1, p1, Lcom/narvii/account/notice/AccountNotice;->operator:Lcom/narvii/model/User;

    .line 106
    .line 107
    :goto_1
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 108
    .line 109
    .line 110
    invoke-static {p2, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 111
    move-result-object p2

    .line 112
    .line 113
    if-eqz p1, :cond_6

    .line 114
    .line 115
    .line 116
    invoke-static {p0, p2}, Lcom/narvii/notice/ImportNoticeListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 117
    goto :goto_2

    .line 118
    .line 119
    .line 120
    :sswitch_3
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    check-cast p1, Lcom/narvii/account/notice/AccountNotice;

    .line 124
    .line 125
    .line 126
    invoke-direct {p0, p1, v3}, Lcom/narvii/notice/ImportNoticeListAdapter;->handleNoticeAction(Lcom/narvii/account/notice/AccountNotice;Z)V

    .line 127
    :cond_6
    :goto_2
    return v3

    .line 128
    .line 129
    .line 130
    :cond_7
    invoke-virtual {v0}, Lcom/narvii/account/notice/AccountNotice;->getConfig()Lcom/narvii/account/notice/AccountNoticeConfig;

    .line 131
    move-result-object v1

    .line 132
    .line 133
    if-eqz v1, :cond_8

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/narvii/account/notice/AccountNotice;->getConfig()Lcom/narvii/account/notice/AccountNoticeConfig;

    .line 137
    move-result-object v1

    .line 138
    .line 139
    iget-boolean v1, v1, Lcom/narvii/account/notice/AccountNoticeConfig;->allowQuickOperation:Z

    .line 140
    .line 141
    if-eqz v1, :cond_8

    .line 142
    return v3

    .line 143
    .line 144
    .line 145
    :cond_8
    invoke-virtual {v0}, Lcom/narvii/account/notice/AccountNotice;->getConfig()Lcom/narvii/account/notice/AccountNoticeConfig;

    .line 146
    move-result-object v1

    .line 147
    .line 148
    if-nez v1, :cond_9

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, v0}, Lcom/narvii/notice/ImportNoticeListAdapter;->getItemType(Ljava/lang/Object;)I

    .line 152
    move-result v1

    .line 153
    .line 154
    if-ne v1, v3, :cond_9

    .line 155
    return v3

    .line 156
    .line 157
    :cond_9
    const-class v1, Lcom/narvii/notice/NoticeDetailFragment;

    .line 158
    .line 159
    .line 160
    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 161
    move-result-object v1

    .line 162
    .line 163
    const-string v2, "notice"

    .line 164
    .line 165
    .line 166
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 167
    move-result-object v3

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    .line 172
    iget-object v2, p0, Lcom/narvii/notice/ImportNoticeListAdapter;->communityMap:Ljava/util/HashMap;

    .line 173
    .line 174
    iget v0, v0, Lcom/narvii/account/notice/AccountNotice;->cid:I

    .line 175
    .line 176
    .line 177
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    move-result-object v0

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    move-result-object v0

    .line 183
    .line 184
    check-cast v0, Lcom/narvii/model/Community;

    .line 185
    .line 186
    if-eqz v0, :cond_a

    .line 187
    .line 188
    const-string v2, "community"

    .line 189
    .line 190
    .line 191
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 192
    move-result-object v0

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    .line 197
    .line 198
    :cond_a
    invoke-static {p0, v1}, Lcom/narvii/notice/ImportNoticeListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 199
    .line 200
    .line 201
    :cond_b
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 202
    move-result p1

    .line 203
    return p1

    .line 204
    nop

    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    :sswitch_data_0
    .sparse-switch
        0x7f0a002d -> :sswitch_3
        0x7f0a0171 -> :sswitch_2
        0x7f0a040f -> :sswitch_1
        0x7f0a0f2e -> :sswitch_0
    .end sparse-switch
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v0, v0, Lcom/narvii/account/notice/AccountNotice;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 11
    :cond_0
    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/account/notice/AccountNoticeListResponse;I)V
    .locals 2

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 3
    iget-object p3, p2, Lcom/narvii/account/notice/AccountNoticeListResponse;->communityMap:Ljava/util/Map;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/narvii/notice/ImportNoticeListAdapter;->communityMap:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->isEnd()Z

    move-result p3

    iput-boolean p3, p0, Lcom/narvii/notice/ImportNoticeListAdapter;->isImportantNoticeLoaded:Z

    const-string p3, "start0"

    .line 6
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p2, Lcom/narvii/account/notice/AccountNoticeListResponse;->noticeCount:I

    const/4 p3, -0x1

    if-eq p1, p3, :cond_1

    const-string p1, "account"

    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iget p3, p0, Lcom/narvii/notice/ImportNoticeListAdapter;->ndcId:I

    .line 8
    iget v0, p2, Lcom/narvii/account/notice/AccountNoticeListResponse;->noticeCount:I

    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, p3, v0, p2, v1}, Lcom/narvii/account/AccountService;->updateNoticeCount(IILjava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/account/notice/AccountNoticeListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/notice/ImportNoticeListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/account/notice/AccountNoticeListResponse;I)V

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/account/notice/AccountNoticeListResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/account/notice/AccountNoticeListResponse;

    return-object v0
.end method

.method protected sendRefreshReminderRequest(Lcom/narvii/account/notice/AccountNotice;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/notice/ImportNoticeListAdapter;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    if-nez p1, :cond_1

    .line 12
    return-void

    .line 13
    .line 14
    :cond_1
    iget v0, p1, Lcom/narvii/account/notice/AccountNotice;->cid:I

    .line 15
    .line 16
    if-lez v0, :cond_2

    .line 17
    .line 18
    const-string v0, "api"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    const-string v2, "reminder/check"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    iget v2, p1, Lcom/narvii/account/notice/AccountNotice;->cid:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    const-string v2, "ignoreUnreadChatThreadsCount"

    .line 43
    .line 44
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lcom/narvii/util/Utils;->getTimeZoneInMin()I

    .line 52
    move-result v2

    .line 53
    .line 54
    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    const-string v3, "timezone"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    new-instance v2, Lcom/narvii/notice/ImportNoticeListAdapter$2;

    .line 69
    .line 70
    const-class v3, Lcom/narvii/community/ReminderCheckResult;

    .line 71
    .line 72
    .line 73
    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/notice/ImportNoticeListAdapter$2;-><init>(Lcom/narvii/notice/ImportNoticeListAdapter;Ljava/lang/Class;Lcom/narvii/account/notice/AccountNotice;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 77
    .line 78
    :cond_2
    const-string p1, "_notice"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    check-cast p1, Lcom/narvii/services/incubator/IncubatorNoticeService;

    .line 85
    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/narvii/services/incubator/IncubatorNoticeService;->sendGlobalNoticeRequest()V

    .line 90
    :cond_3
    return-void
.end method
