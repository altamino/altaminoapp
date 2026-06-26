.class Lcom/narvii/flag/report/FlagReportOptionDialog$5;
.super Lcom/narvii/flag/report/FlagRequestDialog;
.source "FlagReportOptionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/flag/report/FlagReportOptionDialog;->sendRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/flag/report/FlagRequestDialog<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

.field final synthetic val$config:Lcom/narvii/config/ConfigService;


# direct methods
.method constructor <init>(Lcom/narvii/flag/report/FlagReportOptionDialog;Landroid/content/Context;Ljava/lang/Class;Lcom/narvii/config/ConfigService;)V
    .locals 0

    .line 542
    iput-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$5;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    iput-object p4, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$5;->val$config:Lcom/narvii/config/ConfigService;

    invoke-direct {p0, p2, p3}, Lcom/narvii/flag/report/FlagRequestDialog;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public createApiRequestBuilder(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 5

    .line 545
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$5;->val$config:Lcom/narvii/config/ConfigService;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    .line 547
    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$5;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-static {v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$700(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v1

    instance-of v1, v1, Lcom/narvii/model/Community;

    if-eqz v1, :cond_0

    .line 548
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$5;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-static {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$700(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Community;

    iget v0, v0, Lcom/narvii/model/Community;->id:I

    goto :goto_0

    .line 549
    :cond_0
    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$5;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-static {v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$700(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v1

    instance-of v1, v1, Lcom/narvii/model/Feed;

    if-eqz v1, :cond_1

    .line 550
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$5;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-static {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$700(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Feed;

    iget v0, v0, Lcom/narvii/model/Feed;->ndcId:I

    goto :goto_0

    .line 551
    :cond_1
    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$5;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-static {v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$700(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v1

    instance-of v1, v1, Lcom/narvii/model/User;

    if-eqz v1, :cond_2

    .line 552
    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$5;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-static {v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$700(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    iget-boolean v1, v1, Lcom/narvii/model/User;->isGlobal:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 556
    :cond_2
    :goto_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$5;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-static {v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$1300(Lcom/narvii/flag/report/FlagReportOptionDialog;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "/g-flag"

    goto :goto_1

    :cond_3
    const-string v1, "/flag"

    :goto_1
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$5;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 557
    invoke-static {v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$1200(Lcom/narvii/flag/report/FlagReportOptionDialog;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "objectId"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$5;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 558
    invoke-static {v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$1100(Lcom/narvii/flag/report/FlagReportOptionDialog;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "objectType"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$5;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 559
    invoke-static {v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$200(Lcom/narvii/flag/report/FlagReportOptionDialog;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "flagType"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 560
    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$5;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-static {v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$1400(Lcom/narvii/flag/report/FlagReportOptionDialog;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 561
    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$5;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-static {v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$1400(Lcom/narvii/flag/report/FlagReportOptionDialog;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "parentId"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 562
    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$5;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-static {v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$1500(Lcom/narvii/flag/report/FlagReportOptionDialog;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "parentType"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 564
    :cond_4
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    .line 565
    iget-object v2, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$5;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-static {v2}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$800(Lcom/narvii/flag/report/FlagReportOptionDialog;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 566
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 567
    new-instance v3, Lcom/narvii/model/Media;

    invoke-direct {v3}, Lcom/narvii/model/Media;-><init>()V

    const/16 v4, 0x64

    .line 568
    iput v4, v3, Lcom/narvii/model/Media;->type:I

    .line 569
    iget-object v4, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$5;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-static {v4}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$800(Lcom/narvii/flag/report/FlagReportOptionDialog;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    const/4 v4, 0x0

    .line 570
    iput-object v4, v3, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 571
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->createArrayNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v2

    const-string v3, "mediaList"

    .line 573
    invoke-virtual {v1, v3, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    :cond_5
    const-string v2, "refObject"

    .line 575
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v1, "message"

    .line 576
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 577
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$5;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-static {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$1600(Lcom/narvii/flag/report/FlagReportOptionDialog;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 578
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$5;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-static {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$1600(Lcom/narvii/flag/report/FlagReportOptionDialog;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "refMediaUrl"

    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    :cond_6
    return-object v0
.end method

.method public execPreBlockRequest()V
    .locals 1

    .line 600
    invoke-super {p0}, Lcom/narvii/flag/report/FlagRequestDialog;->execPreBlockRequest()V

    .line 601
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 602
    new-instance v0, Lcom/narvii/flag/report/FlagReportOptionDialog$5$1;

    invoke-direct {v0, p0}, Lcom/narvii/flag/report/FlagReportOptionDialog$5$1;-><init>(Lcom/narvii/flag/report/FlagReportOptionDialog$5;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected getFlagPreview()Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$5;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-static {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$900(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;

    move-result-object v0

    return-object v0
.end method

.method public hasPreBlockRequest()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onSendRequest()V
    .locals 4

    .line 617
    invoke-super {p0}, Lcom/narvii/flag/report/FlagRequestDialog;->onSendRequest()V

    return-void
.end method

.method public showBlockUser()Z
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$5;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-static {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$1700(Lcom/narvii/flag/report/FlagReportOptionDialog;)Z

    move-result v0

    return v0
.end method
