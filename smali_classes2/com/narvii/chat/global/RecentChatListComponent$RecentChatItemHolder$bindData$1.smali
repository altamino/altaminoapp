.class final Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder$bindData$1;
.super Ljava/lang/Object;
.source "RecentChatListComponent.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->bindData(Lcom/narvii/chat/global/GlobalChatThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecentChatListComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecentChatListComponent.kt\ncom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder$bindData$1\n*L\n1#1,146:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $globalChatThread:Lcom/narvii/chat/global/GlobalChatThread;

.field final synthetic this$0:Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;


# direct methods
.method constructor <init>(Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;Lcom/narvii/chat/global/GlobalChatThread;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder$bindData$1;->this$0:Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;

    iput-object p2, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder$bindData$1;->$globalChatThread:Lcom/narvii/chat/global/GlobalChatThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 104
    iget-object p1, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder$bindData$1;->this$0:Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;

    iget-object p1, p1, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->this$0:Lcom/narvii/chat/global/RecentChatListComponent;

    invoke-static {p1}, Lcom/narvii/chat/global/RecentChatListComponent;->access$getShownInAdapter$p(Lcom/narvii/chat/global/RecentChatListComponent;)Lcom/narvii/list/NVAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder$bindData$1;->$globalChatThread:Lcom/narvii/chat/global/GlobalChatThread;

    sget-object v1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder$bindData$1;->this$0:Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;

    iget-object p1, p1, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->this$0:Lcom/narvii/chat/global/RecentChatListComponent;

    invoke-static {p1}, Lcom/narvii/chat/global/RecentChatListComponent;->access$getNavigateToChatCallback$p(Lcom/narvii/chat/global/RecentChatListComponent;)Lcom/narvii/chat/global/RecentChatListComponent$NavigateToChatCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder$bindData$1;->$globalChatThread:Lcom/narvii/chat/global/GlobalChatThread;

    iget-object v0, v0, Lcom/narvii/chat/global/GlobalChatThread;->chatThreadId:Ljava/lang/String;

    const-string v1, "globalChatThread.chatThreadId"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder$bindData$1;->$globalChatThread:Lcom/narvii/chat/global/GlobalChatThread;

    iget v1, v1, Lcom/narvii/chat/global/GlobalChatThread;->communityId:I

    invoke-interface {p1, v0, v1}, Lcom/narvii/chat/global/RecentChatListComponent$NavigateToChatCallback;->onNavigateToChat(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
