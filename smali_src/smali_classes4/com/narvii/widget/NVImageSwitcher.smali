.class public Lcom/narvii/widget/NVImageSwitcher;
.super Landroid/widget/ViewSwitcher;
.source "SourceFile"


# instance fields
.field private index:I

.field mediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field private nextRunnable:Ljava/lang/Runnable;

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    sget p2, Lcom/narvii/lib/R$anim;->fade_in:I

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    const-wide/16 v0, 0x3e8

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    sget p2, Lcom/narvii/lib/R$anim;->fade_out:I

    .line 28
    .line 29
    .line 30
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 38
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/widget/NVImageSwitcher;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/widget/NVImageSwitcher;->index:I

    return p0
.end method

.method static bridge synthetic b(Lcom/narvii/widget/NVImageSwitcher;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/NVImageSwitcher;->nextRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/widget/NVImageSwitcher;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/widget/NVImageSwitcher;->index:I

    return-void
.end method

.method static bridge synthetic d(Lcom/narvii/widget/NVImageSwitcher;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/widget/NVImageSwitcher;->nextRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/narvii/widget/NVImageSwitcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/ViewSwitcher;->onDetachedFromWindow()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/widget/NVImageSwitcher;->runnable:Ljava/lang/Runnable;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVImageSwitcher;->nextRunnable:Ljava/lang/Runnable;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    :cond_1
    return-void
.end method

.method public setCurrentImageUrl(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget v1, Lcom/narvii/lib/R$id;->image:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 16
    return-void
.end method

.method public setNextImageUrl(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget v1, Lcom/narvii/lib/R$id;->image:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 16
    return-void
.end method

.method public startSwitch(Ljava/util/List;JJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;JJ)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/NVImageSwitcher;->mediaList:Ljava/util/List;

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/widget/NVImageSwitcher;->runnable:Ljava/lang/Runnable;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/NVImageSwitcher;->nextRunnable:Ljava/lang/Runnable;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    :cond_1
    iget-object p1, p0, Lcom/narvii/widget/NVImageSwitcher;->mediaList:Ljava/util/List;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 26
    move-result p1

    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    const/4 p1, 0x0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVImageSwitcher;->setCurrentImageUrl(Ljava/lang/String;)V

    .line 33
    return-void

    .line 34
    .line 35
    :cond_2
    iget-object p1, p0, Lcom/narvii/widget/NVImageSwitcher;->mediaList:Ljava/util/List;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    .line 39
    move-result p1

    .line 40
    const/4 v0, 0x0

    .line 41
    const/4 v1, 0x1

    .line 42
    .line 43
    if-ne p1, v1, :cond_3

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/widget/NVImageSwitcher;->mediaList:Ljava/util/List;

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    check-cast p1, Lcom/narvii/model/Media;

    .line 52
    .line 53
    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVImageSwitcher;->setCurrentImageUrl(Ljava/lang/String;)V

    .line 57
    return-void

    .line 58
    .line 59
    :cond_3
    iget-object p1, p0, Lcom/narvii/widget/NVImageSwitcher;->mediaList:Ljava/util/List;

    .line 60
    .line 61
    .line 62
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    check-cast p1, Lcom/narvii/model/Media;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVImageSwitcher;->setCurrentImageUrl(Ljava/lang/String;)V

    .line 71
    .line 72
    iput v1, p0, Lcom/narvii/widget/NVImageSwitcher;->index:I

    .line 73
    .line 74
    :try_start_0
    iget-object p1, p0, Lcom/narvii/widget/NVImageSwitcher;->mediaList:Ljava/util/List;

    .line 75
    .line 76
    .line 77
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    check-cast p1, Lcom/narvii/model/Media;

    .line 81
    .line 82
    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVImageSwitcher;->setNextImageUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_0

    .line 87
    :catch_0
    move-exception p1

    .line 88
    .line 89
    const-string v0, "imageSwitcher"

    .line 90
    .line 91
    .line 92
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    .line 94
    :goto_0
    new-instance p1, Lcom/narvii/widget/NVImageSwitcher$1;

    .line 95
    .line 96
    .line 97
    invoke-direct {p1, p0, p4, p5}, Lcom/narvii/widget/NVImageSwitcher$1;-><init>(Lcom/narvii/widget/NVImageSwitcher;J)V

    .line 98
    .line 99
    iput-object p1, p0, Lcom/narvii/widget/NVImageSwitcher;->runnable:Ljava/lang/Runnable;

    .line 100
    .line 101
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 102
    add-long/2addr p2, p4

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    return-void
.end method
