.class Lcom/narvii/flag/report/FlagReportOptionDialog$4;
.super Lcom/narvii/flag/report/FlagRequestDialog;
.source "FlagReportOptionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/flag/report/FlagReportOptionDialog;->sendQuizQuestionIncorrectAnswer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/flag/report/FlagRequestDialog<",
        "Lcom/narvii/model/api/CommentResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

.field final synthetic val$config:Lcom/narvii/config/ConfigService;

.field final synthetic val$defaultText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/flag/report/FlagReportOptionDialog;Landroid/content/Context;Ljava/lang/Class;Lcom/narvii/config/ConfigService;Ljava/lang/String;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$4;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    iput-object p4, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$4;->val$config:Lcom/narvii/config/ConfigService;

    iput-object p5, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$4;->val$defaultText:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/narvii/flag/report/FlagRequestDialog;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public createApiRequestBuilder(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 3

    .line 471
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$4;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-static {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$700(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/QuizQuestion;

    .line 473
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$4;->val$config:Lcom/narvii/config/ConfigService;

    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/blog/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$4;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-static {v2}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$700(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->parentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/comment"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 474
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$4;->val$defaultText:Ljava/lang/String;

    :cond_0
    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 475
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$4;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-static {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$800(Lcom/narvii/flag/report/FlagReportOptionDialog;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 476
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 477
    new-instance v1, Lcom/narvii/model/Media;

    invoke-direct {v1}, Lcom/narvii/model/Media;-><init>()V

    const/16 v2, 0x64

    .line 478
    iput v2, v1, Lcom/narvii/model/Media;->type:I

    .line 479
    iget-object v2, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$4;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-static {v2}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$800(Lcom/narvii/flag/report/FlagReportOptionDialog;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    const/4 v2, 0x0

    .line 480
    iput-object v2, v1, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 481
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    const-string v1, "mediaList"

    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    :cond_1
    return-object v0
.end method

.method public execPreBlockRequest()V
    .locals 1

    .line 512
    invoke-super {p0}, Lcom/narvii/flag/report/FlagRequestDialog;->execPreBlockRequest()V

    .line 513
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 514
    new-instance v0, Lcom/narvii/flag/report/FlagReportOptionDialog$4$1;

    invoke-direct {v0, p0}, Lcom/narvii/flag/report/FlagReportOptionDialog$4$1;-><init>(Lcom/narvii/flag/report/FlagReportOptionDialog$4;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected getFlagPreview()Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$4;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-static {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$900(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;

    move-result-object v0

    return-object v0
.end method

.method public hasPreBlockRequest()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic onReuqestFinished(Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 468
    check-cast p1, Lcom/narvii/model/api/CommentResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$4;->onReuqestFinished(Lcom/narvii/model/api/CommentResponse;)V

    return-void
.end method

.method protected onReuqestFinished(Lcom/narvii/model/api/CommentResponse;)V
    .locals 3

    .line 499
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "notification"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 500
    new-instance v1, Lcom/narvii/notification/Notification;

    iget-object p1, p1, Lcom/narvii/model/api/CommentResponse;->comment:Lcom/narvii/model/Comment;

    const-string v2, "new"

    invoke-direct {v1, v2, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 502
    invoke-virtual {v0, v1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public showBlockUser()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
