.class public Lcom/narvii/app/ForwardActivity;
.super Lcom/narvii/app/NVActivity;
.source "ForwardActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;
    }
.end annotation


# static fields
.field public static final CLEAR_TASK:Ljava/lang/String; = "clearTask"

.field protected static final JOIN_COMMUNITY_REQUEST:I = 0x2

.field private static final PTN:Ljava/util/regex/Pattern;

.field protected static final START_REQUEST:I = 0x1


# instance fields
.field accountService:Lcom/narvii/account/AccountService;

.field affiliationsService:Lcom/narvii/community/AffiliationsService;

.field fromGlobalChat:Z

.field launchHelper:Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;

.field layoutId:I

.field navigator:Lcom/narvii/navigator/Navigator;

.field waitingForJoinCommunityId:I

.field waitingForJoinIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[\\d\\w]{10}"

    .line 747
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/narvii/app/ForwardActivity;->PTN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/app/ForwardActivity;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method private handleForwardLink(Ljava/lang/String;)V
    .locals 8

    .line 185
    invoke-static {p1}, Lcom/narvii/app/ForwardActivity;->translateLinkQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 186
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "from_web"

    .line 187
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v1, "sharerId"

    .line 188
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "api"

    const-string/jumbo v1, "q"

    const v2, 0x7f0b0273

    if-eqz v5, :cond_0

    .line 190
    iput v2, p0, Lcom/narvii/app/ForwardActivity;->layoutId:I

    .line 191
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v2, "/link-resolution"

    invoke-virtual {p1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1, v1, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 192
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/narvii/util/http/ApiService;

    .line 193
    new-instance v7, Lcom/narvii/app/ForwardActivity$1;

    const-class v2, Lcom/narvii/share/LinkV2TranslationResponse;

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/narvii/app/ForwardActivity$1;-><init>(Lcom/narvii/app/ForwardActivity;Ljava/lang/Class;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, p1, v7}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    goto/16 :goto_1

    .line 224
    :cond_0
    invoke-static {p1}, Lcom/narvii/app/ForwardActivity;->isInviteLink(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {p1}, Lcom/narvii/app/ForwardActivity;->isCommunityLink(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_0

    .line 261
    :cond_1
    invoke-static {p1}, Lcom/narvii/app/ForwardActivity;->isOpenHome(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 262
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/narvii/master/MasterActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVContext;

    invoke-static {v0, p1}, Lcom/narvii/master/MasterActivity;->backToMaster(Lcom/narvii/app/NVContext;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 264
    invoke-direct {p0, p1}, Lcom/narvii/app/ForwardActivity;->start(Landroid/content/Intent;)V

    const-string p1, "forward open home"

    .line 265
    invoke-static {p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 269
    .line 279
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 282
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 283
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 285
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 288
    :cond_4
    :try_start_0
    invoke-direct {p0, v0}, Lcom/narvii/app/ForwardActivity;->start(Landroid/content/Intent;)V

    const p1, 0x7f010029

    const v1, 0x7f01002a

    .line 289
    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 290
    invoke-direct {p0, v0}, Lcom/narvii/app/ForwardActivity;->log(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 292
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unable to forward url "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 225
    :cond_5
    :goto_0
    iput v2, p0, Lcom/narvii/app/ForwardActivity;->layoutId:I

    .line 226
    invoke-static {p1}, Lcom/narvii/app/ForwardActivity;->isInviteLink(Ljava/lang/String;)Z

    move-result v2

    .line 227
    new-instance v3, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v3}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    const-string v4, "/community/link-identify"

    invoke-virtual {v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    .line 228
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 229
    new-instance v3, Lcom/narvii/app/ForwardActivity$2;

    const-class v4, Lcom/narvii/master/invitation/CommunityInviteResponse;

    invoke-direct {v3, p0, v4, p1, v2}, Lcom/narvii/app/ForwardActivity$2;-><init>(Lcom/narvii/app/ForwardActivity;Ljava/lang/Class;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    const-string/jumbo v0, "pasteBoard"

    .line 256
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/master/invitation/PasteBoardService;

    if-eqz v0, :cond_6

    .line 259
    invoke-virtual {v0, p1}, Lcom/narvii/master/invitation/PasteBoardService;->updateUrl(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public static isCommunityLink(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 689
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v1, "http"

    .line 691
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 693
    :cond_0
    new-instance v1, Lcom/narvii/util/PackageUtils;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/PackageUtils;->isPermalinkHost(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 695
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    .line 696
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    const-string v1, "c"

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "g"

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    :cond_2
    return v2

    :catch_0
    :cond_3
    :goto_0
    return v0
.end method

.method public static isInviteCode(Ljava/lang/String;)Z
    .locals 1

    .line 724
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 727
    :cond_0
    sget-object v0, Lcom/narvii/app/ForwardActivity;->PTN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isInviteLink(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 707
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v1, "http"

    .line 709
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 711
    :cond_0
    new-instance v1, Lcom/narvii/util/PackageUtils;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/PackageUtils;->isPermalinkHost(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 713
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    .line 714
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    const-string v1, "invite"

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/narvii/app/ForwardActivity;->PTN:Ljava/util/regex/Pattern;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    return v2

    :catch_0
    :cond_2
    :goto_0
    return v0
.end method

.method public static isOpenHome(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 732
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v1, "http"

    .line 733
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    .line 734
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 737
    :cond_0
    new-instance v1, Lcom/narvii/util/PackageUtils;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 738
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/PackageUtils;->isPermalinkHost(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const-string v1, "home"

    const-string v2, "open"

    .line 741
    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public static isPermalink(Ljava/lang/String;)Z
    .locals 0

    .line 684
    invoke-static {p0}, Lcom/narvii/app/ForwardActivity;->translateLinkQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private log(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "fragment"

    .line 612
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forward url "

    .line 613
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    .line 614
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 616
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 617
    const-class v3, Lcom/narvii/app/FragmentWrapperActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 618
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 621
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    if-eqz p1, :cond_0

    .line 623
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 626
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fragment "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 628
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 631
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 633
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static mergeIntentExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 849
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    .line 851
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 852
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 853
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "__"

    .line 854
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 855
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 858
    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_3
    return-void
.end method

.method private start(Landroid/content/Intent;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 527
    iget-object v2, v0, Lcom/narvii/app/ForwardActivity;->navigator:Lcom/narvii/navigator/Navigator;

    instance-of v2, v2, Lcom/narvii/app/incubator/IncubatorNavigator;

    const-string v3, "Link"

    const-string v4, "__forward"

    const/4 v5, 0x1

    const-string v6, "Source"

    if-eqz v2, :cond_8

    const-string v2, "__forwardCommunityId"

    const/4 v7, 0x0

    .line 529
    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_1

    .line 533
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 534
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 536
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/chat-thread/"

    .line 537
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v8, 0x0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    const-string v11, "/blog/"

    .line 542
    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v8, 0x0

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :cond_2
    :goto_1
    if-nez v8, :cond_3

    .line 551
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 552
    iget-object v8, v0, Lcom/narvii/app/ForwardActivity;->navigator:Lcom/narvii/navigator/Navigator;

    invoke-interface {v8, v1}, Lcom/narvii/navigator/Navigator;->intentMapping(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 553
    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    :cond_3
    move v12, v8

    if-eqz v12, :cond_6

    const v2, 0x7f0b0273

    .line 557
    iput v2, v0, Lcom/narvii/app/ForwardActivity;->layoutId:I

    .line 558
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 559
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 560
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 561
    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    :cond_4
    iget-object v1, v0, Lcom/narvii/app/ForwardActivity;->launchHelper:Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;

    if-eqz v1, :cond_5

    .line 564
    invoke-virtual {v1}, Lcom/narvii/community/CommunityLaunchHelper;->cancel()V

    .line 566
    :cond_5
    new-instance v1, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;

    invoke-direct {v1, v0, v12, v10, v2}, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;-><init>(Lcom/narvii/app/ForwardActivity;IZLandroid/content/Intent;)V

    iput-object v1, v0, Lcom/narvii/app/ForwardActivity;->launchHelper:Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;

    .line 567
    iget-object v11, v0, Lcom/narvii/app/ForwardActivity;->launchHelper:Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-virtual/range {v11 .. v19}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V

    goto :goto_2

    .line 569
    :cond_6
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 570
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 571
    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    :cond_7
    invoke-virtual {v0, v1}, Lcom/narvii/app/ForwardActivity;->startForward(Landroid/content/Intent;)V

    goto :goto_2

    .line 576
    :cond_8
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 577
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 578
    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/narvii/app/ForwardActivity;->startForward(Landroid/content/Intent;)V

    :goto_2
    return-void
.end method

.method public static translateLinkQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 650
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "http"

    .line 651
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https"

    .line 652
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 655
    :cond_0
    new-instance v2, Lcom/narvii/util/PackageUtils;

    invoke-direct {v2, v0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 656
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/narvii/util/PackageUtils;->isPermalinkHost(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    .line 659
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/g/page/"

    .line 661
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object p0

    :cond_2
    const-string v3, "/page/"

    .line 664
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 p0, 0x6

    .line 665
    invoke-virtual {v2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v3, "/p/"

    .line 667
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_4

    .line 668
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-string v3, "/u/"

    .line 670
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-object p0

    .line 673
    :cond_5
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    const/4 v3, 0x0

    goto :goto_0

    .line 674
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-le v3, v4, :cond_8

    const-string v3, "c"

    .line 675
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string/jumbo v2, "page"

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "market"

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_8

    :cond_7
    return-object p0

    :catch_0
    :cond_8
    return-object v0
.end method


# virtual methods
.method public isModel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$onCreate$0$ForwardActivity(Lcom/narvii/util/DeepLinkManager$DynamicLinkResult;)V
    .locals 2

    .line 148
    iget-object v0, p1, Lcom/narvii/util/DeepLinkManager$DynamicLinkResult;->errorMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0b0274

    .line 149
    iput v0, p0, Lcom/narvii/app/ForwardActivity;->layoutId:I

    .line 150
    iget v0, p0, Lcom/narvii/app/ForwardActivity;->layoutId:I

    invoke-virtual {p0, v0}, Lcom/narvii/app/ForwardActivity;->setContentView(I)V

    .line 151
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/narvii/util/DeepLinkManager$DynamicLinkResult;->errorMsg:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void

    .line 154
    :cond_0
    iget-object v0, p1, Lcom/narvii/util/DeepLinkManager$DynamicLinkResult;->pendingDynamicLinkData:Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->getLink()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 155
    iget-object p1, p1, Lcom/narvii/util/DeepLinkManager$DynamicLinkResult;->pendingDynamicLinkData:Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;

    invoke-virtual {p1}, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->getLink()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-direct {p0, p1}, Lcom/narvii/app/ForwardActivity;->handleForwardLink(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move-object/from16 v3, p3

    .line 592
    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 593
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVActivity;->finish()V

    goto :goto_0

    :cond_0
    move-object/from16 v3, p3

    :goto_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ne v2, v4, :cond_1

    .line 596
    iget-object v4, v0, Lcom/narvii/app/ForwardActivity;->waitingForJoinIntent:Landroid/content/Intent;

    if-eqz v4, :cond_1

    const v4, 0x7f0b0273

    .line 597
    iput v4, v0, Lcom/narvii/app/ForwardActivity;->layoutId:I

    .line 598
    iget v4, v0, Lcom/narvii/app/ForwardActivity;->layoutId:I

    invoke-virtual {v0, v4}, Lcom/narvii/app/ForwardActivity;->setContentView(I)V

    .line 599
    new-instance v4, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;

    iget v6, v0, Lcom/narvii/app/ForwardActivity;->waitingForJoinCommunityId:I

    iget-object v7, v0, Lcom/narvii/app/ForwardActivity;->waitingForJoinIntent:Landroid/content/Intent;

    invoke-direct {v4, v0, v6, v5, v7}, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;-><init>(Lcom/narvii/app/ForwardActivity;IZLandroid/content/Intent;)V

    iput-object v4, v0, Lcom/narvii/app/ForwardActivity;->launchHelper:Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;

    .line 600
    iget-object v8, v0, Lcom/narvii/app/ForwardActivity;->launchHelper:Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;

    iget v9, v0, Lcom/narvii/app/ForwardActivity;->waitingForJoinCommunityId:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v8 .. v16}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V

    goto :goto_1

    .line 602
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVActivity;->finish()V

    .line 604
    :goto_1
    iput v5, v0, Lcom/narvii/app/ForwardActivity;->waitingForJoinCommunityId:I

    const/4 v4, 0x0

    .line 605
    iput-object v4, v0, Lcom/narvii/app/ForwardActivity;->waitingForJoinIntent:Landroid/content/Intent;

    .line 607
    :cond_2
    invoke-super/range {p0 .. p3}, Lcom/narvii/app/NVActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "__redirectReset"

    const-string v1, "__redirectTaskId"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_3

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 87
    invoke-static {v3}, Lcom/narvii/app/ApplicationSessionHelper;->setNewTask(I)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v5

    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->getTaskId()I

    move-result v6

    if-eq v5, v6, :cond_2

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v5

    invoke-static {v5}, Lcom/narvii/app/ApplicationSessionHelper;->setNewTask(I)V

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->getTaskId()I

    move-result v5

    if-nez v5, :cond_2

    move v5, v4

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v4

    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 96
    :goto_1
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onCreate(Landroid/os/Bundle;)V

    const v6, 0x7f0b0274

    .line 98
    iput v6, p0, Lcom/narvii/app/ForwardActivity;->layoutId:I

    const-string v6, "navigator"

    .line 99
    invoke-virtual {p0, v6}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/navigator/Navigator;

    iput-object v6, p0, Lcom/narvii/app/ForwardActivity;->navigator:Lcom/narvii/navigator/Navigator;

    const-string v6, "account"

    .line 100
    invoke-virtual {p0, v6}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/account/AccountService;

    iput-object v6, p0, Lcom/narvii/app/ForwardActivity;->accountService:Lcom/narvii/account/AccountService;

    const-string v6, "affiliations"

    .line 101
    invoke-virtual {p0, v6}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/community/AffiliationsService;

    iput-object v6, p0, Lcom/narvii/app/ForwardActivity;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    const-string v6, "__fromGlobalChat"

    .line 102
    invoke-virtual {p0, v6, v3}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/narvii/app/ForwardActivity;->fromGlobalChat:Z

    if-nez p1, :cond_4

    const-string v6, "clearTask"

    .line 104
    invoke-virtual {p0, v6}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result v6

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    if-nez v4, :cond_b

    if-nez p1, :cond_5

    if-nez v5, :cond_5

    if-nez v6, :cond_b

    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v5

    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->getTaskId()I

    move-result v7

    if-eq v5, v7, :cond_5

    goto/16 :goto_6

    .line 128
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 129
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v1, "__forward"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_a

    if-eqz p1, :cond_6

    const-string/jumbo v1, "waitingForJoinCommunityId"

    .line 134
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/narvii/app/ForwardActivity;->waitingForJoinCommunityId:I

    if-eqz v1, :cond_6

    const-string/jumbo v0, "waitingForJoinIntent"

    .line 135
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Lcom/narvii/app/ForwardActivity;->waitingForJoinIntent:Landroid/content/Intent;

    return-void

    .line 139
    :cond_6
    invoke-static {p0}, Lcom/narvii/util/AppsflyerManager;->trackDeepLinking(Landroid/app/Activity;)V

    .line 141
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    const/4 v0, 0x0

    goto :goto_3

    .line 142
    :cond_7
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_8

    .line 143
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    const v1, 0x7f0f06bf

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_9

    const p1, 0x7f0b0273

    .line 145
    iput p1, p0, Lcom/narvii/app/ForwardActivity;->layoutId:I

    .line 146
    iget p1, p0, Lcom/narvii/app/ForwardActivity;->layoutId:I

    invoke-virtual {p0, p1}, Lcom/narvii/app/ForwardActivity;->setContentView(I)V

    .line 147
    new-instance p1, Lcom/narvii/app/-$$Lambda$ForwardActivity$mjEy-4sNl7KhraO9jHSsYIkav0E;

    invoke-direct {p1, p0}, Lcom/narvii/app/-$$Lambda$ForwardActivity$mjEy-4sNl7KhraO9jHSsYIkav0E;-><init>(Lcom/narvii/app/ForwardActivity;)V

    invoke-static {p0, v3, p1}, Lcom/narvii/util/DeepLinkManager;->handleDynamicLink(Lcom/narvii/app/NVActivity;ZLcom/narvii/util/Callback;)V

    goto :goto_5

    .line 160
    :cond_9
    invoke-static {p0, p1}, Lcom/narvii/util/DeepLinkManager;->logDeepLinkFromForwardActivity(Lcom/narvii/app/NVActivity;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0, p1}, Lcom/narvii/app/ForwardActivity;->handleForwardLink(Ljava/lang/String;)V

    :cond_a
    :goto_5
    return-void

    .line 108
    :cond_b
    :goto_6
    new-instance p1, Landroid/content/Intent;

    const-class v5, Lcom/narvii/app/ForwardActivity;

    invoke-direct {p1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 113
    :cond_c
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 114
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-nez v4, :cond_e

    if-eqz v6, :cond_d

    goto :goto_7

    :cond_d
    const-string v0, "ForwardActivity redirect for taskId"

    .line 120
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    goto :goto_8

    :cond_e
    :goto_7
    const v1, 0x8000

    .line 116
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "ForwardActivity reset for taskId"

    .line 118
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 122
    :goto_8
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 123
    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 124
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/narvii/app/ForwardActivity;->launchHelper:Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/narvii/community/CommunityLaunchHelper;->cancel()V

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/narvii/app/ForwardActivity;->launchHelper:Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;

    .line 172
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 505
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onResume()V

    .line 506
    iget v0, p0, Lcom/narvii/app/ForwardActivity;->layoutId:I

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {p0, v0}, Lcom/narvii/app/ForwardActivity;->setContentView(I)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 177
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 178
    iget v0, p0, Lcom/narvii/app/ForwardActivity;->waitingForJoinCommunityId:I

    const-string/jumbo v1, "waitingForJoinCommunityId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 179
    iget-object v0, p0, Lcom/narvii/app/ForwardActivity;->waitingForJoinIntent:Landroid/content/Intent;

    const-string/jumbo v1, "waitingForJoinIntent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method protected openCommunityInvite(Ljava/lang/String;Lcom/narvii/master/invitation/CommunityInviteResponse;Z)V
    .locals 8

    .line 411
    new-instance v0, Lcom/narvii/util/PackageUtils;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    const-string v1, "config"

    .line 412
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 413
    sget v2, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const-string v3, "android.intent.action.VIEW"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x65

    if-ne v2, v7, :cond_6

    .line 414
    iget-object p1, p2, Lcom/narvii/master/invitation/CommunityInviteResponse;->community:Lcom/narvii/model/Community;

    iget p1, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 415
    invoke-static {p2}, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->launchCommunity(Lcom/narvii/master/invitation/CommunityInviteResponse;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "loginAhead"

    .line 416
    invoke-virtual {p1, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 417
    sget-object p2, Lcom/narvii/account/LoginActivity;->instance:Ljava/lang/ref/WeakReference;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lcom/narvii/account/LoginActivity;

    :goto_0
    if-eqz v4, :cond_1

    .line 419
    invoke-virtual {v4}, Lcom/narvii/account/LoginActivity;->finish()V

    .line 420
    invoke-virtual {v4, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 421
    invoke-virtual {v4, v6, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_4

    :cond_1
    const/high16 p2, 0x10000000

    .line 423
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 424
    invoke-virtual {p0, p1}, Lcom/narvii/app/ForwardActivity;->startForward(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 426
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->isMasterInstalled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 428
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 429
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/app/ForwardActivity;->mergeIntentExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 430
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getMasterPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "clearTask"

    .line 431
    invoke-virtual {p1, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "customFinishAnimIn"

    .line 432
    invoke-virtual {p1, p2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "customFinishAnimOut"

    .line 433
    invoke-virtual {p1, p2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 434
    invoke-virtual {p0, p1}, Lcom/narvii/app/ForwardActivity;->startForward(Landroid/content/Intent;)V

    .line 435
    invoke-virtual {p0, v6, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_4

    .line 438
    :cond_3
    new-instance p1, Lcom/narvii/master/MasterHelper;

    invoke-direct {p1, p0}, Lcom/narvii/master/MasterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 439
    iget-object v1, p2, Lcom/narvii/master/invitation/CommunityInviteResponse;->invitationId:Ljava/lang/String;

    if-eqz p3, :cond_4

    .line 441
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 442
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "http://"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Lcom/narvii/util/PackageUtils;->getPermalinkHost(Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/invite/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 444
    :cond_4
    iget-object p2, p2, Lcom/narvii/master/invitation/CommunityInviteResponse;->community:Lcom/narvii/model/Community;

    if-eqz p2, :cond_5

    iget-object v4, p2, Lcom/narvii/model/Community;->link:Ljava/lang/String;

    :cond_5
    move-object p2, v4

    .line 446
    :goto_1
    invoke-virtual {p1, p2}, Lcom/narvii/master/MasterHelper;->showDownloadMaterDialog(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 450
    :cond_6
    iget-boolean p3, p2, Lcom/narvii/master/invitation/CommunityInviteResponse;->isCurrentUserJoined:Z

    const-string v0, "ndc://"

    if-eqz p3, :cond_8

    .line 451
    iget-object p3, p2, Lcom/narvii/master/invitation/CommunityInviteResponse;->path:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 455
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 456
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x2f

    .line 457
    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 458
    invoke-virtual {p1, p3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 459
    invoke-virtual {p1, p3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result p3

    if-nez v0, :cond_9

    if-le v1, v0, :cond_9

    if-le p3, v1, :cond_9

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ndc://x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/narvii/master/invitation/CommunityInviteResponse;->community:Lcom/narvii/model/Community;

    iget v1, v1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 462
    new-instance p3, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p3, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 463
    iget-object p1, p0, Lcom/narvii/app/ForwardActivity;->navigator:Lcom/narvii/navigator/Navigator;

    invoke-interface {p1, p3}, Lcom/narvii/navigator/Navigator;->intentMapping(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 464
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p3, :cond_9

    goto :goto_2

    .line 471
    :cond_7
    new-instance p1, Landroid/content/Intent;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/narvii/master/invitation/CommunityInviteResponse;->path:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-direct {p1, v3, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 472
    iget-object p3, p0, Lcom/narvii/app/ForwardActivity;->navigator:Lcom/narvii/navigator/Navigator;

    invoke-interface {p3, p1}, Lcom/narvii/navigator/Navigator;->intentMapping(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 473
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p3

    if-eqz p3, :cond_9

    goto :goto_2

    .line 477
    :cond_8
    iget-object p1, p2, Lcom/narvii/master/invitation/CommunityInviteResponse;->path:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p2, Lcom/narvii/master/invitation/CommunityInviteResponse;->community:Lcom/narvii/model/Community;

    if-nez p1, :cond_9

    .line 478
    new-instance p1, Landroid/content/Intent;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/narvii/master/invitation/CommunityInviteResponse;->path:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-direct {p1, v3, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 479
    iget-object p3, p0, Lcom/narvii/app/ForwardActivity;->navigator:Lcom/narvii/navigator/Navigator;

    invoke-interface {p3, p1}, Lcom/narvii/navigator/Navigator;->intentMapping(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 480
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p3

    if-eqz p3, :cond_9

    goto :goto_2

    :catch_0
    :cond_9
    move-object p1, v4

    :goto_2
    if-nez p1, :cond_a

    .line 485
    invoke-static {p2}, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->launchCommunity(Lcom/narvii/master/invitation/CommunityInviteResponse;)Landroid/content/Intent;

    move-result-object p1

    :cond_a
    const-string p2, "Source"

    const-string p3, "Invite Code"

    .line 487
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/app/ForwardActivity;->mergeIntentExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 489
    sget-object p2, Lcom/narvii/master/invitation/PasteBoardService;->SKIP:Lcom/narvii/util/statistics/TmpValue;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-wide/16 v0, 0x3a98

    invoke-virtual {p2, p3, v0, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;J)V

    .line 491
    sget-object p2, Lcom/narvii/account/LoginActivity;->instance:Ljava/lang/ref/WeakReference;

    if-nez p2, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lcom/narvii/account/LoginActivity;

    :goto_3
    if-eqz v4, :cond_c

    .line 493
    invoke-virtual {v4}, Lcom/narvii/account/LoginActivity;->finish()V

    .line 494
    invoke-virtual {v4, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 495
    invoke-virtual {v4, v6, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 496
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->finish()V

    goto :goto_4

    .line 498
    :cond_c
    invoke-virtual {p0, p1}, Lcom/narvii/app/ForwardActivity;->startForward(Landroid/content/Intent;)V

    :goto_4
    return-void
.end method

.method protected openLinkTranslation(Lcom/narvii/share/LinkInfoV2;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/narvii/app/ForwardActivity;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    invoke-virtual {p1}, Lcom/narvii/share/LinkInfoV2;->getInnerLinkInfo()Lcom/narvii/share/LinkInfo;

    move-result-object v0

    iget v0, v0, Lcom/narvii/share/LinkInfo;->ndcId:I

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p1}, Lcom/narvii/share/LinkInfoV2;->getInnerLinkInfo()Lcom/narvii/share/LinkInfo;

    move-result-object p1

    iget p1, p1, Lcom/narvii/share/LinkInfo;->ndcId:I

    invoke-virtual {p0, p1}, Lcom/narvii/app/ForwardActivity;->openWebView(I)V

    return-void

    .line 323
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/share/LinkInfoV2;->getInnerLinkInfo()Lcom/narvii/share/LinkInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 327
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/share/LinkInfoV2;->getInnerLinkInfo()Lcom/narvii/share/LinkInfo;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lcom/narvii/app/ForwardActivity;->navigator:Lcom/narvii/navigator/Navigator;

    instance-of v2, v1, Lcom/narvii/app/incubator/IncubatorNavigator;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "config"

    const-string v5, "ndc://"

    if-eqz v2, :cond_7

    .line 332
    iget-object v2, p1, Lcom/narvii/share/LinkInfoV2;->path:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/narvii/share/LinkInfoV2;->path:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 334
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 335
    iget-object p1, p0, Lcom/narvii/app/ForwardActivity;->navigator:Lcom/narvii/navigator/Navigator;

    invoke-interface {p1, v1}, Lcom/narvii/navigator/Navigator;->intentMapping(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 336
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    .line 340
    :cond_2
    check-cast v1, Lcom/narvii/app/incubator/IncubatorNavigator;

    iget p1, v0, Lcom/narvii/share/LinkInfo;->ndcId:I

    iget v2, v0, Lcom/narvii/share/LinkInfo;->objectType:I

    invoke-static {v2}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/narvii/share/LinkInfo;->objectId:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Lcom/narvii/app/incubator/IncubatorNavigator;->rawHttpMapping(ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    :cond_3
    :goto_0
    if-eqz p1, :cond_6

    .line 344
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/narvii/app/ForwardActivity;->mergeIntentExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 345
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 346
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    iget v2, v0, Lcom/narvii/share/LinkInfo;->ndcId:I

    if-eq v1, v2, :cond_4

    const-string v0, "__forwardCommunityId"

    .line 347
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 349
    :cond_4
    iget-boolean v1, p0, Lcom/narvii/app/ForwardActivity;->fromGlobalChat:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/narvii/app/ForwardActivity;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    invoke-virtual {v1, v2}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 350
    iget p1, v0, Lcom/narvii/share/LinkInfo;->ndcId:I

    invoke-virtual {p0, p1}, Lcom/narvii/app/ForwardActivity;->openWebView(I)V

    return-void

    .line 354
    :cond_5
    :goto_1
    invoke-direct {p0, p1}, Lcom/narvii/app/ForwardActivity;->start(Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 356
    :cond_6
    iget p1, v0, Lcom/narvii/share/LinkInfo;->ndcId:I

    invoke-virtual {p0, p1}, Lcom/narvii/app/ForwardActivity;->openWebView(I)V

    goto/16 :goto_5

    .line 361
    :cond_7
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 362
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/narvii/app/ForwardActivity;->mergeIntentExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 364
    sget v1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v2, 0x65

    const/4 v3, 0x0

    const/4 v6, 0x1

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_9

    .line 365
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    .line 366
    :cond_9
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    :goto_3
    check-cast v2, Lcom/narvii/config/ConfigService;

    .line 367
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v2

    iget v4, v0, Lcom/narvii/share/LinkInfo;->ndcId:I

    const-string v7, "__forward"

    const-string v8, "__communityId"

    const-string v9, "/"

    if-ne v2, v4, :cond_c

    .line 368
    iget-boolean v2, p0, Lcom/narvii/app/ForwardActivity;->fromGlobalChat:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/narvii/app/ForwardActivity;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    invoke-virtual {v2, v4}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 369
    iget p1, v0, Lcom/narvii/share/LinkInfo;->ndcId:I

    invoke-virtual {p0, p1}, Lcom/narvii/app/ForwardActivity;->openWebView(I)V

    return-void

    .line 372
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/narvii/share/LinkInfo;->objectType:I

    invoke-static {v3}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/narvii/share/LinkInfo;->objectId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 373
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-eqz v1, :cond_b

    .line 375
    iget v1, v0, Lcom/narvii/share/LinkInfo;->ndcId:I

    invoke-virtual {p1, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 377
    :cond_b
    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_4

    :cond_c
    if-eqz v1, :cond_d

    .line 380
    iget v1, v0, Lcom/narvii/share/LinkInfo;->objectType:I

    const/16 v2, 0x83

    if-ne v1, v2, :cond_d

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/narvii/share/LinkInfo;->objectType:I

    invoke-static {v2}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/narvii/share/LinkInfo;->objectId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 382
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 383
    invoke-virtual {p1, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 384
    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_4

    .line 386
    :cond_d
    new-instance v1, Lcom/narvii/util/PackageUtils;

    invoke-direct {v1, p0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 387
    iget v2, v0, Lcom/narvii/share/LinkInfo;->ndcId:I

    invoke-virtual {v1, v2}, Lcom/narvii/util/PackageUtils;->isCommunityInstalled(I)Z

    move-result v2

    const-string v3, "clearTask"

    if-eqz v2, :cond_e

    .line 388
    iget v2, v0, Lcom/narvii/share/LinkInfo;->ndcId:I

    invoke-virtual {v1, v2}, Lcom/narvii/util/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/narvii/app/ForwardActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_4

    .line 390
    :cond_e
    invoke-virtual {v1}, Lcom/narvii/util/PackageUtils;->isMasterInstalled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 391
    invoke-virtual {v1}, Lcom/narvii/util/PackageUtils;->getMasterPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/narvii/app/ForwardActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 401
    :goto_4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/narvii/app/ForwardActivity;->log(Landroid/content/Intent;)V

    .line 402
    invoke-virtual {p0, p1}, Lcom/narvii/app/ForwardActivity;->startForward(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 404
    :catch_0
    iget p1, v0, Lcom/narvii/share/LinkInfo;->ndcId:I

    invoke-virtual {p0, p1}, Lcom/narvii/app/ForwardActivity;->openWebView(I)V

    :goto_5
    return-void

    .line 394
    :cond_f
    iget p1, v0, Lcom/narvii/share/LinkInfo;->ndcId:I

    invoke-virtual {p0, p1}, Lcom/narvii/app/ForwardActivity;->openWebView(I)V

    return-void
.end method

.method openWebView(I)V
    .locals 3

    const-string/jumbo v0, "url"

    if-nez p1, :cond_0

    .line 301
    const-class p1, Lcom/narvii/app/AminoWebViewFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 302
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 304
    :cond_0
    const-class v1, Lcom/narvii/community/PreviewWebViewFragment;

    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 305
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "communityId"

    .line 306
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object p1, v1

    .line 308
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/app/ForwardActivity;->mergeIntentExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 309
    invoke-virtual {p0, p1}, Lcom/narvii/app/ForwardActivity;->startForward(Landroid/content/Intent;)V

    const p1, 0x7f010029

    const v0, 0x7f01002a

    .line 310
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public setContentView(I)V
    .locals 2

    .line 513
    invoke-super {p0, p1}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    const v0, 0x7f0b0274

    if-ne p1, v0, :cond_1

    const p1, 0x7f0904b8

    .line 515
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 516
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 518
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 520
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 521
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected startForward(Landroid/content/Intent;)V
    .locals 2

    .line 585
    iget-boolean v0, p0, Lcom/narvii/app/NVActivity;->initTaskActivity:Z

    const-string v1, "__forwardInitTaskActivity"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 586
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
