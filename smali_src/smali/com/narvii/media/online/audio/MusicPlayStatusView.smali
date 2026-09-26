.class public Lcom/narvii/media/online/audio/MusicPlayStatusView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    const-string p2, "gifLoader"

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    check-cast p1, Lcom/narvii/util/drawables/gif/GifLoader;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayStatusView;->gl:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 22
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    sget v0, Lcom/narvii/lib/R$id;->playing_view:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayStatusView;->playingIcon:Lcom/narvii/widget/NVImageView;

    .line 14
    .line 15
    sget v0, Lcom/narvii/lib/R$id;->spinning_view:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayStatusView;->bufferingIcon:Landroid/view/View;

    .line 22
    .line 23
    sget v0, Lcom/narvii/lib/R$id;->idle_view:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    iput-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayStatusView;->IdleIcon:Landroid/view/View;

    .line 30
    return-void
.end method

.method public setStatus(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-eqz p1, :cond_2

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    if-eq p1, v2, :cond_1

    .line 9
    const/4 v2, 0x2

    .line 10
    .line 11
    if-eq p1, v2, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayStatusView;->playingIcon:Lcom/narvii/widget/NVImageView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayStatusView;->bufferingIcon:Landroid/view/View;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayStatusView;->IdleIcon:Landroid/view/View;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_1
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayStatusView;->playingIcon:Lcom/narvii/widget/NVImageView;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayStatusView;->bufferingIcon:Landroid/view/View;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayStatusView;->IdleIcon:Landroid/view/View;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayStatusView;->gl:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 46
    .line 47
    const-string v0, "assets://media_playing.gif"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lcom/narvii/util/drawables/gif/GifLoader;->getLocalGifDrawable(Ljava/lang/String;)Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayStatusView;->playingIcon:Lcom/narvii/widget/NVImageView;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_2
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayStatusView;->bufferingIcon:Landroid/view/View;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayStatusView;->playingIcon:Lcom/narvii/widget/NVImageView;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayStatusView;->IdleIcon:Landroid/view/View;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 73
    :goto_0
    return-void
.end method
