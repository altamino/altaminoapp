.class public Lcom/narvii/link/LinkSnippetHelper;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/link/LinkSnippetHelper$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/link/LinkSnippetHelper$1;-><init>(Lcom/narvii/link/LinkSnippetHelper;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/link/LinkSnippetHelper;->timeoutRunnable:Ljava/lang/Runnable;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/link/LinkSnippetHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/util/PackageUtils;

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/link/LinkSnippetHelper;->pu:Lcom/narvii/util/PackageUtils;

    .line 24
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/link/LinkSnippetHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/link/LinkSnippetHelper;->notifyFail()V

    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/link/LinkSnippetHelper;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/link/LinkSnippetHelper;->notifyFail(I)V

    return-void
.end method

.method private notifyFail()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/narvii/link/LinkSnippetHelper;->notifyFail(I)V

    return-void
.end method

.method private notifyFail(I)V
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "linkSnippet"

    invoke-static {v0, p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/narvii/link/LinkSnippetHelper;->snippetListener:Lcom/narvii/link/LinkSnippetListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
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

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "/link-resolution"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "q"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/link/LinkSnippetHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 27
    .line 28
    const-string v1, "api"

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getLinkSnippet(Ljava/lang/String;Lcom/narvii/link/LinkSnippetListener;)V
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/link/LinkSnippetHelper;->timeoutRunnable:Ljava/lang/Runnable;

    .line 5
    .line 6
    const-wide/16 v2, 0x1388

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/link/LinkSnippetHelper;->url:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/narvii/link/LinkSnippetHelper;->snippetListener:Lcom/narvii/link/LinkSnippetListener;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    const/4 p1, 0x0

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/narvii/link/LinkSnippetHelper;->notifyFail(I)V

    .line 20
    return-void

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-static {p1}, Lcom/narvii/app/ForwardActivity;->translateLinkQuery(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    new-instance v0, Lcom/narvii/link/LinkSnippetHelper$2;

    .line 29
    .line 30
    const-class v1, Lcom/narvii/share/LinkV2TranslationResponse;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, p0, v1, p2}, Lcom/narvii/link/LinkSnippetHelper$2;-><init>(Lcom/narvii/link/LinkSnippetHelper;Ljava/lang/Class;Lcom/narvii/link/LinkSnippetListener;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, p1, v0}, Lcom/narvii/link/LinkSnippetHelper;->startLinkTranslation(Ljava/lang/String;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 37
    goto :goto_2

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-static {p1}, Lcom/narvii/app/ForwardActivity;->isInviteLink(Ljava/lang/String;)Z

    .line 41
    move-result v0

    .line 42
    .line 43
    if-nez v0, :cond_5

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lcom/narvii/app/ForwardActivity;->isCommunityLink(Ljava/lang/String;)Z

    .line 47
    move-result v0

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    goto :goto_1

    .line 51
    .line 52
    :cond_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    const-string v2, "http://"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 62
    move-result v1

    .line 63
    .line 64
    if-nez v1, :cond_4

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    const-string v1, "https://"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 74
    move-result v0

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    goto :goto_0

    .line 78
    .line 79
    .line 80
    :cond_3
    invoke-direct {p0}, Lcom/narvii/link/LinkSnippetHelper;->notifyFail()V

    .line 81
    return-void

    .line 82
    .line 83
    :cond_4
    :goto_0
    new-instance v0, Lcom/narvii/util/crawler/TextCrawler;

    .line 84
    .line 85
    iget-object v1, p0, Lcom/narvii/link/LinkSnippetHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 86
    .line 87
    .line 88
    invoke-direct {v0, v1}, Lcom/narvii/util/crawler/TextCrawler;-><init>(Lcom/narvii/app/NVContext;)V

    .line 89
    .line 90
    new-instance v1, Lcom/narvii/link/LinkSnippetHelper$4;

    .line 91
    .line 92
    .line 93
    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/link/LinkSnippetHelper$4;-><init>(Lcom/narvii/link/LinkSnippetHelper;Ljava/lang/String;Lcom/narvii/link/LinkSnippetListener;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/crawler/TextCrawler;->makePreview(Lcom/narvii/util/crawler/LinkPreviewCallback;Ljava/lang/String;)V

    .line 97
    goto :goto_2

    .line 98
    .line 99
    :cond_5
    :goto_1
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 100
    .line 101
    .line 102
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    const-string v1, "/community/link-identify"

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    const-string v1, "q"

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    .line 125
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    const-string v1, "api"

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    move-result-object v0

    .line 133
    .line 134
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 135
    .line 136
    new-instance v1, Lcom/narvii/link/LinkSnippetHelper$3;

    .line 137
    .line 138
    const-class v2, Lcom/narvii/master/invitation/CommunityInviteResponse;

    .line 139
    .line 140
    .line 141
    invoke-direct {v1, p0, v2, p2}, Lcom/narvii/link/LinkSnippetHelper$3;-><init>(Lcom/narvii/link/LinkSnippetHelper;Ljava/lang/Class;Lcom/narvii/link/LinkSnippetListener;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 145
    :goto_2
    return-void
.end method

.method public removeTimeoutRunnable()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/link/LinkSnippetHelper;->timeoutRunnable:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    return-void
.end method
