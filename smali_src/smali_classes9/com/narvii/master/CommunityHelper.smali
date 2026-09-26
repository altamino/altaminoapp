.class public Lcom/narvii/master/CommunityHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field autoOpenCommunityDetail:Z

.field context:Lcom/narvii/app/NVContext;

.field eventOrigin:Lcom/narvii/util/logging/LoggingOrigin;

.field eventSource:Lcom/narvii/util/logging/LoggingSource;

.field packageUtils:Lcom/narvii/util/PackageUtils;

.field source:Ljava/lang/String;

.field tags:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/master/CommunityHelper;->context:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/util/PackageUtils;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/master/CommunityHelper;->packageUtils:Lcom/narvii/util/PackageUtils;

    .line 17
    return-void
.end method

.method static bridge synthetic a(Landroid/content/Context;ILcom/narvii/model/Community;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/master/CommunityHelper;->tryJoinPrivateCommunity(Landroid/content/Context;ILcom/narvii/model/Community;)V

    return-void
.end method

.method public static getDisableUserNoteType(I)I
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/16 p0, 0xc8

    return p0

    :sswitch_0
    const/16 p0, 0x65

    return p0

    :sswitch_1
    const/4 p0, 0x2

    return p0

    :sswitch_2
    const/16 p0, 0x64

    return p0

    :sswitch_3
    const/4 p0, 0x4

    return p0

    :sswitch_4
    const/16 p0, 0x66

    return p0

    :sswitch_5
    const/4 p0, 0x0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f120773 -> :sswitch_5
        0x7f120786 -> :sswitch_4
        0x7f12078c -> :sswitch_3
        0x7f12079c -> :sswitch_2
        0x7f1207a0 -> :sswitch_1
        0x7f1207a8 -> :sswitch_0
    .end sparse-switch
.end method

.method private openCommunityDetail(Lcom/narvii/model/Community;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/master/CommunityHelper;->communityDetailIntent(Lcom/narvii/model/Community;)Landroid/content/Intent;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/model/Community;->themeColor()I

    .line 13
    move-result v2

    .line 14
    .line 15
    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x0

    .line 19
    .line 20
    aput-object v2, v1, v3

    .line 21
    .line 22
    const-string v2, "#%06X"

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    const-string v2, "pageBackground"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    .line 33
    const-string v1, "prefetch"

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/master/CommunityHelper;->context:Lcom/narvii/app/NVContext;

    .line 43
    .line 44
    .line 45
    invoke-static {p1, v0}, Lcom/narvii/master/CommunityHelper;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 46
    :cond_0
    return-void
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

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
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
    invoke-static {p0, v0}, Lcom/narvii/master/CommunityHelper;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 30
    return-void
.end method


# virtual methods
.method public autoOpenCommunityDetail()Lcom/narvii/master/CommunityHelper;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/master/CommunityHelper;->autoOpenCommunityDetail:Z

    return-object p0
.end method

.method public communityDetail(Lcom/narvii/model/Community;)V
    .locals 0

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/master/CommunityHelper;->openCommunityDetail(Lcom/narvii/model/Community;)V

    .line 7
    return-void
.end method

.method public communityDetailIntent(Lcom/narvii/model/Community;)Landroid/content/Intent;
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    .line 6
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/CommunityHelper;->packageUtils:Lcom/narvii/util/PackageUtils;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getCommunityIdFromPackageName()I

    .line 10
    .line 11
    const-class v0, Lcom/narvii/master/CommunityDetailFragment;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    const-string v1, "id"

    .line 18
    .line 19
    iget v2, p1, Lcom/narvii/model/Community;->id:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 23
    .line 24
    const-string v1, "icon"

    .line 25
    .line 26
    iget-object v2, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    const-string v1, "prefetch"

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    const-string p1, "Source"

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/master/CommunityHelper;->source:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    iget-object p1, p0, Lcom/narvii/master/CommunityHelper;->eventOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    const-string v1, "eventOrigin"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    .line 60
    :cond_1
    iget-object p1, p0, Lcom/narvii/master/CommunityHelper;->eventSource:Lcom/narvii/util/logging/LoggingSource;

    .line 61
    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    const-string v1, "eventSource"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    .line 73
    :cond_2
    iget-object p1, p0, Lcom/narvii/master/CommunityHelper;->tags:Ljava/lang/String;

    .line 74
    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    const-string v1, "tags"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    :cond_3
    return-object v0
.end method

.method public communityDetailWithInviteUrl(Lcom/narvii/model/Community;Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/master/CommunityHelper;->communityDetail(Lcom/narvii/model/Community;)V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/master/CommunityHelper;->context:Lcom/narvii/app/NVContext;

    .line 15
    .line 16
    .line 17
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 25
    .line 26
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    const-string v2, "/community/link-identify"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    const-string v2, "q"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 45
    move-result-object p2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 49
    move-result-object p2

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    const-string v2, "api"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 62
    .line 63
    new-instance v2, Lcom/narvii/master/CommunityHelper$1;

    .line 64
    .line 65
    const-class v3, Lcom/narvii/master/invitation/CommunityInviteResponse;

    .line 66
    .line 67
    .line 68
    invoke-direct {v2, p0, v3, v0, p1}, Lcom/narvii/master/CommunityHelper$1;-><init>(Lcom/narvii/master/CommunityHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/Community;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, p2, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 72
    :goto_0
    return-void
.end method

.method public eventOrigin(Lcom/narvii/util/logging/LoggingOrigin;)Lcom/narvii/master/CommunityHelper;
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/CommunityHelper;->eventOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    return-object p0
.end method

.method public eventSource(Lcom/narvii/util/logging/LoggingSource;)Lcom/narvii/master/CommunityHelper;
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/CommunityHelper;->eventSource:Lcom/narvii/util/logging/LoggingSource;

    return-object p0
.end method

.method public getCommunityDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/CommunityHelper;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "config"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 18
    move-result v0

    .line 19
    .line 20
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 24
    .line 25
    .line 26
    const v2, 0x10100a7

    .line 27
    .line 28
    .line 29
    filled-new-array {v2}, [I

    .line 30
    move-result-object v2

    .line 31
    .line 32
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 33
    .line 34
    .line 35
    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 39
    .line 40
    sget-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    .line 41
    .line 42
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 43
    .line 44
    .line 45
    invoke-direct {v2, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 49
    return-object v1
.end method

.method public getFeedBackIntent()Landroid/content/Intent;
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/narvii/webview/WebViewFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "url"

    .line 9
    .line 10
    const-string v2, "https://support.altamino.top/hc/requests/new"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    const-string v1, "addAcceptLanguage"

    .line 16
    const/4 v2, 0x1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 20
    return-object v0
.end method

.method public getFirstLetterCap(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 45
    return-object p1
.end method

.method public getFirstLetterCapLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/master/CommunityHelper;->getFirstLetterCap(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const-string v0, "En"

    .line 9
    .line 10
    :cond_0
    new-instance p1, Landroid/text/SpannableStringBuilder;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    iget-object v2, p0, Lcom/narvii/master/CommunityHelper;->context:Lcom/narvii/app/NVContext;

    .line 18
    .line 19
    .line 20
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    const v3, 0x7f1204b3

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, " "

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-direct {p1, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    const/16 v1, 0x20

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    return-object p1
.end method

.method public joinCommunity(ILjava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/master/CommunityHelper;->joinCommunity(ILjava/lang/String;Lcom/narvii/util/Callback;Z)V

    return-void
.end method

.method public joinCommunity(ILjava/lang/String;Lcom/narvii/util/Callback;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 2
    new-instance v5, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v0, p0, Lcom/narvii/master/CommunityHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    if-eqz p4, :cond_0

    .line 3
    invoke-virtual {v5}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 4
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/community/join"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    if-eqz p2, :cond_1

    const-string v1, "invitationId"

    .line 5
    invoke-virtual {v0, v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/master/CommunityHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/narvii/util/http/ApiService;

    .line 8
    new-instance v8, Lcom/narvii/master/CommunityHelper$2;

    const-class v2, Lcom/narvii/model/api/UserResponse;

    move-object v0, v8

    move-object v1, p0

    move v3, p1

    move v4, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/narvii/master/CommunityHelper$2;-><init>(Lcom/narvii/master/CommunityHelper;Ljava/lang/Class;IZLcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/util/Callback;)V

    invoke-virtual {v7, p2, v8}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public source(Ljava/lang/String;)Lcom/narvii/master/CommunityHelper;
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/CommunityHelper;->source:Ljava/lang/String;

    return-object p0
.end method

.method public tags(Ljava/lang/String;)Lcom/narvii/master/CommunityHelper;
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/CommunityHelper;->tags:Ljava/lang/String;

    return-object p0
.end method

.method public visitCommunity(Lcom/narvii/model/Community;Landroid/view/View;)V
    .locals 4
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    if-nez p2, :cond_1

    .line 6
    .line 7
    const-string p2, "visitorMode"

    .line 8
    .line 9
    const-string v0, "cell is null"

    .line 10
    .line 11
    .line 12
    invoke-static {p2, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/narvii/master/CommunityHelper;->openCommunityDetail(Lcom/narvii/model/Community;)V

    .line 16
    return-void

    .line 17
    .line 18
    .line 19
    :cond_1
    const v0, 0x7f0a06eb

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    const v1, 0x7f0a036b

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/master/CommunityHelper;->context:Lcom/narvii/app/NVContext;

    .line 33
    .line 34
    const-string v2, "account"

    .line 35
    .line 36
    .line 37
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 41
    .line 42
    sget v2, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 43
    .line 44
    const/16 v3, 0x64

    .line 45
    .line 46
    if-ne v2, v3, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 50
    move-result v1

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    iget v1, p1, Lcom/narvii/model/Community;->joinType:I

    .line 55
    .line 56
    if-nez v1, :cond_2

    .line 57
    const/4 v1, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/4 v1, 0x0

    .line 60
    .line 61
    :goto_0
    instance-of v2, v0, Lcom/narvii/widget/NVImageView;

    .line 62
    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    new-instance v1, Lcom/narvii/master/VisitorLaunchCommunityHelper;

    .line 68
    .line 69
    iget-object v2, p0, Lcom/narvii/master/CommunityHelper;->context:Lcom/narvii/app/NVContext;

    .line 70
    .line 71
    .line 72
    invoke-direct {v1, v2}, Lcom/narvii/master/VisitorLaunchCommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p1, v0, p2}, Lcom/narvii/master/VisitorLaunchCommunityHelper;->launchCommunity(Lcom/narvii/model/Community;Landroid/view/View;Landroid/view/View;)V

    .line 76
    goto :goto_1

    .line 77
    .line 78
    .line 79
    :cond_3
    invoke-direct {p0, p1}, Lcom/narvii/master/CommunityHelper;->openCommunityDetail(Lcom/narvii/model/Community;)V

    .line 80
    :goto_1
    return-void
.end method
