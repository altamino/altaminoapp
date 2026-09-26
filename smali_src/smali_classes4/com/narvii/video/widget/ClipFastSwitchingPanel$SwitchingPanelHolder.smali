.class final Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/widget/ClipFastSwitchingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SwitchingPanelHolder"
.end annotation


# instance fields
.field private final binding:Lcom/narvii/mediaeditor/databinding/ItemClipFastSwitchingPanelBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;


# direct methods
.method public constructor <init>(Lcom/narvii/video/widget/ClipFastSwitchingPanel;Lcom/narvii/mediaeditor/databinding/ItemClipFastSwitchingPanelBinding;)V
    .locals 1
    .param p1    # Lcom/narvii/video/widget/ClipFastSwitchingPanel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/mediaeditor/databinding/ItemClipFastSwitchingPanelBinding;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "binding"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/narvii/mediaeditor/databinding/ItemClipFastSwitchingPanelBinding;->getRoot()Landroid/widget/RelativeLayout;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 15
    .line 16
    iput-object p2, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;->binding:Lcom/narvii/mediaeditor/databinding/ItemClipFastSwitchingPanelBinding;

    .line 17
    return-void
.end method

.method public static synthetic a(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/widget/ClipFastSwitchingPanel;Lcom/narvii/mediaeditor/databinding/ItemClipFastSwitchingPanelBinding;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;->setData$lambda$2$lambda$1(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/widget/ClipFastSwitchingPanel;Lcom/narvii/mediaeditor/databinding/ItemClipFastSwitchingPanelBinding;Landroid/view/View;)V

    return-void
.end method

.method private static final setData$lambda$2$lambda$1(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/widget/ClipFastSwitchingPanel;Lcom/narvii/mediaeditor/databinding/ItemClipFastSwitchingPanelBinding;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    const-string p3, "$clip"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo p3, "this$0"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string p3, "$this_with"

    .line 14
    .line 15
    .line 16
    invoke-static {p2, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    iget p3, p0, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->access$getSelectedClipIndex$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)I

    .line 22
    move-result v0

    .line 23
    .line 24
    if-ne p3, v0, :cond_0

    .line 25
    return-void

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {p1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->access$getEventCallback$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;

    .line 29
    move-result-object p3

    .line 30
    .line 31
    if-eqz p3, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-interface {p3, p0}, Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;->onClipSwitched(Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-static {p1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->access$getBinding$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)Lcom/narvii/mediaeditor/databinding/ComponentClipFastSwitchingPanelBinding;

    .line 38
    move-result-object p3

    .line 39
    .line 40
    iget-object p3, p3, Lcom/narvii/mediaeditor/databinding/ComponentClipFastSwitchingPanelBinding;->clipList:Landroidx/recyclerview/widget/RecyclerView;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 44
    move-result-object p3

    .line 45
    .line 46
    if-eqz p3, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->access$getSelectedClipIndex$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)I

    .line 50
    move-result v0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 54
    move-result-object p3

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const/4 p3, 0x0

    .line 57
    .line 58
    :goto_0
    if-eqz p3, :cond_3

    .line 59
    .line 60
    sget v0, Lcom/narvii/mediaeditor/R$id;->clip_thumbnail:I

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object p3

    .line 65
    .line 66
    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 67
    const/4 v0, 0x0

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setStrokeWidth(F)V

    .line 71
    .line 72
    :cond_3
    iget-object p2, p2, Lcom/narvii/mediaeditor/databinding/ItemClipFastSwitchingPanelBinding;->clipThumbnail:Lcom/narvii/widget/NVImageView;

    .line 73
    .line 74
    const/high16 p3, 0x40800000    # 4.0f

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, p3}, Lcom/narvii/widget/NVImageView;->setStrokeWidth(F)V

    .line 78
    .line 79
    iget p2, p0, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 80
    .line 81
    .line 82
    invoke-static {p1, p2}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->access$setSelectedClipIndex$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;I)V

    .line 83
    .line 84
    .line 85
    invoke-static {p1, p0}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->access$updateOptionPanel(Lcom/narvii/video/widget/ClipFastSwitchingPanel;Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 86
    return-void
.end method


# virtual methods
.method public final setData(Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 11
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "clip"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;->binding:Lcom/narvii/mediaeditor/databinding/ItemClipFastSwitchingPanelBinding;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->access$getPanelItemSize$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)I

    .line 13
    move-result v8

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->access$getFrameRetrieverManager$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)Lcom/narvii/video/services/FrameRetrieverManager;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    iget v3, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 22
    .line 23
    iget v4, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 24
    .line 25
    div-int/lit8 v4, v4, 0x3

    .line 26
    add-int/2addr v3, v4

    .line 27
    int-to-double v3, v3

    .line 28
    .line 29
    iget-wide v5, p1, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    .line 30
    div-double/2addr v3, v5

    .line 31
    double-to-int v4, v3

    .line 32
    const/4 v5, 0x0

    .line 33
    .line 34
    new-instance v6, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder$setData$1$1;

    .line 35
    .line 36
    .line 37
    invoke-direct {v6, v0}, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder$setData$1$1;-><init>(Lcom/narvii/mediaeditor/databinding/ItemClipFastSwitchingPanelBinding;)V

    .line 38
    const/4 v9, 0x4

    .line 39
    const/4 v10, 0x0

    .line 40
    move-object v3, p1

    .line 41
    move v7, v8

    .line 42
    .line 43
    .line 44
    invoke-static/range {v2 .. v10}, Lcom/narvii/video/services/FrameRetrieverManager;->retrieveFrame$default(Lcom/narvii/video/services/FrameRetrieverManager;Lcom/narvii/video/interfaces/IAVClipInfoPack;IZLcom/narvii/video/interfaces/IVideoServiceCallback;IIILjava/lang/Object;)V

    .line 45
    .line 46
    :cond_0
    iget-object v2, v0, Lcom/narvii/mediaeditor/databinding/ItemClipFastSwitchingPanelBinding;->clipDuration:Landroid/widget/TextView;

    .line 47
    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMsWithSpeed()I

    .line 55
    move-result v4

    .line 56
    .line 57
    div-int/lit16 v4, v4, 0x3e8

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const/16 v4, 0x73

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v3

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    iget-object v2, v0, Lcom/narvii/mediaeditor/databinding/ItemClipFastSwitchingPanelBinding;->clipThumbnail:Lcom/narvii/widget/NVImageView;

    .line 75
    .line 76
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 77
    .line 78
    const-string v4, "#666666"

    .line 79
    .line 80
    .line 81
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 82
    move-result v4

    .line 83
    .line 84
    .line 85
    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 86
    .line 87
    iput-object v3, v2, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 88
    .line 89
    iget-object v2, v0, Lcom/narvii/mediaeditor/databinding/ItemClipFastSwitchingPanelBinding;->clipThumbnail:Lcom/narvii/widget/NVImageView;

    .line 90
    const/4 v3, -0x1

    .line 91
    .line 92
    iput v3, v2, Lcom/narvii/widget/NVImageView;->strokeColor:I

    .line 93
    .line 94
    iget v3, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 95
    .line 96
    .line 97
    invoke-static {v1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->access$getSelectedClipIndex$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)I

    .line 98
    move-result v4

    .line 99
    .line 100
    if-ne v3, v4, :cond_1

    .line 101
    .line 102
    const/high16 v3, 0x40800000    # 4.0f

    .line 103
    goto :goto_0

    .line 104
    :cond_1
    const/4 v3, 0x0

    .line 105
    .line 106
    .line 107
    :goto_0
    invoke-virtual {v2, v3}, Lcom/narvii/widget/NVImageView;->setStrokeWidth(F)V

    .line 108
    .line 109
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 110
    .line 111
    new-instance v3, Lcom/narvii/video/widget/f;

    .line 112
    .line 113
    .line 114
    invoke-direct {v3, p1, v1, v0}, Lcom/narvii/video/widget/f;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/widget/ClipFastSwitchingPanel;Lcom/narvii/mediaeditor/databinding/ItemClipFastSwitchingPanelBinding;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-void
.end method
