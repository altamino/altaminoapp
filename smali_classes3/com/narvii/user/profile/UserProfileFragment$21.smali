.class Lcom/narvii/user/profile/UserProfileFragment$21;
.super Ljava/lang/Object;
.source "UserProfileFragment.java"

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

    .line 2959
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$21;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 2962
    check-cast p1, Lcom/narvii/userblock/BlockListResponse;

    .line 2963
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$21;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    const-string v1, "block"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/userblock/UserBlockService;

    .line 2964
    iget-object v1, p1, Lcom/narvii/userblock/BlockListResponse;->blockedUidList:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/narvii/userblock/BlockListResponse;->blockerUidList:Ljava/util/ArrayList;

    invoke-interface {v0, v1, p1}, Lcom/narvii/userblock/UserBlockService;->updateBlockList(Ljava/util/List;Ljava/util/List;)V

    .line 2965
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$21;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2966
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$21;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    const v0, 0x7f080317

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->toastImage(I)V

    .line 2967
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$21;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 2969
    :cond_0
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$21;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-static {p1}, Lcom/narvii/user/profile/UserProfileFragment;->access$000(Lcom/narvii/user/profile/UserProfileFragment;)V

    .line 2970
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$21;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object p1, p1, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    if-eqz p1, :cond_1

    .line 2971
    invoke-virtual {p1}, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 2959
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment$21;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
