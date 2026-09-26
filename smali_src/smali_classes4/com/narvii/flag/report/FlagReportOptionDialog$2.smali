.class Lcom/narvii/flag/report/FlagReportOptionDialog$2;
.super Lcom/narvii/flag/report/FlagRequestDialog;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$2;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 3
    .line 4
    iput-object p4, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$2;->val$config:Lcom/narvii/config/ConfigService;

    .line 5
    .line 6
    iput-object p5, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$2;->val$defaultText:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2, p3}, Lcom/narvii/flag/report/FlagRequestDialog;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    return-void
.end method

.method public static synthetic b(Lcom/narvii/flag/report/FlagReportOptionDialog$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/flag/report/FlagReportOptionDialog$2;->lambda$execPreBlockRequest$1()V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/flag/report/FlagReportOptionDialog$2;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$2;->lambda$execPreBlockRequest$0(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$execPreBlockRequest$0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/flag/report/FlagRequestDialog;->sendFlagRequest()V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/flag/report/FlagRequestDialog;->screenshotFailed()V

    .line 20
    :goto_0
    return-void
.end method

.method private synthetic lambda$execPreBlockRequest$1()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$2;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/flag/report/c;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/narvii/flag/report/c;-><init>(Lcom/narvii/flag/report/FlagReportOptionDialog$2;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->O(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/util/Callback;)V

    .line 11
    return-void
.end method


# virtual methods
.method public createApiRequestBuilder(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$2;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->g(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/model/NVObject;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/model/QuizQuestion;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$2;->val$config:Lcom/narvii/config/ConfigService;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 22
    move-result v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    const-string v2, "/blog/"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$2;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 39
    .line 40
    .line 41
    invoke-static {v2}, Lcom/narvii/flag/report/FlagReportOptionDialog;->g(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/model/NVObject;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->parentId()Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v2, "/comment"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    move-result v1

    .line 67
    .line 68
    if-eqz v1, :cond_0

    .line 69
    .line 70
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$2;->val$defaultText:Ljava/lang/String;

    .line 71
    .line 72
    :cond_0
    const-string v1, "content"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 76
    .line 77
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$2;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 78
    .line 79
    .line 80
    invoke-static {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->h(Lcom/narvii/flag/report/FlagReportOptionDialog;)Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    if-eqz p1, :cond_1

    .line 84
    .line 85
    new-instance p1, Ljava/util/ArrayList;

    .line 86
    .line 87
    .line 88
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    new-instance v1, Lcom/narvii/model/Media;

    .line 91
    .line 92
    .line 93
    invoke-direct {v1}, Lcom/narvii/model/Media;-><init>()V

    .line 94
    .line 95
    const/16 v2, 0x64

    .line 96
    .line 97
    iput v2, v1, Lcom/narvii/model/Media;->type:I

    .line 98
    .line 99
    iget-object v2, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$2;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 100
    .line 101
    .line 102
    invoke-static {v2}, Lcom/narvii/flag/report/FlagReportOptionDialog;->h(Lcom/narvii/flag/report/FlagReportOptionDialog;)Ljava/lang/String;

    .line 103
    move-result-object v2

    .line 104
    .line 105
    iput-object v2, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 106
    const/4 v2, 0x0

    .line 107
    .line 108
    iput-object v2, v1, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    const-string v1, "mediaList"

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 123
    :cond_1
    return-object v0
.end method

.method public execPreBlockRequest()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/flag/report/FlagRequestDialog;->execPreBlockRequest()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/flag/report/d;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/flag/report/d;-><init>(Lcom/narvii/flag/report/FlagReportOptionDialog$2;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 19
    return-void
.end method

.method protected getFlagPreview()Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$2;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->c(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public hasPreBlockRequest()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic onReuqestFinished(Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/CommentResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$2;->onReuqestFinished(Lcom/narvii/model/api/CommentResponse;)V

    return-void
.end method

.method protected onReuqestFinished(Lcom/narvii/model/api/CommentResponse;)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "notification"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 3
    new-instance v1, Lcom/narvii/notification/Notification;

    const-string v2, "new"

    iget-object p1, p1, Lcom/narvii/model/api/CommentResponse;->comment:Lcom/narvii/model/Comment;

    invoke-direct {v1, v2, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public showBlockUser()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
