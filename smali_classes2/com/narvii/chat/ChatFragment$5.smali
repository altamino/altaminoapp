.class Lcom/narvii/chat/ChatFragment$5;
.super Ljava/lang/Object;
.source "ChatFragment.java"

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

    .line 474
    iput-object p1, p0, Lcom/narvii/chat/ChatFragment$5;->this$0:Lcom/narvii/chat/ChatFragment;

    iput-object p2, p0, Lcom/narvii/chat/ChatFragment$5;->val$ft:Lcom/narvii/model/ChatThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 477
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment$5;->this$0:Lcom/narvii/chat/ChatFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment$5;->this$0:Lcom/narvii/chat/ChatFragment;

    iget-object v1, p0, Lcom/narvii/chat/ChatFragment$5;->val$ft:Lcom/narvii/model/ChatThread;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/ChatFragment;->setThread(Lcom/narvii/model/ChatThread;)V

    :cond_0
    return-void
.end method
