.class Lcom/narvii/poweruser/SendBroadcastHelper$1;
.super Ljava/lang/Object;
.source "SendBroadcastHelper.java"

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

    .line 110
    iput-object p1, p0, Lcom/narvii/poweruser/SendBroadcastHelper$1;->this$0:Lcom/narvii/poweruser/SendBroadcastHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 113
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastHelper$1;->this$0:Lcom/narvii/poweruser/SendBroadcastHelper;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/narvii/poweruser/SendBroadcastHelper;->loading:Z

    .line 114
    iget-object v0, p1, Lcom/narvii/poweruser/SendBroadcastHelper;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    if-eqz v0, :cond_0

    .line 115
    invoke-static {p1}, Lcom/narvii/poweruser/SendBroadcastHelper;->access$000(Lcom/narvii/poweruser/SendBroadcastHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v0, "api"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 116
    iget-object v0, p0, Lcom/narvii/poweruser/SendBroadcastHelper$1;->this$0:Lcom/narvii/poweruser/SendBroadcastHelper;

    iget-object v0, v0, Lcom/narvii/poweruser/SendBroadcastHelper;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    :cond_0
    return-void
.end method
