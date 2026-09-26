.class Lcom/narvii/poweruser/DisabledPublicChatListFragment$DisableChatLisAdapter;
.super Lcom/narvii/chat/hangout/HangoutListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poweruser/DisabledPublicChatListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisableChatLisAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/DisabledPublicChatListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/poweruser/DisabledPublicChatListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/DisabledPublicChatListFragment$DisableChatLisAdapter;->this$0:Lcom/narvii/poweruser/DisabledPublicChatListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/chat/hangout/HangoutListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    const/4 p1, 0x1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 10
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    const-string v0, "/chat/thread"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-string v0, "type"

    .line 17
    .line 18
    const-string v1, "public-disabled"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatThread;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation

    return-object p1
.end method
