.class Lcom/narvii/poweruser/FeaturedPublicChatListFragment$FeaturedChatLisAdapter;
.super Lcom/narvii/chat/hangout/HangoutListAdapter;
.source "FeaturedPublicChatListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poweruser/FeaturedPublicChatListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FeaturedChatLisAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/FeaturedPublicChatListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/poweruser/FeaturedPublicChatListFragment;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/narvii/poweruser/FeaturedPublicChatListFragment$FeaturedChatLisAdapter;->this$0:Lcom/narvii/poweruser/FeaturedPublicChatListFragment;

    .line 64
    invoke-direct {p0, p1}, Lcom/narvii/chat/hangout/HangoutListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p1, 0x1

    .line 65
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 70
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/chat/thread"

    .line 71
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "type"

    const-string v1, "featured"

    .line 72
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

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
