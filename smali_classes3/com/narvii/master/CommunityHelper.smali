.class public Lcom/narvii/master/CommunityHelper;
.super Ljava/lang/Object;
.source "CommunityHelper.java"


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

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/narvii/master/CommunityHelper;->context:Lcom/narvii/app/NVContext;

    .line 68
    new-instance v0, Lcom/narvii/util/PackageUtils;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/master/CommunityHelper;->packageUtils:Lcom/narvii/util/PackageUtils;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;ILcom/narvii/model/Community;)V
    .locals 0

    .line 55
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
        0x7f0f06c7 -> :sswitch_5
        0x7f0f06da -> :sswitch_4
        0x7f0f06e3 -> :sswitch_3
        0x7f0f06f3 -> :sswitch_2
        0x7f0f06f7 -> :sswitch_1
        0x7f0f06ff -> :sswitch_0
    .end sparse-switch
.end method

.method private openCommunityDetail(Lcom/narvii/model/Community;)V
    .locals 4

    .line 127
    invoke-virtual {p0, p1}, Lcom/narvii/master/CommunityHelper;->communityDetailIntent(Lcom/narvii/model/Community;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 129
    invoke-virtual {p1}, Lcom/narvii/model/Community;->themeColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "#%06X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pageBackground"

    .line 130
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "prefetch"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    iget-object p1, p0, Lcom/narvii/master/CommunityHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private static tryJoinPrivateCommunity(Landroid/content/Context;ILcom/narvii/model/Community;)V
    .locals 2

    .line 347
    const-class v0, Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    .line 348
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 349
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "prefetch"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "joinOnly"

    const/4 p2, 0x1

    .line 350
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 351
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public autoOpenCommunityDetail()Lcom/narvii/master/CommunityHelper;
    .locals 1

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/narvii/master/CommunityHelper;->autoOpenCommunityDetail:Z

    return-object p0
.end method

.method public communityDetail(Lcom/narvii/model/Community;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/master/CommunityHelper;->openCommunityDetail(Lcom/narvii/model/Community;)V

    return-void
.end method

.method public communityDetailIntent(Lcom/narvii/model/Community;)Landroid/content/Intent;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/narvii/master/CommunityHelper;->packageUtils:Lcom/narvii/util/PackageUtils;

    invoke-virtual {v1}, Lcom/narvii/util/PackageUtils;->getCommunityIdFromPackageName()I

    move-result v1

    .line 179
    sget v2, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v3, 0x65

    const-string v4, "Source"

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/narvii/master/CommunityHelper;->packageUtils:Lcom/narvii/util/PackageUtils;

    .line 180
    invoke-virtual {v2}, Lcom/narvii/util/PackageUtils;->getMasterPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/narvii/util/PackageUtils;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p1, Lcom/narvii/model/Community;->id:I

    if-eq v1, v2, :cond_1

    .line 182
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/narvii/master/CommunityHelper;->packageUtils:Lcom/narvii/util/PackageUtils;

    invoke-virtual {v2}, Lcom/narvii/util/PackageUtils;->getMasterScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/model/Community;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/description"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 183
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 184
    iget-object p1, p0, Lcom/narvii/master/CommunityHelper;->packageUtils:Lcom/narvii/util/PackageUtils;

    invoke-virtual {p1}, Lcom/narvii/util/PackageUtils;->getMasterPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "standalone"

    const/4 v2, 0x1

    .line 185
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 186
    iget-object p1, p0, Lcom/narvii/master/CommunityHelper;->source:Ljava/lang/String;

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "clearTask"

    .line 187
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "__forwardInitTaskActivity"

    const/4 v2, 0x0

    .line 188
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0

    .line 194
    :cond_1
    const-class v0, Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 195
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 196
    iget-object v1, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    const-string v2, "icon"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "prefetch"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    iget-object p1, p0, Lcom/narvii/master/CommunityHelper;->source:Ljava/lang/String;

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    iget-object p1, p0, Lcom/narvii/master/CommunityHelper;->eventOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    if-eqz p1, :cond_2

    .line 200
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "eventOrigin"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    :cond_2
    iget-object p1, p0, Lcom/narvii/master/CommunityHelper;->eventSource:Lcom/narvii/util/logging/LoggingSource;

    if-eqz p1, :cond_3

    .line 203
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "eventSource"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    :cond_3
    iget-object p1, p0, Lcom/narvii/master/CommunityHelper;->tags:Ljava/lang/String;

    if-eqz p1, :cond_4

    const-string v1, "tags"

    .line 206
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    return-object v0
.end method

.method public communityDetailWithInviteUrl(Lcom/narvii/model/Community;Ljava/lang/String;)V
    .locals 4

    .line 137
    invoke-static {p2}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0, p1}, Lcom/narvii/master/CommunityHelper;->communityDetail(Lcom/narvii/model/Community;)V

    goto :goto_0

    .line 140
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/master/CommunityHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 141
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 142
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/community/link-identify"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "q"

    invoke-virtual {v1, v2, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    .line 143
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v1

    const-string v2, "api"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 144
    new-instance v2, Lcom/narvii/master/CommunityHelper$1;

    const-class v3, Lcom/narvii/master/invitation/CommunityInviteResponse;

    invoke-direct {v2, p0, v3, v0, p1}, Lcom/narvii/master/CommunityHelper$1;-><init>(Lcom/narvii/master/CommunityHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/Community;)V

    invoke-virtual {v1, p2, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :goto_0
    return-void
.end method

.method public eventOrigin(Lcom/narvii/util/logging/LoggingOrigin;)Lcom/narvii/master/CommunityHelper;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/narvii/master/CommunityHelper;->eventOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    return-object p0
.end method

.method public eventSource(Lcom/narvii/util/logging/LoggingSource;)Lcom/narvii/master/CommunityHelper;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/narvii/master/CommunityHelper;->eventSource:Lcom/narvii/util/logging/LoggingSource;

    return-object p0
.end method

.method public getCommunityDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 233
    iget-object v0, p0, Lcom/narvii/master/CommunityHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "config"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 234
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v0

    .line 235
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x10100a7

    aput v4, v2, v3

    .line 236
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 237
    sget-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public getFeedBackIntent()Landroid/content/Intent;
    .locals 3

    .line 264
    const-class v0, Lcom/narvii/webview/WebViewFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    const-string v2, "https://support.altamino.top/hc/requests/new"

    .line 265
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "addAcceptLanguage"

    const/4 v2, 0x1

    .line 266
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public getFirstLetterCap(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_1

    .line 226
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFirstLetterCapLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 215
    invoke-virtual {p0, p1}, Lcom/narvii/master/CommunityHelper;->getFirstLetterCap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    const-string v0, "En"

    .line 219
    :cond_0
    new-instance p1, Landroid/text/SpannableStringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/narvii/master/CommunityHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0409

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v1, 0x20

    .line 220
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 221
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 222
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

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

    .line 272
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

    .line 277
    new-instance v5, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v0, p0, Lcom/narvii/master/CommunityHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    if-eqz p4, :cond_0

    .line 279
    invoke-virtual {v5}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 281
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

    .line 283
    invoke-virtual {v0, v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 285
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    .line 286
    iget-object v0, p0, Lcom/narvii/master/CommunityHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/narvii/util/http/ApiService;

    .line 287
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

    .line 72
    iput-object p1, p0, Lcom/narvii/master/CommunityHelper;->source:Ljava/lang/String;

    return-object p0
.end method

.method public tags(Ljava/lang/String;)Lcom/narvii/master/CommunityHelper;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/narvii/master/CommunityHelper;->tags:Ljava/lang/String;

    return-object p0
.end method

.method public visitCommunity(Lcom/narvii/model/Community;Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p2, "visitorMode"

    const-string v0, "cell is null"

    .line 109
    invoke-static {p2, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, p1}, Lcom/narvii/master/CommunityHelper;->openCommunityDetail(Lcom/narvii/model/Community;)V

    return-void

    :cond_1
    const v0, 0x7f090571

    .line 114
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902a3

    .line 115
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 116
    iget-object v1, p0, Lcom/narvii/master/CommunityHelper;->context:Lcom/narvii/app/NVContext;

    const-string v2, "account"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 118
    sget v2, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/narvii/model/Community;->joinType:I

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 119
    :goto_0
    instance-of v2, v0, Lcom/narvii/widget/NVImageView;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 120
    new-instance v1, Lcom/narvii/master/VisitorLaunchCommunityHelper;

    iget-object v2, p0, Lcom/narvii/master/CommunityHelper;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v1, v2}, Lcom/narvii/master/VisitorLaunchCommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v1, p1, v0, p2}, Lcom/narvii/master/VisitorLaunchCommunityHelper;->launchCommunity(Lcom/narvii/model/Community;Landroid/view/View;Landroid/view/View;)V

    goto :goto_1

    .line 122
    :cond_3
    invoke-direct {p0, p1}, Lcom/narvii/master/CommunityHelper;->openCommunityDetail(Lcom/narvii/model/Community;)V

    :goto_1
    return-void
.end method
