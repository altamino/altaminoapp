.class Lcom/narvii/drawer/DrawerHost$4;
.super Ljava/lang/Object;
.source "DrawerHost.java"

# interfaces
.implements Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/drawer/DrawerHost;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$4;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewChatMessage(ILcom/narvii/chat/util/ChatMessageDto;)V
    .locals 0

    return-void
.end method

.method public onResetChatMessageList()V
    .locals 0

    return-void
.end method

.method public onUnreadThreadCountChanged(I)V
    .locals 1

    .line 574
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$4;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p1}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 575
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$4;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->access$000(Lcom/narvii/drawer/DrawerHost;)V

    .line 577
    :cond_0
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$4;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->badgeCountListener:Lcom/narvii/util/EventDispatcher;

    new-instance v0, Lcom/narvii/drawer/DrawerHost$4$1;

    invoke-direct {v0, p0}, Lcom/narvii/drawer/DrawerHost$4$1;-><init>(Lcom/narvii/drawer/DrawerHost$4;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method
