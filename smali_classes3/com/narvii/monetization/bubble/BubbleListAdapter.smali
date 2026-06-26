.class public abstract Lcom/narvii/monetization/bubble/BubbleListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "BubbleListAdapter.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/model/ChatBubble;",
        "Lcom/narvii/model/ChatBubbleListResponse;",
        ">;",
        "Lcom/narvii/notification/NotificationListener;"
    }
.end annotation


# instance fields
.field membershipService:Lcom/narvii/wallet/MembershipService;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v0, "membership"

    .line 44
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/wallet/MembershipService;

    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleListAdapter;->membershipService:Lcom/narvii/wallet/MembershipService;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 60
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    const-string v1, "chat/chat-bubble"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v1, "type"

    const-string v2, "all-my-bubbles"

    .line 62
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 63
    invoke-virtual {p0}, Lcom/narvii/monetization/bubble/BubbleListAdapter;->threadId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/narvii/monetization/bubble/BubbleListAdapter;->threadId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "threadId"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "start0"

    .line 67
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 69
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/ChatBubble;",
            ">;"
        }
    .end annotation

    .line 50
    const-class v0, Lcom/narvii/model/ChatBubble;

    return-object v0
.end method

.method protected deleteBubble(Lcom/narvii/model/ChatBubble;Lcom/narvii/util/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/ChatBubble;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    .line 207
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 211
    :cond_1
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleHelper;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/bubble/BubbleHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 212
    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/narvii/monetization/bubble/BubbleListAdapter$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleListAdapter$2;-><init>(Lcom/narvii/monetization/bubble/BubbleListAdapter;Lcom/narvii/model/ChatBubble;Lcom/narvii/util/Callback;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/monetization/bubble/BubbleHelper;->deleteBubble(Ljava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatBubble;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatBubble;",
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
    .locals 8

    .line 93
    instance-of v0, p1, Lcom/narvii/model/ChatBubble;

    if-eqz v0, :cond_10

    .line 94
    check-cast p1, Lcom/narvii/model/ChatBubble;

    .line 95
    iget v0, p1, Lcom/narvii/model/ChatBubble;->type:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 96
    :goto_0
    iget v4, p1, Lcom/narvii/model/ChatBubble;->type:I

    .line 97
    iget v4, p1, Lcom/narvii/model/ChatBubble;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 98
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/monetization/bubble/BubbleListAdapter;->layoutId()I

    move-result v6

    invoke-virtual {p0, v6, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090181

    .line 100
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    const/16 v6, 0x9

    if-eqz p3, :cond_6

    if-eqz v4, :cond_2

    .line 102
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    goto :goto_2

    :cond_2
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    :goto_2
    invoke-virtual {p3, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    .line 103
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v7, 0x41100000    # 9.0f

    invoke-static {v4, v7}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    .line 104
    :goto_3
    invoke-virtual {p3, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 105
    iget v4, p1, Lcom/narvii/model/ChatBubble;->type:I

    if-ne v4, v1, :cond_4

    .line 106
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f080322

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 108
    :cond_4
    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->getPreviewUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 110
    :goto_4
    invoke-virtual {p3, v3}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 111
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v4, p1, Lcom/narvii/model/ChatBubble;->status:I

    if-ne v4, v6, :cond_5

    const/high16 v4, 0x40ff0000    # 7.96875f

    goto :goto_5

    :cond_5
    const v4, -0x90807

    :goto_5
    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    const p3, 0x7f09031c

    .line 115
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const/16 v1, 0x8

    if-eqz p3, :cond_7

    .line 117
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    const p3, 0x7f0905ea

    .line 120
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/monetization/utils/StoreItemNameView;

    if-eqz p3, :cond_9

    .line 122
    invoke-virtual {p3, p1}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    const v4, 0x7f09027d

    .line 123
    invoke-virtual {p3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_9

    .line 125
    iget v4, p1, Lcom/narvii/model/ChatBubble;->status:I

    if-ne v4, v6, :cond_8

    const v4, -0x15edee

    goto :goto_6

    :cond_8
    const v4, -0xcccccc

    :goto_6
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    const p3, 0x7f090179

    .line 129
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_e

    .line 131
    invoke-virtual {p1}, Lcom/narvii/model/StoreItemBaseObject;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 132
    invoke-virtual {p1}, Lcom/narvii/model/RestrictionInfo;->isSupported()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/narvii/monetization/bubble/BubbleListAdapter;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 133
    invoke-virtual {v4}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v4

    if-nez v4, :cond_b

    iget p1, p1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    if-eq p1, v5, :cond_a

    goto :goto_7

    :cond_a
    const/4 v2, 0x0

    :cond_b
    :goto_7
    if-nez v2, :cond_d

    if-eqz v0, :cond_c

    goto :goto_8

    :cond_c
    const/high16 p1, 0x3f000000    # 0.5f

    goto :goto_9

    :cond_d
    :goto_8
    const/high16 p1, 0x3f800000    # 1.0f

    .line 134
    :goto_9
    invoke-virtual {p3, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_e
    const p1, 0x7f090b23

    .line 136
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 138
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    return-object p2

    :cond_10
    const/4 p1, 0x0

    return-object p1
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0b0388

    return v0
.end method

.method protected onFirstPageResponse()V
    .locals 0

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 5

    .line 174
    instance-of v0, p3, Lcom/narvii/model/ChatBubble;

    if-eqz v0, :cond_2

    .line 175
    move-object v0, p3

    check-cast v0, Lcom/narvii/model/ChatBubble;

    .line 176
    iget v1, v0, Lcom/narvii/model/ChatBubble;->status:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    iget-boolean v1, v0, Lcom/narvii/model/ChatBubble;->deletable:Z

    if-eqz v1, :cond_0

    .line 177
    new-instance v1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f017e

    .line 178
    invoke-virtual {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v2, 0x7f0f0193

    const/4 v3, 0x0

    const v4, -0x444445

    .line 179
    invoke-virtual {v1, v2, v3, v4}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    const v2, 0x7f0f0348

    .line 180
    new-instance v3, Lcom/narvii/monetization/bubble/BubbleListAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/narvii/monetization/bubble/BubbleListAdapter$1;-><init>(Lcom/narvii/monetization/bubble/BubbleListAdapter;Lcom/narvii/model/ChatBubble;)V

    invoke-virtual {v1, v2, v3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 186
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 188
    :cond_0
    iget v1, v0, Lcom/narvii/model/ChatBubble;->type:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 189
    const-class p1, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 190
    invoke-virtual {v0}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object p2

    const-string p3, "id"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "prefetch"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "Source"

    const-string p3, "Store"

    .line 192
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v3

    :cond_1
    if-ne v1, v3, :cond_2

    .line 196
    new-instance v1, Lcom/narvii/monetization/bubble/BubbleHelper;

    iget-object v2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v1, v2}, Lcom/narvii/monetization/bubble/BubbleHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 197
    invoke-virtual {v1, v0}, Lcom/narvii/monetization/bubble/BubbleHelper;->editChatBubble(Lcom/narvii/model/ChatBubble;)V

    .line 201
    :cond_2
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 0

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/ChatBubbleListResponse;I)V
    .locals 0

    .line 151
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 152
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "start0"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/narvii/monetization/bubble/BubbleListAdapter;->onFirstPageResponse()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 38
    check-cast p2, Lcom/narvii/model/ChatBubbleListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/monetization/bubble/BubbleListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/ChatBubbleListResponse;I)V

    return-void
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
            "Lcom/narvii/model/ChatBubbleListResponse;",
            ">;"
        }
    .end annotation

    .line 55
    const-class v0, Lcom/narvii/model/ChatBubbleListResponse;

    return-object v0
.end method

.method protected threadId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
