.class public final Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;
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

.field public final contentPanel:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final optionsPanel:Lcom/narvii/video/widget/MediaOptionPanel;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final retrieveController:Lcom/narvii/video/widget/MediaRetrieveController;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final volumeControllerPanel:Lcom/narvii/video/widget/VolumeProgressView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/narvii/widget/HorizontalRecyclerView;Lcom/narvii/video/widget/MediaTimeLineComponent;Landroid/widget/LinearLayout;Lcom/narvii/video/widget/MediaOptionPanel;Lcom/narvii/video/widget/MediaRetrieveController;Lcom/narvii/video/widget/VolumeProgressView;)V
    .locals 0
    .param p1    # Landroid/view/View;
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
    .param p4    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/video/widget/MediaOptionPanel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/video/widget/MediaRetrieveController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/narvii/video/widget/VolumeProgressView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;->rootView:Landroid/view/View;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;->audioTimeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;->audioTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;->contentPanel:Landroid/widget/LinearLayout;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;->optionsPanel:Lcom/narvii/video/widget/MediaOptionPanel;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;->retrieveController:Lcom/narvii/video/widget/MediaRetrieveController;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;->volumeControllerPanel:Lcom/narvii/video/widget/VolumeProgressView;

    .line 18
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;
    .locals 10
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
    .line 13
    sget v0, Lcom/narvii/mediaeditor/R$id;->audio_time_line_component:I

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 17
    move-result-object v1

    .line 18
    move-object v5, v1

    .line 19
    .line 20
    check-cast v5, Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 21
    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    sget v0, Lcom/narvii/mediaeditor/R$id;->contentPanel:I

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 28
    move-result-object v1

    .line 29
    move-object v6, v1

    .line 30
    .line 31
    check-cast v6, Landroid/widget/LinearLayout;

    .line 32
    .line 33
    if-eqz v6, :cond_0

    .line 34
    .line 35
    sget v0, Lcom/narvii/mediaeditor/R$id;->options_panel:I

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 39
    move-result-object v1

    .line 40
    move-object v7, v1

    .line 41
    .line 42
    check-cast v7, Lcom/narvii/video/widget/MediaOptionPanel;

    .line 43
    .line 44
    if-eqz v7, :cond_0

    .line 45
    .line 46
    sget v0, Lcom/narvii/mediaeditor/R$id;->retrieve_controller:I

    .line 47
    .line 48
    .line 49
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 50
    move-result-object v1

    .line 51
    move-object v8, v1

    .line 52
    .line 53
    check-cast v8, Lcom/narvii/video/widget/MediaRetrieveController;

    .line 54
    .line 55
    if-eqz v8, :cond_0

    .line 56
    .line 57
    sget v0, Lcom/narvii/mediaeditor/R$id;->volume_controller_panel:I

    .line 58
    .line 59
    .line 60
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 61
    move-result-object v1

    .line 62
    move-object v9, v1

    .line 63
    .line 64
    check-cast v9, Lcom/narvii/video/widget/VolumeProgressView;

    .line 65
    .line 66
    if-eqz v9, :cond_0

    .line 67
    .line 68
    new-instance v0, Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;

    .line 69
    move-object v2, v0

    .line 70
    move-object v3, p0

    .line 71
    .line 72
    .line 73
    invoke-direct/range {v2 .. v9}, Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;-><init>(Landroid/view/View;Lcom/narvii/widget/HorizontalRecyclerView;Lcom/narvii/video/widget/MediaTimeLineComponent;Landroid/widget/LinearLayout;Lcom/narvii/video/widget/MediaOptionPanel;Lcom/narvii/video/widget/MediaRetrieveController;Lcom/narvii/video/widget/VolumeProgressView;)V

    .line 74
    return-object v0

    .line 75
    .line 76
    .line 77
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 78
    move-result-object p0

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 83
    .line 84
    new-instance v0, Ljava/lang/NullPointerException;

    .line 85
    .line 86
    const-string v1, "Missing required view with ID: "

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    move-result-object p0

    .line 91
    .line 92
    .line 93
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 94
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    sget v0, Lcom/narvii/mediaeditor/R$layout;->component_audio_editor_panel:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;->bind(Landroid/view/View;)Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;

    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    .line 14
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 15
    .line 16
    const-string p1, "parent"

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
