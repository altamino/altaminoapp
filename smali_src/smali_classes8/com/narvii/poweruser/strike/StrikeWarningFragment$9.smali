.class Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    .line 3
    .line 4
    iput-boolean p3, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;->val$isStrike:Z

    .line 5
    .line 6
    iput-boolean p4, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;->val$isWarning:Z

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 10
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

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;->val$isStrike:Z

    .line 6
    const/4 p2, 0x0

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    .line 11
    .line 12
    iput-object p2, p1, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTemplateError:Ljava/lang/String;

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;->val$isWarning:Z

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    .line 20
    .line 21
    iput-object p2, p1, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->warningTemplateError:Ljava/lang/String;

    .line 22
    .line 23
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->s(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)V

    .line 27
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/template/MessageTemplateListResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-boolean p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;->val$isStrike:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    .line 3
    iput-object v0, v1, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTemplateError:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;->val$isWarning:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    .line 4
    iput-object v0, v1, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->warningTemplateError:Ljava/lang/String;

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    .line 5
    iget-object p2, p2, Lcom/narvii/chat/template/MessageTemplateListResponse;->messageTemplateList:Ljava/util/List;

    iput-object p2, p1, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTemplateList:Ljava/util/List;

    goto :goto_1

    :cond_2
    iget-boolean p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;->val$isWarning:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    .line 6
    iget-object p2, p2, Lcom/narvii/chat/template/MessageTemplateListResponse;->messageTemplateList:Ljava/util/List;

    iput-object p2, p1, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->warningTemplateList:Ljava/util/List;

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    .line 7
    invoke-static {p1}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->s(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/narvii/chat/template/MessageTemplateListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/template/MessageTemplateListResponse;)V

    return-void
.end method
