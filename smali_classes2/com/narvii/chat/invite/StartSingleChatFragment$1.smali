.class Lcom/narvii/chat/invite/StartSingleChatFragment$1;
.super Ljava/lang/Object;
.source "StartSingleChatFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/invite/StartSingleChatFragment;->onPickUser(Lcom/narvii/model/User;)V
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
.field final synthetic this$0:Lcom/narvii/chat/invite/StartSingleChatFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/invite/StartSingleChatFragment;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/narvii/chat/invite/StartSingleChatFragment$1;->this$0:Lcom/narvii/chat/invite/StartSingleChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 33
    iget-object p1, p0, Lcom/narvii/chat/invite/StartSingleChatFragment$1;->this$0:Lcom/narvii/chat/invite/StartSingleChatFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Lcom/narvii/model/ChatThread;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/invite/StartSingleChatFragment$1;->call(Lcom/narvii/model/ChatThread;)V

    return-void
.end method
