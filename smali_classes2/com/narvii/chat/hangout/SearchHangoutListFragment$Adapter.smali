.class Lcom/narvii/chat/hangout/SearchHangoutListFragment$Adapter;
.super Lcom/narvii/chat/hangout/HangoutListAdapter;
.source "SearchHangoutListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/hangout/SearchHangoutListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/hangout/SearchHangoutListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/hangout/SearchHangoutListFragment;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/narvii/chat/hangout/SearchHangoutListFragment$Adapter;->this$0:Lcom/narvii/chat/hangout/SearchHangoutListFragment;

    .line 43
    invoke-direct {p0, p1}, Lcom/narvii/chat/hangout/HangoutListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 49
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/chat/thread?type=public-keyword"

    .line 50
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 51
    iget-object v0, p0, Lcom/narvii/chat/hangout/SearchHangoutListFragment$Adapter;->this$0:Lcom/narvii/chat/hangout/SearchHangoutListFragment;

    const-string v1, "q"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 52
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 0

    return-void
.end method
