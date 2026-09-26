.class public final Lcom/narvii/mediaeditor/databinding/ComponentViceTimeLineBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final audioTimeLine:Lcom/narvii/widget/HorizontalRecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final audioTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final clipName:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/narvii/video/widget/MediaTimeLineComponent;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final trackContentPanel:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final trackIcon:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final trackStickerIcon:Lcom/narvii/widget/NVImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final viceTimeLineCutter:Lcom/narvii/video/widget/ViceTimeLineCutterView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final viceTimeLineWrapper:Lcom/narvii/video/widget/ViceTimeLineWrapperView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/narvii/video/widget/MediaTimeLineComponent;Lcom/narvii/widget/HorizontalRecyclerView;Lcom/narvii/video/widget/MediaTimeLineComponent;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lcom/narvii/widget/NVImageView;Lcom/narvii/video/widget/ViceTimeLineCutterView;Lcom/narvii/video/widget/ViceTimeLineWrapperView;)V
    .locals 0
    .param p1    # Lcom/narvii/video/widget/MediaTimeLineComponent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/widget/HorizontalRecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/video/widget/MediaTimeLineComponent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/narvii/widget/NVImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/narvii/video/widget/ViceTimeLineCutterView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/narvii/video/widget/ViceTimeLineWrapperView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/mediaeditor/databinding/ComponentViceTimeLineBinding;->rootView:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/mediaeditor/databinding/ComponentViceTimeLineBinding;->audioTimeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/mediaeditor/databinding/ComponentViceTimeLineBinding;->audioTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/mediaeditor/databinding/ComponentViceTimeLineBinding;->clipName:Landroid/widget/TextView;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/mediaeditor/databinding/ComponentViceTimeLineBinding;->trackContentPanel:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/mediaeditor/databinding/ComponentViceTimeLineBinding;->trackIcon:Landroid/widget/ImageView;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/mediaeditor/databinding/ComponentViceTimeLineBinding;->trackStickerIcon:Lcom/narvii/widget/NVImageView;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/narvii/mediaeditor/databinding/ComponentViceTimeLineBinding;->viceTimeLineCutter:Lcom/narvii/video/widget/ViceTimeLineCutterView;

    .line 20
    .line 21
    iput-object p9, p0, Lcom/narvii/mediaeditor/databinding/ComponentViceTimeLineBinding;->viceTimeLineWrapper:Lcom/narvii/video/widget/ViceTimeLineWrapperView;

    .line 22
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/mediaeditor/databinding/ComponentViceTimeLineBinding;
    .locals 12
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    sget v0, Lcom/narvii/mediaeditor/R$id;->audio_time_line:I

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 6
    move-result-object v1

    .line 7
    move-object v4, v1

    .line 8
    .line 9
    check-cast v4, Lcom/narvii/widget/HorizontalRecyclerView;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    move-object v5, p0

    .line 13
    .line 14
    check-cast v5, Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 15
    .line 16
    sget v0, Lcom/narvii/mediaeditor/R$id;->clip_name:I

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 20
    move-result-object v1

    .line 21
    move-object v6, v1

    .line 22
    .line 23
    check-cast v6, Landroid/widget/TextView;

    .line 24
    .line 25
    if-eqz v6, :cond_0

    .line 26
    .line 27
    sget v0, Lcom/narvii/mediaeditor/R$id;->track_content_panel:I

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 31
    move-result-object v1

    .line 32
    move-object v7, v1

    .line 33
    .line 34
    check-cast v7, Landroid/widget/LinearLayout;

    .line 35
    .line 36
    if-eqz v7, :cond_0

    .line 37
    .line 38
    sget v0, Lcom/narvii/mediaeditor/R$id;->track_icon:I

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 42
    move-result-object v1

    .line 43
    move-object v8, v1

    .line 44
    .line 45
    check-cast v8, Landroid/widget/ImageView;

    .line 46
    .line 47
    if-eqz v8, :cond_0

    .line 48
    .line 49
    sget v0, Lcom/narvii/mediaeditor/R$id;->track_sticker_icon:I

    .line 50
    .line 51
    .line 52
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 53
    move-result-object v1

    .line 54
    move-object v9, v1

    .line 55
    .line 56
    check-cast v9, Lcom/narvii/widget/NVImageView;

    .line 57
    .line 58
    if-eqz v9, :cond_0

    .line 59
    .line 60
    sget v0, Lcom/narvii/mediaeditor/R$id;->vice_time_line_cutter:I

    .line 61
    .line 62
    .line 63
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 64
    move-result-object v1

    .line 65
    move-object v10, v1

    .line 66
    .line 67
    check-cast v10, Lcom/narvii/video/widget/ViceTimeLineCutterView;

    .line 68
    .line 69
    if-eqz v10, :cond_0

    .line 70
    .line 71
    sget v0, Lcom/narvii/mediaeditor/R$id;->vice_time_line_wrapper:I

    .line 72
    .line 73
    .line 74
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 75
    move-result-object v1

    .line 76
    move-object v11, v1

    .line 77
    .line 78
    check-cast v11, Lcom/narvii/video/widget/ViceTimeLineWrapperView;

    .line 79
    .line 80
    if-eqz v11, :cond_0

    .line 81
    .line 82
    new-instance p0, Lcom/narvii/mediaeditor/databinding/ComponentViceTimeLineBinding;

    .line 83
    move-object v2, p0

    .line 84
    move-object v3, v5

    .line 85
    .line 86
    .line 87
    invoke-direct/range {v2 .. v11}, Lcom/narvii/mediaeditor/databinding/ComponentViceTimeLineBinding;-><init>(Lcom/narvii/video/widget/MediaTimeLineComponent;Lcom/narvii/widget/HorizontalRecyclerView;Lcom/narvii/video/widget/MediaTimeLineComponent;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lcom/narvii/widget/NVImageView;Lcom/narvii/video/widget/ViceTimeLineCutterView;Lcom/narvii/video/widget/ViceTimeLineWrapperView;)V

    .line 88
    return-object p0

    .line 89
    .line 90
    .line 91
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 92
    move-result-object p0

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 96
    move-result-object p0

    .line 97
    .line 98
    new-instance v0, Ljava/lang/NullPointerException;

    .line 99
    .line 100
    const-string v1, "Missing required view with ID: "

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    move-result-object p0

    .line 105
    .line 106
    .line 107
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 108
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/mediaeditor/databinding/ComponentViceTimeLineBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/mediaeditor/databinding/ComponentViceTimeLineBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/mediaeditor/databinding/ComponentViceTimeLineBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/mediaeditor/databinding/ComponentViceTimeLineBinding;
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

    sget v0, Lcom/narvii/mediaeditor/R$layout;->component_vice_time_line:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/mediaeditor/databinding/ComponentViceTimeLineBinding;->bind(Landroid/view/View;)Lcom/narvii/mediaeditor/databinding/ComponentViceTimeLineBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/mediaeditor/databinding/ComponentViceTimeLineBinding;->getRoot()Lcom/narvii/video/widget/MediaTimeLineComponent;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/narvii/video/widget/MediaTimeLineComponent;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/mediaeditor/databinding/ComponentViceTimeLineBinding;->rootView:Lcom/narvii/video/widget/MediaTimeLineComponent;

    return-object v0
.end method
