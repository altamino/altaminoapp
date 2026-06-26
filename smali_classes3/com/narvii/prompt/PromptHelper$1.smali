.class Lcom/narvii/prompt/PromptHelper$1;
.super Ljava/lang/Object;
.source "PromptHelper.java"

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

    .line 137
    iput-object p1, p0, Lcom/narvii/prompt/PromptHelper$1;->this$0:Lcom/narvii/prompt/PromptHelper;

    iput-object p2, p0, Lcom/narvii/prompt/PromptHelper$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper$1;->this$0:Lcom/narvii/prompt/PromptHelper;

    iget-object v0, v0, Lcom/narvii/prompt/PromptHelper;->promptShowListener:Lcom/narvii/amino/PromptShowListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/amino/PromptShowListener;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper$1;->this$0:Lcom/narvii/prompt/PromptHelper;

    invoke-virtual {v0}, Lcom/narvii/prompt/PromptHelper;->isShowContextOk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper$1;->val$runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "prompt exception"

    .line 149
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x7d0

    .line 152
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_2
    :goto_0
    return-void
.end method
