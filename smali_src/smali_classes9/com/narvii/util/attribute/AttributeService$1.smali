.class Lcom/narvii/util/attribute/AttributeService$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/attribute/AttributeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/util/attribute/AttributeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/attribute/AttributeService;


# direct methods
.method constructor <init>(Lcom/narvii/util/attribute/AttributeService;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/attribute/AttributeService$1;->this$0:Lcom/narvii/util/attribute/AttributeService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/narvii/util/attribute/AttributeResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/attribute/AttributeService$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/attribute/AttributeResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/attribute/AttributeResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object p1, p2, Lcom/narvii/util/attribute/AttributeResponse;->actions:Lcom/narvii/util/attribute/AttributeActions;

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/narvii/util/attribute/AttributeActions;->actionRefreshDiscover:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/util/attribute/AttributeService$1;->this$0:Lcom/narvii/util/attribute/AttributeService;

    .line 3
    iget-object p1, p1, Lcom/narvii/util/attribute/AttributeService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.narvii.attribute.REFRESH_DISCOVER"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method
