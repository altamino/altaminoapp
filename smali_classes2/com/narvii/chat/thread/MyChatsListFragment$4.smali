.class Lcom/narvii/chat/thread/MyChatsListFragment$4;
.super Ljava/lang/Object;
.source "MyChatsListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/thread/MyChatsListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/thread/MyChatsListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/thread/MyChatsListFragment;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$4;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 287
    new-instance p1, Lcom/narvii/chat/thread/ThreadHelper;

    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$4;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-direct {p1, v0}, Lcom/narvii/chat/thread/ThreadHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v0, "My Chats"

    .line 288
    invoke-virtual {p1, v0}, Lcom/narvii/chat/thread/ThreadHelper;->showCreateChatDialog(Ljava/lang/String;)V

    return-void
.end method
