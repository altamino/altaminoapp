.class final Lcom/narvii/chat/detail/ThreadAnnouncementFragment$updateView$1;
.super Ljava/lang/Object;
.source "ThreadAnnouncementFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->updateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$updateView$1;->this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 104
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$updateView$1;->this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

    invoke-static {p1}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->access$getChatThread$p(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;)Lcom/narvii/model/ChatThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->isPinAnnouncement()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->access$sendRequest(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;Z)V

    return-void
.end method
