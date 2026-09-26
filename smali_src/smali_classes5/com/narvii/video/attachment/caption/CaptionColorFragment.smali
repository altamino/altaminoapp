.class public Lcom/narvii/video/attachment/caption/CaptionColorFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/attachment/caption/CaptionColorFragment$SeekBarTouchArea;
    }
.end annotation


# static fields
.field public static final MAX:I = 0xff


# instance fields
.field private color:I

.field private colorRecyclerView:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

.field private enabled:Z

.field private seekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/video/attachment/caption/CaptionColorFragment;)Landroid/widget/SeekBar;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->seekBar:Landroid/widget/SeekBar;

    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/video/attachment/caption/CaptionColorFragment;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->color:I

    .line 3
    return p0
.end method

.method static synthetic access$200(Lcom/narvii/video/attachment/caption/CaptionColorFragment;IZ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->onColorChanged(IZ)V

    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/narvii/video/attachment/caption/CaptionColorFragment;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->enabled:Z

    .line 3
    return p0
.end method

.method private onColorChanged(IZ)V
    .locals 2

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->color:I

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->enabled:Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    instance-of p1, p1, Lcom/narvii/video/attachment/caption/CaptionEditListener;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Lcom/narvii/video/attachment/caption/CaptionEditListener;

    .line 19
    .line 20
    .line 21
    const-string/jumbo v0, "type"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 25
    move-result v0

    .line 26
    .line 27
    iget v1, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->color:I

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, v0, v1, p2}, Lcom/narvii/video/attachment/caption/CaptionEditListener;->onColorChanged(IIZ)V

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "color"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 9
    move-result p1

    .line 10
    .line 11
    iput p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->color:I

    .line 12
    .line 13
    const-string p1, "enabled"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 17
    move-result p1

    .line 18
    .line 19
    iput-boolean p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->enabled:Z

    .line 20
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    sget p3, Lcom/narvii/mediaeditor/R$layout;->fragment_caption_color:I

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    sget p2, Lcom/narvii/mediaeditor/R$id;->color_picker:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    check-cast p2, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->colorRecyclerView:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    .line 14
    .line 15
    .line 16
    const-string/jumbo v0, "supportDisable"

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v0}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->setSupportDisable(Z)V

    .line 25
    .line 26
    iget-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->colorRecyclerView:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    .line 27
    .line 28
    iget v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->color:I

    .line 29
    .line 30
    const-string v1, "enabled"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 34
    move-result v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v0, v1}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->setCurrentSelectColor(IZ)V

    .line 38
    .line 39
    iget-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->colorRecyclerView:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    .line 40
    .line 41
    new-instance v0, Lcom/narvii/video/attachment/caption/CaptionColorFragment$1;

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, p0}, Lcom/narvii/video/attachment/caption/CaptionColorFragment$1;-><init>(Lcom/narvii/video/attachment/caption/CaptionColorFragment;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v0}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->setOnColorSelectedListener(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$OnColorSelectedListener;)V

    .line 48
    .line 49
    sget p2, Lcom/narvii/mediaeditor/R$id;->seek_bar:I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object p2

    .line 54
    .line 55
    check-cast p2, Landroid/widget/SeekBar;

    .line 56
    .line 57
    iput-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->seekBar:Landroid/widget/SeekBar;

    .line 58
    .line 59
    const/16 v0, 0xff

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 63
    .line 64
    sget p2, Lcom/narvii/mediaeditor/R$id;->progress_text:I

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object p2

    .line 69
    .line 70
    check-cast p2, Landroid/widget/TextView;

    .line 71
    .line 72
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->seekBar:Landroid/widget/SeekBar;

    .line 73
    .line 74
    new-instance v1, Lcom/narvii/video/attachment/caption/CaptionColorFragment$2;

    .line 75
    .line 76
    .line 77
    invoke-direct {v1, p0, p2}, Lcom/narvii/video/attachment/caption/CaptionColorFragment$2;-><init>(Lcom/narvii/video/attachment/caption/CaptionColorFragment;Landroid/widget/TextView;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 81
    .line 82
    iget-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->seekBar:Landroid/widget/SeekBar;

    .line 83
    .line 84
    iget v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->color:I

    .line 85
    .line 86
    .line 87
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 88
    move-result v0

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 92
    .line 93
    sget p2, Lcom/narvii/mediaeditor/R$id;->seek_bar_parent:I

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    new-instance p2, Lcom/narvii/video/attachment/caption/CaptionColorFragment$SeekBarTouchArea;

    .line 100
    const/4 v0, 0x0

    .line 101
    .line 102
    .line 103
    invoke-direct {p2, p0, v0}, Lcom/narvii/video/attachment/caption/CaptionColorFragment$SeekBarTouchArea;-><init>(Lcom/narvii/video/attachment/caption/CaptionColorFragment;Lcom/narvii/video/attachment/caption/CaptionColorFragment$1;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 107
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->color:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->colorRecyclerView:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->setCurrentSelectColor(I)V

    .line 10
    :cond_0
    return-void
.end method
