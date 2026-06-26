.class Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "StrikeWarningFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/strike/StrikeWarningFragment;->sendNoticeTemplateRequest(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/chat/template/MessageTemplateListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

.field final synthetic val$isStrike:Z

.field final synthetic val$isWarning:Z


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/strike/StrikeWarningFragment;Ljava/lang/Class;ZZ)V
    .locals 0

    .line 586
    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    iput-boolean p3, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;->val$isStrike:Z

    iput-boolean p4, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;->val$isWarning:Z

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 605
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 606
    iget-boolean p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;->val$isStrike:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 607
    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    iput-object p2, p1, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTemplateError:Ljava/lang/String;

    goto :goto_0

    .line 608
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;->val$isWarning:Z

    if-eqz p1, :cond_1

    .line 609
    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    iput-object p2, p1, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->warningTemplateError:Ljava/lang/String;

    .line 611
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    invoke-static {p1}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->access$600(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/template/MessageTemplateListResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 589
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 590
    iget-boolean p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;->val$isStrike:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 591
    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    iput-object v0, p1, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTemplateError:Ljava/lang/String;

    goto :goto_0

    .line 592
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;->val$isWarning:Z

    if-eqz p1, :cond_1

    .line 593
    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    iput-object v0, p1, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->warningTemplateError:Ljava/lang/String;

    .line 595
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;->val$isStrike:Z

    if-eqz p1, :cond_2

    .line 596
    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    iget-object p2, p2, Lcom/narvii/chat/template/MessageTemplateListResponse;->messageTemplateList:Ljava/util/List;

    iput-object p2, p1, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTemplateList:Ljava/util/List;

    goto :goto_1

    .line 597
    :cond_2
    iget-boolean p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;->val$isWarning:Z

    if-eqz p1, :cond_3

    .line 598
    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    iget-object p2, p2, Lcom/narvii/chat/template/MessageTemplateListResponse;->messageTemplateList:Ljava/util/List;

    iput-object p2, p1, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->warningTemplateList:Ljava/util/List;

    .line 600
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    invoke-static {p1}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->access$600(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 586
    check-cast p2, Lcom/narvii/chat/template/MessageTemplateListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/template/MessageTemplateListResponse;)V

    return-void
.end method
