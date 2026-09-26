.class Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;
.super Lcom/narvii/detail/DetailAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/detail/DetailAdapter<",
        "Lcom/narvii/model/ChatBubble;",
        "Lcom/narvii/monetization/bubble/ChatBubbleResponse;",
        ">;"
    }
.end annotation


# instance fields
.field stated:Z

.field final synthetic this$0:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/detail/DetailAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    sget-object v0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->DETAIL:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    return-void
.end method

.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v2, "/chat/chat-bubble/"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method

.method protected getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    const p1, 0x7f0d0082

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    .line 14
    :cond_0
    sget-object v0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->DETAIL:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 15
    .line 16
    if-ne p1, v0, :cond_3

    .line 17
    .line 18
    .line 19
    const p1, 0x7f0d0080

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    check-cast p2, Lcom/narvii/model/ChatBubble;

    .line 30
    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    .line 34
    const p3, 0x7f0a076a

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object p3

    .line 39
    .line 40
    check-cast p3, Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3, p2}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 44
    .line 45
    .line 46
    const p3, 0x7f0a0777

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object p3

    .line 51
    .line 52
    check-cast p3, Lcom/narvii/monetization/StoreItemStatusView;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;

    .line 55
    .line 56
    iget-object v1, v0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->statusController:Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    .line 57
    .line 58
    if-nez v1, :cond_1

    .line 59
    .line 60
    new-instance v1, Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    .line 64
    move-result-object v2

    .line 65
    const/4 v3, 0x0

    .line 66
    const/4 v4, 0x1

    .line 67
    .line 68
    .line 69
    invoke-direct {v1, v2, p3, v3, v4}, Lcom/narvii/monetization/ChatBubbleOwnStatusController;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Ljava/lang/String;Z)V

    .line 70
    .line 71
    iput-object v1, v0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->statusController:Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    .line 72
    .line 73
    iget-object p3, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;

    .line 74
    .line 75
    iget-object p3, p3, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->statusController:Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3}, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->onCreate()V

    .line 79
    .line 80
    :cond_1
    iget-object p3, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;

    .line 81
    .line 82
    iget-object v0, p3, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->statusController:Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    .line 83
    .line 84
    .line 85
    invoke-static {p3}, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->t(Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;)Ljava/lang/String;

    .line 86
    move-result-object p3

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p2, p3}, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->setStoreItem(Lcom/narvii/model/IStoreItem;Ljava/lang/String;)V

    .line 90
    :cond_2
    return-object p1

    .line 91
    .line 92
    :cond_3
    sget-object v0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->FITBOTTOM:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 93
    .line 94
    if-ne p1, v0, :cond_4

    .line 95
    .line 96
    .line 97
    const p1, 0x7f0d0042

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 105
    move-result-object p2

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 109
    move-result-object p3

    .line 110
    .line 111
    .line 112
    invoke-static {p3}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    .line 113
    move-result p3

    .line 114
    .line 115
    iget-object v0, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    .line 122
    const v1, 0x7f0700a1

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 126
    move-result v0

    .line 127
    sub-int/2addr p3, v0

    .line 128
    .line 129
    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 130
    return-object p1

    .line 131
    .line 132
    .line 133
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/detail/DetailAdapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 134
    move-result-object p1

    .line 135
    return-object p1
.end method

.method protected getCellTypes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/detail/DetailAdapter$CellType;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->getCellTypes(Ljava/util/List;)V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    sget-object v0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->DETAIL:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    sget-object v0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->FITBOTTOM:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/detail/DetailAdapter;->getCount()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->w(Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;)V

    .line 9
    return-void
.end method

.method public objectType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/ChatBubble;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/ChatBubble;

    return-object v0
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    .line 4
    .line 5
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 6
    .line 7
    instance-of v1, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;

    .line 12
    .line 13
    const-string v1, "update"

    .line 14
    .line 15
    iget-object p1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result p1

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget p1, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->action:I

    .line 24
    const/4 v1, 0x1

    .line 25
    .line 26
    if-ne v1, p1, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    check-cast p1, Lcom/narvii/model/ChatBubble;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->chatBubble:Lcom/narvii/model/ChatBubble;

    .line 35
    .line 36
    iget-boolean v0, v0, Lcom/narvii/model/StoreItemBaseObject;->isActivated:Z

    .line 37
    .line 38
    iput-boolean v0, p1, Lcom/narvii/model/StoreItemBaseObject;->isActivated:Z

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;->notifyDataSetChanged()V

    .line 42
    :cond_0
    return-void
.end method

.method protected bridge synthetic onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/monetization/bubble/ChatBubbleResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/bubble/ChatBubbleResponse;)V

    return-void
.end method

.method protected onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/bubble/ChatBubbleResponse;)V
    .locals 2

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V

    iget-object p1, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;

    const/4 v0, 0x1

    .line 3
    invoke-static {p1, v0}, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->v(Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;Z)V

    iget-object p1, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;

    .line 4
    iget-object v1, p2, Lcom/narvii/monetization/bubble/ChatBubbleResponse;->allChatsBubbleId:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->u(Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;->stated:Z

    if-nez p1, :cond_2

    iput-boolean v0, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;->stated:Z

    const-string p1, "statistics"

    .line 5
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 6
    iget-object p2, p2, Lcom/narvii/monetization/bubble/ChatBubbleResponse;->chatBubble:Lcom/narvii/model/ChatBubble;

    iget-object p2, p2, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    iget p2, p2, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string p2, "Amino+ Product Detail Page (Store)"

    .line 7
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    const-string p2, "Amino+ Product Detail Page (Store) Total"

    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    if-eqz v0, :cond_1

    const-string p2, "One Off Chat Bubble"

    goto :goto_1

    :cond_1
    const-string p2, "Chat Bubble"

    :goto_1
    const-string v0, "Type"

    .line 8
    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;

    const-string v0, "Source"

    .line 9
    invoke-virtual {p2, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    :cond_2
    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/monetization/bubble/ChatBubbleResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/monetization/bubble/ChatBubbleResponse;

    return-object v0
.end method

.method public setObject(Lcom/narvii/model/ChatBubble;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/narvii/monetization/bubble/ChatBubbleResponse;

    invoke-direct {v0}, Lcom/narvii/monetization/bubble/ChatBubbleResponse;-><init>()V

    iput-object p1, v0, Lcom/narvii/monetization/bubble/ChatBubbleResponse;->chatBubble:Lcom/narvii/model/ChatBubble;

    .line 3
    invoke-virtual {p0, v0}, Lcom/narvii/detail/DetailAdapter;->setResponse(Lcom/narvii/model/api/ObjectResponse;)V

    return-void
.end method

.method public bridge synthetic setObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/ChatBubble;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;->setObject(Lcom/narvii/model/ChatBubble;)V

    return-void
.end method
