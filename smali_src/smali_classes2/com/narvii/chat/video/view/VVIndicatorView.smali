.class public final Lcom/narvii/chat/video/view/VVIndicatorView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private channelType:I

.field private final imgIndicator$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private nvContext:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/view/VVIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/narvii/chat/video/view/VVIndicatorView;->channelType:I

    const p2, 0x7f0a0717

    .line 3
    invoke-direct {p0, p0, p2}, Lcom/narvii/chat/video/view/VVIndicatorView;->bind(Landroid/view/View;I)Lw7/m;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/video/view/VVIndicatorView;->imgIndicator$delegate:Lw7/m;

    .line 4
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/video/view/VVIndicatorView;->nvContext:Lcom/narvii/app/NVContext;

    const p2, 0x7f0d07b2

    .line 5
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private final bind(Landroid/view/View;I)Lw7/m;
    .locals 2
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)",
            "Lw7/m<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lw7/q;->NONE:Lw7/q;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/chat/video/view/VVIndicatorView$bind$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p1, p2}, Lcom/narvii/chat/video/view/VVIndicatorView$bind$1;-><init>(Landroid/view/View;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lw7/n;->b(Lw7/q;Le8/a;)Lw7/m;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method private final getImgIndicator()Lcom/narvii/widget/NVImageView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/view/VVIndicatorView;->imgIndicator$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 9
    return-object v0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/chat/video/view/VVIndicatorView;->getImgIndicator()Lcom/narvii/widget/NVImageView;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 27
    :cond_0
    const/4 v0, -0x1

    .line 28
    .line 29
    iput v0, p0, Lcom/narvii/chat/video/view/VVIndicatorView;->channelType:I

    .line 30
    return-void
.end method

.method public final setLiveChannelType(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/video/view/VVIndicatorView;->channelType:I

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput p1, p0, Lcom/narvii/chat/video/view/VVIndicatorView;->channelType:I

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/chat/video/view/VVIndicatorView;->getImgIndicator()Lcom/narvii/widget/NVImageView;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    const-string v0, "assets://video_white.webp"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 17
    return-void
.end method
