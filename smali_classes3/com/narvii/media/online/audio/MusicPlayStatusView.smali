.class public Lcom/narvii/media/online/audio/MusicPlayStatusView;
.super Landroid/widget/FrameLayout;
.source "MusicPlayStatusView.java"


# static fields
.field public static final STATUS_BUFFERING:I = 0x2

.field public static final STATUS_NONE:I = 0x0

.field public static final STATUS_PLAYING:I = 0x1


# instance fields
.field private IdleIcon:Landroid/view/View;

.field private bufferingIcon:Landroid/view/View;

.field private gl:Lcom/narvii/util/drawables/gif/GifLoader;

.field private playingIcon:Lcom/narvii/widget/NVImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "gifLoader"

    .line 34
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/drawables/gif/GifLoader;

    iput-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayStatusView;->gl:Lcom/narvii/util/drawables/gif/GifLoader;

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 40
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 41
    sget v0, Lcom/narvii/lib/R$id;->playing_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayStatusView;->playingIcon:Lcom/narvii/widget/NVImageView;

    .line 42
    sget v0, Lcom/narvii/lib/R$id;->spinning_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayStatusView;->bufferingIcon:Landroid/view/View;

    .line 43
    sget v0, Lcom/narvii/lib/R$id;->idle_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayStatusView;->IdleIcon:Landroid/view/View;

    return-void
.end method

.method public setStatus(I)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayStatusView;->playingIcon:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayStatusView;->bufferingIcon:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 56
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayStatusView;->IdleIcon:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 59
    :cond_1
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayStatusView;->playingIcon:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayStatusView;->bufferingIcon:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayStatusView;->IdleIcon:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayStatusView;->gl:Lcom/narvii/util/drawables/gif/GifLoader;

    const-string v0, "assets://media_playing.gif"

    invoke-virtual {p1, v0}, Lcom/narvii/util/drawables/gif/GifLoader;->getLocalGifDrawable(Ljava/lang/String;)Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    move-result-object p1

    .line 63
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayStatusView;->playingIcon:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 49
    :cond_2
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayStatusView;->bufferingIcon:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayStatusView;->playingIcon:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayStatusView;->IdleIcon:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
