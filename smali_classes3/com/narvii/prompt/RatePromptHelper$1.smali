.class Lcom/narvii/prompt/RatePromptHelper$1;
.super Ljava/lang/Object;
.source "RatePromptHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prompt/RatePromptHelper;->doTryShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prompt/RatePromptHelper;

.field final synthetic val$rateAppHelper:Lcom/narvii/rate/RateAppHelper;


# direct methods
.method constructor <init>(Lcom/narvii/prompt/RatePromptHelper;Lcom/narvii/rate/RateAppHelper;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/narvii/prompt/RatePromptHelper$1;->this$0:Lcom/narvii/prompt/RatePromptHelper;

    iput-object p2, p0, Lcom/narvii/prompt/RatePromptHelper$1;->val$rateAppHelper:Lcom/narvii/rate/RateAppHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/narvii/prompt/RatePromptHelper$1;->val$rateAppHelper:Lcom/narvii/rate/RateAppHelper;

    invoke-virtual {v0}, Lcom/narvii/rate/RateAppHelper;->canShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/narvii/prompt/RatePromptHelper$1;->val$rateAppHelper:Lcom/narvii/rate/RateAppHelper;

    invoke-virtual {v0}, Lcom/narvii/rate/RateAppHelper;->showRateDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 29
    new-instance v1, Lcom/narvii/prompt/RatePromptHelper$1$1;

    invoke-direct {v1, p0}, Lcom/narvii/prompt/RatePromptHelper$1$1;-><init>(Lcom/narvii/prompt/RatePromptHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/narvii/prompt/RatePromptHelper$1;->this$0:Lcom/narvii/prompt/RatePromptHelper;

    invoke-virtual {v0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    :goto_0
    return-void
.end method
