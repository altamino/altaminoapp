.class Lcom/narvii/prompt/ProbationPromptHelper$1$2;
.super Ljava/lang/Object;
.source "ProbationPromptHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prompt/ProbationPromptHelper$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/ProbationLogResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/prompt/ProbationPromptHelper$1;

.field final synthetic val$mAlertDialog:Lcom/narvii/util/dialog/AlertDialog;


# direct methods
.method constructor <init>(Lcom/narvii/prompt/ProbationPromptHelper$1;Lcom/narvii/util/dialog/AlertDialog;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/narvii/prompt/ProbationPromptHelper$1$2;->this$1:Lcom/narvii/prompt/ProbationPromptHelper$1;

    iput-object p2, p0, Lcom/narvii/prompt/ProbationPromptHelper$1$2;->val$mAlertDialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/narvii/prompt/ProbationPromptHelper$1$2;->val$mAlertDialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 61
    iget-object v0, p0, Lcom/narvii/prompt/ProbationPromptHelper$1$2;->this$1:Lcom/narvii/prompt/ProbationPromptHelper$1;

    iget-object v0, v0, Lcom/narvii/prompt/ProbationPromptHelper$1;->this$0:Lcom/narvii/prompt/ProbationPromptHelper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/prompt/ProbationPromptHelper;->probationShown:Z

    return-void
.end method
