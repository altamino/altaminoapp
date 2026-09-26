.class Lcom/narvii/chat/screenroom/ReputationEarningComposite$3;
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
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$3;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

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
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$3;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->h(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$3;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->g(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$3;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->u(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$3;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->u(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    const-wide/16 v1, 0xce4

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    :cond_0
    return-void
.end method
