.class Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment$AssetCategoryAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "OnlineAudioPickerCategoryPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AssetCategoryAdapter"
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
.field final synthetic this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment;


# direct methods
.method private constructor <init>(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment$AssetCategoryAdapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment;

    .line 95
    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment;Lcom/narvii/app/NVContext;Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment$1;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment$AssetCategoryAdapter;-><init>(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment;Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 110
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/asset/sound/category2"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 111
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment$AssetCategoryAdapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment;

    invoke-static {v0}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment;->access$100(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment;)Lcom/narvii/media/online/audio/model/AssetSection;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/media/online/audio/model/AssetSection;->name:Ljava/lang/String;

    const-string v1, "section"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 112
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

    .line 100
    const-class v0, Lcom/narvii/media/online/audio/model/AssetCategory;

    return-object v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "Category"

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

    .line 127
    sget v0, Lcom/narvii/lib/R$layout;->media_audio_online_picker_category_list_item:I

    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 129
    instance-of p3, p1, Lcom/narvii/media/online/audio/model/AssetCategory;

    if-eqz p3, :cond_1

    .line 130
    check-cast p1, Lcom/narvii/media/online/audio/model/AssetCategory;

    .line 131
    sget p3, Lcom/narvii/lib/R$id;->track_album_name:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 132
    iget-object v0, p1, Lcom/narvii/media/online/audio/model/AssetCategory;->title:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    sget p3, Lcom/narvii/lib/R$id;->track_count:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 135
    iget v0, p1, Lcom/narvii/media/online/audio/model/AssetCategory;->totalCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment$AssetCategoryAdapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment;

    sget v1, Lcom/narvii/lib/R$string;->track_count_one:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment$AssetCategoryAdapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment;

    sget v3, Lcom/narvii/lib/R$string;->track_count:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    sget p3, Lcom/narvii/lib/R$id;->category_background:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 138
    invoke-virtual {p1}, Lcom/narvii/media/online/audio/model/AssetCategory;->getCoverBackgroundColor()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 139
    invoke-virtual {p1}, Lcom/narvii/media/online/audio/model/AssetCategory;->getCoverMediaCover()Lcom/narvii/model/Media;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 141
    invoke-virtual {p3, p1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    :cond_1
    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 155
    instance-of p1, p3, Lcom/narvii/media/online/audio/model/AssetCategory;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 156
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p3, p1}, Lcom/narvii/list/NVAdapter;->getClickEventBuilder(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 157
    move-object p4, p3

    check-cast p4, Lcom/narvii/media/online/audio/model/AssetCategory;

    iget-object p4, p4, Lcom/narvii/media/online/audio/model/AssetCategory;->id:Ljava/lang/String;

    const-string p5, "categoryId"

    invoke-virtual {p1, p5, p4}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 158
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 160
    new-instance p1, Landroid/content/Intent;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "ndc://fragment/"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p5, Lcom/narvii/media/online/audio/OnlineAudioPickerListCategoryFragment;

    invoke-virtual {p5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    const-string p5, "android.intent.action.VIEW"

    invoke-direct {p1, p5, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 161
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "category"

    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    iget-object p3, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment$AssetCategoryAdapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment;

    invoke-static {p3}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment;->access$100(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment;)Lcom/narvii/media/online/audio/model/AssetSection;

    move-result-object p3

    iget-object p3, p3, Lcom/narvii/media/online/audio/model/AssetSection;->name:Ljava/lang/String;

    const-string p4, "SFX"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    xor-int/2addr p3, p2

    const-string p4, "isFilterAndSortEnable"

    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 163
    iget-object p3, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment$AssetCategoryAdapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment;

    const/16 p4, 0x100

    invoke-virtual {p3, p1, p4}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return p2
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/media/online/audio/model/QuerySoundCategoryResponse;",
            ">;"
        }
    .end annotation

    .line 105
    const-class v0, Lcom/narvii/media/online/audio/model/QuerySoundCategoryResponse;

    return-object v0
.end method
