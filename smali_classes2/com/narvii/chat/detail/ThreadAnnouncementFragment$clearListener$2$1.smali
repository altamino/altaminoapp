.class final Lcom/narvii/chat/detail/ThreadAnnouncementFragment$clearListener$2$1;
.super Ljava/lang/Object;
.source "ThreadAnnouncementFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/ThreadAnnouncementFragment$clearListener$2;->invoke()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment$clearListener$2;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/ThreadAnnouncementFragment$clearListener$2;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$clearListener$2$1;->this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment$clearListener$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 48
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$clearListener$2$1;->this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment$clearListener$2;

    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$clearListener$2;->this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

    sget-object v0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->Companion:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$Companion;

    invoke-static {p1}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->access$getChatThread$p(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;)Lcom/narvii/model/ChatThread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$Companion;->intent(Lcom/narvii/model/ChatThread;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
