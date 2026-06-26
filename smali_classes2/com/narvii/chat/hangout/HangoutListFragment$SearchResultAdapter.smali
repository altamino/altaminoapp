.class Lcom/narvii/chat/hangout/HangoutListFragment$SearchResultAdapter;
.super Lcom/narvii/chat/hangout/HangoutListAdapter;
.source "HangoutListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/hangout/HangoutListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchResultAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/hangout/HangoutListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/hangout/HangoutListFragment;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$SearchResultAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    .line 486
    invoke-direct {p0, p1}, Lcom/narvii/chat/hangout/HangoutListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p1, "Search Results"

    .line 487
    iput-object p1, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->source:Ljava/lang/String;

    const/4 p1, 0x1

    .line 488
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 513
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$SearchResultAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    iget-object p1, p1, Lcom/narvii/chat/hangout/HangoutListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {p1}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 517
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/chat/thread?type=public-keyword"

    .line 518
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 519
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment$SearchResultAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    iget-object v0, v0, Lcom/narvii/chat/hangout/HangoutListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v0

    const-string v1, "q"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 520
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment$SearchResultAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    iget-object v0, v0, Lcom/narvii/chat/hangout/HangoutListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 494
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 495
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment$SearchResultAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    iget-object v0, v0, Lcom/narvii/chat/hangout/HangoutListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    const-string v1, "keyword"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/search/InstantSearchListener;->setKeyword(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p0}, Lcom/narvii/chat/hangout/HangoutListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 501
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 502
    iget-object v1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$SearchResultAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    iget-object v1, v1, Lcom/narvii/chat/hangout/HangoutListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v1}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v1

    const-string v2, "keyword"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
