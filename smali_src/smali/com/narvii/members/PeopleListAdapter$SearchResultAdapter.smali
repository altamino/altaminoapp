.class Lcom/narvii/members/PeopleListAdapter$SearchResultAdapter;
.super Lcom/narvii/user/list/UserListExAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/members/PeopleListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchResultAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/members/PeopleListAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/members/PeopleListAdapter;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/members/PeopleListAdapter$SearchResultAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/members/PeopleListAdapter;->g(Lcom/narvii/members/PeopleListAdapter;)Lcom/narvii/app/NVContext;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/narvii/user/list/UserListExAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 10
    .line 11
    const-string p1, "Members List"

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/user/list/UserListAdapter;->source:Ljava/lang/String;

    .line 14
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
    const-string v0, "/user-profile"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "type"

    .line 14
    .line 15
    const-string v1, "name"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/members/PeopleListAdapter$SearchResultAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/narvii/members/PeopleListAdapter;->h(Lcom/narvii/members/PeopleListAdapter;)Lcom/narvii/search/InstantSearchListener;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    const-string/jumbo v1, "q"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 35
    .line 36
    const/16 v0, 0x4e20

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->timeout(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 40
    const/4 v0, 0x0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->retry(I)Lcom/narvii/util/http/ApiRequest$Builder;

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
    iget-object v0, p0, Lcom/narvii/members/PeopleListAdapter$SearchResultAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/members/PeopleListAdapter;->h(Lcom/narvii/members/PeopleListAdapter;)Lcom/narvii/search/InstantSearchListener;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    .line 22
    move-result v0

    .line 23
    :goto_0
    return v0
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0d076c

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/members/PeopleListAdapter$SearchResultAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/members/PeopleListAdapter;->h(Lcom/narvii/members/PeopleListAdapter;)Lcom/narvii/search/InstantSearchListener;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "keyword"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/narvii/search/InstantSearchListener;->setKeyword(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 22
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
    iget-object v1, p0, Lcom/narvii/members/PeopleListAdapter$SearchResultAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lcom/narvii/members/PeopleListAdapter;->h(Lcom/narvii/members/PeopleListAdapter;)Lcom/narvii/search/InstantSearchListener;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    const-string v2, "keyword"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-object v0
.end method
