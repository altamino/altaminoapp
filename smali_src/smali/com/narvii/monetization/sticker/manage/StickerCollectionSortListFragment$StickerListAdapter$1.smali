.class Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter;->sendDeleteRequest(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
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
.field final synthetic this$1:Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter;

.field final synthetic val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter;Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter$1;->val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 7

    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter;

    .line 2
    iget-object p1, p1, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->adapter:Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter$1;->val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 3
    invoke-virtual {p1, v0}, Lcom/narvii/list/NVArrayAdapter;->remove(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter;

    .line 4
    iget-object p1, p1, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    const v0, 0x7f120fea

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter;

    .line 5
    iget-object p1, p1, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/narvii/app/NVActivity;

    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v2, 0x7f0801d7

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f01006a

    const-wide/16 v5, 0x1f4

    invoke-virtual/range {v1 .. v6}, Lcom/narvii/app/NVActivity;->toastImageWithText(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IJ)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter;

    .line 6
    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :goto_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter;

    .line 7
    iget-object p1, p1, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->u(Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;)Lcom/narvii/monetization/sticker/StickerService;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter$1;->val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {p1, v0}, Lcom/narvii/monetization/sticker/StickerService;->removeStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter$1;->val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p1, Lcom/narvii/model/StoreItemBaseObject;->isActivated:Z

    .line 9
    new-instance p1, Lcom/narvii/notification/Notification;

    const-string/jumbo v0, "update"

    iget-object v1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter$1;->val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-direct {p1, v0, v1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter;

    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/list/NVAdapter;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
