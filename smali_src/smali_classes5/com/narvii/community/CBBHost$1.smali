.class Lcom/narvii/community/CBBHost$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/CBBHost$1;->this$0:Lcom/narvii/community/CBBHost;

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
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CBBHost$1;->this$0:Lcom/narvii/community/CBBHost;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/community/CBBHost;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    const-string v1, "config"

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/community/CBBHost$1;->this$0:Lcom/narvii/community/CBBHost;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 24
    move-result v0

    .line 25
    .line 26
    if-ne v0, p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/community/CBBHost$1;->this$0:Lcom/narvii/community/CBBHost;

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lcom/narvii/community/CBBHost;->c(Lcom/narvii/community/CBBHost;)V

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/community/CBBHost$1;->this$0:Lcom/narvii/community/CBBHost;

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/narvii/community/CBBHost;->e(Lcom/narvii/community/CBBHost;)V

    .line 37
    :cond_0
    return-void
.end method
