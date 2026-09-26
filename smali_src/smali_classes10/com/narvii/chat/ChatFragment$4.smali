.class Lcom/narvii/chat/ChatFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatFragment;

.field final synthetic val$ft:Lcom/narvii/model/ChatThread;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatFragment;Lcom/narvii/model/ChatThread;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChatFragment$4;->this$0:Lcom/narvii/chat/ChatFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/ChatFragment$4;->val$ft:Lcom/narvii/model/ChatThread;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment$4;->this$0:Lcom/narvii/chat/ChatFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment$4;->this$0:Lcom/narvii/chat/ChatFragment;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/chat/ChatFragment$4;->val$ft:Lcom/narvii/model/ChatThread;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/chat/ChatFragment;->setThread(Lcom/narvii/model/ChatThread;)V

    .line 16
    :cond_0
    return-void
.end method
