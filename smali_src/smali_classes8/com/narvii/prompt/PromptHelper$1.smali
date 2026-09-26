.class Lcom/narvii/prompt/PromptHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prompt/PromptHelper;->dispatchShowPromptRunnable(Ljava/lang/Runnable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prompt/PromptHelper;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/narvii/prompt/PromptHelper;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/prompt/PromptHelper$1;->this$0:Lcom/narvii/prompt/PromptHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/prompt/PromptHelper$1;->val$runnable:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper$1;->this$0:Lcom/narvii/prompt/PromptHelper;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/prompt/PromptHelper;->promptShowListener:Lcom/narvii/amino/PromptShowListener;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Lcom/narvii/amino/PromptShowListener;->isDestroyed()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    return-void

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper$1;->this$0:Lcom/narvii/prompt/PromptHelper;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/prompt/PromptHelper;->isShowContextOk()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper$1;->val$runnable:Ljava/lang/Runnable;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .line 32
    const-string v1, "prompt exception"

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_1
    const-wide/16 v0, 0x7d0

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 42
    :cond_2
    :goto_0
    return-void
.end method
