.class public Lcom/narvii/video/attachment/caption/CaptionColorFragment;
.super Lcom/narvii/app/NVFragment;
.source "CaptionColorFragment.java"


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

    .line 20
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/video/attachment/caption/CaptionColorFragment;)Landroid/widget/SeekBar;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->seekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/video/attachment/caption/CaptionColorFragment;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->color:I

    return p0
.end method

.method static synthetic access$200(Lcom/narvii/video/attachment/caption/CaptionColorFragment;IZ)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->onColorChanged(IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/video/attachment/caption/CaptionColorFragment;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->enabled:Z

    return p0
.end method

.method private onColorChanged(IZ)V
    .locals 2

    .line 103
    iput p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->color:I

    .line 104
    iput-boolean p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->enabled:Z

    .line 105
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/video/attachment/caption/CaptionEditListener;

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/attachment/caption/CaptionEditListener;

    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->color:I

    invoke-interface {p1, v0, v1, p2}, Lcom/narvii/video/attachment/caption/CaptionEditListener;->onColorChanged(IIZ)V

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

    .line 41
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "color"

    .line 42
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->color:I

    const-string p1, "enabled"

    .line 43
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->enabled:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 31
    sget p3, Lcom/narvii/mediaeditor/R$layout;->fragment_caption_color:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 67
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 68
    sget p2, Lcom/narvii/mediaeditor/R$id;->color_picker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    iput-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->colorRecyclerView:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    .line 69
    iget-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->colorRecyclerView:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    const-string v0, "supportDisable"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->setSupportDisable(Z)V

    .line 70
    iget-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->colorRecyclerView:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    iget v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->color:I

    const-string v1, "enabled"

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->setCurrentSelectColor(IZ)V

    .line 71
    iget-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->colorRecyclerView:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    new-instance v0, Lcom/narvii/video/attachment/caption/CaptionColorFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/video/attachment/caption/CaptionColorFragment$1;-><init>(Lcom/narvii/video/attachment/caption/CaptionColorFragment;)V

    invoke-virtual {p2, v0}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->setOnColorSelectedListener(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$OnColorSelectedListener;)V

    .line 77
    sget p2, Lcom/narvii/mediaeditor/R$id;->seek_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->seekBar:Landroid/widget/SeekBar;

    .line 78
    iget-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->seekBar:Landroid/widget/SeekBar;

    const/16 v0, 0xff

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 79
    sget p2, Lcom/narvii/mediaeditor/R$id;->progress_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->seekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/narvii/video/attachment/caption/CaptionColorFragment$2;

    invoke-direct {v1, p0, p2}, Lcom/narvii/video/attachment/caption/CaptionColorFragment$2;-><init>(Lcom/narvii/video/attachment/caption/CaptionColorFragment;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 97
    iget-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->seekBar:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->color:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 98
    sget p2, Lcom/narvii/mediaeditor/R$id;->seek_bar_parent:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 99
    new-instance p2, Lcom/narvii/video/attachment/caption/CaptionColorFragment$SeekBarTouchArea;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/narvii/video/attachment/caption/CaptionColorFragment$SeekBarTouchArea;-><init>(Lcom/narvii/video/attachment/caption/CaptionColorFragment;Lcom/narvii/video/attachment/caption/CaptionColorFragment$1;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 59
    iput p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->color:I

    .line 60
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->colorRecyclerView:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0, p1}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->setCurrentSelectColor(I)V

    :cond_0
    return-void
.end method
