.class final Lcom/narvii/chat/video/utils/VVChatHelper$requestToBePresenter$2;
.super Ljava/lang/Object;
.source "VVChatHelper.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/utils/VVChatHelper;->requestToBePresenter(Lcom/narvii/model/ChatThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $chatThread:Lcom/narvii/model/ChatThread;

.field final synthetic $dlg:Lcom/narvii/widget/ACMAlertDialog;

.field final synthetic $rtcService:Lcom/narvii/chat/rtc/RtcService;

.field final synthetic this$0:Lcom/narvii/chat/video/utils/VVChatHelper;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/utils/VVChatHelper;Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/model/ChatThread;Lcom/narvii/chat/rtc/RtcService;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/utils/VVChatHelper$requestToBePresenter$2;->this$0:Lcom/narvii/chat/video/utils/VVChatHelper;

    iput-object p2, p0, Lcom/narvii/chat/video/utils/VVChatHelper$requestToBePresenter$2;->$dlg:Lcom/narvii/widget/ACMAlertDialog;

    iput-object p3, p0, Lcom/narvii/chat/video/utils/VVChatHelper$requestToBePresenter$2;->$chatThread:Lcom/narvii/model/ChatThread;

    iput-object p4, p0, Lcom/narvii/chat/video/utils/VVChatHelper$requestToBePresenter$2;->$rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 411
    iget-object p1, p0, Lcom/narvii/chat/video/utils/VVChatHelper$requestToBePresenter$2;->$dlg:Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p1}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 412
    new-instance p1, Lcom/narvii/chat/util/ChatRequestHelper;

    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper$requestToBePresenter$2;->this$0:Lcom/narvii/chat/video/utils/VVChatHelper;

    invoke-virtual {v0}, Lcom/narvii/chat/video/utils/VVChatHelper;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 413
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper$requestToBePresenter$2;->this$0:Lcom/narvii/chat/video/utils/VVChatHelper;

    invoke-virtual {v0}, Lcom/narvii/chat/video/utils/VVChatHelper;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 414
    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatHelper$requestToBePresenter$2;->$chatThread:Lcom/narvii/model/ChatThread;

    iget-object v1, v1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    const-string v2, "accountService"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/chat/video/utils/VVChatHelper$requestToBePresenter$2;->$chatThread:Lcom/narvii/model/ChatThread;

    .line 415
    new-instance v3, Lcom/narvii/chat/video/utils/VVChatHelper$requestToBePresenter$2$1;

    invoke-direct {v3, p0}, Lcom/narvii/chat/video/utils/VVChatHelper$requestToBePresenter$2$1;-><init>(Lcom/narvii/chat/video/utils/VVChatHelper$requestToBePresenter$2;)V

    .line 414
    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/narvii/chat/util/ChatRequestHelper;->sendJoinChatThreadRequest(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    return-void
.end method
