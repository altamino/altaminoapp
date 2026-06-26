.class Lcom/narvii/item/detail/ItemDetailFragment$12;
.super Ljava/lang/Object;
.source "ItemDetailFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/item/detail/ItemDetailFragment;->bookmark(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/narvii/item/detail/ItemDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/item/detail/ItemDetailFragment;)V
    .locals 0

    .line 1799
    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$12;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 1802
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$12;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$12;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1803
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$12;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$12;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    const v1, 0x7f0f0174

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 1804
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$12;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    iget-object p1, p1, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1805
    iput-boolean v0, p1, Lcom/narvii/detail/FeedDetailAdapter;->isBookmarked:Z

    .line 1806
    invoke-virtual {p1}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1799
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/item/detail/ItemDetailFragment$12;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
