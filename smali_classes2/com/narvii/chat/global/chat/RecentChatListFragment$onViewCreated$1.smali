.class final Lcom/narvii/chat/global/chat/RecentChatListFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "RecentChatListFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/global/chat/RecentChatListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/global/chat/RecentChatListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$onViewCreated$1;->this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 118
    iget-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$onViewCreated$1;->this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "MoreChats"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 119
    const-class p1, Lcom/narvii/chat/global/GlobalChatsFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 120
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$onViewCreated$1;->this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
