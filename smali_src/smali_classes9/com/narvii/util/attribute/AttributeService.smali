.class public Lcom/narvii/util/attribute/AttributeService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_REFRESH_DISCOVER:Ljava/lang/String; = "com.narvii.attribute.REFRESH_DISCOVER"


# instance fields
.field context:Lcom/narvii/app/NVContext;

.field lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private final listener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/util/attribute/AttributeResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/util/attribute/AttributeService$1;

    .line 6
    .line 7
    const-class v1, Lcom/narvii/util/attribute/AttributeResponse;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, v1}, Lcom/narvii/util/attribute/AttributeService$1;-><init>(Lcom/narvii/util/attribute/AttributeService;Ljava/lang/Class;)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/util/attribute/AttributeService;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/util/attribute/AttributeService;->context:Lcom/narvii/app/NVContext;

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/util/attribute/AttributeService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 25
    return-void
.end method

.method public static getAttributeId(Ljava/lang/Object;)J
    .locals 2

    .line 1
    .line 2
    const-string v0, "aid(\\d{12})"

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    const/4 v0, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    .line 29
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 30
    move-result-wide v0

    .line 31
    return-wide v0

    .line 32
    .line 33
    :cond_0
    const-wide/16 v0, 0x0

    .line 34
    return-wide v0
.end method


# virtual methods
.method public attribute(Ljava/lang/Object;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/narvii/util/attribute/AttributeService;->getAttributeId(Ljava/lang/Object;)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long p1, v0, v2

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    const-string v2, "/attribution/user"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    const-string v2, "attrId"

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/util/attribute/AttributeService;->context:Lcom/narvii/app/NVContext;

    .line 41
    .line 42
    const-string v1, "api"

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/narvii/util/attribute/AttributeService;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 54
    :cond_0
    return-void
.end method
