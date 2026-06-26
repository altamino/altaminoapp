.class Lcom/narvii/chat/ChatListFragment$Adapter$2;
.super Ljava/lang/Object;
.source "ChatListFragment.java"

# interfaces
.implements Lcom/narvii/chat/ChatWelcomeItem$ExpandedClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatListFragment$Adapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/ChatListFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatListFragment$Adapter;)V
    .locals 0

    .line 1377
    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$2;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpandedClicked()V
    .locals 3

    .line 1380
    const-class v0, Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1381
    iget-object v1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$2;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    iget-object v1, v1, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v1}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1382
    iget-object v1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$2;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    iget-object v1, v1, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v1}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "prefetch"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1383
    iget-object v1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$2;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    invoke-virtual {v1, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
