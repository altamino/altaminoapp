.class Lcom/narvii/drawer/DrawerRightHost$1;
.super Ljava/lang/Object;
.source "DrawerRightHost.java"

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

    .line 191
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$1;->this$0:Lcom/narvii/drawer/DrawerRightHost;

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

    .line 199
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$1;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    invoke-virtual {p1}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 200
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$1;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/drawer/DrawerRightHost;->onReminderChanged(Lcom/narvii/community/MyCommunityListService;)V

    :cond_0
    return-void
.end method
