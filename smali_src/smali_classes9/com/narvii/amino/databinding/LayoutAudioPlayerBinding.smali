.class public final Lcom/narvii/amino/databinding/LayoutAudioPlayerBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final audioPlayer:Lcom/narvii/chat/audio/AudioPlayer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final icon:Lcom/narvii/widget/TintButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final progressBar:Landroid/widget/ProgressBar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/narvii/chat/audio/AudioPlayer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final seekbar:Landroid/widget/SeekBar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final spinner:Lcom/narvii/widget/SpinningView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final time:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/narvii/chat/audio/AudioPlayer;Lcom/narvii/chat/audio/AudioPlayer;Lcom/narvii/widget/TintButton;Landroid/widget/ProgressBar;Landroid/widget/SeekBar;Lcom/narvii/widget/SpinningView;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Lcom/narvii/chat/audio/AudioPlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/chat/audio/AudioPlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/widget/TintButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/ProgressBar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/SeekBar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/widget/SpinningView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/LayoutAudioPlayerBinding;->rootView:Lcom/narvii/chat/audio/AudioPlayer;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/LayoutAudioPlayerBinding;->audioPlayer:Lcom/narvii/chat/audio/AudioPlayer;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/LayoutAudioPlayerBinding;->icon:Lcom/narvii/widget/TintButton;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/LayoutAudioPlayerBinding;->progressBar:Landroid/widget/ProgressBar;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/LayoutAudioPlayerBinding;->seekbar:Landroid/widget/SeekBar;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/LayoutAudioPlayerBinding;->spinner:Lcom/narvii/widget/SpinningView;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/LayoutAudioPlayerBinding;->time:Landroid/widget/TextView;

    .line 18
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/LayoutAudioPlayerBinding;
    .locals 8
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object v2, p0

    .line 2
    .line 3
    check-cast v2, Lcom/narvii/chat/audio/AudioPlayer;

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a06d5

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 10
    move-result-object v1

    .line 11
    move-object v3, v1

    .line 12
    .line 13
    check-cast v3, Lcom/narvii/widget/TintButton;

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    .line 18
    const v0, 0x7f0a0b8d

    .line 19
    .line 20
    .line 21
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 22
    move-result-object v1

    .line 23
    move-object v4, v1

    .line 24
    .line 25
    check-cast v4, Landroid/widget/ProgressBar;

    .line 26
    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    .line 30
    const v0, 0x7f0a0cc3

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 34
    move-result-object v1

    .line 35
    move-object v5, v1

    .line 36
    .line 37
    check-cast v5, Landroid/widget/SeekBar;

    .line 38
    .line 39
    if-eqz v5, :cond_0

    .line 40
    .line 41
    .line 42
    const v0, 0x7f0a0d67

    .line 43
    .line 44
    .line 45
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 46
    move-result-object v1

    .line 47
    move-object v6, v1

    .line 48
    .line 49
    check-cast v6, Lcom/narvii/widget/SpinningView;

    .line 50
    .line 51
    if-eqz v6, :cond_0

    .line 52
    .line 53
    .line 54
    const v0, 0x7f0a0e78

    .line 55
    .line 56
    .line 57
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 58
    move-result-object v1

    .line 59
    move-object v7, v1

    .line 60
    .line 61
    check-cast v7, Landroid/widget/TextView;

    .line 62
    .line 63
    if-eqz v7, :cond_0

    .line 64
    .line 65
    new-instance p0, Lcom/narvii/amino/databinding/LayoutAudioPlayerBinding;

    .line 66
    move-object v0, p0

    .line 67
    move-object v1, v2

    .line 68
    .line 69
    .line 70
    invoke-direct/range {v0 .. v7}, Lcom/narvii/amino/databinding/LayoutAudioPlayerBinding;-><init>(Lcom/narvii/chat/audio/AudioPlayer;Lcom/narvii/chat/audio/AudioPlayer;Lcom/narvii/widget/TintButton;Landroid/widget/ProgressBar;Landroid/widget/SeekBar;Lcom/narvii/widget/SpinningView;Landroid/widget/TextView;)V

    .line 71
    return-object p0

    .line 72
    .line 73
    .line 74
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 75
    move-result-object p0

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 80
    .line 81
    new-instance v0, Ljava/lang/NullPointerException;

    .line 82
    .line 83
    const-string v1, "Missing required view with ID: "

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object p0

    .line 88
    .line 89
    .line 90
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 91
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/LayoutAudioPlayerBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/LayoutAudioPlayerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/LayoutAudioPlayerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/LayoutAudioPlayerBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0d04ac

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/LayoutAudioPlayerBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/LayoutAudioPlayerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/LayoutAudioPlayerBinding;->getRoot()Lcom/narvii/chat/audio/AudioPlayer;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/narvii/chat/audio/AudioPlayer;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/LayoutAudioPlayerBinding;->rootView:Lcom/narvii/chat/audio/AudioPlayer;

    return-object v0
.end method
