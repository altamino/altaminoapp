.class Lcom/narvii/community/CBBHost$1;
.super Ljava/lang/Object;
.source "CBBHost.java"

# interfaces
.implements Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/CBBHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/CBBHost;


# direct methods
.method constructor <init>(Lcom/narvii/community/CBBHost;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/narvii/community/CBBHost$1;->this$0:Lcom/narvii/community/CBBHost;

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
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/narvii/community/CBBHost$1;->this$0:Lcom/narvii/community/CBBHost;

    iget-object v0, v0, Lcom/narvii/community/CBBHost;->context:Lcom/narvii/app/NVContext;

    const-string v1, "config"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 90
    iget-object v1, p0, Lcom/narvii/community/CBBHost$1;->this$0:Lcom/narvii/community/CBBHost;

    invoke-virtual {v1}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/narvii/community/CBBHost$1;->this$0:Lcom/narvii/community/CBBHost;

    invoke-static {p1}, Lcom/narvii/community/CBBHost;->access$000(Lcom/narvii/community/CBBHost;)V

    .line 92
    iget-object p1, p0, Lcom/narvii/community/CBBHost$1;->this$0:Lcom/narvii/community/CBBHost;

    invoke-static {p1}, Lcom/narvii/community/CBBHost;->access$100(Lcom/narvii/community/CBBHost;)V

    :cond_0
    return-void
.end method
