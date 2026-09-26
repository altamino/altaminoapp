.class Lcom/narvii/poweruser/history/MembersFilterFragment$FilterUserAdapter;
.super Lcom/narvii/user/list/UserListExAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/history/MembersFilterFragment$FilterUserAdapter;->this$0:Lcom/narvii/poweruser/history/MembersFilterFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/user/list/UserListExAdapter;-><init>(Lcom/narvii/app/NVContext;)V

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
    const-string v0, "/user-profile"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string v0, "type"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/poweruser/history/MembersFilterFragment$FilterUserAdapter;->type()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/user/list/UserListExAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    const p3, 0x7f0a02ea

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object p3

    .line 12
    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    instance-of v0, p1, Lcom/narvii/model/User;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    check-cast p1, Lcom/narvii/model/User;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/poweruser/history/MembersFilterFragment$FilterUserAdapter;->this$0:Lcom/narvii/poweruser/history/MembersFilterFragment;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/narvii/poweruser/history/MembersFilterFragment;->checkedUid:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result p1

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    const/4 p1, 0x0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p1, 0x4

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    const p1, 0x7f0a09f9

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    instance-of p3, p1, Lcom/narvii/widget/NicknameView;

    .line 50
    .line 51
    if-eqz p3, :cond_3

    .line 52
    .line 53
    check-cast p1, Lcom/narvii/widget/NicknameView;

    .line 54
    .line 55
    iget-object p3, p0, Lcom/narvii/poweruser/history/MembersFilterFragment$FilterUserAdapter;->this$0:Lcom/narvii/poweruser/history/MembersFilterFragment;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3}, Lcom/narvii/poweruser/history/MembersFilterFragment;->isDarkTheme()Z

    .line 59
    move-result p3

    .line 60
    .line 61
    if-eqz p3, :cond_2

    .line 62
    const/4 p3, -0x1

    .line 63
    goto :goto_1

    .line 64
    .line 65
    .line 66
    :cond_2
    const p3, -0xaaaaab

    .line 67
    .line 68
    .line 69
    :goto_1
    invoke-virtual {p1, p3}, Lcom/narvii/widget/NicknameView;->setTextColor(I)V

    .line 70
    :cond_3
    return-object p2
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0d0429

    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/User;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/poweruser/history/MembersFilterFragment$FilterUserAdapter;->this$0:Lcom/narvii/poweruser/history/MembersFilterFragment;

    .line 7
    .line 8
    check-cast p3, Lcom/narvii/model/User;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    iput-object p2, p1, Lcom/narvii/poweruser/history/MembersFilterFragment;->checkedUid:Ljava/lang/String;

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/poweruser/history/MembersFilterFragment$FilterUserAdapter;->this$0:Lcom/narvii/poweruser/history/MembersFilterFragment;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/narvii/poweruser/history/MembersFilterFragment;->listener:Lcom/narvii/poweruser/history/MembersFilterFragment$FilterItemClickListener;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, p3}, Lcom/narvii/poweruser/history/MembersFilterFragment$FilterItemClickListener;->onItemClicked(Lcom/narvii/model/User;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 27
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/user/list/UserListExAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 32
    move-result p1

    .line 33
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
