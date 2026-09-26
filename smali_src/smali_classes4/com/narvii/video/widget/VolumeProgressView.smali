.class public final Lcom/narvii/video/widget/VolumeProgressView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/widget/VolumeProgressView$OnVolumeChangedListener;
    }
.end annotation


# instance fields
.field private final binding:Lcom/narvii/mediaeditor/databinding/ComponentVolumeProgressBarBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volumeListener:Lcom/narvii/video/widget/VolumeProgressView$OnVolumeChangedListener;
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

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/narvii/mediaeditor/databinding/ComponentVolumeProgressBarBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/narvii/mediaeditor/databinding/ComponentVolumeProgressBarBinding;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/widget/VolumeProgressView;->binding:Lcom/narvii/mediaeditor/databinding/ComponentVolumeProgressBarBinding;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/narvii/mediaeditor/databinding/ComponentVolumeProgressBarBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/narvii/mediaeditor/databinding/ComponentVolumeProgressBarBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/widget/VolumeProgressView;->binding:Lcom/narvii/mediaeditor/databinding/ComponentVolumeProgressBarBinding;

    return-void
.end method

.method public static synthetic a(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/video/widget/VolumeProgressView;->init$lambda$1(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/narvii/video/widget/VolumeProgressView;)Lcom/narvii/mediaeditor/databinding/ComponentVolumeProgressBarBinding;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/widget/VolumeProgressView;->binding:Lcom/narvii/mediaeditor/databinding/ComponentVolumeProgressBarBinding;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getVolumeListener$p(Lcom/narvii/video/widget/VolumeProgressView;)Lcom/narvii/video/widget/VolumeProgressView$OnVolumeChangedListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/widget/VolumeProgressView;->volumeListener:Lcom/narvii/video/widget/VolumeProgressView$OnVolumeChangedListener;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$updateVolumeIcon(Lcom/narvii/video/widget/VolumeProgressView;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/video/widget/VolumeProgressView;->updateVolumeIcon(I)V

    .line 4
    return-void
.end method

.method public static synthetic init$default(Lcom/narvii/video/widget/VolumeProgressView;ILcom/narvii/video/widget/VolumeProgressView$OnVolumeChangedListener;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p4, p4, 0x4

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    const/4 p3, 0x1

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/video/widget/VolumeProgressView;->init(ILcom/narvii/video/widget/VolumeProgressView$OnVolumeChangedListener;Z)V

    .line 9
    return-void
.end method

.method private static final init$lambda$1(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private final updateVolumeIcon(I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/widget/VolumeProgressView;->binding:Lcom/narvii/mediaeditor/databinding/ComponentVolumeProgressBarBinding;

    .line 3
    .line 4
    if-gtz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, v0, Lcom/narvii/mediaeditor/databinding/ComponentVolumeProgressBarBinding;->iconVolume:Landroid/widget/ImageView;

    .line 7
    const/4 v0, 0x3

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    .line 14
    if-gt v1, p1, :cond_1

    .line 15
    .line 16
    const/16 v2, 0x32

    .line 17
    .line 18
    if-ge p1, v2, :cond_1

    .line 19
    .line 20
    iget-object p1, v0, Lcom/narvii/mediaeditor/databinding/ComponentVolumeProgressBarBinding;->iconVolume:Landroid/widget/ImageView;

    .line 21
    const/4 v0, 0x2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_1
    iget-object p1, v0, Lcom/narvii/mediaeditor/databinding/ComponentVolumeProgressBarBinding;->iconVolume:Landroid/widget/ImageView;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 31
    :goto_0
    return-void
.end method


# virtual methods
.method public final init(ILcom/narvii/video/widget/VolumeProgressView$OnVolumeChangedListener;Z)V
    .locals 3
    .param p2    # Lcom/narvii/video/widget/VolumeProgressView$OnVolumeChangedListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "listener"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sget v1, Lcom/narvii/mediaeditor/R$drawable;->button_volume_bg:I

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    if-eqz p3, :cond_0

    .line 20
    .line 21
    iget-object p3, p0, Lcom/narvii/video/widget/VolumeProgressView;->binding:Lcom/narvii/mediaeditor/databinding/ComponentVolumeProgressBarBinding;

    .line 22
    .line 23
    iget-object p3, p3, Lcom/narvii/mediaeditor/databinding/ComponentVolumeProgressBarBinding;->volumeProgressText:Landroid/widget/TextView;

    .line 24
    .line 25
    const-string v1, "#88FFFFFF"

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 29
    move-result v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    .line 34
    const-string p3, "#FFFFFF"

    .line 35
    .line 36
    .line 37
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 38
    move-result p3

    .line 39
    .line 40
    .line 41
    invoke-static {v0, p3}, Landroidx/core/graphics/drawable/DrawableCompat;->n(Landroid/graphics/drawable/Drawable;I)V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_0
    iget-object p3, p0, Lcom/narvii/video/widget/VolumeProgressView;->binding:Lcom/narvii/mediaeditor/databinding/ComponentVolumeProgressBarBinding;

    .line 45
    .line 46
    iget-object p3, p3, Lcom/narvii/mediaeditor/databinding/ComponentVolumeProgressBarBinding;->volumeProgressText:Landroid/widget/TextView;

    .line 47
    .line 48
    const-string v1, "#4A4A4A"

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 52
    move-result v2

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    .line 57
    .line 58
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 59
    move-result p3

    .line 60
    .line 61
    .line 62
    invoke-static {v0, p3}, Landroidx/core/graphics/drawable/DrawableCompat;->n(Landroid/graphics/drawable/Drawable;I)V

    .line 63
    .line 64
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/narvii/video/widget/VolumeProgressView;->binding:Lcom/narvii/mediaeditor/databinding/ComponentVolumeProgressBarBinding;

    .line 65
    .line 66
    iget-object p3, p3, Lcom/narvii/mediaeditor/databinding/ComponentVolumeProgressBarBinding;->iconVolume:Landroid/widget/ImageView;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, p1}, Lcom/narvii/video/widget/VolumeProgressView;->updateVolumeIcon(I)V

    .line 73
    .line 74
    iput-object p2, p0, Lcom/narvii/video/widget/VolumeProgressView;->volumeListener:Lcom/narvii/video/widget/VolumeProgressView$OnVolumeChangedListener;

    .line 75
    .line 76
    iget-object p2, p0, Lcom/narvii/video/widget/VolumeProgressView;->binding:Lcom/narvii/mediaeditor/databinding/ComponentVolumeProgressBarBinding;

    .line 77
    .line 78
    iget-object p2, p2, Lcom/narvii/mediaeditor/databinding/ComponentVolumeProgressBarBinding;->volumeBar:Landroid/widget/SeekBar;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 82
    .line 83
    iget-object p2, p0, Lcom/narvii/video/widget/VolumeProgressView;->binding:Lcom/narvii/mediaeditor/databinding/ComponentVolumeProgressBarBinding;

    .line 84
    .line 85
    iget-object p2, p2, Lcom/narvii/mediaeditor/databinding/ComponentVolumeProgressBarBinding;->volumeProgressText:Landroid/widget/TextView;

    .line 86
    .line 87
    new-instance p3, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const/16 p1, 0x25

    .line 96
    .line 97
    .line 98
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    iget-object p1, p0, Lcom/narvii/video/widget/VolumeProgressView;->binding:Lcom/narvii/mediaeditor/databinding/ComponentVolumeProgressBarBinding;

    .line 108
    .line 109
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/ComponentVolumeProgressBarBinding;->volumeBar:Landroid/widget/SeekBar;

    .line 110
    .line 111
    new-instance p2, Lcom/narvii/video/widget/VolumeProgressView$init$2;

    .line 112
    .line 113
    .line 114
    invoke-direct {p2, p0}, Lcom/narvii/video/widget/VolumeProgressView$init$2;-><init>(Lcom/narvii/video/widget/VolumeProgressView;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 118
    .line 119
    new-instance p1, Lcom/narvii/video/widget/q;

    .line 120
    .line 121
    .line 122
    invoke-direct {p1}, Lcom/narvii/video/widget/q;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    return-void
.end method

.method public final removeOnVolumeChangedListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/narvii/video/widget/VolumeProgressView;->volumeListener:Lcom/narvii/video/widget/VolumeProgressView$OnVolumeChangedListener;

    return-void
.end method
