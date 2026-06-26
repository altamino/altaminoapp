.class Lcom/narvii/chat/hangout/ActiveHangoutListFragment$Adapter;
.super Lcom/narvii/chat/hangout/HangoutListAdapter;
.source "ActiveHangoutListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/hangout/ActiveHangoutListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/hangout/ActiveHangoutListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/hangout/ActiveHangoutListFragment;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/narvii/chat/hangout/ActiveHangoutListFragment$Adapter;->this$0:Lcom/narvii/chat/hangout/ActiveHangoutListFragment;

    .line 45
    invoke-direct {p0, p1}, Lcom/narvii/chat/hangout/HangoutListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p1, "Active Public Chatrooms"

    .line 46
    iput-object p1, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 51
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "live-layer/public-chats"

    .line 52
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 0

    return-void
.end method
