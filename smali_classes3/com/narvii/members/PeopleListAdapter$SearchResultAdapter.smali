.class Lcom/narvii/members/PeopleListAdapter$SearchResultAdapter;
.super Lcom/narvii/user/list/UserListExAdapter;
.source "PeopleListAdapter.java"


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

    .line 620
    iput-object p1, p0, Lcom/narvii/members/PeopleListAdapter$SearchResultAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

    .line 621
    invoke-static {p1}, Lcom/narvii/members/PeopleListAdapter;->access$000(Lcom/narvii/members/PeopleListAdapter;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/user/list/UserListExAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p1, "Members List"

    .line 622
    iput-object p1, p0, Lcom/narvii/user/list/UserListAdapter;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 627
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/user-profile"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "type"

    const-string v1, "name"

    .line 628
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 629
    iget-object v0, p0, Lcom/narvii/members/PeopleListAdapter$SearchResultAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

    invoke-static {v0}, Lcom/narvii/members/PeopleListAdapter;->access$100(Lcom/narvii/members/PeopleListAdapter;)Lcom/narvii/search/InstantSearchListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v0

    const-string v1, "q"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const/16 v0, 0x4e20

    .line 630
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->timeout(I)Lcom/narvii/util/http/ApiRequest$Builder;

    const/4 v0, 0x0

    .line 631
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->retry(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 632
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/narvii/members/PeopleListAdapter$SearchResultAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

    invoke-static {v0}, Lcom/narvii/members/PeopleListAdapter;->access$100(Lcom/narvii/members/PeopleListAdapter;)Lcom/narvii/search/InstantSearchListener;

    move-result-object v0

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

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0b06b7

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 637
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 638
    iget-object v0, p0, Lcom/narvii/members/PeopleListAdapter$SearchResultAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

    invoke-static {v0}, Lcom/narvii/members/PeopleListAdapter;->access$100(Lcom/narvii/members/PeopleListAdapter;)Lcom/narvii/search/InstantSearchListener;

    move-result-object v0

    const-string v1, "keyword"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/search/InstantSearchListener;->setKeyword(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 644
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 645
    iget-object v1, p0, Lcom/narvii/members/PeopleListAdapter$SearchResultAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

    invoke-static {v1}, Lcom/narvii/members/PeopleListAdapter;->access$100(Lcom/narvii/members/PeopleListAdapter;)Lcom/narvii/search/InstantSearchListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v1

    const-string v2, "keyword"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
