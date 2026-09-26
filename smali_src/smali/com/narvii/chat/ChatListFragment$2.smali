.class Lcom/narvii/chat/ChatListFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment$2;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x2

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$2;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->x(Lcom/narvii/chat/ChatListFragment;)Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$2;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 20
    .line 21
    iput-boolean v2, p1, Lcom/narvii/chat/ChatListFragment;->touchMoved:Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    const-string p2, "chatInput"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    check-cast p1, Lcom/narvii/chat/input/ChatInputFragment;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/narvii/chat/input/ChatInputFragment;->hideKeyboardAndPanel()V

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$2;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->x(Lcom/narvii/chat/ChatListFragment;)Z

    .line 45
    move-result p1

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 51
    move-result p1

    .line 52
    .line 53
    if-eq p1, v2, :cond_1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 57
    move-result p1

    .line 58
    const/4 v0, 0x3

    .line 59
    .line 60
    if-eq p1, v0, :cond_1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 64
    move-result p1

    .line 65
    .line 66
    if-nez p1, :cond_2

    .line 67
    .line 68
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$2;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 69
    .line 70
    .line 71
    invoke-static {p1, v1}, Lcom/narvii/chat/ChatListFragment;->M(Lcom/narvii/chat/ChatListFragment;Z)V

    .line 72
    :cond_2
    :goto_0
    return v1
.end method
