.class Lcom/narvii/chat/video/fragments/VVChatMainFragment$11;
.super Ljava/lang/Object;
.source "VVChatMainFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/fragments/VVChatMainFragment;->sendThreadDetailRequest(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/ChatThread;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

.field final synthetic val$sendVVChatPermissionRequest:Z


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Z)V
    .locals 0

    .line 943
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$11;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    iput-boolean p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$11;->val$sendVVChatPermissionRequest:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/ChatThread;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 947
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$11;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$802(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Z)Z

    .line 948
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$11;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {v0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$900(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Lcom/narvii/model/ChatThread;)V

    .line 949
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->isFansOnly()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 951
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$11;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$1000(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    goto :goto_0

    .line 954
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$11;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$1102(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Z)Z

    .line 956
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$11;->val$sendVVChatPermissionRequest:Z

    if-eqz p1, :cond_2

    .line 957
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$11;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$1200(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 943
    check-cast p1, Lcom/narvii/model/ChatThread;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$11;->call(Lcom/narvii/model/ChatThread;)V

    return-void
.end method
