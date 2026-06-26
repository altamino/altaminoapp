.class public Lcom/narvii/master/invitation/InviteHelper;
.super Ljava/lang/Object;
.source "InviteHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/invitation/InviteHelper$LinkIdentifyInterface;
    }
.end annotation


# instance fields
.field context:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/narvii/master/invitation/InviteHelper;->context:Lcom/narvii/app/NVContext;

    return-void
.end method


# virtual methods
.method public requestInviteIdentify(Ljava/lang/String;Lcom/narvii/master/invitation/InviteHelper$LinkIdentifyInterface;)V
    .locals 3

    .line 33
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/community/link-identify"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "q"

    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 34
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const-string v1, "api"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 35
    new-instance v1, Lcom/narvii/master/invitation/InviteHelper$1;

    const-class v2, Lcom/narvii/master/invitation/CommunityInviteResponse;

    invoke-direct {v1, p0, v2, p2}, Lcom/narvii/master/invitation/InviteHelper$1;-><init>(Lcom/narvii/master/invitation/InviteHelper;Ljava/lang/Class;Lcom/narvii/master/invitation/InviteHelper$LinkIdentifyInterface;)V

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
