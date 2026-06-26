.class final Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$4;
.super Ljava/lang/Object;
.source "CommunityChatFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/global/chat/CommunityChatFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/global/chat/CommunityChatFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$4;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 215
    iget-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$4;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "MoreChats"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 216
    const-class p1, Lcom/narvii/chat/hangout/HangoutListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 217
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$4;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    const-string v1, "ndcId"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    const-string v1, "__communityId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$4;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
