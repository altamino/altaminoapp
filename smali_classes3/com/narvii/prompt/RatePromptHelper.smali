.class public Lcom/narvii/prompt/RatePromptHelper;
.super Lcom/narvii/prompt/PromptHelper;
.source "RatePromptHelper.java"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/narvii/prompt/PromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    return-void
.end method


# virtual methods
.method protected doTryShow()V
    .locals 4

    .line 22
    new-instance v0, Lcom/narvii/rate/RateAppHelper;

    iget-object v1, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/rate/RateAppHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 23
    invoke-virtual {v0}, Lcom/narvii/rate/RateAppHelper;->canShow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    new-instance v1, Lcom/narvii/prompt/RatePromptHelper$1;

    invoke-direct {v1, p0, v0}, Lcom/narvii/prompt/RatePromptHelper$1;-><init>(Lcom/narvii/prompt/RatePromptHelper;Lcom/narvii/rate/RateAppHelper;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v1, v2, v3}, Lcom/narvii/prompt/PromptHelper;->dispatchShowPromptRunnable(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    :goto_0
    return-void
.end method
