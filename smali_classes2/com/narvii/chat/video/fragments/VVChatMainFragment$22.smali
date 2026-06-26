.class Lcom/narvii/chat/video/fragments/VVChatMainFragment$22;
.super Ljava/lang/Object;
.source "VVChatMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/fragments/VVChatMainFragment;->showVvChatInviteDialog(Lcom/narvii/pushservice/PushPayload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

.field final synthetic val$payload:Lcom/narvii/pushservice/PushPayload;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Lcom/narvii/pushservice/PushPayload;)V
    .locals 0

    .line 1489
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$22;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    iput-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$22;->val$payload:Lcom/narvii/pushservice/PushPayload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1492
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$22;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    iget-object p1, p1, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->inviteDialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 1493
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$22;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    iget-object p1, p1, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->inviteDialog:Lcom/narvii/util/dialog/AlertDialog;

    const-string v0, "AcceptButton"

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 1495
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$22;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    const/4 v0, 0x0

    invoke-static {p1, p1, v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getInstance(Lcom/narvii/app/NVFragment;Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatJoinEventListener;)Lcom/narvii/chat/input/ChatThreadCheckFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1497
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$22;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$2200(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->requestToJoinChannel(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 1499
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$22;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$22;->val$payload:Lcom/narvii/pushservice/PushPayload;

    invoke-static {p1, v0}, Lcom/narvii/chat/setting/helper/ChatWaitingListServiceKt;->doJoinCancelIfInWaitingList(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushPayload;)V

    return-void
.end method
