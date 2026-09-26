.class Lcom/narvii/chat/screenroom/ReputationEarningComposite$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$2;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$2;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->u(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$2;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->u(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$2;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->d(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Ljava/lang/Runnable;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$2;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->u(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    const-wide/16 v1, 0x3a98

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$2;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->a(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/util/http/ApiService;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$2;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->s(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/util/http/ApiRequest;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    iget-object v2, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$2;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 49
    .line 50
    .line 51
    invoke-static {v2}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->r(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/util/http/ApiResponseListener;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 56
    return-void
.end method
