.class public final Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/utils/VVChatHelper;->showReputationClaimDialog(Lcom/narvii/app/NVActivity;ILcom/narvii/chat/signalling/SignallingChannel;Landroid/content/DialogInterface$OnDismissListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/ReputationPostResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $a:Lcom/narvii/app/NVActivity;

.field final synthetic $repDismissListener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method constructor <init>(Landroid/content/DialogInterface$OnDismissListener;Lcom/narvii/app/NVActivity;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface$OnDismissListener;",
            "Lcom/narvii/app/NVActivity;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/ReputationPostResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1;->$repDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1;->$a:Lcom/narvii/app/NVActivity;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p3}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/narvii/app/NVActivity;Lcom/narvii/model/api/ReputationPostResponse;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1;->onFinish$lambda$0(Lcom/narvii/app/NVActivity;Lcom/narvii/model/api/ReputationPostResponse;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private static final onFinish$lambda$0(Lcom/narvii/app/NVActivity;Lcom/narvii/model/api/ReputationPostResponse;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "$resp"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;->show(Lcom/narvii/app/NVContext;Lcom/narvii/model/api/ReputationPostResponse;Landroid/content/DialogInterface$OnDismissListener;)Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;

    .line 16
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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
    iget-object p1, p0, Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1;->$repDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, p2}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 12
    :cond_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/api/ReputationPostResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ReputationPostResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ReputationPostResponse;)V
    .locals 2
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/api/ReputationPostResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 3
    iget p1, p2, Lcom/narvii/model/api/ReputationPostResponse;->totalReputation:I

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    iget-object p1, p0, Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1;->$repDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 4
    invoke-interface {p1, p2}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1;->$a:Lcom/narvii/app/NVActivity;

    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1;->$repDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 5
    new-instance v1, Lcom/narvii/chat/video/utils/a0;

    invoke-direct {v1, p1, p2, v0}, Lcom/narvii/chat/video/utils/a0;-><init>(Lcom/narvii/app/NVActivity;Lcom/narvii/model/api/ReputationPostResponse;Landroid/content/DialogInterface$OnDismissListener;)V

    const-wide/16 p1, 0x32

    invoke-static {v1, p1, p2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
