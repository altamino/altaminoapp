.class Lcom/narvii/chat/video/floating/FloatingManager$2;
.super Ljava/lang/Object;
.source "FloatingManager.java"

# interfaces
.implements Lcom/narvii/video/ui/floating/FloatingClickEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/floating/FloatingManager;->createThreadWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/floating/FloatingManager;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/floating/FloatingManager;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/narvii/chat/video/floating/FloatingManager$2;->this$0:Lcom/narvii/chat/video/floating/FloatingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseClicked()V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager$2;->this$0:Lcom/narvii/chat/video/floating/FloatingManager;

    invoke-virtual {v0}, Lcom/narvii/chat/video/floating/FloatingManager;->removeThreadFloatingWindow()V

    return-void
.end method

.method public onTotalClicked()V
    .locals 3

    .line 376
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager$2;->this$0:Lcom/narvii/chat/video/floating/FloatingManager;

    invoke-static {v0}, Lcom/narvii/chat/video/floating/FloatingManager;->access$000(Lcom/narvii/chat/video/floating/FloatingManager;)Lcom/narvii/chat/video/floating/CommunityThread;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 379
    :cond_0
    const-class v0, Lcom/narvii/chat/ChatFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 380
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager$2;->this$0:Lcom/narvii/chat/video/floating/FloatingManager;

    invoke-static {v1}, Lcom/narvii/chat/video/floating/FloatingManager;->access$000(Lcom/narvii/chat/video/floating/FloatingManager;)Lcom/narvii/chat/video/floating/CommunityThread;

    move-result-object v1

    iget v1, v1, Lcom/narvii/chat/video/floating/CommunityThread;->ndcId:I

    const-string v2, "__communityId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 381
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager$2;->this$0:Lcom/narvii/chat/video/floating/FloatingManager;

    invoke-static {v1}, Lcom/narvii/chat/video/floating/FloatingManager;->access$000(Lcom/narvii/chat/video/floating/FloatingManager;)Lcom/narvii/chat/video/floating/CommunityThread;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/chat/video/floating/CommunityThread;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager$2;->this$0:Lcom/narvii/chat/video/floating/FloatingManager;

    invoke-static {v1}, Lcom/narvii/chat/video/floating/FloatingManager;->access$000(Lcom/narvii/chat/video/floating/FloatingManager;)Lcom/narvii/chat/video/floating/CommunityThread;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/chat/video/floating/CommunityThread;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "thread"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Source"

    const-string v2, "Text Floating"

    .line 383
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 384
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 385
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager$2;->this$0:Lcom/narvii/chat/video/floating/FloatingManager;

    iget-object v1, v1, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 387
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager$2;->this$0:Lcom/narvii/chat/video/floating/FloatingManager;

    invoke-virtual {v0}, Lcom/narvii/chat/video/floating/FloatingManager;->removeThreadFloatingWindow()V

    return-void
.end method
