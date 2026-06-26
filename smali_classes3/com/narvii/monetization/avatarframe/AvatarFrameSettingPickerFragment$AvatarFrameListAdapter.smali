.class Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "AvatarFrameSettingPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvatarFrameListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/monetization/avatarframe/AvatarFrame;",
        "Lcom/narvii/monetization/avatarframe/AvatarFrameListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/monetization/avatarframe/AvatarFrame;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    .line 398
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;)Ljava/util/List;
    .locals 0

    .line 394
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->dataList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 413
    new-instance p1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {p1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    const-string v0, "avatar-frame"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 414
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/monetization/avatarframe/AvatarFrame;",
            ">;"
        }
    .end annotation

    .line 403
    const-class v0, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    return-object v0
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/monetization/avatarframe/AvatarFrame;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/monetization/avatarframe/AvatarFrame;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 449
    instance-of v0, p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    if-eqz v0, :cond_3

    .line 450
    check-cast p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    const v0, 0x7f0b0386

    .line 451
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 452
    iget-object p3, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    invoke-static {p3}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->access$100(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)Lcom/narvii/wallet/MembershipService;

    move-result-object p3

    invoke-virtual {p3}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    const p3, 0x7f0900f5

    .line 454
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    const/4 v0, 0x0

    .line 455
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 456
    iget-object v1, p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;->icon:Ljava/lang/String;

    invoke-virtual {p3, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const p3, 0x7f090228

    .line 458
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 460
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    invoke-static {v1}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->access$200(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    invoke-static {v1}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->access$200(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 463
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "default"

    invoke-static {v2, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    .line 465
    :goto_1
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 467
    iget-object p3, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    invoke-static {p3}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->access$100(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)Lcom/narvii/wallet/MembershipService;

    move-result-object p3

    invoke-virtual {p3}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/narvii/model/StoreItemBaseObject;->isUsable(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_2
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    const p1, 0x7f0906f7

    .line 469
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p3, 0x8

    .line 470
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0905f6

    .line 472
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    return-object p2

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public isListShown()Z
    .locals 1

    .line 535
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->dataList:Ljava/util/List;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 5

    .line 430
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 432
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->dataList:Ljava/util/List;

    goto :goto_0

    .line 434
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->dataList:Ljava/util/List;

    .line 435
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->dataList:Ljava/util/List;

    new-instance v2, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;

    iget-object v3, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    invoke-static {v3}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->access$100(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)Lcom/narvii/wallet/MembershipService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v3

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;-><init>(ZLandroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->dataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 438
    :goto_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 486
    instance-of p1, p3, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    const/4 p2, 0x1

    if-eqz p1, :cond_5

    .line 487
    check-cast p3, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 489
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->access$100(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)Lcom/narvii/wallet/MembershipService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result p1

    invoke-virtual {p3, p1}, Lcom/narvii/model/StoreItemBaseObject;->isUsable(Z)Z

    move-result p1

    if-nez p1, :cond_3

    .line 490
    invoke-virtual {p3}, Lcom/narvii/model/StoreItemBaseObject;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    move-result-object p1

    .line 491
    invoke-virtual {p3}, Lcom/narvii/model/StoreItemBaseObject;->getOwnershipInfo()Lcom/narvii/model/OwnershipInfo;

    move-result-object p4

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    .line 492
    invoke-virtual {p4}, Lcom/narvii/model/OwnershipInfo;->isExpired()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 493
    new-instance p1, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter$1;

    invoke-direct {p1, p0, p0, p3, p3}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter$1;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;Lcom/narvii/app/NVContext;Lcom/narvii/model/IStoreItem;Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    .line 500
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 501
    iget p1, p1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    const/4 p3, 0x2

    if-ne p1, p3, :cond_2

    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    .line 502
    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->access$100(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)Lcom/narvii/wallet/MembershipService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result p1

    if-nez p1, :cond_2

    .line 503
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->access$100(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)Lcom/narvii/wallet/MembershipService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->isMembershipBefore()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 504
    new-instance p1, Lcom/narvii/membership/MembershipExpireDialog;

    invoke-direct {p1, p0}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 505
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 507
    :cond_1
    new-instance p1, Lcom/narvii/membership/MembershipHintDialog;

    invoke-direct {p1, p0}, Lcom/narvii/membership/MembershipHintDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 508
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    :cond_2
    :goto_0
    return p2

    .line 516
    :cond_3
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    invoke-virtual {p3}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->id()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->access$202(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 517
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->access$300(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 522
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->access$300(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;->onPickAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    .line 527
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->notifyDataSetChanged()V

    :cond_5
    return p2
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/monetization/avatarframe/AvatarFrameListResponse;",
            ">;"
        }
    .end annotation

    .line 408
    const-class v0, Lcom/narvii/monetization/avatarframe/AvatarFrameListResponse;

    return-object v0
.end method
