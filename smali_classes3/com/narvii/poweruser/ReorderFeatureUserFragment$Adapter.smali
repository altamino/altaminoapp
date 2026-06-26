.class Lcom/narvii/poweruser/ReorderFeatureUserFragment$Adapter;
.super Lcom/narvii/user/list/UserListAdapter;
.source "ReorderFeatureUserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poweruser/ReorderFeatureUserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/ReorderFeatureUserFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/poweruser/ReorderFeatureUserFragment;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/narvii/poweruser/ReorderFeatureUserFragment$Adapter;->this$0:Lcom/narvii/poweruser/ReorderFeatureUserFragment;

    .line 117
    invoke-direct {p0, p1}, Lcom/narvii/user/list/UserListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p1, "Reorder Featured Posts"

    .line 118
    iput-object p1, p0, Lcom/narvii/user/list/UserListAdapter;->source:Ljava/lang/String;

    const/4 p1, -0x2

    .line 119
    iput p1, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    return-void
.end method


# virtual methods
.method public autoLoadNextPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 125
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/user-profile"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "type"

    const-string v1, "featured"

    .line 126
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 127
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 132
    instance-of v0, p1, Lcom/narvii/model/User;

    if-eqz v0, :cond_2

    .line 133
    check-cast p1, Lcom/narvii/model/User;

    .line 134
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0b020f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090c10

    .line 135
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/UserAvatarLayout;

    if-eqz p3, :cond_0

    .line 137
    invoke-virtual {p3, p1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    :cond_0
    const p3, 0x7f090764

    .line 139
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 140
    instance-of v0, p3, Lcom/narvii/widget/NicknameView;

    if-eqz v0, :cond_1

    .line 141
    check-cast p3, Lcom/narvii/widget/NicknameView;

    invoke-virtual {p3, p1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    :cond_1
    return-object p2

    .line 145
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/user/list/UserListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 157
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "update"

    if-ne v0, v1, :cond_0

    .line 158
    iget-object v0, p1, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "featureChanged"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/narvii/model/User;

    .line 161
    invoke-virtual {p1}, Lcom/narvii/model/User;->featureType()I

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/narvii/poweruser/ReorderFeatureUserFragment$Adapter;->this$0:Lcom/narvii/poweruser/ReorderFeatureUserFragment;

    iget-object v0, v0, Lcom/narvii/poweruser/ReorderFeatureUserFragment;->originalList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/narvii/poweruser/ReorderFeatureUserFragment$Adapter;->this$0:Lcom/narvii/poweruser/ReorderFeatureUserFragment;

    iget-object v0, v0, Lcom/narvii/poweruser/ReorderFeatureUserFragment;->adapter:Lcom/narvii/list/NVPagedAdapter;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 166
    iget-object p1, p0, Lcom/narvii/poweruser/ReorderFeatureUserFragment$Adapter;->this$0:Lcom/narvii/poweruser/ReorderFeatureUserFragment;

    iget-object p1, p1, Lcom/narvii/poweruser/ReorderFeatureUserFragment;->adapter:Lcom/narvii/list/NVPagedAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 114
    check-cast p2, Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/poweruser/ReorderFeatureUserFragment$Adapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;I)V
    .locals 0

    .line 150
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 151
    iget-object p1, p0, Lcom/narvii/poweruser/ReorderFeatureUserFragment$Adapter;->this$0:Lcom/narvii/poweruser/ReorderFeatureUserFragment;

    invoke-virtual {p2}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/poweruser/ReorderFeatureUserFragment;->originalList:Ljava/util/List;

    .line 152
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    return-void
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method
