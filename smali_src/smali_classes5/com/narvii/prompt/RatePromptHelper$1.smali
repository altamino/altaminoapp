.class Lcom/narvii/prompt/RatePromptHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/prompt/RatePromptHelper$1;->this$0:Lcom/narvii/prompt/RatePromptHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/prompt/RatePromptHelper$1;->val$rateAppHelper:Lcom/narvii/rate/RateAppHelper;

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
    iget-object v0, p0, Lcom/narvii/prompt/RatePromptHelper$1;->val$rateAppHelper:Lcom/narvii/rate/RateAppHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/rate/RateAppHelper;->canShow()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/prompt/RatePromptHelper$1;->val$rateAppHelper:Lcom/narvii/rate/RateAppHelper;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/rate/RateAppHelper;->showRateDialog()Landroid/app/Dialog;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    new-instance v1, Lcom/narvii/prompt/RatePromptHelper$1$1;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/narvii/prompt/RatePromptHelper$1$1;-><init>(Lcom/narvii/prompt/RatePromptHelper$1;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/narvii/prompt/RatePromptHelper$1;->this$0:Lcom/narvii/prompt/RatePromptHelper;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    .line 29
    :goto_0
    return-void
.end method
