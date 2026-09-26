.class Lcom/narvii/user/profile/UserProfileFragment$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/profile/UserProfileFragment;->blockUser(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$19;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 2
    check-cast p1, Lcom/narvii/userblock/BlockListResponse;

    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$19;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    const-string v1, "block"

    .line 3
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/userblock/UserBlockService;

    .line 4
    iget-object v1, p1, Lcom/narvii/userblock/BlockListResponse;->blockedUidList:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/narvii/userblock/BlockListResponse;->blockerUidList:Ljava/util/ArrayList;

    invoke-interface {v0, v1, p1}, Lcom/narvii/userblock/UserBlockService;->updateBlockList(Ljava/util/List;Ljava/util/List;)V

    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$19;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$19;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    const v0, 0x7f080421

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->toastImage(I)V

    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$19;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 7
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    :cond_0
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$19;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 8
    invoke-static {p1}, Lcom/narvii/user/profile/UserProfileFragment;->K(Lcom/narvii/user/profile/UserProfileFragment;)V

    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$19;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 9
    iget-object p1, p1, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment$19;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
