.class Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment$Adapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/monetization/store/data/ShareRequest;",
        "Lcom/narvii/monetization/store/data/ShareRequestListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field datetime:Lcom/narvii/util/DateTimeFormatter;

.field final synthetic this$0:Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment$Adapter;->datetime:Lcom/narvii/util/DateTimeFormatter;

    .line 16
    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

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
    const-string v0, "store/share-requests"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const/16 v0, 0x72

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "objectType"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 22
    move-result-object p1

    .line 23
    const/4 v0, 0x1

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    const-string v1, "status"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/monetization/store/data/ShareRequest;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/monetization/store/data/ShareRequest;

    return-object v0
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
    .locals 5

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/monetization/store/data/ShareRequest;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    check-cast p1, Lcom/narvii/monetization/store/data/ShareRequest;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/monetization/store/data/ShareRequest;->getRefObject()Lcom/narvii/model/NVObject;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    return-object v1

    .line 17
    .line 18
    .line 19
    :cond_0
    const v1, 0x7f0d061b

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    .line 26
    const p3, 0x7f0a0343

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object p3

    .line 31
    .line 32
    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 33
    .line 34
    iget-object v1, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->icon:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 38
    const/4 v1, 0x0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3, v1}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 42
    .line 43
    .line 44
    const p3, 0x7f0a0346

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object p3

    .line 49
    .line 50
    check-cast p3, Landroid/widget/TextView;

    .line 51
    .line 52
    iget-object v2, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->name:Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    const p3, 0x7f0a0408

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    move-result-object p3

    .line 63
    .line 64
    check-cast p3, Landroid/widget/TextView;

    .line 65
    .line 66
    iget-object v2, p0, Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment$Adapter;->datetime:Lcom/narvii/util/DateTimeFormatter;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/narvii/monetization/store/data/ShareRequest;->createdTime:Ljava/util/Date;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, p1}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    const p1, 0x7f0a0da9

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    check-cast p1, Landroid/widget/TextView;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 88
    move-result-object p3

    .line 89
    .line 90
    iget v2, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickersCount:I

    .line 91
    .line 92
    .line 93
    const v3, 0x7f120dfe

    .line 94
    .line 95
    .line 96
    const v4, 0x7f120d2f

    .line 97
    .line 98
    .line 99
    invoke-static {p3, v2, v3, v4}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    .line 100
    move-result-object p3

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    iget p3, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickersCount:I

    .line 106
    .line 107
    if-eqz p3, :cond_1

    .line 108
    const/4 v1, 0x1

    .line 109
    .line 110
    .line 111
    :cond_1
    invoke-static {p1, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 112
    .line 113
    iget-object p1, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->author:Lcom/narvii/model/User;

    .line 114
    .line 115
    if-eqz p1, :cond_2

    .line 116
    .line 117
    .line 118
    const p1, 0x7f0a0f36

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    check-cast p1, Lcom/narvii/widget/UserAvatarLayout;

    .line 125
    .line 126
    iget-object p3, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->author:Lcom/narvii/model/User;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, p3}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 130
    .line 131
    .line 132
    const p1, 0x7f0a09f9

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 136
    move-result-object p1

    .line 137
    .line 138
    check-cast p1, Lcom/narvii/widget/NicknameView;

    .line 139
    .line 140
    iget-object p3, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->author:Lcom/narvii/model/User;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, p3}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 144
    :cond_2
    return-object p2

    .line 145
    :cond_3
    return-object v1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/monetization/store/data/ShareRequest;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    const-class p1, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p3, Lcom/narvii/monetization/store/data/ShareRequest;

    .line 13
    .line 14
    iget-object p2, p3, Lcom/narvii/monetization/store/data/ShareRequest;->requestId:Ljava/lang/String;

    .line 15
    .line 16
    const-string p4, "requestId"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3}, Lcom/narvii/monetization/store/data/ShareRequest;->getRefObject()Lcom/narvii/model/NVObject;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    check-cast p2, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 26
    const/4 p3, 0x1

    .line 27
    .line 28
    if-nez p2, :cond_0

    .line 29
    return p3

    .line 30
    .line 31
    :cond_0
    const-string p4, "id"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 35
    move-result-object p5

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    const-string p4, "prefetch"

    .line 41
    .line 42
    .line 43
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    move-result-object p2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    .line 49
    const-string p2, "approveMode"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 53
    .line 54
    iget-object p2, p0, Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment;

    .line 55
    .line 56
    const/16 p4, 0xc8

    .line 57
    .line 58
    .line 59
    invoke-static {p2, p1, p4}, Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment$Adapter;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 60
    return p3

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 64
    move-result p1

    .line 65
    return p1
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/monetization/store/data/ShareRequestListResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/monetization/store/data/ShareRequestListResponse;

    return-object v0
.end method
