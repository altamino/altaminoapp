.class public final Lcom/narvii/notice/NoticeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;
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
    const-string v0, "_ctx"

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
    iput-object p1, p0, Lcom/narvii/notice/NoticeHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 11
    return-void
.end method

.method public static synthetic a(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/notice/NoticeHelper;->showAppealReceivedDialog$lambda$0(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V

    return-void
.end method

.method private static final showAppealReceivedDialog$lambda$0(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "$dlg"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 9
    return-void
.end method


# virtual methods
.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/notice/NoticeHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final sendAppealNoticeRequest(Lcom/narvii/account/notice/AccountNotice;Lcom/narvii/util/Callback;)V
    .locals 5
    .param p1    # Lcom/narvii/account/notice/AccountNotice;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/account/notice/AccountNotice;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "notice"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/notice/NoticeHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/account/notice/AccountNotice;->id()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    const-string v4, "notice/"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v2, "/decline"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    const-string v2, "path(...)"

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    iget-object v2, p0, Lcom/narvii/notice/NoticeHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 61
    .line 62
    const-string v3, "config"

    .line 63
    .line 64
    .line 65
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    check-cast v2, Lcom/narvii/config/ConfigService;

    .line 69
    .line 70
    iget p1, p1, Lcom/narvii/account/notice/AccountNotice;->cid:I

    .line 71
    .line 72
    if-nez p1, :cond_0

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 76
    move-result p1

    .line 77
    .line 78
    .line 79
    :cond_0
    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    iget-object v1, p0, Lcom/narvii/notice/NoticeHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 90
    .line 91
    const-string v2, "api"

    .line 92
    .line 93
    .line 94
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    move-result-object v1

    .line 96
    .line 97
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 98
    .line 99
    new-instance v2, Lcom/narvii/notice/NoticeHelper$sendAppealNoticeRequest$1;

    .line 100
    .line 101
    const-class v3, Lcom/narvii/model/api/ApiResponse;

    .line 102
    .line 103
    .line 104
    invoke-direct {v2, v0, p2, p0, v3}, Lcom/narvii/notice/NoticeHelper$sendAppealNoticeRequest$1;-><init>(Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/util/Callback;Lcom/narvii/notice/NoticeHelper;Ljava/lang/Class;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, p1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 108
    return-void
.end method

.method public final showAppealReceivedDialog()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/notice/NoticeHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const v1, 0x7f12015a

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 18
    .line 19
    new-instance v1, Lcom/narvii/notice/a;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v0}, Lcom/narvii/notice/a;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    .line 23
    .line 24
    .line 25
    const v2, 0x7f1207e7

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 32
    return-void
.end method
