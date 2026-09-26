.class Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment$AssetCategoryAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"


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

    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment$AssetCategoryAdapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment;

    .line 2
    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment;Lcom/narvii/app/NVContext;Lcom/narvii/media/online/audio/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment$AssetCategoryAdapter;-><init>(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment;Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

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
    .line 7
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    const-string v0, "/asset/sound/category2"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment$AssetCategoryAdapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment;->t(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment;)Lcom/narvii/media/online/audio/model/AssetSection;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iget-object v0, v0, Lcom/narvii/media/online/audio/model/AssetSection;->name:Ljava/lang/String;

    .line 23
    .line 24
    const-string v1, "section"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 31
    move-result-object p1

    .line 32
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

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$layout;->media_audio_online_picker_category_list_item:I

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
    sget p3, Lcom/narvii/lib/R$id;->track_album_name:I

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
    sget p3, Lcom/narvii/lib/R$id;->track_count:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p3

    .line 32
    .line 33
    check-cast p3, Landroid/widget/TextView;

    .line 34
    .line 35
    iget v0, p1, Lcom/narvii/media/online/audio/model/AssetCategory;->totalCount:I

    .line 36
    const/4 v1, 0x1

    .line 37
    .line 38
    if-ne v0, v1, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment$AssetCategoryAdapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment;

    .line 41
    .line 42
    sget v1, Lcom/narvii/lib/R$string;->track_count_one:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_0
    iget-object v2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment$AssetCategoryAdapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment;

    .line 50
    .line 51
    sget v3, Lcom/narvii/lib/R$string;->track_count:I

    .line 52
    .line 53
    new-array v1, v1, [Ljava/lang/Object;

    .line 54
    const/4 v4, 0x0

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    aput-object v0, v1, v4

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v3, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    sget p3, Lcom/narvii/lib/R$id;->category_background:I

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    move-result-object p3

    .line 74
    .line 75
    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/narvii/media/online/audio/model/AssetCategory;->getCoverBackgroundColor()I

    .line 79
    move-result v0

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/narvii/media/online/audio/model/AssetCategory;->getCoverMediaCover()Lcom/narvii/model/Media;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    if-eqz p1, :cond_1

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3, p1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 92
    :cond_1
    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    .line 2
    instance-of p1, p3, Lcom/narvii/media/online/audio/model/AssetCategory;

    .line 3
    const/4 p2, 0x1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p3, p1}, Lcom/narvii/list/NVAdapter;->getClickEventBuilder(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 11
    move-result-object p1

    .line 12
    move-object p4, p3

    .line 13
    .line 14
    check-cast p4, Lcom/narvii/media/online/audio/model/AssetCategory;

    .line 15
    .line 16
    iget-object p4, p4, Lcom/narvii/media/online/audio/model/AssetCategory;->id:Ljava/lang/String;

    .line 17
    .line 18
    const-string p5, "categoryId"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p5, p4}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 25
    .line 26
    new-instance p1, Landroid/content/Intent;

    .line 27
    .line 28
    new-instance p4, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    const-string p5, "ndc://fragment/"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-class p5, Lcom/narvii/media/online/audio/OnlineAudioPickerListCategoryFragment;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 42
    move-result-object p5

    .line 43
    .line 44
    .line 45
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p4

    .line 50
    .line 51
    .line 52
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 53
    move-result-object p4

    .line 54
    .line 55
    const-string p5, "android.intent.action.VIEW"

    .line 56
    .line 57
    .line 58
    invoke-direct {p1, p5, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 59
    .line 60
    const-string p4, "category"

    .line 61
    .line 62
    .line 63
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    move-result-object p3

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    .line 69
    iget-object p3, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment$AssetCategoryAdapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment;

    .line 70
    .line 71
    .line 72
    invoke-static {p3}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment;->t(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment;)Lcom/narvii/media/online/audio/model/AssetSection;

    .line 73
    move-result-object p3

    .line 74
    .line 75
    iget-object p3, p3, Lcom/narvii/media/online/audio/model/AssetSection;->name:Ljava/lang/String;

    .line 76
    .line 77
    const-string p4, "SFX"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    move-result p3

    .line 82
    xor-int/2addr p3, p2

    .line 83
    .line 84
    const-string p4, "isFilterAndSortEnable"

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    .line 89
    iget-object p3, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment$AssetCategoryAdapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment;

    .line 90
    .line 91
    const/16 p4, 0x100

    .line 92
    .line 93
    .line 94
    invoke-static {p3, p1, p4}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment$AssetCategoryAdapter;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 95
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

    const-class v0, Lcom/narvii/media/online/audio/model/QuerySoundCategoryResponse;

    return-object v0
.end method
