.class Lcom/narvii/media/MediaGalleryActivity$Adapter;
.super Lcom/narvii/util/PagerGalleryAdapter;
.source "MediaGalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/MediaGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/PagerGalleryAdapter<",
        "Lcom/narvii/model/Media;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/MediaGalleryActivity;


# direct methods
.method public constructor <init>(Lcom/narvii/media/MediaGalleryActivity;)V
    .locals 1

    .line 351
    iput-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    .line 352
    sget v0, Lcom/narvii/lib/R$layout;->gallery_media:I

    invoke-direct {p0, p1, v0}, Lcom/narvii/util/PagerGalleryAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Lcom/narvii/model/Media;)Landroid/view/View;
    .locals 13

    .line 357
    sget v0, Lcom/narvii/lib/R$id;->image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 358
    sget v1, Lcom/narvii/lib/R$id;->video_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/nvplayerview/NVVideoView;

    .line 359
    iget-object v2, p2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    const-string v3, "uhq"

    invoke-static {v2, v3}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 360
    iget-object v3, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    const-string v4, "imageLoader"

    invoke-virtual {v3, v4}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/narvii/util/image/NVImageLoader;

    .line 361
    invoke-virtual {v8, v2}, Lcom/narvii/util/image/NVImageLoader;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v3, :cond_1

    invoke-virtual {v8, v2}, Lcom/narvii/util/image/NVImageLoader;->getDiskCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const-string v3, "showCheckHD"

    if-nez v2, :cond_3

    .line 362
    iget-object v4, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    invoke-virtual {v4, v3}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v4, 0x1

    .line 363
    :goto_3
    instance-of v5, v0, Lcom/narvii/widget/FullsizeImageView;

    if-eqz v5, :cond_4

    .line 364
    move-object v5, v0

    check-cast v5, Lcom/narvii/widget/FullsizeImageView;

    iput-boolean v4, v5, Lcom/narvii/widget/FullsizeImageView;->supportUhq:Z

    .line 365
    iget-object v4, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    const-string v6, "forceUHQ"

    invoke-virtual {v4, v6}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v5, Lcom/narvii/widget/FullsizeImageView;->forceUhq:Z

    .line 367
    :cond_4
    invoke-virtual {v0, p2}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 368
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 370
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    sget v1, Lcom/narvii/lib/R$id;->image_loading:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 373
    invoke-virtual {v0}, Lcom/narvii/widget/NVImageView;->getStatus()I

    move-result v4

    if-ne v4, v10, :cond_6

    .line 374
    invoke-virtual {v0}, Lcom/narvii/widget/NVImageView;->getStatus()I

    move-result v4

    if-ne v4, v10, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    invoke-static {v1, v4}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 375
    new-instance v4, Lcom/narvii/media/MediaGalleryActivity$Adapter$1;

    invoke-direct {v4, p0, v1, v0, p2}, Lcom/narvii/media/MediaGalleryActivity$Adapter$1;-><init>(Lcom/narvii/media/MediaGalleryActivity$Adapter;Landroid/widget/ProgressBar;Lcom/narvii/widget/NVImageView;Lcom/narvii/model/Media;)V

    invoke-virtual {v0, v4}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 386
    :cond_6
    iget-object v1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    invoke-virtual {v1, v3}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 387
    sget v1, Lcom/narvii/lib/R$id;->downloading_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 388
    sget v1, Lcom/narvii/lib/R$id;->downloading_progress:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ProgressBar;

    .line 389
    sget v1, Lcom/narvii/lib/R$id;->check_hd:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 390
    iget-object v1, p2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v4, "v2_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-nez v2, :cond_7

    const/4 v1, 0x0

    goto :goto_5

    :cond_7
    const/16 v1, 0x8

    :goto_5
    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    .line 391
    new-instance v12, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;

    move-object v1, v12

    move-object v2, p0

    move-object v4, v11

    move-object v6, p2

    move-object v7, v0

    invoke-direct/range {v1 .. v8}, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;-><init>(Lcom/narvii/media/MediaGalleryActivity$Adapter;Landroid/view/View;Landroid/view/View;Landroid/widget/ProgressBar;Lcom/narvii/model/Media;Lcom/narvii/widget/NVImageView;Lcom/narvii/util/image/NVImageLoader;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    :cond_8
    instance-of v1, v0, Lcom/narvii/widget/TouchImageView;

    if-eqz v1, :cond_a

    .line 445
    check-cast v0, Lcom/narvii/widget/TouchImageView;

    if-eqz p2, :cond_9

    iget p2, p2, Lcom/narvii/model/Media;->type:I

    const/16 v1, 0x64

    if-ne p2, v1, :cond_9

    const/4 v9, 0x1

    :cond_9
    invoke-virtual {v0, v9}, Lcom/narvii/widget/TouchImageView;->setZoomEnabled(Z)V

    :cond_a
    return-object p1
.end method

.method public bridge synthetic getView(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;
    .locals 0

    .line 348
    check-cast p2, Lcom/narvii/model/Media;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/media/MediaGalleryActivity$Adapter;->getView(Landroid/view/View;Lcom/narvii/model/Media;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    .line 453
    invoke-super {p0, p1, p2}, Lcom/narvii/util/PagerGalleryAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 458
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    iget-object p1, p1, Lcom/narvii/media/MediaGalleryActivity;->overlay:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 459
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    .line 460
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x10a0001

    .line 459
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 461
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    iget-object v0, v0, Lcom/narvii/media/MediaGalleryActivity;->overlay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    iget-object v0, v0, Lcom/narvii/media/MediaGalleryActivity;->overlay:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 464
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    .line 465
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x10a0000

    .line 464
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 466
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    iget-object v0, v0, Lcom/narvii/media/MediaGalleryActivity;->overlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    iget-object v0, v0, Lcom/narvii/media/MediaGalleryActivity;->overlay:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 473
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    invoke-virtual {p1}, Lcom/narvii/media/MediaGalleryActivity;->getCurrentMedia()Lcom/narvii/model/Media;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 474
    iget p1, p1, Lcom/narvii/model/Media;->type:I

    const/16 v1, 0x64

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    :try_start_0
    new-array v1, p1, [Ljava/lang/CharSequence;

    .line 478
    iget-object v2, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    sget v3, Lcom/narvii/lib/R$string;->save_image:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v0

    .line 479
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/narvii/media/MediaGalleryActivity$Adapter$3;

    invoke-direct {v2, p0}, Lcom/narvii/media/MediaGalleryActivity$Adapter$3;-><init>(Lcom/narvii/media/MediaGalleryActivity$Adapter;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 487
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "show dialog"

    .line 489
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return p1

    :cond_1
    :goto_1
    return v0
.end method
