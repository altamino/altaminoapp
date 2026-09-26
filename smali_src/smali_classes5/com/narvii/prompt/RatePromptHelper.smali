.class public Lcom/narvii/prompt/RatePromptHelper;
.super Lcom/narvii/prompt/PromptHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/prompt/PromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    .line 4
    return-void
.end method


# virtual methods
.method protected doTryShow()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/rate/RateAppHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/rate/RateAppHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/rate/RateAppHelper;->canShow()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Lcom/narvii/prompt/RatePromptHelper$1;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, p0, v0}, Lcom/narvii/prompt/RatePromptHelper$1;-><init>(Lcom/narvii/prompt/RatePromptHelper;Lcom/narvii/rate/RateAppHelper;)V

    .line 19
    .line 20
    const-wide/16 v2, 0x2710

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1, v2, v3}, Lcom/narvii/prompt/PromptHelper;->dispatchShowPromptRunnable(Ljava/lang/Runnable;J)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    .line 28
    :goto_0
    return-void
.end method
