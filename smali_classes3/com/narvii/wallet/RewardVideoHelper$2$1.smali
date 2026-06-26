.class Lcom/narvii/wallet/RewardVideoHelper$2$1;
.super Ljava/lang/Object;
.source "RewardVideoHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/RewardVideoHelper$2;->call(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/wallet/RewardVideoHelper$2;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/RewardVideoHelper$2;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/narvii/wallet/RewardVideoHelper$2$1;->this$1:Lcom/narvii/wallet/RewardVideoHelper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/narvii/wallet/RewardVideoHelper$2$1;->this$1:Lcom/narvii/wallet/RewardVideoHelper$2;

    iget-object v0, v0, Lcom/narvii/wallet/RewardVideoHelper$2;->this$0:Lcom/narvii/wallet/RewardVideoHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/wallet/RewardVideoHelper;->access$002(Lcom/narvii/wallet/RewardVideoHelper;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 51
    iget-object v0, p0, Lcom/narvii/wallet/RewardVideoHelper$2$1;->this$1:Lcom/narvii/wallet/RewardVideoHelper$2;

    iget-object v0, v0, Lcom/narvii/wallet/RewardVideoHelper$2;->this$0:Lcom/narvii/wallet/RewardVideoHelper;

    invoke-virtual {v0}, Lcom/narvii/wallet/RewardVideoHelper;->cleanPendingDialog()V

    .line 52
    iget-object v0, p0, Lcom/narvii/wallet/RewardVideoHelper$2$1;->this$1:Lcom/narvii/wallet/RewardVideoHelper$2;

    iget-object v0, v0, Lcom/narvii/wallet/RewardVideoHelper$2;->this$0:Lcom/narvii/wallet/RewardVideoHelper;

    invoke-virtual {v0}, Lcom/narvii/wallet/RewardVideoHelper;->onDelayClose()V

    return-void
.end method
