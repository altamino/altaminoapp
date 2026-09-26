.class public final Lcom/narvii/util/debug/LarkRobot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final nvContext:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "nvContext"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/util/debug/LarkRobot;->nvContext:Lcom/narvii/app/NVContext;

    .line 11
    return-void
.end method

.method public static synthetic a(Lcom/narvii/util/debug/LarkRobot;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/util/debug/LarkRobot;->sendRequest$lambda$0(Lcom/narvii/util/debug/LarkRobot;Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method

.method public static final synthetic access$sendRequest(Lcom/narvii/util/debug/LarkRobot;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/util/debug/LarkRobot;->sendRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method private final sendRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/util/debug/LarkRobot;->nvContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    new-instance v1, Lcom/narvii/util/debug/a;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/narvii/util/debug/a;-><init>(Lcom/narvii/util/debug/LarkRobot;)V

    .line 17
    .line 18
    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    const-string v2, "https://open-hl.feishu.cn/open-apis/bot/hook/a461c3d1c6684cb79f3b42605017ef54"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->_url(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const/16 p1, 0x40

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    const-string/jumbo p2, "title"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 63
    move-result p2

    .line 64
    .line 65
    const/16 v1, 0x36b0

    .line 66
    .line 67
    .line 68
    invoke-static {v1, p2}, Lj8/m;->j(II)I

    .line 69
    move-result p2

    .line 70
    const/4 v1, 0x0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 74
    move-result-object p2

    .line 75
    .line 76
    .line 77
    const-string/jumbo p3, "substring(...)"

    .line 78
    .line 79
    .line 80
    invoke-static {p2, p3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string/jumbo p3, "text"

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p3, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    iget-object p2, p0, Lcom/narvii/util/debug/LarkRobot;->nvContext:Lcom/narvii/app/NVContext;

    .line 94
    .line 95
    const-string p3, "api"

    .line 96
    .line 97
    .line 98
    invoke-interface {p2, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    move-result-object p2

    .line 100
    .line 101
    const-string p3, "getService(...)"

    .line 102
    .line 103
    .line 104
    invoke-static {p2, p3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 107
    .line 108
    iget-object p3, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, p1, p3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 115
    return-void
.end method

.method private static final sendRequest$lambda$0(Lcom/narvii/util/debug/LarkRobot;Lcom/narvii/model/api/ApiResponse;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/util/debug/LarkRobot;->nvContext:Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    iget-object p0, p0, Lcom/narvii/util/debug/LarkRobot;->nvContext:Lcom/narvii/app/NVContext;

    .line 15
    .line 16
    .line 17
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    sget v0, Lcom/narvii/lib/R$string;->success:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p0}, Lcom/narvii/util/Utils;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public final send(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "title"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string/jumbo v0, "text"

    .line 10
    .line 11
    .line 12
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    iget-object v5, p0, Lcom/narvii/util/debug/LarkRobot;->nvContext:Lcom/narvii/app/NVContext;

    .line 15
    .line 16
    sget v6, Lcom/narvii/lib/R$style;->CustomDialog:I

    .line 17
    .line 18
    new-instance v0, Lcom/narvii/util/debug/LarkRobot$send$picker$1;

    .line 19
    move-object v1, v0

    .line 20
    move-object v2, p0

    .line 21
    move-object v3, p1

    .line 22
    move-object v4, p2

    .line 23
    .line 24
    .line 25
    invoke-direct/range {v1 .. v6}, Lcom/narvii/util/debug/LarkRobot$send$picker$1;-><init>(Lcom/narvii/util/debug/LarkRobot;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/app/NVContext;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 29
    return-void
.end method
