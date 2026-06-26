.class Lcom/narvii/members/MemberListFragment$MemberAdapter;
.super Lcom/narvii/user/list/UserListExAdapter;
.source "MemberListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/members/MemberListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MemberAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/members/MemberListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/members/MemberListFragment;)V
    .locals 1

    .line 170
    iput-object p1, p0, Lcom/narvii/members/MemberListFragment$MemberAdapter;->this$0:Lcom/narvii/members/MemberListFragment;

    .line 171
    invoke-direct {p0, p1}, Lcom/narvii/user/list/UserListExAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v0, "Source"

    .line 172
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "My Chats"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Members List from My Chats"

    goto :goto_0

    :cond_0
    const-string p1, "Members List"

    :goto_0
    iput-object p1, p0, Lcom/narvii/user/list/UserListAdapter;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 177
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/user-profile"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 178
    iget-object v0, p0, Lcom/narvii/members/MemberListFragment$MemberAdapter;->this$0:Lcom/narvii/members/MemberListFragment;

    iget-object v0, v0, Lcom/narvii/members/MemberListFragment;->type:Ljava/lang/String;

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 179
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/narvii/members/MemberListFragment$MemberAdapter;->this$0:Lcom/narvii/members/MemberListFragment;

    iget-object v0, v0, Lcom/narvii/members/MemberListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
