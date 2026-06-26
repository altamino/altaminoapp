.class Lcom/narvii/media/MediaGalleryActivity$1;
.super Ljava/lang/Object;
.source "MediaGalleryActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/MediaGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/MediaGalleryActivity;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaGalleryActivity;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$1;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    if-eqz p3, :cond_0

    .line 214
    iget-object p2, p0, Lcom/narvii/media/MediaGalleryActivity$1;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    iget-object p2, p2, Lcom/narvii/media/MediaGalleryActivity;->overlay:Landroid/view/View;

    .line 215
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_0

    .line 216
    iget-object p2, p0, Lcom/narvii/media/MediaGalleryActivity$1;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    invoke-virtual {p2}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/narvii/lib/R$anim;->fade_out_fast:I

    invoke-static {p2, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    .line 218
    iget-object p3, p0, Lcom/narvii/media/MediaGalleryActivity$1;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    iget-object p3, p3, Lcom/narvii/media/MediaGalleryActivity;->overlay:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 219
    iget-object p3, p0, Lcom/narvii/media/MediaGalleryActivity$1;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    iget-object p3, p3, Lcom/narvii/media/MediaGalleryActivity;->overlay:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 221
    :cond_0
    iget-object p2, p0, Lcom/narvii/media/MediaGalleryActivity$1;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    iget-boolean p2, p2, Lcom/narvii/media/MediaGalleryActivity;->firstLoad:Z

    if-nez p2, :cond_1

    .line 222
    new-instance p2, Lcom/narvii/media/MediaGalleryActivity$1$1;

    invoke-direct {p2, p0, p1}, Lcom/narvii/media/MediaGalleryActivity$1$1;-><init>(Lcom/narvii/media/MediaGalleryActivity$1;I)V

    const-wide/16 v0, 0x1f4

    invoke-static {p2, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 229
    :cond_1
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$1;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/narvii/media/MediaGalleryActivity;->firstLoad:Z

    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    .line 192
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity$1;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    iget-object v0, v0, Lcom/narvii/media/MediaGalleryActivity;->adapter:Lcom/narvii/media/MediaGalleryActivity$Adapter;

    invoke-virtual {v0, p1}, Lcom/narvii/util/PagerGalleryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 193
    :cond_0
    iget-object v1, v0, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 194
    :goto_0
    iget-object v2, p0, Lcom/narvii/media/MediaGalleryActivity$1;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    iget-object v2, v2, Lcom/narvii/media/MediaGalleryActivity;->caption:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v2, p0, Lcom/narvii/media/MediaGalleryActivity$1;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    iget-object v2, v2, Lcom/narvii/media/MediaGalleryActivity;->caption:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    iget-object v1, p0, Lcom/narvii/media/MediaGalleryActivity$1;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    iget-object v2, v1, Lcom/narvii/media/MediaGalleryActivity;->smb:Lcom/narvii/widget/ShareMediaBar;

    iget-object v4, v1, Lcom/narvii/media/MediaGalleryActivity;->parent:Lcom/narvii/model/NVObject;

    iget-object v1, v1, Lcom/narvii/media/MediaGalleryActivity;->adapter:Lcom/narvii/media/MediaGalleryActivity$Adapter;

    invoke-virtual {v1}, Lcom/narvii/util/PagerGalleryAdapter;->list()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v4, v0, v1}, Lcom/narvii/widget/ShareMediaBar;->setMedia(Lcom/narvii/model/NVObject;Lcom/narvii/model/Media;Ljava/util/List;)V

    .line 198
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity$1;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    iget-object v0, v0, Lcom/narvii/media/MediaGalleryActivity;->pager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_2
    if-ge v3, v0, :cond_3

    .line 199
    iget-object v1, p0, Lcom/narvii/media/MediaGalleryActivity$1;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    iget-object v1, v1, Lcom/narvii/media/MediaGalleryActivity;->pager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 201
    sget v2, Lcom/narvii/lib/R$id;->image:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 202
    instance-of v2, v1, Lcom/narvii/widget/TouchImageView;

    if-eqz v2, :cond_2

    .line 203
    check-cast v1, Lcom/narvii/widget/TouchImageView;

    invoke-virtual {v1}, Lcom/narvii/widget/TouchImageView;->resetZoom()V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity$1;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    invoke-static {v0, p1}, Lcom/narvii/media/MediaGalleryActivity;->access$000(Lcom/narvii/media/MediaGalleryActivity;I)V

    .line 208
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity$1;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    invoke-virtual {v0, p1}, Lcom/narvii/media/MediaGalleryActivity;->onPageSelectedFinished(I)V

    return-void
.end method
