.class Lcom/narvii/media/MediaGalleryActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$1;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .line 1
    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    iget-object p2, p0, Lcom/narvii/media/MediaGalleryActivity$1;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    .line 5
    .line 6
    iget-object p2, p2, Lcom/narvii/media/MediaGalleryActivity;->overlay:Landroid/view/View;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 10
    move-result p2

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    iget-object p2, p0, Lcom/narvii/media/MediaGalleryActivity$1;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    sget p3, Lcom/narvii/lib/R$anim;->fade_out_fast:I

    .line 21
    .line 22
    .line 23
    invoke-static {p2, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    iget-object p3, p0, Lcom/narvii/media/MediaGalleryActivity$1;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    .line 27
    .line 28
    iget-object p3, p3, Lcom/narvii/media/MediaGalleryActivity;->overlay:Landroid/view/View;

    .line 29
    .line 30
    const/16 v0, 0x8

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    iget-object p3, p0, Lcom/narvii/media/MediaGalleryActivity$1;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    .line 36
    .line 37
    iget-object p3, p3, Lcom/narvii/media/MediaGalleryActivity;->overlay:Landroid/view/View;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 41
    .line 42
    :cond_0
    iget-object p2, p0, Lcom/narvii/media/MediaGalleryActivity$1;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    .line 43
    .line 44
    iget-boolean p2, p2, Lcom/narvii/media/MediaGalleryActivity;->firstLoad:Z

    .line 45
    .line 46
    if-nez p2, :cond_1

    .line 47
    .line 48
    new-instance p2, Lcom/narvii/media/MediaGalleryActivity$1$1;

    .line 49
    .line 50
    .line 51
    invoke-direct {p2, p0, p1}, Lcom/narvii/media/MediaGalleryActivity$1$1;-><init>(Lcom/narvii/media/MediaGalleryActivity$1;I)V

    .line 52
    .line 53
    const-wide/16 v0, 0x1f4

    .line 54
    .line 55
    .line 56
    invoke-static {p2, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 57
    .line 58
    :cond_1
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$1;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    .line 59
    const/4 p2, 0x1

    .line 60
    .line 61
    iput-boolean p2, p1, Lcom/narvii/media/MediaGalleryActivity;->firstLoad:Z

    .line 62
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity$1;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/media/MediaGalleryActivity;->adapter:Lcom/narvii/media/MediaGalleryActivity$Adapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/util/PagerGalleryAdapter;->getItem(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/model/Media;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    const/4 v1, 0x0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object v1, v0, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 17
    .line 18
    :goto_0
    iget-object v2, p0, Lcom/narvii/media/MediaGalleryActivity$1;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/narvii/media/MediaGalleryActivity;->caption:Landroid/widget/TextView;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    iget-object v2, p0, Lcom/narvii/media/MediaGalleryActivity$1;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    .line 26
    .line 27
    iget-object v2, v2, Lcom/narvii/media/MediaGalleryActivity;->caption:Landroid/widget/TextView;

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    move-result v1

    .line 32
    const/4 v3, 0x0

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    const/16 v1, 0x8

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v1, v3

    .line 39
    .line 40
    .line 41
    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/media/MediaGalleryActivity$1;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    .line 44
    .line 45
    iget-object v2, v1, Lcom/narvii/media/MediaGalleryActivity;->smb:Lcom/narvii/widget/ShareMediaBar;

    .line 46
    .line 47
    iget-object v4, v1, Lcom/narvii/media/MediaGalleryActivity;->parent:Lcom/narvii/model/NVObject;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/narvii/media/MediaGalleryActivity;->adapter:Lcom/narvii/media/MediaGalleryActivity$Adapter;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/narvii/util/PagerGalleryAdapter;->list()Ljava/util/List;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v4, v0, v1}, Lcom/narvii/widget/ShareMediaBar;->setMedia(Lcom/narvii/model/NVObject;Lcom/narvii/model/Media;Ljava/util/List;)V

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity$1;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/narvii/media/MediaGalleryActivity;->pager:Lcom/narvii/widget/NVViewPager;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 64
    move-result v0

    .line 65
    .line 66
    :goto_2
    if-ge v3, v0, :cond_3

    .line 67
    .line 68
    iget-object v1, p0, Lcom/narvii/media/MediaGalleryActivity$1;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    .line 69
    .line 70
    iget-object v1, v1, Lcom/narvii/media/MediaGalleryActivity;->pager:Lcom/narvii/widget/NVViewPager;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    sget v2, Lcom/narvii/lib/R$id;->image:I

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    instance-of v2, v1, Lcom/narvii/widget/TouchImageView;

    .line 85
    .line 86
    if-eqz v2, :cond_2

    .line 87
    .line 88
    check-cast v1, Lcom/narvii/widget/TouchImageView;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/narvii/widget/TouchImageView;->resetZoom()V

    .line 92
    .line 93
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 94
    goto :goto_2

    .line 95
    .line 96
    :cond_3
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity$1;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    .line 97
    .line 98
    .line 99
    invoke-static {v0, p1}, Lcom/narvii/media/MediaGalleryActivity;->t(Lcom/narvii/media/MediaGalleryActivity;I)V

    .line 100
    .line 101
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity$1;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p1}, Lcom/narvii/media/MediaGalleryActivity;->onPageSelectedFinished(I)V

    .line 105
    return-void
.end method
