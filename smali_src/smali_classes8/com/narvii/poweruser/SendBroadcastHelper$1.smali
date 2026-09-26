.class Lcom/narvii/poweruser/SendBroadcastHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/SendBroadcastHelper;->checkIfCanPush(Lcom/narvii/model/NVObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/SendBroadcastHelper;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/SendBroadcastHelper;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/SendBroadcastHelper$1;->this$0:Lcom/narvii/poweruser/SendBroadcastHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastHelper$1;->this$0:Lcom/narvii/poweruser/SendBroadcastHelper;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    iput-boolean v0, p1, Lcom/narvii/poweruser/SendBroadcastHelper;->loading:Z

    .line 6
    .line 7
    iget-object v0, p1, Lcom/narvii/poweruser/SendBroadcastHelper;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/narvii/poweruser/SendBroadcastHelper;->a(Lcom/narvii/poweruser/SendBroadcastHelper;)Lcom/narvii/app/NVContext;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    const-string v0, "api"

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/poweruser/SendBroadcastHelper$1;->this$0:Lcom/narvii/poweruser/SendBroadcastHelper;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/narvii/poweruser/SendBroadcastHelper;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 29
    :cond_0
    return-void
.end method
