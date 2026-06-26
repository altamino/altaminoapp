.class Lcom/narvii/chat/video/utils/VVChatInviteHelper$2;
.super Ljava/lang/Object;
.source "VVChatInviteHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/utils/VVChatInviteHelper;->showJoinPrivateChatDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/utils/VVChatInviteHelper;

.field final synthetic val$alertDialog:Lcom/narvii/util/dialog/AlertDialog;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/utils/VVChatInviteHelper;Lcom/narvii/util/dialog/AlertDialog;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper$2;->this$0:Lcom/narvii/chat/video/utils/VVChatInviteHelper;

    iput-object p2, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper$2;->val$alertDialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 111
    iget-object p1, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper$2;->val$alertDialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 113
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper$2;->this$0:Lcom/narvii/chat/video/utils/VVChatInviteHelper;

    iget-object v0, v0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 115
    new-instance v0, Lcom/narvii/chat/util/ChatRequestHelper;

    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper$2;->this$0:Lcom/narvii/chat/video/utils/VVChatInviteHelper;

    iget-object v1, v1, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 116
    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper$2;->this$0:Lcom/narvii/chat/video/utils/VVChatInviteHelper;

    iget-object v1, v1, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper$2;->this$0:Lcom/narvii/chat/video/utils/VVChatInviteHelper;

    iget-object v2, v2, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper$2;->this$0:Lcom/narvii/chat/video/utils/VVChatInviteHelper;

    iget-object v3, v3, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->chatThread:Lcom/narvii/model/ChatThread;

    new-instance v4, Lcom/narvii/chat/video/utils/VVChatInviteHelper$2$1;

    invoke-direct {v4, p0, p1}, Lcom/narvii/chat/video/utils/VVChatInviteHelper$2$1;-><init>(Lcom/narvii/chat/video/utils/VVChatInviteHelper$2;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/narvii/chat/util/ChatRequestHelper;->sendJoinChatThreadRequest(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    return-void
.end method
