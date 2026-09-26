.class Lcom/narvii/chat/video/utils/VVChatInviteHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper$2;->this$0:Lcom/narvii/chat/video/utils/VVChatInviteHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper$2;->val$alertDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper$2;->val$alertDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper$2;->this$0:Lcom/narvii/chat/video/utils/VVChatInviteHelper;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/chat/util/ChatRequestHelper;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper$2;->this$0:Lcom/narvii/chat/video/utils/VVChatInviteHelper;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper$2;->this$0:Lcom/narvii/chat/video/utils/VVChatInviteHelper;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->chatThread:Lcom/narvii/model/ChatThread;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    iget-object v2, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper$2;->this$0:Lcom/narvii/chat/video/utils/VVChatInviteHelper;

    .line 41
    .line 42
    iget-object v2, v2, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->accountService:Lcom/narvii/account/AccountService;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    iget-object v3, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper$2;->this$0:Lcom/narvii/chat/video/utils/VVChatInviteHelper;

    .line 49
    .line 50
    iget-object v3, v3, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->chatThread:Lcom/narvii/model/ChatThread;

    .line 51
    .line 52
    new-instance v4, Lcom/narvii/chat/video/utils/VVChatInviteHelper$2$1;

    .line 53
    .line 54
    .line 55
    invoke-direct {v4, p0, p1}, Lcom/narvii/chat/video/utils/VVChatInviteHelper$2$1;-><init>(Lcom/narvii/chat/video/utils/VVChatInviteHelper$2;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/narvii/chat/util/ChatRequestHelper;->sendJoinChatThreadRequest(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    .line 59
    return-void
.end method
