.class Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "BubbleSettingFragment.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/bubble/BubbleSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BubbleListAdapter"
.end annotation

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
.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatBubble;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 339
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 354
    new-instance p1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {p1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    const-string v0, "chat/chat-bubble"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "type"

    const-string v1, "all-my-bubbles"

    .line 355
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 356
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-static {v0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$700(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "threadId"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 357
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
            "Lcom/narvii/model/ChatBubble;",
            ">;"
        }
    .end annotation

    .line 344
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

    .line 549
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 553
    :cond_1
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleHelper;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/bubble/BubbleHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 554
    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter$2;-><init>(Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;Lcom/narvii/model/ChatBubble;Lcom/narvii/util/Callback;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/monetization/bubble/BubbleHelper;->deleteBubble(Ljava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public editList(Lcom/narvii/notification/Notification;Z)V
    .locals 2

    .line 468
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 469
    iget-object p2, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v0, "delete"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 470
    iget-object p2, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-static {v0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$900(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 471
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-static {p2, v0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$902(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 472
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    const/4 v1, 0x1

    invoke-static {p2, v1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$1202(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Z)Z

    .line 473
    invoke-virtual {p0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->notifyDataSetChanged()V

    .line 475
    :cond_0
    iget-object p1, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-static {p2}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$500(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 476
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-static {p1, v0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$502(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
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
    .locals 11

    .line 407
    instance-of v0, p1, Lcom/narvii/model/ChatBubble;

    if-eqz v0, :cond_10

    .line 408
    check-cast p1, Lcom/narvii/model/ChatBubble;

    .line 409
    iget v0, p1, Lcom/narvii/model/ChatBubble;->type:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const v1, 0x7f0b040c

    goto :goto_1

    :cond_1
    const v1, 0x7f0b038a

    .line 411
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 410
    invoke-virtual {p0, v1, p3, p2, v0}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    .line 413
    iget p3, p1, Lcom/narvii/model/ChatBubble;->type:I

    const/4 v0, -0x2

    if-ne p3, v0, :cond_2

    const/4 p3, 0x1

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    .line 414
    :goto_2
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-static {v1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$1100(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Lcom/narvii/wallet/MembershipService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v1

    .line 415
    iget v4, p1, Lcom/narvii/model/ChatBubble;->type:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    .line 416
    :goto_3
    iget v6, p1, Lcom/narvii/model/ChatBubble;->status:I

    const/16 v7, 0x9

    if-ne v6, v7, :cond_4

    const/4 v6, 0x1

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    const v7, 0x7f090181

    .line 418
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/narvii/widget/NVImageView;

    .line 419
    invoke-virtual {v7, v3}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 420
    iget v8, p1, Lcom/narvii/model/ChatBubble;->type:I

    if-ne v8, v5, :cond_5

    .line 421
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v8, 0x7f080322

    invoke-static {v0, v8}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_5
    if-ne v8, v0, :cond_6

    .line 423
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v8, 0x7f0802c2

    invoke-static {v0, v8}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 425
    :cond_6
    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->getPreviewUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    :goto_5
    const v0, 0x7f09017b

    .line 428
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 429
    iget-object v8, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f09031c

    .line 431
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    if-eqz p3, :cond_7

    const/4 v9, 0x0

    goto :goto_6

    :cond_7
    const/16 v9, 0x8

    .line 432
    :goto_6
    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    const v7, 0x7f090228

    .line 433
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 435
    iget-object v9, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-static {v9}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$900(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 436
    iget-object v5, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-static {v5}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$900(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v9, p1, Lcom/narvii/model/ChatBubble;->id:Ljava/lang/String;

    invoke-static {v5, v9}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    goto :goto_7

    .line 437
    :cond_8
    iget-object v9, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-static {v9}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$1200(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-static {v9}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$1000(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 438
    iget-object v5, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-static {v5}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$1000(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v9, p1, Lcom/narvii/model/ChatBubble;->id:Ljava/lang/String;

    invoke-static {v5, v9}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    goto :goto_7

    .line 440
    :cond_9
    iget v9, p1, Lcom/narvii/model/ChatBubble;->type:I

    if-ne v9, v5, :cond_a

    const/4 v5, 0x1

    goto :goto_7

    :cond_a
    const/4 v5, 0x0

    :goto_7
    const/4 v9, 0x4

    if-eqz v5, :cond_b

    const/4 v10, 0x0

    goto :goto_8

    :cond_b
    const/4 v10, 0x4

    .line 443
    :goto_8
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 445
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v5, :cond_c

    .line 446
    iget v5, p1, Lcom/narvii/model/ChatBubble;->type:I

    if-ne v5, v2, :cond_c

    goto :goto_9

    :cond_c
    const/4 v3, 0x4

    :goto_9
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 448
    invoke-virtual {p1, v1}, Lcom/narvii/model/StoreItemBaseObject;->isUsable(Z)Z

    move-result p1

    if-nez p1, :cond_e

    if-nez v4, :cond_e

    if-eqz p3, :cond_d

    goto :goto_a

    :cond_d
    const/high16 p1, 0x3f000000    # 0.5f

    goto :goto_b

    :cond_e
    :goto_a
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_b
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    const p1, 0x7f0906f7

    .line 450
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 451
    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0905f6

    .line 454
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v6, :cond_f

    if-eqz v1, :cond_f

    .line 455
    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v0, 0x20ff0000

    invoke-direct {p3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_c

    :cond_f
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f08071f

    invoke-static {p3, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :goto_c
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p2

    :cond_10
    const/4 p1, 0x0

    return-object p1
.end method

.method public isListShown()Z
    .locals 1

    .line 604
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

    .line 402
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->l:Ljava/util/List;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .line 380
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 382
    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->l:Ljava/util/List;

    goto :goto_0

    .line 384
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->l:Ljava/util/List;

    .line 385
    new-instance v1, Lcom/narvii/model/ChatBubble;

    invoke-direct {v1}, Lcom/narvii/model/ChatBubble;-><init>()V

    const/4 v2, -0x2

    .line 386
    iput v2, v1, Lcom/narvii/model/ChatBubble;->type:I

    const-string v2, "edit"

    .line 387
    iput-object v2, v1, Lcom/narvii/model/ChatBubble;->id:Ljava/lang/String;

    .line 388
    iget-object v2, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    new-instance v1, Lcom/narvii/model/ChatBubble;

    invoke-direct {v1}, Lcom/narvii/model/ChatBubble;-><init>()V

    const/4 v2, -0x1

    .line 391
    iput v2, v1, Lcom/narvii/model/ChatBubble;->type:I

    const-string v2, "default"

    .line 392
    iput-object v2, v1, Lcom/narvii/model/ChatBubble;->id:Ljava/lang/String;

    .line 393
    iget-object v2, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 397
    :goto_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 484
    instance-of v0, p3, Lcom/narvii/model/ChatBubble;

    if-eqz v0, :cond_9

    .line 485
    check-cast p3, Lcom/narvii/model/ChatBubble;

    if-eqz p5, :cond_2

    .line 487
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f09017b

    if-ne p1, p2, :cond_0

    .line 488
    const-class p1, Lcom/narvii/monetization/bubble/BubbleEditFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 489
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "key_chat_bubble"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 491
    :cond_0
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0906f7

    if-ne p1, p2, :cond_8

    .line 492
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-static {p1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$1100(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Lcom/narvii/wallet/MembershipService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->isMembershipBefore()Z

    move-result p1

    const-string p2, "Chat Bubble (Dialog)"

    if-eqz p1, :cond_1

    .line 493
    new-instance p1, Lcom/narvii/membership/MembershipExpireDialog;

    iget-object p3, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-direct {p1, p3}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 494
    iput-object p2, p1, Lcom/narvii/membership/MembershipExpireDialog;->source:Ljava/lang/String;

    .line 495
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto/16 :goto_0

    .line 497
    :cond_1
    new-instance p1, Lcom/narvii/membership/MembershipHintDialog;

    iget-object p3, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-direct {p1, p3}, Lcom/narvii/membership/MembershipHintDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 498
    iput-object p2, p1, Lcom/narvii/membership/MembershipHintDialog;->source:Ljava/lang/String;

    .line 499
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto/16 :goto_0

    .line 503
    :cond_2
    iget p1, p3, Lcom/narvii/model/ChatBubble;->status:I

    const/16 p2, 0x9

    if-ne p1, p2, :cond_3

    iget-boolean p1, p3, Lcom/narvii/model/ChatBubble;->deletable:Z

    if-eqz p1, :cond_3

    .line 504
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f017e

    .line 505
    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const p2, 0x7f0f0193

    const/4 p4, 0x0

    const p5, -0x444445

    .line 506
    invoke-virtual {p1, p2, p4, p5}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    const p2, 0x7f0f0348

    .line 507
    new-instance p4, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter$1;

    invoke-direct {p4, p0, p3}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter$1;-><init>(Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;Lcom/narvii/model/ChatBubble;)V

    invoke-virtual {p1, p2, p4}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 513
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto/16 :goto_0

    .line 514
    :cond_3
    iget p1, p3, Lcom/narvii/model/ChatBubble;->type:I

    const/4 p2, -0x2

    if-ne p1, p2, :cond_4

    .line 515
    const-class p1, Lcom/narvii/monetization/bubble/BubbleEditFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 516
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    const/4 p2, -0x1

    if-eq p1, p2, :cond_7

    .line 517
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-static {p1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$1100(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Lcom/narvii/wallet/MembershipService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result p1

    invoke-virtual {p3, p1}, Lcom/narvii/model/StoreItemBaseObject;->isUsable(Z)Z

    move-result p1

    if-nez p1, :cond_7

    .line 518
    invoke-virtual {p3}, Lcom/narvii/model/StoreItemBaseObject;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    move-result-object p1

    .line 519
    invoke-virtual {p3}, Lcom/narvii/model/StoreItemBaseObject;->getOwnershipInfo()Lcom/narvii/model/OwnershipInfo;

    move-result-object p2

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 520
    invoke-virtual {p2}, Lcom/narvii/model/OwnershipInfo;->isExpired()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 521
    new-instance p1, Lcom/narvii/monetization/utils/ExpiredItemHintDialog;

    invoke-direct {p1, p0, p3}, Lcom/narvii/monetization/utils/ExpiredItemHintDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/IStoreItem;)V

    .line 522
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_8

    .line 523
    iget p1, p1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_8

    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 524
    invoke-static {p1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$1100(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Lcom/narvii/wallet/MembershipService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result p1

    if-nez p1, :cond_8

    .line 525
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-static {p1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$1100(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Lcom/narvii/wallet/MembershipService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->isMembershipBefore()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 526
    new-instance p1, Lcom/narvii/membership/MembershipExpireDialog;

    invoke-direct {p1, p0}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 527
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 529
    :cond_6
    new-instance p1, Lcom/narvii/membership/MembershipHintDialog;

    invoke-direct {p1, p0}, Lcom/narvii/membership/MembershipHintDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 530
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 534
    :cond_7
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-virtual {p3}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$902(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 535
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-static {p1, p3}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$102(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Lcom/narvii/model/ChatBubble;)Lcom/narvii/model/ChatBubble;

    .line 536
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-static {p1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$600(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)V

    .line 537
    invoke-virtual {p0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->notifyDataSetChanged()V

    :cond_8
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 543
    :cond_9
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 570
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/model/ChatBubble;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 571
    invoke-virtual {p0, p1, v0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 572
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "new"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 573
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/narvii/model/ChatBubble;

    .line 574
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-static {v0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$1100(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Lcom/narvii/wallet/MembershipService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/model/StoreItemBaseObject;->isUsable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$902(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 576
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-static {v0, p1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$102(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Lcom/narvii/model/ChatBubble;)Lcom/narvii/model/ChatBubble;

    .line 578
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-static {p1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$600(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)V

    .line 579
    invoke-virtual {p0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 581
    :cond_1
    instance-of v1, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;

    if-eqz v1, :cond_4

    .line 582
    check-cast v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;

    .line 583
    iget v1, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->action:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->chatBubble:Lcom/narvii/model/ChatBubble;

    iget-boolean v2, v1, Lcom/narvii/model/StoreItemBaseObject;->isActivated:Z

    if-nez v2, :cond_3

    .line 585
    invoke-virtual {v1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-static {v2}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$900(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 586
    iget-object v1, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->chatBubble:Lcom/narvii/model/ChatBubble;

    invoke-virtual {v1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-static {v2}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$900(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 587
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$902(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 589
    :cond_2
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-static {v1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$1000(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$902(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 591
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->notifyDataSetChanged()V

    .line 593
    :cond_3
    new-instance v1, Lcom/narvii/monetization/bubble/BubbleHelper;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/bubble/BubbleHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 594
    invoke-virtual {v1, p1, p0}, Lcom/narvii/monetization/bubble/BubbleHelper;->handleBubbleWrapNotification(Lcom/narvii/notification/Notification;Lcom/narvii/list/NVPagedAdapter;)V

    .line 595
    iget-boolean p1, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->applyForAll:Z

    if-eqz p1, :cond_4

    iget-object p1, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->chatBubble:Lcom/narvii/model/ChatBubble;

    if-eqz p1, :cond_4

    .line 596
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$902(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 597
    invoke-virtual {p0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->notifyDataSetChanged()V

    :cond_4
    :goto_1
    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/ChatBubbleListResponse;I)V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    iget-object v1, p2, Lcom/narvii/model/ChatBubbleListResponse;->currentSelectedBubbleId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$502(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 363
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    iget-object v1, p2, Lcom/narvii/model/ChatBubbleListResponse;->currentSelectedBubbleId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$902(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 364
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    iget-object v1, p2, Lcom/narvii/model/ChatBubbleListResponse;->allChatsBubbleId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$1002(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 365
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 334
    check-cast p2, Lcom/narvii/model/ChatBubbleListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/ChatBubbleListResponse;I)V

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

    .line 349
    const-class v0, Lcom/narvii/model/ChatBubbleListResponse;

    return-object v0
.end method
