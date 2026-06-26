.class public Lcom/narvii/widget/NVImageSwitcher;
.super Landroid/widget/ViewSwitcher;
.source "NVImageSwitcher.java"


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

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$anim;->fade_in:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 34
    invoke-virtual {p0, p1}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 36
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$anim;->fade_out:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 38
    invoke-virtual {p0, p1}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/widget/NVImageSwitcher;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/narvii/widget/NVImageSwitcher;->index:I

    return p0
.end method

.method static synthetic access$002(Lcom/narvii/widget/NVImageSwitcher;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/narvii/widget/NVImageSwitcher;->index:I

    return p1
.end method

.method static synthetic access$100(Lcom/narvii/widget/NVImageSwitcher;)Ljava/lang/Runnable;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/narvii/widget/NVImageSwitcher;->nextRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$102(Lcom/narvii/widget/NVImageSwitcher;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/narvii/widget/NVImageSwitcher;->nextRunnable:Ljava/lang/Runnable;

    return-object p1
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 53
    const-class v0, Lcom/narvii/widget/NVImageSwitcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 58
    invoke-super {p0}, Landroid/widget/ViewSwitcher;->onDetachedFromWindow()V

    .line 59
    iget-object v0, p0, Lcom/narvii/widget/NVImageSwitcher;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 60
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVImageSwitcher;->nextRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 64
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public setCurrentImageUrl(Ljava/lang/String;)V
    .locals 2

    .line 47
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$id;->image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 48
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    return-void
.end method

.method public setNextImageUrl(Ljava/lang/String;)V
    .locals 2

    .line 42
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$id;->image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 43
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

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

    .line 70
    iput-object p1, p0, Lcom/narvii/widget/NVImageSwitcher;->mediaList:Ljava/util/List;

    .line 72
    iget-object p1, p0, Lcom/narvii/widget/NVImageSwitcher;->runnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 73
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/NVImageSwitcher;->nextRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 77
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/narvii/widget/NVImageSwitcher;->mediaList:Ljava/util/List;

    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 81
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVImageSwitcher;->setCurrentImageUrl(Ljava/lang/String;)V

    return-void

    .line 85
    :cond_2
    iget-object p1, p0, Lcom/narvii/widget/NVImageSwitcher;->mediaList:Ljava/util/List;

    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 86
    iget-object p1, p0, Lcom/narvii/widget/NVImageSwitcher;->mediaList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVImageSwitcher;->setCurrentImageUrl(Ljava/lang/String;)V

    return-void

    .line 90
    :cond_3
    iget-object p1, p0, Lcom/narvii/widget/NVImageSwitcher;->mediaList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVImageSwitcher;->setCurrentImageUrl(Ljava/lang/String;)V

    .line 91
    iput v1, p0, Lcom/narvii/widget/NVImageSwitcher;->index:I

    .line 93
    :try_start_0
    iget-object p1, p0, Lcom/narvii/widget/NVImageSwitcher;->mediaList:Ljava/util/List;

    iget v0, p0, Lcom/narvii/widget/NVImageSwitcher;->index:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVImageSwitcher;->setNextImageUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "imageSwitcher"

    .line 95
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    :goto_0
    new-instance p1, Lcom/narvii/widget/NVImageSwitcher$1;

    invoke-direct {p1, p0, p4, p5}, Lcom/narvii/widget/NVImageSwitcher$1;-><init>(Lcom/narvii/widget/NVImageSwitcher;J)V

    iput-object p1, p0, Lcom/narvii/widget/NVImageSwitcher;->runnable:Ljava/lang/Runnable;

    .line 119
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/widget/NVImageSwitcher;->runnable:Ljava/lang/Runnable;

    add-long/2addr p2, p4

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
