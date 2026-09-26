.class Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StickerListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVArrayAdapter<",
        "Lcom/narvii/monetization/sticker/model/StickerCollection;",
        ">;"
    }
.end annotation


# instance fields
.field stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

.field final synthetic this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/lang/Class<",
            "Lcom/narvii/monetization/sticker/model/StickerCollection;",
            ">;",
            "Ljava/util/List<",
            "Lcom/narvii/monetization/sticker/model/StickerCollection;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/monetization/sticker/StickerHelper;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, p2}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 13
    return-void
.end method

.method private sendDeleteRequest(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    new-instance v1, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter$1;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, p0, p1}, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter$1;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter;Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 15
    .line 16
    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    const-string/jumbo v3, "sticker-collection/"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string p1, "/deactivate"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    const-string v1, "api"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 75
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 7
    .line 8
    .line 9
    const v0, 0x7f0d0702

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    check-cast p2, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1}, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;->setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 19
    .line 20
    .line 21
    const p3, 0x7f0a0465

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object p3

    .line 26
    .line 27
    check-cast p3, Landroid/widget/TextView;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isNormal()Z

    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x1

    .line 33
    const/4 v2, 0x0

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isUserCreated()Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v0, v2

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    move v0, v1

    .line 46
    .line 47
    .line 48
    :goto_1
    invoke-static {p3, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 49
    .line 50
    .line 51
    const p3, 0x7f0a0417

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object p3

    .line 56
    .line 57
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isNormal()Z

    .line 64
    move-result v0

    .line 65
    .line 66
    if-nez v0, :cond_3

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isUserCreated()Z

    .line 70
    move-result p1

    .line 71
    .line 72
    if-eqz p1, :cond_2

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    move v1, v2

    .line 75
    .line 76
    .line 77
    :cond_3
    :goto_2
    invoke-static {p3, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 78
    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    if-eqz p5, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    const v1, 0x7f0a0417

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    check-cast p3, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p3}, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter;->sendDeleteRequest(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    return-object v0
.end method
