.class Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment$Adapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "PendingStickerCollectionListFragment.java"


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

    .line 91
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment;

    .line 92
    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 93
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment$Adapter;->datetime:Lcom/narvii/util/DateTimeFormatter;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 108
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "store/share-requests"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const/16 v0, 0x72

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "objectType"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

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
            "Lcom/narvii/monetization/store/data/ShareRequest;",
            ">;"
        }
    .end annotation

    .line 98
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

    .line 143
    instance-of v0, p1, Lcom/narvii/monetization/store/data/ShareRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 144
    check-cast p1, Lcom/narvii/monetization/store/data/ShareRequest;

    invoke-virtual {p1}, Lcom/narvii/monetization/store/data/ShareRequest;->getRefObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const v1, 0x7f0b0575

    .line 149
    invoke-virtual {p0, v1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f09027a

    .line 151
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 152
    iget-object v1, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->icon:Ljava/lang/String;

    invoke-virtual {p3, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const/4 v1, 0x0

    .line 153
    invoke-virtual {p3, v1}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    const p3, 0x7f09027d

    .line 155
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 156
    iget-object v2, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->name:Ljava/lang/String;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f09032e

    .line 158
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 159
    iget-object v2, p0, Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment$Adapter;->datetime:Lcom/narvii/util/DateTimeFormatter;

    iget-object p1, p1, Lcom/narvii/monetization/store/data/ShareRequest;->createdTime:Ljava/util/Date;

    invoke-virtual {v2, p1}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090aaf

    .line 161
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 162
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    iget v2, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickersCount:I

    const v3, 0x7f0f0cd6

    const v4, 0x7f0f0c04

    invoke-static {p3, v2, v3, v4}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget p3, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickersCount:I

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {p1, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 165
    iget-object p1, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->author:Lcom/narvii/model/User;

    if-eqz p1, :cond_2

    const p1, 0x7f090c10

    .line 166
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/UserAvatarLayout;

    .line 167
    iget-object p3, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->author:Lcom/narvii/model/User;

    invoke-virtual {p1, p3}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    const p1, 0x7f090764

    .line 168
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NicknameView;

    .line 169
    iget-object p3, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->author:Lcom/narvii/model/User;

    invoke-virtual {p1, p3}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    :cond_2
    return-object p2

    :cond_3
    return-object v1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 125
    instance-of v0, p3, Lcom/narvii/monetization/store/data/ShareRequest;

    if-eqz v0, :cond_1

    .line 126
    const-class p1, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 127
    check-cast p3, Lcom/narvii/monetization/store/data/ShareRequest;

    iget-object p2, p3, Lcom/narvii/monetization/store/data/ShareRequest;->requestId:Ljava/lang/String;

    const-string p4, "requestId"

    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-virtual {p3}, Lcom/narvii/monetization/store/data/ShareRequest;->getRefObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    check-cast p2, Lcom/narvii/monetization/sticker/model/StickerCollection;

    const/4 p3, 0x1

    if-nez p2, :cond_0

    return p3

    .line 132
    :cond_0
    invoke-virtual {p2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object p4

    const-string p5, "id"

    invoke-virtual {p1, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p4, "prefetch"

    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "approveMode"

    .line 134
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 135
    iget-object p2, p0, Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment;

    const/16 p4, 0xc8

    invoke-virtual {p2, p1, p4}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return p3

    .line 138
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

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

    .line 103
    const-class v0, Lcom/narvii/monetization/store/data/ShareRequestListResponse;

    return-object v0
.end method
