.class Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/monetization/sticker/model/StickerCollection;",
        "Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;",
        ">;",
        "Lcom/narvii/notification/NotificationListener;"
    }
.end annotation


# instance fields
.field stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

.field final synthetic this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/monetization/sticker/StickerHelper;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, p2}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 13
    return-void
.end method

.method private changeActive(Lcom/narvii/monetization/sticker/model/StickerCollection;Z)V
    .locals 9

    .line 1
    .line 2
    new-instance v3, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-direct {v3, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 13
    .line 14
    const-string v0, "api"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    move-object v6, v0

    .line 20
    .line 21
    check-cast v6, Lcom/narvii/util/http/ApiService;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    const-string v2, "sticker-collection/"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    if-eqz p2, :cond_0

    .line 49
    .line 50
    const-string v2, "/activate"

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_0
    const-string v2, "/deactivate"

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 68
    move-result-object v7

    .line 69
    .line 70
    new-instance v8, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;

    .line 71
    .line 72
    const-class v2, Lcom/narvii/model/api/ApiResponse;

    .line 73
    move-object v0, v8

    .line 74
    move-object v1, p0

    .line 75
    move-object v4, p1

    .line 76
    move v5, p2

    .line 77
    .line 78
    .line 79
    invoke-direct/range {v0 .. v5}, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/monetization/sticker/model/StickerCollection;Z)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6, v7, v8}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 83
    return-void
.end method

.method static bridge synthetic m(Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;Lcom/narvii/monetization/sticker/model/StickerCollection;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;->changeActive(Lcom/narvii/monetization/sticker/model/StickerCollection;Z)V

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
    const-string v0, "/sticker-collection"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string v0, "type"

    .line 13
    .line 14
    const-string v1, "my-collection"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/monetization/sticker/model/StickerCollection;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    return-object v0
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/monetization/sticker/model/StickerCollection;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/monetization/sticker/model/StickerCollection;",
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
    .locals 4

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    .line 8
    const v0, 0x7f0d0700

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    check-cast p2, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;

    .line 15
    .line 16
    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;->setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 20
    .line 21
    .line 22
    const p3, 0x7f0a0e08

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object p3

    .line 27
    .line 28
    check-cast p3, Landroid/widget/TextView;

    .line 29
    const/4 v0, 0x0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    iget-object v2, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;

    .line 35
    .line 36
    iget-object v2, v2, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getOwnTime()Ljava/util/Date;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    const p3, 0x7f0a0087

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object p3

    .line 55
    .line 56
    check-cast p3, Landroid/widget/CheckBox;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 60
    .line 61
    iget-boolean v1, p1, Lcom/narvii/model/StoreItemBaseObject;->isActivated:Z

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 65
    .line 66
    new-instance v1, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$2;

    .line 67
    .line 68
    .line 69
    invoke-direct {v1, p0, p1}, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$2;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 73
    .line 74
    .line 75
    const p3, 0x7f0a04b2

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object p3

    .line 80
    .line 81
    iget-object v1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, p1}, Lcom/narvii/monetization/sticker/StickerHelper;->isCreatedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    .line 85
    move-result v1

    .line 86
    .line 87
    if-eqz v1, :cond_0

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->notAvailable()Z

    .line 91
    move-result p1

    .line 92
    .line 93
    if-nez p1, :cond_0

    .line 94
    const/4 v0, 0x1

    .line 95
    .line 96
    .line 97
    :cond_0
    invoke-static {p3, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 98
    .line 99
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    const p1, 0x7f0a0344

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-object p2

    .line 116
    :cond_1
    return-object v1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    const/4 p1, 0x1

    .line 6
    .line 7
    if-eqz p5, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 11
    move-result p2

    .line 12
    .line 13
    .line 14
    const p4, 0x7f0a0344

    .line 15
    .line 16
    if-ne p2, p4, :cond_0

    .line 17
    .line 18
    iget-object p2, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 19
    .line 20
    check-cast p3, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 21
    .line 22
    const-string p4, "Added History"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p3, p4}, Lcom/narvii/monetization/sticker/StickerHelper;->onClickStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Ljava/lang/String;)V

    .line 26
    return p1

    .line 27
    .line 28
    :cond_0
    if-eqz p5, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 32
    move-result p2

    .line 33
    .line 34
    .line 35
    const p4, 0x7f0a04b2

    .line 36
    .line 37
    if-ne p2, p4, :cond_1

    .line 38
    .line 39
    iget-object p2, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 40
    .line 41
    check-cast p3, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p3}, Lcom/narvii/monetization/sticker/StickerHelper;->onClickEditStickerCollectionButton(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 45
    :cond_1
    return p1

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 49
    move-result p1

    .line 50
    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 5
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;I)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/monetization/sticker/model/StickerCollection;

    iget-object p3, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 5
    invoke-virtual {p3, p2}, Lcom/narvii/monetization/sticker/StickerHelper;->isCreatedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;

    const/4 p2, 0x1

    .line 6
    invoke-static {p1, p2}, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->t(Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;

    const/4 p2, 0x0

    .line 7
    invoke-static {p1, p2}, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->t(Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;Z)V

    :cond_2
    :goto_0
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
            "Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;

    return-object v0
.end method
