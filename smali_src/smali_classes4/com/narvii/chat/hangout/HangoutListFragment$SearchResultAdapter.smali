.class Lcom/narvii/chat/hangout/HangoutListFragment$SearchResultAdapter;
.super Lcom/narvii/chat/hangout/HangoutListAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$SearchResultAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/chat/hangout/HangoutListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    const-string p1, "Search Results"

    .line 8
    .line 9
    iput-object p1, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->source:Ljava/lang/String;

    .line 10
    const/4 p1, 0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 14
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$SearchResultAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/chat/hangout/HangoutListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    const/4 p1, 0x0

    .line 16
    return-object p1

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    const-string v0, "/chat/thread?type=public-keyword"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment$SearchResultAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/narvii/chat/hangout/HangoutListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    const-string v1, "q"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 47
    move-result-object p1

    .line 48
    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment$SearchResultAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/hangout/HangoutListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    .line 20
    move-result v0

    .line 21
    :goto_0
    return v0
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment$SearchResultAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/narvii/chat/hangout/HangoutListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 8
    .line 9
    const-string v1, "keyword"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/narvii/search/InstantSearchListener;->setKeyword(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/chat/hangout/HangoutListAdapter;->notifyDataSetChanged()V

    .line 20
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$SearchResultAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/narvii/chat/hangout/HangoutListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    const-string v2, "keyword"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-object v0
.end method
