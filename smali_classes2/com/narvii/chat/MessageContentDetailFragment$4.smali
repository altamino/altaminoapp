.class Lcom/narvii/chat/MessageContentDetailFragment$4;
.super Ljava/lang/Object;
.source "MessageContentDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/MessageContentDetailFragment;->updateStatusView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/MessageContentDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/MessageContentDetailFragment;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment$4;->this$0:Lcom/narvii/chat/MessageContentDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 279
    iget-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment$4;->this$0:Lcom/narvii/chat/MessageContentDetailFragment;

    invoke-static {p1}, Lcom/narvii/chat/MessageContentDetailFragment;->access$200(Lcom/narvii/chat/MessageContentDetailFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 280
    const-class p1, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 281
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment$4;->this$0:Lcom/narvii/chat/MessageContentDetailFragment;

    invoke-static {v0}, Lcom/narvii/chat/MessageContentDetailFragment;->access$300(Lcom/narvii/chat/MessageContentDetailFragment;)Lcom/narvii/model/ChatBubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment$4;->this$0:Lcom/narvii/chat/MessageContentDetailFragment;

    invoke-static {v0}, Lcom/narvii/chat/MessageContentDetailFragment;->access$300(Lcom/narvii/chat/MessageContentDetailFragment;)Lcom/narvii/model/ChatBubble;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "prefetch"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Source"

    const-string v1, "Message Detail Page"

    .line 283
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment$4;->this$0:Lcom/narvii/chat/MessageContentDetailFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
