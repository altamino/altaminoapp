.class public final Lcom/narvii/util/debug/LarkRobot;
.super Ljava/lang/Object;
.source "LarkRobot.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLarkRobot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LarkRobot.kt\ncom/narvii/util/debug/LarkRobot\n*L\n1#1,40:1\n*E\n"
.end annotation


# instance fields
.field private final nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "nvContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/debug/LarkRobot;->nvContext:Lcom/narvii/app/NVContext;

    return-void
.end method

.method public static final synthetic access$getNvContext$p(Lcom/narvii/util/debug/LarkRobot;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/narvii/util/debug/LarkRobot;->nvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method public static final synthetic access$sendRequest(Lcom/narvii/util/debug/LarkRobot;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/util/debug/LarkRobot;->sendRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final sendRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 27
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/util/debug/LarkRobot;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v1, Lcom/narvii/util/debug/LarkRobot$sendRequest$1;

    invoke-direct {v1, p0}, Lcom/narvii/util/debug/LarkRobot$sendRequest$1;-><init>(Lcom/narvii/util/debug/LarkRobot;)V

    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 31
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "https://open-hl.feishu.cn/open-apis/bot/hook/a461c3d1c6684cb79f3b42605017ef54"

    .line 32
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->_url(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "title"

    invoke-virtual {v1, p2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 34
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v1, 0x36b0

    invoke-static {v1, p2}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p2

    if-eqz p3, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p3, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string p3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "text"

    invoke-virtual {p1, p3, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 36
    iget-object p2, p0, Lcom/narvii/util/debug/LarkRobot;->nvContext:Lcom/narvii/app/NVContext;

    const-string p3, "api"

    invoke-interface {p2, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "nvContext.getService<ApiService>(\"api\")"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 37
    iget-object p3, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p2, p1, p3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 38
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    return-void

    .line 34
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final send(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/narvii/util/debug/LarkRobot$send$picker$1;

    iget-object v5, p0, Lcom/narvii/util/debug/LarkRobot;->nvContext:Lcom/narvii/app/NVContext;

    sget v6, Lcom/narvii/lib/R$style;->CustomDialog:I

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/narvii/util/debug/LarkRobot$send$picker$1;-><init>(Lcom/narvii/util/debug/LarkRobot;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/app/NVContext;I)V

    .line 23
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method
