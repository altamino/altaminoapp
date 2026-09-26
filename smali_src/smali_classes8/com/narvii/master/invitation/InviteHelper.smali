.class public Lcom/narvii/master/invitation/InviteHelper;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/master/invitation/InviteHelper;->context:Lcom/narvii/app/NVContext;

    .line 6
    return-void
.end method


# virtual methods
.method public requestInviteIdentify(Ljava/lang/String;Lcom/narvii/master/invitation/InviteHelper$LinkIdentifyInterface;)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "/community/link-identify"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    const-string v1, "q"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    const-string v1, "api"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 38
    .line 39
    new-instance v1, Lcom/narvii/master/invitation/InviteHelper$1;

    .line 40
    .line 41
    const-class v2, Lcom/narvii/master/invitation/CommunityInviteResponse;

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, p0, v2, p2}, Lcom/narvii/master/invitation/InviteHelper$1;-><init>(Lcom/narvii/master/invitation/InviteHelper;Ljava/lang/Class;Lcom/narvii/master/invitation/InviteHelper$LinkIdentifyInterface;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 48
    return-void
.end method
