.class Lcom/narvii/chat/ChatListFragment$3;
.super Ljava/lang/Object;
.source "ChatListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/ChatListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatListFragment;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment$3;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    add-int/2addr p2, p3

    sub-int/2addr p4, p2

    .line 353
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$3;->this$0:Lcom/narvii/chat/ChatListFragment;

    const/4 p2, 0x1

    if-ge p4, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/narvii/chat/ChatListFragment;->access$202(Lcom/narvii/chat/ChatListFragment;Z)Z

    .line 354
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$3;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->access$300(Lcom/narvii/chat/ChatListFragment;)I

    move-result p1

    if-ge p4, p1, :cond_1

    .line 355
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$3;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {p1, p4}, Lcom/narvii/chat/ChatListFragment;->access$302(Lcom/narvii/chat/ChatListFragment;I)I

    .line 357
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$3;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->access$400(Lcom/narvii/chat/ChatListFragment;)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
