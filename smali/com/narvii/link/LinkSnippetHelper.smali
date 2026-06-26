.class public Lcom/narvii/link/LinkSnippetHelper;
.super Ljava/lang/Object;
.source "LinkSnippetHelper.java"


# instance fields
.field linkSnippet:Lcom/narvii/link/snippet/LinkSnippet;

.field nvContext:Lcom/narvii/app/NVContext;

.field pu:Lcom/narvii/util/PackageUtils;

.field snippetListener:Lcom/narvii/link/LinkSnippetListener;

.field timeoutRunnable:Ljava/lang/Runnable;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/narvii/link/LinkSnippetHelper$1;

    invoke-direct {v0, p0}, Lcom/narvii/link/LinkSnippetHelper$1;-><init>(Lcom/narvii/link/LinkSnippetHelper;)V

    iput-object v0, p0, Lcom/narvii/link/LinkSnippetHelper;->timeoutRunnable:Ljava/lang/Runnable;

    .line 74
    iput-object p1, p0, Lcom/narvii/link/LinkSnippetHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 75
    new-instance v0, Lcom/narvii/util/PackageUtils;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/link/LinkSnippetHelper;->pu:Lcom/narvii/util/PackageUtils;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/link/LinkSnippetHelper;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/narvii/link/LinkSnippetHelper;->notifyFail()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/link/LinkSnippetHelper;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/narvii/link/LinkSnippetHelper;->notifyFail(I)V

    return-void
.end method

.method private notifyFail()V
    .locals 1

    const/4 v0, 0x0

    .line 266
    invoke-direct {p0, v0}, Lcom/narvii/link/LinkSnippetHelper;->notifyFail(I)V

    return-void
.end method

.method private notifyFail(I)V
    .locals 1

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "linkSnippet"

    invoke-static {v0, p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object p1, p0, Lcom/narvii/link/LinkSnippetHelper;->snippetListener:Lcom/narvii/link/LinkSnippetListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 272
    invoke-interface {p1, v0}, Lcom/narvii/link/LinkSnippetListener;->onFinish(Lcom/narvii/model/Media;)V

    :cond_0
    return-void
.end method

.method private startLinkTranslation(Ljava/lang/String;Lcom/narvii/util/http/ApiResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/share/LinkV2TranslationResponse;",
            ">;)V"
        }
    .end annotation

    .line 277
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/link-resolution"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string/jumbo v1, "q"

    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 278
    iget-object v0, p0, Lcom/narvii/link/LinkSnippetHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 279
    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method public getLinkSnippet(Ljava/lang/String;Lcom/narvii/link/LinkSnippetListener;)V
    .locals 4

    .line 83
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/link/LinkSnippetHelper;->timeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    iput-object p1, p0, Lcom/narvii/link/LinkSnippetHelper;->url:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/narvii/link/LinkSnippetHelper;->snippetListener:Lcom/narvii/link/LinkSnippetListener;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 88
    invoke-direct {p0, p1}, Lcom/narvii/link/LinkSnippetHelper;->notifyFail(I)V

    return-void

    .line 93
    :cond_0
    invoke-static {p1}, Lcom/narvii/app/ForwardActivity;->translateLinkQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    new-instance v0, Lcom/narvii/link/LinkSnippetHelper$2;

    const-class v1, Lcom/narvii/share/LinkV2TranslationResponse;

    invoke-direct {v0, p0, v1, p2}, Lcom/narvii/link/LinkSnippetHelper$2;-><init>(Lcom/narvii/link/LinkSnippetHelper;Ljava/lang/Class;Lcom/narvii/link/LinkSnippetListener;)V

    invoke-direct {p0, p1, v0}, Lcom/narvii/link/LinkSnippetHelper;->startLinkTranslation(Ljava/lang/String;Lcom/narvii/util/http/ApiResponseListener;)V

    goto :goto_2

    .line 194
    :cond_1
    invoke-static {p1}, Lcom/narvii/app/ForwardActivity;->isInviteLink(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Lcom/narvii/app/ForwardActivity;->isCommunityLink(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 229
    :cond_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 260
    :cond_3
    invoke-direct {p0}, Lcom/narvii/link/LinkSnippetHelper;->notifyFail()V

    return-void

    .line 230
    :cond_4
    :goto_0
    new-instance v0, Lcom/narvii/util/crawler/TextCrawler;

    iget-object v1, p0, Lcom/narvii/link/LinkSnippetHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/util/crawler/TextCrawler;-><init>(Lcom/narvii/app/NVContext;)V

    .line 231
    new-instance v1, Lcom/narvii/link/LinkSnippetHelper$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/link/LinkSnippetHelper$4;-><init>(Lcom/narvii/link/LinkSnippetHelper;Ljava/lang/String;Lcom/narvii/link/LinkSnippetListener;)V

    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/crawler/TextCrawler;->makePreview(Lcom/narvii/util/crawler/LinkPreviewCallback;Ljava/lang/String;)V

    goto :goto_2

    .line 195
    :cond_5
    :goto_1
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/community/link-identify"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string/jumbo v1, "q"

    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 196
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const-string v1, "api"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 197
    new-instance v1, Lcom/narvii/link/LinkSnippetHelper$3;

    const-class v2, Lcom/narvii/master/invitation/CommunityInviteResponse;

    invoke-direct {v1, p0, v2, p2}, Lcom/narvii/link/LinkSnippetHelper$3;-><init>(Lcom/narvii/link/LinkSnippetHelper;Ljava/lang/Class;Lcom/narvii/link/LinkSnippetListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :goto_2
    return-void
.end method

.method public removeTimeoutRunnable()V
    .locals 2

    .line 79
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/link/LinkSnippetHelper;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
