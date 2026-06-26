.class public Lcom/narvii/util/attribute/AttributeService;
.super Ljava/lang/Object;
.source "AttributeService.java"


# static fields
.field public static final ACTION_REFRESH_DISCOVER:Ljava/lang/String; = "com.narvii.attribute.REFRESH_DISCOVER"


# instance fields
.field context:Lcom/narvii/app/NVContext;

.field lbm:Landroid/support/v4/content/LocalBroadcastManager;

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

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/narvii/util/attribute/AttributeService$1;

    const-class v1, Lcom/narvii/util/attribute/AttributeResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/util/attribute/AttributeService$1;-><init>(Lcom/narvii/util/attribute/AttributeService;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/util/attribute/AttributeService;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 22
    iput-object p1, p0, Lcom/narvii/util/attribute/AttributeService;->context:Lcom/narvii/app/NVContext;

    .line 23
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/attribute/AttributeService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    return-void
.end method

.method public static getAttributeId(Ljava/lang/Object;)J
    .locals 2

    const-string v0, "aid(\\d{12})"

    const/4 v1, 0x2

    .line 27
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 28
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 29
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 30
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method public attribute(Ljava/lang/Object;)V
    .locals 4

    .line 37
    invoke-static {p1}, Lcom/narvii/util/attribute/AttributeService;->getAttributeId(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 39
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v2, "/attribution/user"

    invoke-virtual {p1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "attrId"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/narvii/util/attribute/AttributeService;->context:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 41
    iget-object v1, p0, Lcom/narvii/util/attribute/AttributeService;->listener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_0
    return-void
.end method
