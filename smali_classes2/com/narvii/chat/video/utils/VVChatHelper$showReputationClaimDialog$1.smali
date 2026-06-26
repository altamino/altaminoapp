.class public final Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "VVChatHelper.kt"


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

    .line 348
    iput-object p1, p0, Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1;->$repDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    iput-object p2, p0, Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1;->$a:Lcom/narvii/app/NVActivity;

    invoke-direct {p0, p3}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

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

    .line 367
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 368
    iget-object p1, p0, Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1;->$repDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 348
    check-cast p2, Lcom/narvii/model/api/ReputationPostResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ReputationPostResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ReputationPostResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 352
    iget p1, p2, Lcom/narvii/model/api/ReputationPostResponse;->totalReputation:I

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 353
    iget-object p1, p0, Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1;->$repDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void

    .line 357
    :cond_1
    new-instance p1, Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1$onFinish$1;

    invoke-direct {p1, p0, p2}, Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1$onFinish$1;-><init>(Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1;Lcom/narvii/model/api/ReputationPostResponse;)V

    const-wide/16 v0, 0x32

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
