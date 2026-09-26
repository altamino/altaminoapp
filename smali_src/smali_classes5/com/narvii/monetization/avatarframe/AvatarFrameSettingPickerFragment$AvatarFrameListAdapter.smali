.class Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method

.method static bridge synthetic m(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->dataList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 6
    .line 7
    const-string v0, "avatar-frame"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 15
    move-result-object p1

    .line 16
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

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 7
    .line 8
    .line 9
    const v0, 0x7f0d03c1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    iget-object p3, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    .line 16
    .line 17
    .line 18
    invoke-static {p3}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->z(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)Lcom/narvii/wallet/MembershipService;

    .line 19
    move-result-object p3

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 23
    .line 24
    .line 25
    const p3, 0x7f0a0184

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object p3

    .line 30
    .line 31
    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 32
    const/4 v0, 0x0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 36
    .line 37
    iget-object v1, p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;->icon:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    const p3, 0x7f0a02e2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object p3

    .line 48
    .line 49
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    .line 50
    .line 51
    .line 52
    invoke-static {v1}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->y(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    .line 58
    .line 59
    .line 60
    invoke-static {v1}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->y(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->id()Ljava/lang/String;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    move-result v1

    .line 70
    goto :goto_0

    .line 71
    .line 72
    :cond_0
    const-string v1, "default"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->id()Ljava/lang/String;

    .line 76
    move-result-object v2

    .line 77
    .line 78
    .line 79
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    move-result v1

    .line 81
    .line 82
    :goto_0
    if-eqz v1, :cond_1

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    const/4 v0, 0x4

    .line 85
    .line 86
    .line 87
    :goto_1
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    iget-object p3, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    .line 90
    .line 91
    .line 92
    invoke-static {p3}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->z(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)Lcom/narvii/wallet/MembershipService;

    .line 93
    move-result-object p3

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 97
    move-result p3

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p3}, Lcom/narvii/model/StoreItemBaseObject;->isUsable(Z)Z

    .line 101
    move-result p1

    .line 102
    .line 103
    if-eqz p1, :cond_2

    .line 104
    .line 105
    const/high16 p1, 0x3f800000    # 1.0f

    .line 106
    goto :goto_2

    .line 107
    .line 108
    :cond_2
    const/high16 p1, 0x3f000000    # 0.5f

    .line 109
    .line 110
    .line 111
    :goto_2
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 112
    .line 113
    .line 114
    const p1, 0x7f0a0959

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    const/16 p3, 0x8

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    const p1, 0x7f0a0776

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    return-object p2

    .line 131
    :cond_3
    const/4 p1, 0x0

    .line 132
    return-object p1
.end method

.method public isListShown()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-gtz v0, :cond_1

    .line 17
    .line 18
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    const/4 v0, 0x0

    .line 24
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

    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->dataList:Ljava/util/List;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->dataList:Ljava/util/List;

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->dataList:Ljava/util/List;

    .line 18
    .line 19
    new-instance v2, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    .line 22
    .line 23
    .line 24
    invoke-static {v3}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->z(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)Lcom/narvii/wallet/MembershipService;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 29
    move-result v3

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v4

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, v3, v4}, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;-><init>(ZLandroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->dataList:Ljava/util/List;

    .line 42
    .line 43
    .line 44
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 48
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    .line 2
    instance-of p1, p3, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 3
    const/4 p2, 0x1

    .line 4
    .line 5
    if-eqz p1, :cond_5

    .line 6
    .line 7
    check-cast p3, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->z(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)Lcom/narvii/wallet/MembershipService;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 17
    move-result p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3, p1}, Lcom/narvii/model/StoreItemBaseObject;->isUsable(Z)Z

    .line 21
    move-result p1

    .line 22
    .line 23
    if-nez p1, :cond_3

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3}, Lcom/narvii/model/StoreItemBaseObject;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3}, Lcom/narvii/model/StoreItemBaseObject;->getOwnershipInfo()Lcom/narvii/model/OwnershipInfo;

    .line 31
    move-result-object p4

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    if-eqz p4, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p4}, Lcom/narvii/model/OwnershipInfo;->isExpired()Z

    .line 39
    move-result p4

    .line 40
    .line 41
    if-eqz p4, :cond_0

    .line 42
    .line 43
    new-instance p1, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter$1;

    .line 44
    .line 45
    .line 46
    invoke-direct {p1, p0, p0, p3, p3}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter$1;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;Lcom/narvii/app/NVContext;Lcom/narvii/model/IStoreItem;Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_0
    if-eqz p1, :cond_2

    .line 53
    .line 54
    iget p1, p1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 55
    const/4 p3, 0x2

    .line 56
    .line 57
    if-ne p1, p3, :cond_2

    .line 58
    .line 59
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->z(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)Lcom/narvii/wallet/MembershipService;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 67
    move-result p1

    .line 68
    .line 69
    if-nez p1, :cond_2

    .line 70
    .line 71
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->z(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)Lcom/narvii/wallet/MembershipService;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->isMembershipBefore()Z

    .line 79
    move-result p1

    .line 80
    .line 81
    if-eqz p1, :cond_1

    .line 82
    .line 83
    new-instance p1, Lcom/narvii/membership/MembershipExpireDialog;

    .line 84
    .line 85
    .line 86
    invoke-direct {p1, p0}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 90
    goto :goto_0

    .line 91
    .line 92
    :cond_1
    new-instance p1, Lcom/narvii/membership/MembershipHintDialog;

    .line 93
    .line 94
    .line 95
    invoke-direct {p1, p0}, Lcom/narvii/membership/MembershipHintDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 99
    :cond_2
    :goto_0
    return p2

    .line 100
    .line 101
    :cond_3
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->id()Ljava/lang/String;

    .line 105
    move-result-object p4

    .line 106
    .line 107
    .line 108
    invoke-static {p1, p4}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->A(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;Ljava/lang/String;)V

    .line 109
    .line 110
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    .line 111
    .line 112
    .line 113
    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->x(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;

    .line 114
    move-result-object p1

    .line 115
    .line 116
    if-eqz p1, :cond_4

    .line 117
    .line 118
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    .line 119
    .line 120
    .line 121
    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->x(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    .line 125
    invoke-interface {p1, p3}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;->onPickAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    .line 126
    .line 127
    .line 128
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->notifyDataSetChanged()V

    .line 129
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

    const-class v0, Lcom/narvii/monetization/avatarframe/AvatarFrameListResponse;

    return-object v0
.end method
