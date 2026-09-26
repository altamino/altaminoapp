.class public final Lcom/narvii/community/DataMetricalHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/narvii/community/DataMetricalHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/community/DataMetricalHelper;

    invoke-direct {v0}, Lcom/narvii/community/DataMetricalHelper;-><init>()V

    sput-object v0, Lcom/narvii/community/DataMetricalHelper;->INSTANCE:Lcom/narvii/community/DataMetricalHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private final getNVContextFrom(Landroid/content/Context;)Lcom/narvii/app/NVContext;
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/app/NVContext;

    .line 7
    return-object p1

    .line 8
    .line 9
    :cond_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    check-cast p1, Landroid/content/ContextWrapper;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    const-string v0, "getBaseContext(...)"

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1}, Lcom/narvii/community/DataMetricalHelper;->getNVContextFrom(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_1
    const/4 p1, 0x0

    .line 29
    return-object p1
.end method

.method private final getUserIdOrAnonymous(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/community/DataMetricalHelper;->getNVContextFrom(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    const-string v0, "account"

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    const-string v0, "getService(...)"

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    const-string p1, "anonymous"

    .line 28
    :cond_0
    return-object p1

    .line 29
    .line 30
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    const-string v0, "Context must be an instance of NVContext"

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p1
.end method

.method public static final sendCommunityClick(Lcom/narvii/model/Community;Landroid/content/Context;)V
    .locals 4
    .param p0    # Lcom/narvii/model/Community;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "community"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "ctx"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object p0, p0, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-static {}, La0/b;->k()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    sget-object v1, Lcom/narvii/community/DataMetricalHelper;->INSTANCE:Lcom/narvii/community/DataMetricalHelper;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, p1}, Lcom/narvii/community/DataMetricalHelper;->getUserIdOrAnonymous(Landroid/content/Context;)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    sget-object v2, Lai/medialab/medialabanalytics/MediaLabAnalytics;->Companion:Lai/medialab/medialabanalytics/MediaLabAnalytics$Companion;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lai/medialab/medialabanalytics/MediaLabAnalytics$Companion;->getInstance()Lai/medialab/medialabanalytics/MediaLabAnalytics;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, p1}, Lai/medialab/medialabanalytics/MediaLabAnalytics;->initialize(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lai/medialab/medialabanalytics/MediaLabAnalytics$Companion;->getInstance()Lai/medialab/medialabanalytics/MediaLabAnalytics;

    .line 35
    move-result-object p1

    .line 36
    const/4 v2, 0x3

    .line 37
    .line 38
    new-array v2, v2, [Lw7/u;

    .line 39
    .line 40
    const-string v3, "community_name"

    .line 41
    .line 42
    .line 43
    invoke-static {v3, p0}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 44
    move-result-object p0

    .line 45
    const/4 v3, 0x0

    .line 46
    .line 47
    aput-object p0, v2, v3

    .line 48
    .line 49
    const-string p0, "device_id"

    .line 50
    .line 51
    .line 52
    invoke-static {p0, v0}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 53
    move-result-object p0

    .line 54
    const/4 v0, 0x1

    .line 55
    .line 56
    aput-object p0, v2, v0

    .line 57
    .line 58
    const-string p0, "user_id"

    .line 59
    .line 60
    .line 61
    invoke-static {p0, v1}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 62
    move-result-object p0

    .line 63
    const/4 v0, 0x2

    .line 64
    .line 65
    aput-object p0, v2, v0

    .line 66
    .line 67
    .line 68
    invoke-static {v2}, Lkotlin/collections/p0;->l([Lw7/u;)Ljava/util/Map;

    .line 69
    move-result-object p0

    .line 70
    .line 71
    const-string v0, "Community Clicked"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0, p0}, Lai/medialab/medialabanalytics/MediaLabAnalytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 75
    return-void
.end method
