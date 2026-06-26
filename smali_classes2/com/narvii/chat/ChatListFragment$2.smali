.class Lcom/narvii/chat/ChatListFragment$2;
.super Ljava/lang/Object;
.source "ChatListFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
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

    .line 319
    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment$2;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 322
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$2;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->access$100(Lcom/narvii/chat/ChatListFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 323
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$2;->this$0:Lcom/narvii/chat/ChatListFragment;

    iput-boolean v0, p1, Lcom/narvii/chat/ChatListFragment;->touchMoved:Z

    .line 324
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string p2, "chatInput"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 326
    check-cast p1, Lcom/narvii/chat/input/ChatInputFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/input/ChatInputFragment;->hideKeyboardAndPanel()V

    goto :goto_0

    .line 328
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$2;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->access$100(Lcom/narvii/chat/ChatListFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v0, :cond_1

    .line 329
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    .line 330
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$2;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {p1, v1}, Lcom/narvii/chat/ChatListFragment;->access$102(Lcom/narvii/chat/ChatListFragment;Z)Z

    :cond_2
    :goto_0
    return v1
.end method
