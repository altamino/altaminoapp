.class Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "CustomizedStickerPickListFragment.java"


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

    .line 141
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    .line 142
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

    .line 145
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    .line 146
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->stickerList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->error:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 237
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Sticker;

    const v0, 0x7f0b044b

    .line 238
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090aa9

    .line 239
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;

    .line 240
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->collectionId:Ljava/lang/String;

    iget-object v1, p1, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;->setStickerImageUrl(Ljava/lang/String;Ljava/lang/String;)V

    const p3, 0x7f0909fe

    .line 242
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 243
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    iget-boolean v0, v0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->singlePick:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p3, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 244
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->selectedStickers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0803d7

    goto :goto_0

    :cond_0
    const v0, 0x7f0803d3

    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 245
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f090359

    .line 247
    invoke-virtual {p1}, Lcom/narvii/model/Sticker;->isDisabled()Z

    move-result p1

    invoke-static {p2, p3, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    return-object p2
.end method

.method public isListShown()Z
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->stickerList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->error:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onAttach()V
    .locals 0

    .line 137
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 138
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->sendRequest()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 174
    instance-of v0, p3, Lcom/narvii/model/Sticker;

    if-eqz v0, :cond_3

    .line 175
    check-cast p3, Lcom/narvii/model/Sticker;

    .line 176
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    iget-boolean p2, p1, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->singlePick:Z

    const/4 p4, 0x1

    if-eqz p2, :cond_0

    .line 177
    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->selectedStickers:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->access$000(Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->selectedStickers:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 181
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->selectedStickers:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 182
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 184
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->selectedStickers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    const-string p5, "max"

    invoke-virtual {p2, p5}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p2

    if-lt p1, p2, :cond_2

    .line 185
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    const-string p3, "maxStr"

    invoke-virtual {p2, p3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return p4

    .line 188
    :cond_2
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->selectedStickers:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :goto_0
    return p4

    .line 194
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 1

    .line 169
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

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

    .line 161
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->stickerList:Ljava/util/ArrayList;

    .line 162
    iput-object p2, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->error:Ljava/lang/String;

    .line 163
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->sendRequest()V

    .line 164
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public sendRequest()V
    .locals 4

    const-string v0, "api"

    .line 198
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 199
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/sticker-collection"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "type"

    const-string v3, "my-favorite-collection"

    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "includeStickers"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    .line 200
    new-instance v2, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter$1;

    const-class v3, Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter$1;-><init>(Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
