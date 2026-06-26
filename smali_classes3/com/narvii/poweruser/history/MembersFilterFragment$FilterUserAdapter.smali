.class Lcom/narvii/poweruser/history/MembersFilterFragment$FilterUserAdapter;
.super Lcom/narvii/user/list/UserListExAdapter;
.source "MembersFilterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poweruser/history/MembersFilterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FilterUserAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/history/MembersFilterFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/poweruser/history/MembersFilterFragment;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/narvii/poweruser/history/MembersFilterFragment$FilterUserAdapter;->this$0:Lcom/narvii/poweruser/history/MembersFilterFragment;

    .line 213
    invoke-direct {p0, p1}, Lcom/narvii/user/list/UserListExAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 222
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/user-profile"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 223
    invoke-virtual {p0}, Lcom/narvii/poweruser/history/MembersFilterFragment$FilterUserAdapter;->type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 224
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 239
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/user/list/UserListExAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090230

    .line 240
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 241
    instance-of v0, p1, Lcom/narvii/model/User;

    if-eqz v0, :cond_1

    .line 242
    check-cast p1, Lcom/narvii/model/User;

    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    iget-object v0, p0, Lcom/narvii/poweruser/history/MembersFilterFragment$FilterUserAdapter;->this$0:Lcom/narvii/poweruser/history/MembersFilterFragment;

    iget-object v0, v0, Lcom/narvii/poweruser/history/MembersFilterFragment;->checkedUid:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 243
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 245
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    const p1, 0x7f090764

    .line 248
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 249
    instance-of p3, p1, Lcom/narvii/widget/NicknameView;

    if-eqz p3, :cond_3

    .line 250
    check-cast p1, Lcom/narvii/widget/NicknameView;

    iget-object p3, p0, Lcom/narvii/poweruser/history/MembersFilterFragment$FilterUserAdapter;->this$0:Lcom/narvii/poweruser/history/MembersFilterFragment;

    invoke-virtual {p3}, Lcom/narvii/poweruser/history/MembersFilterFragment;->isDarkTheme()Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p3, -0x1

    goto :goto_1

    :cond_2
    const p3, -0xaaaaab

    :goto_1
    invoke-virtual {p1, p3}, Lcom/narvii/widget/NicknameView;->setTextColor(I)V

    :cond_3
    return-object p2
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0b03f3

    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 257
    instance-of v0, p3, Lcom/narvii/model/User;

    if-eqz v0, :cond_1

    .line 258
    iget-object p1, p0, Lcom/narvii/poweruser/history/MembersFilterFragment$FilterUserAdapter;->this$0:Lcom/narvii/poweruser/history/MembersFilterFragment;

    check-cast p3, Lcom/narvii/model/User;

    invoke-virtual {p3}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/poweruser/history/MembersFilterFragment;->checkedUid:Ljava/lang/String;

    .line 259
    iget-object p1, p0, Lcom/narvii/poweruser/history/MembersFilterFragment$FilterUserAdapter;->this$0:Lcom/narvii/poweruser/history/MembersFilterFragment;

    iget-object p1, p1, Lcom/narvii/poweruser/history/MembersFilterFragment;->listener:Lcom/narvii/poweruser/history/MembersFilterFragment$FilterItemClickListener;

    if-eqz p1, :cond_0

    .line 260
    invoke-interface {p1, p3}, Lcom/narvii/poweruser/history/MembersFilterFragment$FilterItemClickListener;->onItemClicked(Lcom/narvii/model/User;)V

    .line 262
    :cond_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x1

    return p1

    .line 265
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/user/list/UserListExAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method protected type()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
