.class Lcom/narvii/chat/thread/MyChatsListFragment$3;
.super Ljava/lang/Object;
.source "MyChatsListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/thread/MyChatsListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
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

    .line 217
    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$3;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 220
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$3;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/thread/MyChatsListFragment;->onErrorRetry()V

    return-void
.end method
