.class Lcom/narvii/poweruser/BannedMemberListFragment$BanedMemberAdapter;
.super Lcom/narvii/user/list/UserListAdapter;
.source "BannedMemberListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poweruser/BannedMemberListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BanedMemberAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/BannedMemberListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/poweruser/BannedMemberListFragment;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/narvii/poweruser/BannedMemberListFragment$BanedMemberAdapter;->this$0:Lcom/narvii/poweruser/BannedMemberListFragment;

    .line 48
    invoke-direct {p0, p1}, Lcom/narvii/user/list/UserListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 58
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/user-profile"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "type"

    const-string v1, "banned"

    .line 59
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 60
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 65
    instance-of v0, p3, Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    .line 66
    iget-object p1, p0, Lcom/narvii/poweruser/BannedMemberListFragment$BanedMemberAdapter;->this$0:Lcom/narvii/poweruser/BannedMemberListFragment;

    check-cast p3, Lcom/narvii/model/User;

    invoke-static {p1, p3}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    .line 70
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/user/list/UserListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public showDisableView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
