.class final Lcom/narvii/master/home/profile/GlobalProfileFragment$blockUser$2;
.super Ljava/lang/Object;
.source "GlobalProfileFragment.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/GlobalProfileFragment;->blockUser(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalProfileFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalProfileFragment.kt\ncom/narvii/master/home/profile/GlobalProfileFragment$blockUser$2\n*L\n1#1,1015:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$blockUser$2;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 305
    check-cast p1, Lcom/narvii/userblock/BlockListResponse;

    .line 306
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$blockUser$2;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-static {v0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->access$getUserBlockService$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;)Lcom/narvii/userblock/UserBlockService;

    move-result-object v0

    iget-object v1, p1, Lcom/narvii/userblock/BlockListResponse;->blockedUidList:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/narvii/userblock/BlockListResponse;->blockerUidList:Ljava/util/ArrayList;

    invoke-interface {v0, v1, p1}, Lcom/narvii/userblock/UserBlockService;->updateBlockList(Ljava/util/List;Ljava/util/List;)V

    .line 307
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$blockUser$2;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    if-eqz p1, :cond_0

    const v0, 0x7f080317

    .line 308
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->toastImage(I)V

    .line 309
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    :cond_0
    return-void

    .line 305
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.userblock.BlockListResponse"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 78
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment$blockUser$2;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
