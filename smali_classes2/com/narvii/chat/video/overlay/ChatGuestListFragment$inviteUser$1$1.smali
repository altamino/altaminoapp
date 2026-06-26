.class final Lcom/narvii/chat/video/overlay/ChatGuestListFragment$inviteUser$1$1;
.super Ljava/lang/Object;
.source "ChatGuestListFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/overlay/ChatGuestListFragment$inviteUser$1;->call(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment$inviteUser$1;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/overlay/ChatGuestListFragment$inviteUser$1;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$inviteUser$1$1;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment$inviteUser$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$inviteUser$1$1;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment$inviteUser$1;

    iget-object v0, v0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$inviteUser$1;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$inviteUser$1$1;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment$inviteUser$1;

    iget-object v0, v0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$inviteUser$1;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getAdapter()Lcom/narvii/list/NVAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
