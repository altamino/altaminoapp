.class Lcom/narvii/drawer/DrawerRightHost$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerRightHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/drawer/DrawerRightHost;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerRightHost;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$1;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onNewChatMessage(ILcom/narvii/chat/util/ChatMessageDto;)V
    .locals 0
    .param p2    # Lcom/narvii/chat/util/ChatMessageDto;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public onResetChatMessageList()V
    .locals 0

    return-void
.end method

.method public onUnreadThreadCountChanged(I)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$1;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$1;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/narvii/drawer/DrawerRightHost;->onReminderChanged(Lcom/narvii/community/MyCommunityListService;)V

    .line 15
    :cond_0
    return-void
.end method
