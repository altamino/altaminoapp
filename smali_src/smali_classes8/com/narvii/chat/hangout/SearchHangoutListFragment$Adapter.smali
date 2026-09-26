.class Lcom/narvii/chat/hangout/SearchHangoutListFragment$Adapter;
.super Lcom/narvii/chat/hangout/HangoutListAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/hangout/SearchHangoutListFragment$Adapter;->this$0:Lcom/narvii/chat/hangout/SearchHangoutListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/chat/hangout/HangoutListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
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
    const-string v0, "/chat/thread?type=public-keyword"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/chat/hangout/SearchHangoutListFragment$Adapter;->this$0:Lcom/narvii/chat/hangout/SearchHangoutListFragment;

    .line 17
    .line 18
    const-string v1, "q"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 0

    return-void
.end method
