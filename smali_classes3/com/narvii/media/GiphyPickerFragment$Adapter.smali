.class Lcom/narvii/media/GiphyPickerFragment$Adapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "GiphyPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/GiphyPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/media/giphy/GiphyItem;",
        "Lcom/narvii/media/giphy/GiphyListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field keyword:Ljava/lang/String;

.field start:I

.field final synthetic this$0:Lcom/narvii/media/GiphyPickerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/media/GiphyPickerFragment;)V
    .locals 1

    .line 372
    iput-object p1, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    const/4 v0, -0x1

    .line 373
    invoke-direct {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 10

    const-string v0, "config"

    .line 383
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    const-string v1, "giphyApiKey"

    const-string v2, "12ss5TcLvRjUze"

    .line 384
    invoke-virtual {v0, v1, v2}, Lcom/narvii/config/ConfigService;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    iget-object v1, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->keyword:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "fromStart"

    const-string v3, "limit"

    const/4 v4, 0x0

    const-string v5, "offset"

    const-string v6, "api_key"

    if-eqz v1, :cond_2

    .line 386
    iget-object v1, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    iget-boolean v1, v1, Lcom/narvii/media/GiphyPickerFragment;->chooseSticker:Z

    if-eqz v1, :cond_1

    .line 387
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v7, "https://api.giphy.com/v1/stickers/trending"

    invoke-virtual {v1, v7}, Lcom/narvii/util/http/ApiRequest$Builder;->_url(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 388
    invoke-virtual {v1, v6, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 389
    :cond_0
    iget v4, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->start:I

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 390
    invoke-virtual {p0}, Lcom/narvii/media/GiphyPickerFragment$Adapter;->pageSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 391
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 392
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 396
    :cond_2
    iget-object v1, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    iget-boolean v1, v1, Lcom/narvii/media/GiphyPickerFragment;->chooseSticker:Z

    if-eqz v1, :cond_3

    const-string v1, "stickers"

    goto :goto_1

    :cond_3
    const-string v1, "gifs"

    .line 397
    :goto_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "https://api.giphy.com/v1/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/search"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->_url(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 398
    iget-object v7, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->keyword:Ljava/lang/String;

    const-string v8, "q"

    invoke-virtual {v1, v8, v7}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 399
    invoke-virtual {v1, v6, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    if-eqz p1, :cond_4

    goto :goto_2

    .line 400
    :cond_4
    iget v4, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->start:I

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 401
    invoke-virtual {p0}, Lcom/narvii/media/GiphyPickerFragment$Adapter;->pageSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 402
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 403
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/media/giphy/GiphyItem;",
            ">;"
        }
    .end annotation

    .line 424
    const-class v0, Lcom/narvii/media/giphy/GiphyItem;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->keyword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    iget-boolean v0, v0, Lcom/narvii/media/GiphyPickerFragment;->chooseSticker:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 432
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v0

    return v0
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
    .locals 2

    .line 457
    instance-of v0, p1, Lcom/narvii/media/giphy/GiphyItem;

    if-eqz v0, :cond_3

    .line 458
    check-cast p1, Lcom/narvii/media/giphy/GiphyItem;

    .line 459
    sget v0, Lcom/narvii/lib/R$layout;->media_image_grid:I

    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    .line 460
    invoke-virtual {p2, v0, v0, p3, p3}, Landroid/view/View;->setPadding(IIII)V

    .line 461
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget-object v1, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    iget v1, v1, Lcom/narvii/media/GiphyPickerFragment;->width:I

    iput v1, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 462
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget-object v1, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    iget v1, v1, Lcom/narvii/media/GiphyPickerFragment;->width:I

    iput v1, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 463
    sget p3, Lcom/narvii/lib/R$id;->image:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 464
    iget-object v1, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    iget-boolean v1, v1, Lcom/narvii/media/GiphyPickerFragment;->chooseSticker:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :goto_0
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 465
    invoke-virtual {p1}, Lcom/narvii/media/giphy/GiphyItem;->thumbUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 467
    iget-object p3, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    iget-object p3, p3, Lcom/narvii/media/GiphyPickerFragment;->selections:Ljava/util/ArrayList;

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/narvii/media/giphy/GiphyItem;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 468
    :goto_1
    sget p1, Lcom/narvii/lib/R$id;->select:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 469
    sget p3, Lcom/narvii/lib/R$drawable;->ic_media_selected:I

    goto :goto_2

    :cond_2
    sget p3, Lcom/narvii/lib/R$drawable;->ic_media_not_selected:I

    :goto_2
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p2

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public isListShown()Z
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->keyword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    iget-boolean v0, v0, Lcom/narvii/media/GiphyPickerFragment;->chooseSticker:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 441
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    move-result v0

    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .line 479
    instance-of v0, p3, Lcom/narvii/media/giphy/GiphyItem;

    if-eqz v0, :cond_b

    .line 480
    check-cast p3, Lcom/narvii/media/giphy/GiphyItem;

    .line 481
    iget-object p1, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    const-string p2, "maximum"

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p1

    const-string p2, "single"

    const/4 p4, 0x1

    if-eq p1, p4, :cond_0

    .line 482
    iget-object p5, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    iget-object v0, p5, Lcom/narvii/media/GiphyPickerFragment;->selections:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p5, p2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 483
    :cond_0
    iget-object p5, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p5, Lcom/narvii/media/GiphyPickerFragment;->selections:Ljava/util/ArrayList;

    .line 485
    :cond_1
    iget-object p5, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    iget-object p5, p5, Lcom/narvii/media/GiphyPickerFragment;->selections:Ljava/util/ArrayList;

    invoke-virtual {p3}, Lcom/narvii/media/giphy/GiphyItem;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_9

    .line 486
    iget-object p5, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    iget p5, p5, Lcom/narvii/media/GiphyPickerFragment;->maxLen:I

    invoke-virtual {p3, p5}, Lcom/narvii/media/giphy/GiphyItem;->fullsizeImage(I)Lcom/narvii/media/giphy/GiphyImage;

    move-result-object p5

    if-eqz p5, :cond_8

    .line 488
    iget v0, p5, Lcom/narvii/media/giphy/GiphyImage;->size:I

    iget-object v1, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    iget v2, v1, Lcom/narvii/media/GiphyPickerFragment;->maxLen:I

    if-le v0, v2, :cond_2

    goto/16 :goto_0

    :cond_2
    const-string v0, "minWidth"

    .line 493
    invoke-virtual {v1, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    .line 494
    iget-object v1, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    const-string v2, "minHeight"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz p5, :cond_5

    if-lez v0, :cond_3

    .line 495
    iget v3, p5, Lcom/narvii/media/giphy/GiphyImage;->width:I

    if-lez v3, :cond_3

    if-lt v3, v0, :cond_4

    :cond_3
    if-lez v1, :cond_5

    iget p5, p5, Lcom/narvii/media/giphy/GiphyImage;->height:I

    if-lez p5, :cond_5

    if-ge p5, v1, :cond_5

    .line 497
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$string;->media_image_picker_image_too_small:I

    invoke-static {p1, p2, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return p4

    :cond_5
    if-lez p1, :cond_7

    .line 500
    iget-object p5, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    iget-object p5, p5, Lcom/narvii/media/GiphyPickerFragment;->selections:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-lt p5, p1, :cond_7

    .line 501
    iget-object p3, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    const-string p5, "maxStr"

    invoke-virtual {p3, p5}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 502
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_6

    .line 503
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object p5, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    sget v0, Lcom/narvii/lib/R$string;->media_image_picker_hit_max_count:I

    new-array v1, p4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p5, v0, v1}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_1

    .line 505
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_1

    .line 508
    :cond_7
    iget-object p1, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    iget-object p1, p1, Lcom/narvii/media/GiphyPickerFragment;->selections:Ljava/util/ArrayList;

    invoke-virtual {p3}, Lcom/narvii/media/giphy/GiphyItem;->id()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 489
    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$string;->media_image_picker_file_too_large:I

    invoke-static {p1, p2, p4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return p4

    .line 511
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 512
    iget-object p1, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    invoke-static {p1}, Lcom/narvii/media/GiphyPickerFragment;->access$000(Lcom/narvii/media/GiphyPickerFragment;)V

    goto :goto_2

    .line 514
    :cond_a
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 515
    iget-object p1, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    invoke-static {p1}, Lcom/narvii/media/GiphyPickerFragment;->access$100(Lcom/narvii/media/GiphyPickerFragment;)V

    :goto_2
    return p4

    .line 519
    :cond_b
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/media/giphy/GiphyListResponse;I)V
    .locals 4

    .line 409
    iget-object v0, p2, Lcom/narvii/media/giphy/GiphyListResponse;->data:Ljava/util/List;

    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-static {v0, v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 410
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    const-string p2, "fromStart"

    .line 411
    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 412
    iput p1, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->start:I

    .line 414
    :cond_0
    iget p1, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->start:I

    invoke-virtual {p0}, Lcom/narvii/media/GiphyPickerFragment$Adapter;->pageSize()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/narvii/media/GiphyPickerFragment$Adapter;->start:I

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 368
    check-cast p2, Lcom/narvii/media/giphy/GiphyListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/media/GiphyPickerFragment$Adapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/media/giphy/GiphyListResponse;I)V

    return-void
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1

    .line 419
    const-class v0, Lcom/narvii/media/giphy/GiphyListResponse;

    return-object v0
.end method
