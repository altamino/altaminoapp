.class Lcom/narvii/chat/video/fragments/VVChatMainFragment$22;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$22;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$22;->val$payload:Lcom/narvii/pushservice/PushPayload;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$22;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->inviteDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$22;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->inviteDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 12
    .line 13
    const-string v0, "AcceptButton"

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$22;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 23
    const/4 v0, 0x0

    .line 24
    .line 25
    .line 26
    invoke-static {p1, p1, v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getInstance(Lcom/narvii/app/NVFragment;Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatJoinEventListener;)Lcom/narvii/chat/input/ChatThreadCheckFragment;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$22;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->s(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->requestToJoinChannel(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 39
    .line 40
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$22;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$22;->val$payload:Lcom/narvii/pushservice/PushPayload;

    .line 43
    .line 44
    .line 45
    invoke-static {p1, v0}, Lcom/narvii/chat/setting/helper/ChatWaitingListServiceKt;->doJoinCancelIfInWaitingList(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushPayload;)V

    .line 46
    return-void
.end method
