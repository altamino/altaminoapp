.class Lcom/narvii/media/MediaGalleryActivity$Adapter;
.super Lcom/narvii/util/PagerGalleryAdapter;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    .line 3
    .line 4
    sget v0, Lcom/narvii/lib/R$layout;->gallery_media:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, v0}, Lcom/narvii/util/PagerGalleryAdapter;-><init>(Landroid/content/Context;I)V

    .line 8
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Lcom/narvii/model/Media;)Landroid/view/View;
    .locals 13

    sget v0, Lcom/narvii/lib/R$id;->image:I

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    sget v1, Lcom/narvii/lib/R$id;->video_view:I

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/nvplayerview/NVVideoView;

    .line 4
    iget-object v2, p2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    const-string v3, "uhq"

    invoke-static {v2, v3}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    const-string v4, "imageLoader"

    .line 5
    invoke-virtual {v3, v4}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/narvii/util/image/NVImageLoader;

    .line 6
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
    move v2, v9

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v10

    :goto_1
    const-string v3, "showCheckHD"

    if-nez v2, :cond_3

    iget-object v4, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    .line 7
    invoke-virtual {v4, v3}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    move v4, v9

    goto :goto_3

    :cond_3
    :goto_2
    move v4, v10

    .line 8
    :goto_3
    instance-of v5, v0, Lcom/narvii/widget/FullsizeImageView;

    if-eqz v5, :cond_4

    .line 9
    move-object v5, v0

    check-cast v5, Lcom/narvii/widget/FullsizeImageView;

    iput-boolean v4, v5, Lcom/narvii/widget/FullsizeImageView;->supportUhq:Z

    iget-object v4, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    const-string v6, "forceUHQ"

    .line 10
    invoke-virtual {v4, v6}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v5, Lcom/narvii/widget/FullsizeImageView;->forceUhq:Z

    .line 11
    :cond_4
    invoke-virtual {v0, p2}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 12
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 14
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/narvii/lib/R$id;->image_loading:I

    .line 15
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 16
    invoke-virtual {v0}, Lcom/narvii/widget/NVImageView;->getStatus()I

    move-result v4

    if-ne v4, v10, :cond_6

    .line 17
    invoke-virtual {v0}, Lcom/narvii/widget/NVImageView;->getStatus()I

    move-result v4

    if-ne v4, v10, :cond_5

    move v4, v10

    goto :goto_4

    :cond_5
    move v4, v9

    :goto_4
    invoke-static {v1, v4}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 18
    new-instance v4, Lcom/narvii/media/MediaGalleryActivity$Adapter$1;

    invoke-direct {v4, p0, v1, v0, p2}, Lcom/narvii/media/MediaGalleryActivity$Adapter$1;-><init>(Lcom/narvii/media/MediaGalleryActivity$Adapter;Landroid/widget/ProgressBar;Lcom/narvii/widget/NVImageView;Lcom/narvii/model/Media;)V

    invoke-virtual {v0, v4}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    :cond_6
    iget-object v1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    .line 19
    invoke-virtual {v1, v3}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget v1, Lcom/narvii/lib/R$id;->downloading_container:I

    .line 20
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v1, Lcom/narvii/lib/R$id;->downloading_progress:I

    .line 21
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ProgressBar;

    sget v1, Lcom/narvii/lib/R$id;->check_hd:I

    .line 22
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 23
    iget-object v1, p2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v4, "v2_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-nez v2, :cond_7

    move v1, v9

    goto :goto_5

    :cond_7
    const/16 v1, 0x8

    :goto_5
    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    new-instance v12, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;

    move-object v1, v12

    move-object v2, p0

    move-object v4, v11

    move-object v6, p2

    move-object v7, v0

    invoke-direct/range {v1 .. v8}, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;-><init>(Lcom/narvii/media/MediaGalleryActivity$Adapter;Landroid/view/View;Landroid/view/View;Landroid/widget/ProgressBar;Lcom/narvii/model/Media;Lcom/narvii/widget/NVImageView;Lcom/narvii/util/image/NVImageLoader;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    :cond_8
    instance-of v1, v0, Lcom/narvii/widget/TouchImageView;

    if-eqz v1, :cond_a

    .line 26
    check-cast v0, Lcom/narvii/widget/TouchImageView;

    iget p2, p2, Lcom/narvii/model/Media;->type:I

    const/16 v1, 0x64

    if-ne p2, v1, :cond_9

    move v9, v10

    :cond_9
    invoke-virtual {v0, v9}, Lcom/narvii/widget/TouchImageView;->setZoomEnabled(Z)V

    :cond_a
    return-object p1
.end method

.method public bridge synthetic getView(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/Media;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/media/MediaGalleryActivity$Adapter;->getView(Landroid/view/View;Lcom/narvii/model/Media;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/util/PagerGalleryAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/media/MediaGalleryActivity;->overlay:Landroid/view/View;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 8
    move-result p1

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    const v0, 0x10a0001

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/narvii/media/MediaGalleryActivity;->overlay:Landroid/view/View;

    .line 28
    .line 29
    const/16 v1, 0x8

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/narvii/media/MediaGalleryActivity;->overlay:Landroid/view/View;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    const/high16 v0, 0x10a0000

    .line 49
    .line 50
    .line 51
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/narvii/media/MediaGalleryActivity;->overlay:Landroid/view/View;

    .line 57
    const/4 v1, 0x0

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/narvii/media/MediaGalleryActivity;->overlay:Landroid/view/View;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 68
    :goto_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/media/MediaGalleryActivity;->getCurrentMedia()Lcom/narvii/model/Media;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget p1, p1, Lcom/narvii/model/Media;->type:I

    .line 12
    .line 13
    const/16 v1, 0x64

    .line 14
    .line 15
    if-eq p1, v1, :cond_0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const/4 p1, 0x1

    .line 18
    .line 19
    :try_start_0
    new-array v1, p1, [Ljava/lang/CharSequence;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    .line 22
    .line 23
    sget v3, Lcom/narvii/lib/R$string;->save_image:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    aput-object v2, v1, v0

    .line 30
    .line 31
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    new-instance v2, Lcom/narvii/media/MediaGalleryActivity$Adapter$3;

    .line 39
    .line 40
    .line 41
    invoke-direct {v2, p0}, Lcom/narvii/media/MediaGalleryActivity$Adapter$3;-><init>(Lcom/narvii/media/MediaGalleryActivity$Adapter;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .line 52
    const-string v1, "show dialog"

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    :goto_0
    return p1

    .line 57
    :cond_1
    :goto_1
    return v0
.end method
