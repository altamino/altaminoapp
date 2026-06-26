.class Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "StickerPickerListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVArrayAdapter<",
        "Lcom/narvii/model/Sticker;",
        ">;"
    }
.end annotation


# instance fields
.field stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

.field final synthetic this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;)V
    .locals 0

    .line 656
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 657
    invoke-direct {p0, p2, p3}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    .line 658
    new-instance p1, Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    return-void
.end method

.method private canUseSticker(Lcom/narvii/model/Sticker;)Z
    .locals 2

    .line 819
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-boolean v1, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->trial:Z

    if-eqz v1, :cond_0

    .line 820
    iget-object p1, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result p1

    return p1

    .line 822
    :cond_0
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {v1, v0, p1}, Lcom/narvii/monetization/sticker/StickerHelper;->canUseSticker(Lcom/narvii/monetization/sticker/model/StickerCollection;Lcom/narvii/model/Sticker;)Z

    move-result p1

    return p1
.end method

.method private showMembershipLock(Lcom/narvii/model/Sticker;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 832
    :cond_0
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object v1, v1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {v1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isUserCreated()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object v1, v1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v1}, Lcom/narvii/wallet/MembershipService;->isMembershipBefore()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 836
    :cond_1
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object v1, v1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {v1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isTotalOwned()Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 840
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/model/Sticker;->isGift()Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    return v2
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 849
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Sticker;

    .line 850
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->access$400(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b01ea

    goto :goto_0

    :cond_0
    const v0, 0x7f0b0651

    .line 851
    :goto_0
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090ab9

    .line 853
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;

    .line 854
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->selectedSticker:Lcom/narvii/model/Sticker;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/model/Sticker;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/narvii/model/Sticker;->id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 855
    iget-object v3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    invoke-static {v3}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->access$400(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-boolean v4, v4, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->cacheSticker:Z

    invoke-virtual {p3, p1, v3, v4}, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->setSticker(Lcom/narvii/model/Sticker;ZZ)V

    .line 857
    iget-object p3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-boolean p3, p3, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->trial:Z

    if-nez p3, :cond_6

    const p3, 0x7f0906f7

    .line 858
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 859
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->showMembershipLock(Lcom/narvii/model/Sticker;)Z

    move-result v3

    invoke-static {p3, v3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 860
    iget-object v3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object v3, v3, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v3, :cond_3

    iget-object v3, v3, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    if-eqz v3, :cond_3

    iget v3, v3, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    const v3, 0x7f080298

    .line 861
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_3
    const v3, 0x7f080297

    .line 863
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    const p3, 0x7f090b72

    .line 865
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->canUseSticker(Lcom/narvii/model/Sticker;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->showMembershipLock(Lcom/narvii/model/Sticker;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    const/high16 v3, 0x3f000000    # 0.5f

    goto :goto_5

    :cond_5
    :goto_4
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_5
    invoke-virtual {p3, v3}, Landroid/view/View;->setAlpha(F)V

    .line 868
    :cond_6
    iget-object p3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    invoke-static {p3}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->access$400(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Z

    move-result p3

    if-eqz p3, :cond_a

    const p3, 0x7f090ab3

    .line 869
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/video/widget/EditorStickerInstallFrameView;

    .line 870
    iget-object v3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    invoke-static {v3}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->access$600(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Lcom/narvii/video/services/VideoManager;

    move-result-object v3

    iget-object v4, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object v4, v4, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    iget-object v5, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    iget-object v6, p1, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    .line 871
    invoke-virtual {v4, v5, v6}, Lcom/narvii/sticker/StickerCacheService;->getLocalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 870
    invoke-virtual {v3, p1, v4}, Lcom/narvii/video/services/VideoManager;->obtainInstalledStickerInfo(Lcom/narvii/model/Sticker;Ljava/lang/String;)Lcom/narvii/video/model/StickerInfoPack;

    move-result-object v3

    if-eqz v3, :cond_7

    const/4 v1, 0x1

    :cond_7
    if-eqz v1, :cond_8

    const/4 v2, 0x3

    goto :goto_6

    .line 875
    :cond_8
    invoke-virtual {p1}, Lcom/narvii/model/Sticker;->stickerStatus()I

    move-result v1

    if-nez v1, :cond_9

    goto :goto_6

    .line 878
    :cond_9
    invoke-virtual {p1}, Lcom/narvii/model/Sticker;->stickerStatus()I

    move-result v2

    .line 880
    :goto_6
    iput v2, p1, Lcom/narvii/model/Sticker;->stickerStatus:I

    .line 881
    invoke-virtual {p1}, Lcom/narvii/model/Sticker;->stickerStatus()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->setStickerStatus(I)V

    .line 882
    invoke-virtual {p3, v0}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->setStickerSelected(Z)V

    const/4 v0, 0x2

    if-ne v2, v0, :cond_a

    .line 884
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-boolean v1, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->trial:Z

    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    invoke-virtual {p3, p1, v1, v0}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bindSticker(Lcom/narvii/model/Sticker;ZLcom/narvii/sticker/StickerCacheService;)V

    :cond_a
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onAttach()V
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->setStickerList(Ljava/util/ArrayList;)V

    .line 664
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 669
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onDetach()V

    .line 670
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->collectionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->access$600(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Lcom/narvii/video/services/VideoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object v1, v1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    iget-object v1, v1, Lcom/narvii/monetization/sticker/model/StickerCollection;->collectionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/video/services/VideoManager;->removeViewInstallCollectionCallbacks(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .line 727
    instance-of v0, p3, Lcom/narvii/model/Sticker;

    if-eqz v0, :cond_12

    .line 728
    check-cast p3, Lcom/narvii/model/Sticker;

    .line 729
    invoke-virtual {p3}, Lcom/narvii/model/Sticker;->isDisabled()Z

    move-result p1

    const/4 p2, 0x0

    const/4 p5, 0x1

    if-eqz p1, :cond_1

    .line 730
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    iget-object p4, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object p4, p4, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object p2

    :goto_0
    new-instance p4, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter$1;

    invoke-direct {p4, p0, p3}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter$1;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;Lcom/narvii/model/Sticker;)V

    invoke-virtual {p1, p2, p3, p4}, Lcom/narvii/monetization/sticker/StickerHelper;->deleteDisabledSticker(Ljava/lang/String;Lcom/narvii/model/Sticker;Lcom/narvii/util/Callback;)V

    return p5

    .line 741
    :cond_1
    invoke-direct {p0, p3}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->canUseSticker(Lcom/narvii/model/Sticker;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 742
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-boolean v0, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->trial:Z

    const/4 v1, 0x3

    const v2, 0x7f090ab3

    if-eqz v0, :cond_6

    .line 743
    iget-object v0, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerSelectListener:Lcom/narvii/monetization/sticker/picker/StickerSelectListener;

    if-eqz v0, :cond_2

    .line 744
    iget-object p1, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-interface {v0, p3, p1}, Lcom/narvii/monetization/sticker/picker/StickerSelectListener;->onStickerSelected(Lcom/narvii/model/Sticker;Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 746
    :cond_2
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->access$400(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x4

    .line 747
    iput p1, p3, Lcom/narvii/model/Sticker;->sourceType:I

    .line 748
    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/widget/EditorStickerInstallFrameView;

    .line 749
    invoke-virtual {p3}, Lcom/narvii/model/Sticker;->stickerStatus()I

    move-result p4

    if-ne p4, v1, :cond_4

    .line 750
    iget-object p4, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    invoke-static {p4}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->access$600(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Lcom/narvii/video/services/VideoManager;

    move-result-object p4

    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    iget-object v1, p3, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    iget-object v2, p3, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    .line 751
    invoke-virtual {v0, v1, v2}, Lcom/narvii/sticker/StickerCacheService;->getLocalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 750
    invoke-virtual {p4, p3, v0}, Lcom/narvii/video/services/VideoManager;->obtainInstalledStickerInfo(Lcom/narvii/model/Sticker;Ljava/lang/String;)Lcom/narvii/video/model/StickerInfoPack;

    move-result-object p4

    if-eqz p4, :cond_4

    .line 753
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    .line 754
    instance-of p2, p1, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    if-eqz p2, :cond_3

    .line 755
    check-cast p1, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    invoke-interface {p1, p4}, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;->onStickerInstalled(Lcom/narvii/video/model/StickerInfoPack;)V

    :cond_3
    return p5

    .line 760
    :cond_4
    iget-object p4, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object p4, p4, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    iget-object v0, p3, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    iget-object v1, p3, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    invoke-virtual {p4, v0, v1, p2}, Lcom/narvii/sticker/StickerCacheService;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/sticker/StickerCacheService$DownloadListener;)V

    .line 761
    iget-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object p2, p2, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    invoke-virtual {p1, p3, p5, p2}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bindSticker(Lcom/narvii/model/Sticker;ZLcom/narvii/sticker/StickerCacheService;)V

    .line 762
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iput-object p3, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->selectedSticker:Lcom/narvii/model/Sticker;

    :cond_5
    return p5

    .line 767
    :cond_6
    iget-object p1, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    invoke-virtual {p1, p3}, Lcom/narvii/sticker/StickerCacheService;->getStickerDownloadStatusInfo(Lcom/narvii/model/Sticker;)Lcom/narvii/asset/DownloadStatusInfo;

    move-result-object p1

    .line 768
    invoke-virtual {p1}, Lcom/narvii/asset/DownloadStatusInfo;->isReady()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object v3, p2, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerSelectListener:Lcom/narvii/monetization/sticker/picker/StickerSelectListener;

    if-eqz v3, :cond_b

    .line 769
    iget-object p1, p2, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-interface {v3, p3, p1}, Lcom/narvii/monetization/sticker/picker/StickerSelectListener;->onStickerSelected(Lcom/narvii/model/Sticker;Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 770
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->access$400(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 771
    iput p5, p3, Lcom/narvii/model/Sticker;->sourceType:I

    .line 772
    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/widget/EditorStickerInstallFrameView;

    .line 773
    invoke-virtual {p3}, Lcom/narvii/model/Sticker;->stickerStatus()I

    move-result p2

    if-ne p2, v1, :cond_8

    .line 774
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->access$600(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Lcom/narvii/video/services/VideoManager;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object p2, p2, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    iget-object p4, p3, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    iget-object v0, p3, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    .line 775
    invoke-virtual {p2, p4, v0}, Lcom/narvii/sticker/StickerCacheService;->getLocalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 774
    invoke-virtual {p1, p3, p2}, Lcom/narvii/video/services/VideoManager;->obtainInstalledStickerInfo(Lcom/narvii/model/Sticker;Ljava/lang/String;)Lcom/narvii/video/model/StickerInfoPack;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 777
    iget-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p2

    .line 778
    instance-of p3, p2, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    if-eqz p3, :cond_7

    .line 779
    check-cast p2, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    invoke-interface {p2, p1}, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;->onStickerInstalled(Lcom/narvii/video/model/StickerInfoPack;)V

    :cond_7
    return p5

    .line 783
    :cond_8
    invoke-virtual {p3}, Lcom/narvii/model/Sticker;->stickerStatus()I

    move-result p2

    const/4 p4, 0x2

    if-eq p2, p4, :cond_9

    .line 784
    iget-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object p2, p2, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    invoke-virtual {p1, p3, v0, p2}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bindSticker(Lcom/narvii/model/Sticker;ZLcom/narvii/sticker/StickerCacheService;)V

    .line 786
    :cond_9
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iput-object p3, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->selectedSticker:Lcom/narvii/model/Sticker;

    :cond_a
    return p5

    .line 791
    :cond_b
    invoke-virtual {p1}, Lcom/narvii/asset/DownloadStatusInfo;->isFailed()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 792
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    invoke-virtual {p1, p3}, Lcom/narvii/sticker/StickerCacheService;->downloadSticker(Lcom/narvii/model/Sticker;)V

    .line 793
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->access$400(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 794
    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/widget/EditorStickerInstallFrameView;

    .line 795
    iget-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object p2, p2, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    invoke-virtual {p1, p3, v0, p2}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bindSticker(Lcom/narvii/model/Sticker;ZLcom/narvii/sticker/StickerCacheService;)V

    .line 796
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iput-object p3, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->selectedSticker:Lcom/narvii/model/Sticker;

    .line 798
    :cond_c
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return p5

    .line 802
    :cond_d
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-boolean p2, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->trial:Z

    if-nez p2, :cond_f

    iget-object p1, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isTotalOwned()Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_1

    .line 809
    :cond_e
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->access$900(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)V

    goto :goto_2

    .line 803
    :cond_f
    :goto_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->hasMemberShipExpired()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 804
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->access$700(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)V

    goto :goto_2

    .line 806
    :cond_10
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->access$800(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)V

    :cond_11
    :goto_2
    return p5

    .line 814
    :cond_12
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 710
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->access$100(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Lcom/narvii/monetization/sticker/StickerPreviewListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 711
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->access$100(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Lcom/narvii/monetization/sticker/StickerPreviewListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/monetization/sticker/StickerPreviewListener;->onStickerPreviewStart()V

    .line 714
    :cond_0
    instance-of p1, p3, Lcom/narvii/model/Sticker;

    if-eqz p1, :cond_2

    .line 715
    check-cast p3, Lcom/narvii/model/Sticker;

    .line 716
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-boolean p1, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->trial:Z

    if-nez p1, :cond_1

    invoke-direct {p0, p3}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->canUseSticker(Lcom/narvii/model/Sticker;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    if-eqz p1, :cond_2

    .line 717
    invoke-virtual {p1, p2, p4, p3}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->startPreview(ILandroid/view/View;Lcom/narvii/model/Sticker;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 1

    .line 677
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public setStickerList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/Sticker;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 682
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isShared()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    new-instance v0, Lcom/narvii/util/FilterHelper;

    invoke-direct {v0, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0, p1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 686
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 688
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 690
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    const-string v1, "stickerCache"

    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/sticker/StickerCacheService;

    iput-object v1, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    .line 691
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 692
    instance-of v2, v1, Lcom/narvii/model/Sticker;

    if-eqz v2, :cond_2

    .line 693
    check-cast v1, Lcom/narvii/model/Sticker;

    .line 694
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object v2, v2, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    invoke-virtual {v2, v1}, Lcom/narvii/sticker/StickerCacheService;->getStickerDownloadStatusInfo(Lcom/narvii/model/Sticker;)Lcom/narvii/asset/DownloadStatusInfo;

    move-result-object v2

    .line 695
    iget v2, v2, Lcom/narvii/asset/DownloadStatusInfo;->status:I

    if-nez v2, :cond_2

    .line 696
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object v2, v2, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    invoke-virtual {v2, v1}, Lcom/narvii/sticker/StickerCacheService;->downloadSticker(Lcom/narvii/model/Sticker;)V

    goto :goto_0

    .line 700
    :cond_3
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVArrayAdapter;->setList(Ljava/util/ArrayList;)V

    return-void
.end method
