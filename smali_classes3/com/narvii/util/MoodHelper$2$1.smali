.class Lcom/narvii/util/MoodHelper$2$1;
.super Ljava/lang/Object;
.source "MoodHelper.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/MoodHelper$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/MoodHelper$2;

.field final synthetic val$ons:I


# direct methods
.method constructor <init>(Lcom/narvii/util/MoodHelper$2;I)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/narvii/util/MoodHelper$2$1;->this$0:Lcom/narvii/util/MoodHelper$2;

    iput p2, p0, Lcom/narvii/util/MoodHelper$2$1;->val$ons:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/narvii/util/MoodHelper$2$1;->this$0:Lcom/narvii/util/MoodHelper$2;

    iget-object v0, v0, Lcom/narvii/util/MoodHelper$2;->val$ctx:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 92
    iget v1, p0, Lcom/narvii/util/MoodHelper$2$1;->val$ons:I

    iget-object p1, p1, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/narvii/account/AccountService;->updateOnlineStatus(ILjava/lang/String;Z)V

    .line 94
    iget-object p1, p0, Lcom/narvii/util/MoodHelper$2$1;->this$0:Lcom/narvii/util/MoodHelper$2;

    iget-object p1, p1, Lcom/narvii/util/MoodHelper$2;->val$ctx:Lcom/narvii/app/NVContext;

    const-string v0, "liveLayer"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/livelayer/LiveLayerService;

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/narvii/livelayer/LiveLayerService;->refreshOnlineMembers()V

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/narvii/util/MoodHelper$2$1;->this$0:Lcom/narvii/util/MoodHelper$2;

    iget-object p1, p1, Lcom/narvii/util/MoodHelper$2;->val$onlineStatusChangedListener:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_1

    .line 100
    iget v0, p0, Lcom/narvii/util/MoodHelper$2$1;->val$ons:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 88
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/util/MoodHelper$2$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
