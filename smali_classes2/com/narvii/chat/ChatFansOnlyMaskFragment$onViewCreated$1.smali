.class final Lcom/narvii/chat/ChatFansOnlyMaskFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "ChatFansOnlyMaskFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatFansOnlyMaskFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatFansOnlyMaskFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatFansOnlyMaskFragment.kt\ncom/narvii/chat/ChatFansOnlyMaskFragment$onViewCreated$1\n*L\n1#1,113:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatFansOnlyMaskFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatFansOnlyMaskFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/ChatFansOnlyMaskFragment$onViewCreated$1;->this$0:Lcom/narvii/chat/ChatFansOnlyMaskFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 43
    iget-object p1, p0, Lcom/narvii/chat/ChatFansOnlyMaskFragment$onViewCreated$1;->this$0:Lcom/narvii/chat/ChatFansOnlyMaskFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getAuthor()Lcom/narvii/model/User;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 46
    iget-object v0, p0, Lcom/narvii/chat/ChatFansOnlyMaskFragment$onViewCreated$1;->this$0:Lcom/narvii/chat/ChatFansOnlyMaskFragment;

    invoke-static {v0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    .line 47
    iget-object v0, p0, Lcom/narvii/chat/ChatFansOnlyMaskFragment$onViewCreated$1;->this$0:Lcom/narvii/chat/ChatFansOnlyMaskFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
