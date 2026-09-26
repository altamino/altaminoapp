.class Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$Adapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$Adapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 7
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
    const-string v0, "/asset/sound/category2/children"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$Adapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->u(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$Adapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->u(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    const-string v1, "categoryId"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 32
    move-result-object p1

    .line 33
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

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$layout;->media_audio_subcategory_list_item:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    instance-of p3, p1, Lcom/narvii/media/online/audio/model/AssetCategory;

    .line 9
    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/media/online/audio/model/AssetCategory;

    .line 13
    .line 14
    sget p3, Lcom/narvii/lib/R$id;->subcategory_name:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object p3

    .line 19
    .line 20
    check-cast p3, Landroid/widget/TextView;

    .line 21
    .line 22
    iget-object v0, p1, Lcom/narvii/media/online/audio/model/AssetCategory;->title:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    sget p3, Lcom/narvii/lib/R$id;->subcategory_background_selected:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p3

    .line 32
    .line 33
    sget v0, Lcom/narvii/lib/R$id;->subcategory_background_unselected:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$Adapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->w(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)Ljava/util/Set;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    iget-object p1, p1, Lcom/narvii/media/online/audio/model/AssetCategory;->id:Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 49
    move-result p1

    .line 50
    .line 51
    const/16 v1, 0x8

    .line 52
    const/4 v2, 0x0

    .line 53
    .line 54
    if-eqz p1, :cond_0

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    :goto_0
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    :cond_1
    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/media/online/audio/model/AssetCategory;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p3, Lcom/narvii/media/online/audio/model/AssetCategory;

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$Adapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->w(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)Ljava/util/Set;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    iget-object p2, p3, Lcom/narvii/media/online/audio/model/AssetCategory;->id:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$Adapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->w(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)Ljava/util/Set;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    iget-object p2, p3, Lcom/narvii/media/online/audio/model/AssetCategory;->id:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$Adapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->y(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 40
    const/4 p1, 0x1

    .line 41
    return p1

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 45
    move-result p1

    .line 46
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

    const-class v0, Lcom/narvii/media/online/audio/model/QuerySoundCategoryResponse;

    return-object v0
.end method
