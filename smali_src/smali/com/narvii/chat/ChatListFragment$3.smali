.class Lcom/narvii/chat/ChatListFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment$3;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 1
    add-int/2addr p2, p3

    .line 2
    sub-int/2addr p4, p2

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$3;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 5
    const/4 p2, 0x1

    .line 6
    .line 7
    if-ge p4, p2, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p2, 0x0

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-static {p1, p2}, Lcom/narvii/chat/ChatListFragment;->S(Lcom/narvii/chat/ChatListFragment;Z)V

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$3;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->J(Lcom/narvii/chat/ChatListFragment;)I

    .line 18
    move-result p1

    .line 19
    .line 20
    if-ge p4, p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$3;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p4}, Lcom/narvii/chat/ChatListFragment;->R(Lcom/narvii/chat/ChatListFragment;I)V

    .line 26
    .line 27
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$3;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->a0(Lcom/narvii/chat/ChatListFragment;)V

    .line 31
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
