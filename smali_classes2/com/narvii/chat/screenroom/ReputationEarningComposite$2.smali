.class Lcom/narvii/chat/screenroom/ReputationEarningComposite$2;
.super Ljava/lang/Object;
.source "ReputationEarningComposite.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/screenroom/ReputationEarningComposite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$2;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$2;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1100(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$2;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1100(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$2;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1200(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 112
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$2;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1100(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$2;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1800(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/util/http/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$2;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1600(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$2;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v2}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1700(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/util/http/ApiResponseListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
