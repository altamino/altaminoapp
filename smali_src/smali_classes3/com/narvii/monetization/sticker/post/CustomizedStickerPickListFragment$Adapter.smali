.class Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;
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
.field error:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/Sticker;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/Sticker;",
            ">;",
            "Ljava/util/List<",
            "Lcom/narvii/model/Sticker;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    .line 2
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->stickerList:Ljava/util/ArrayList;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->error:Ljava/lang/String;

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/model/Sticker;

    .line 7
    .line 8
    .line 9
    const v0, 0x7f0d0480

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    const p3, 0x7f0a0da3

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object p3

    .line 21
    .line 22
    check-cast p3, Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->collectionId:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v1, p1, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3, v0, v1}, Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;->setStickerImageUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const p3, 0x7f0a0cc5

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object p3

    .line 39
    .line 40
    check-cast p3, Landroid/widget/ImageView;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    .line 43
    .line 44
    iget-boolean v0, v0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->singlePick:Z

    .line 45
    .line 46
    xor-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    .line 49
    invoke-static {p3, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->selectedStickers:Ljava/util/List;

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 57
    move-result v0

    .line 58
    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    .line 62
    const v0, 0x7f0804fa

    .line 63
    goto :goto_0

    .line 64
    .line 65
    .line 66
    :cond_0
    const v0, 0x7f0804f6

    .line 67
    .line 68
    .line 69
    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    .line 76
    .line 77
    const p3, 0x7f0a0441

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/narvii/model/Sticker;->isDisabled()Z

    .line 81
    move-result p1

    .line 82
    .line 83
    .line 84
    invoke-static {p2, p3, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 85
    return-object p2
.end method

.method public isListShown()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->stickerList:Ljava/util/ArrayList;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->error:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method public onAttach()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->sendRequest()V

    .line 7
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/Sticker;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    check-cast p3, Lcom/narvii/model/Sticker;

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    .line 9
    .line 10
    iget-boolean p2, p1, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->singlePick:Z

    .line 11
    const/4 p4, 0x1

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->selectedStickers:Ljava/util/List;

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->t(Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->selectedStickers:Ljava/util/List;

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 30
    move-result p1

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->selectedStickers:Ljava/util/List;

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->selectedStickers:Ljava/util/List;

    .line 48
    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 51
    move-result p1

    .line 52
    .line 53
    iget-object p2, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    .line 54
    .line 55
    const-string p5, "max"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p5}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 59
    move-result p2

    .line 60
    .line 61
    if-lt p1, p2, :cond_2

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    iget-object p2, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    .line 68
    .line 69
    const-string p3, "maxStr"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, p3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object p2

    .line 74
    const/4 p3, 0x0

    .line 75
    .line 76
    .line 77
    invoke-static {p1, p2, p3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 82
    return p4

    .line 83
    .line 84
    :cond_2
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    .line 85
    .line 86
    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->selectedStickers:Ljava/util/List;

    .line 87
    .line 88
    .line 89
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 93
    :goto_0
    return p4

    .line 94
    .line 95
    .line 96
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 97
    move-result p1

    .line 98
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

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    .line 3
    const/4 p2, 0x0

    .line 4
    .line 5
    iput-object p2, p1, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->stickerList:Ljava/util/ArrayList;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->error:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->sendRequest()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 14
    return-void
.end method

.method public sendRequest()V
    .locals 4

    .line 1
    .line 2
    const-string v0, "api"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    const-string v2, "/sticker-collection"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    const-string v2, "type"

    .line 21
    .line 22
    const-string v3, "my-favorite-collection"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    const-string v2, "includeStickers"

    .line 29
    .line 30
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    new-instance v2, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter$1;

    .line 41
    .line 42
    const-class v3, Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;

    .line 43
    .line 44
    .line 45
    invoke-direct {v2, p0, v3}, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter$1;-><init>(Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;Ljava/lang/Class;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 49
    return-void
.end method
