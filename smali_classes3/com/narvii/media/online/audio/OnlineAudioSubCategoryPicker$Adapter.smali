.class Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$Adapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "OnlineAudioSubCategoryPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/media/online/audio/model/AssetCategory;",
        "Lcom/narvii/media/online/audio/model/QuerySoundCategoryResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;


# direct methods
.method public constructor <init>(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)V
    .locals 1

    .line 217
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$Adapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    const/4 v0, 0x1

    .line 218
    invoke-direct {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 233
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/asset/sound/category2/children"

    .line 234
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 235
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$Adapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    invoke-static {v0}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->access$500(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$Adapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    invoke-static {v0}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->access$500(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "categoryId"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 239
    :cond_0
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
            "Lcom/narvii/media/online/audio/model/AssetCategory;",
            ">;"
        }
    .end annotation

    .line 223
    const-class v0, Lcom/narvii/media/online/audio/model/AssetCategory;

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
    .locals 3

    .line 254
    sget v0, Lcom/narvii/lib/R$layout;->media_audio_subcategory_list_item:I

    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 255
    instance-of p3, p1, Lcom/narvii/media/online/audio/model/AssetCategory;

    if-eqz p3, :cond_1

    .line 256
    check-cast p1, Lcom/narvii/media/online/audio/model/AssetCategory;

    .line 257
    sget p3, Lcom/narvii/lib/R$id;->subcategory_name:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p1, Lcom/narvii/media/online/audio/model/AssetCategory;->title:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    sget p3, Lcom/narvii/lib/R$id;->subcategory_background_selected:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 259
    sget v0, Lcom/narvii/lib/R$id;->subcategory_background_unselected:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$Adapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    invoke-static {v1}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->access$000(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)Ljava/util/Set;

    move-result-object v1

    iget-object p1, p1, Lcom/narvii/media/online/audio/model/AssetCategory;->id:Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    .line 261
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 265
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    :goto_0
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 274
    instance-of v0, p3, Lcom/narvii/media/online/audio/model/AssetCategory;

    if-eqz v0, :cond_1

    .line 275
    check-cast p3, Lcom/narvii/media/online/audio/model/AssetCategory;

    .line 277
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$Adapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    invoke-static {p1}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->access$000(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)Ljava/util/Set;

    move-result-object p1

    iget-object p2, p3, Lcom/narvii/media/online/audio/model/AssetCategory;->id:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 278
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$Adapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    invoke-static {p1}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->access$000(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)Ljava/util/Set;

    move-result-object p1

    iget-object p2, p3, Lcom/narvii/media/online/audio/model/AssetCategory;->id:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$Adapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    invoke-static {p1}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->access$100(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)V

    .line 282
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x1

    return p1

    .line 285
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
            "Lcom/narvii/media/online/audio/model/QuerySoundCategoryResponse;",
            ">;"
        }
    .end annotation

    .line 228
    const-class v0, Lcom/narvii/media/online/audio/model/QuerySoundCategoryResponse;

    return-object v0
.end method
