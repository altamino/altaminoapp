.class final Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/widget/MediaTimeLineComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TimeLineItemHolder"
.end annotation


# instance fields
.field private final binding:Lcom/narvii/mediaeditor/databinding/ItemMediaRetrieverBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final frameMaskView:Lcom/narvii/video/widget/FrameItemMaskView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final frameView:Lcom/narvii/widget/NVImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final showItemBorder:Z

.field private final showRoundCorner:Z

.field private tag:I

.field final synthetic this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method public constructor <init>(Lcom/narvii/video/widget/MediaTimeLineComponent;Lcom/narvii/mediaeditor/databinding/ItemMediaRetrieverBinding;ZZ)V
    .locals 10
    .param p1    # Lcom/narvii/video/widget/MediaTimeLineComponent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/mediaeditor/databinding/ItemMediaRetrieverBinding;",
            "ZZ)V"
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
    iput-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/narvii/mediaeditor/databinding/ItemMediaRetrieverBinding;->getRoot()Landroid/widget/FrameLayout;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 15
    .line 16
    iput-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->binding:Lcom/narvii/mediaeditor/databinding/ItemMediaRetrieverBinding;

    .line 17
    .line 18
    iput-boolean p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->showItemBorder:Z

    .line 19
    .line 20
    iput-boolean p4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->showRoundCorner:Z

    .line 21
    .line 22
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 23
    .line 24
    sget v0, Lcom/narvii/mediaeditor/R$id;->frame_pic:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    const-string v0, "findViewById(...)"

    .line 31
    .line 32
    .line 33
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    check-cast p2, Lcom/narvii/widget/NVImageView;

    .line 36
    .line 37
    iput-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->frameView:Lcom/narvii/widget/NVImageView;

    .line 38
    .line 39
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 40
    .line 41
    sget v2, Lcom/narvii/mediaeditor/R$id;->frame_mask:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    move-object v2, v1

    .line 50
    .line 51
    check-cast v2, Lcom/narvii/video/widget/FrameItemMaskView;

    .line 52
    .line 53
    iput-object v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->frameMaskView:Lcom/narvii/video/widget/FrameItemMaskView;

    .line 54
    const/4 v0, -0x1

    .line 55
    .line 56
    iput v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->tag:I

    .line 57
    const/4 v0, 0x0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getBorderColor$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 64
    move-result p2

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getFrameItemCornerRadius$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 68
    move-result p1

    .line 69
    int-to-float p1, p1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, p2, p1}, Lcom/narvii/video/widget/FrameItemMaskView;->setBorderStyle(IF)V

    .line 73
    const/4 v5, 0x0

    .line 74
    const/4 v6, 0x0

    .line 75
    const/4 v7, 0x0

    .line 76
    .line 77
    const/16 v8, 0x1c

    .line 78
    const/4 v9, 0x0

    .line 79
    move v3, p4

    .line 80
    move v4, p3

    .line 81
    .line 82
    .line 83
    invoke-static/range {v2 .. v9}, Lcom/narvii/video/widget/FrameItemMaskView;->updateBorder$default(Lcom/narvii/video/widget/FrameItemMaskView;ZZZZFILjava/lang/Object;)V

    .line 84
    return-void
.end method

.method public static final synthetic access$getFrameMaskView$p(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;)Lcom/narvii/video/widget/FrameItemMaskView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->frameMaskView:Lcom/narvii/video/widget/FrameItemMaskView;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getFrameView$p(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;)Lcom/narvii/widget/NVImageView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->frameView:Lcom/narvii/widget/NVImageView;

    .line 3
    return-object p0
.end method


# virtual methods
.method public final getShowItemBorder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->showItemBorder:Z

    return v0
.end method

.method public final getShowRoundCorner()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->showRoundCorner:Z

    return v0
.end method

.method public final getTag()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->tag:I

    return v0
.end method

.method public final retrieveFrame(Lcom/narvii/video/interfaces/IAVClipInfoPack;IIIZZF)V
    .locals 17
    .param p1    # Lcom/narvii/video/interfaces/IAVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v6, p0

    .line 3
    .line 4
    const-string v0, "inputClip"

    .line 5
    .line 6
    move-object/from16 v8, p1

    .line 7
    .line 8
    .line 9
    invoke-static {v8, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-interface/range {p1 .. p1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v1, Ljava/io/File;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    .line 24
    :goto_0
    if-eqz v1, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    return-void

    .line 32
    .line 33
    :cond_1
    iget-boolean v0, v6, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->showItemBorder:Z

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-interface/range {p1 .. p1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->indexInScene()I

    .line 39
    move-result v0

    .line 40
    .line 41
    iget-object v1, v6, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getActiveClipIndex$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 45
    move-result v1

    .line 46
    .line 47
    if-ne v0, v1, :cond_2

    .line 48
    const/4 v0, 0x1

    .line 49
    :goto_1
    move v2, v0

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/4 v0, 0x0

    .line 52
    goto :goto_1

    .line 53
    .line 54
    :goto_2
    iget-object v9, v6, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->frameMaskView:Lcom/narvii/video/widget/FrameItemMaskView;

    .line 55
    .line 56
    iget-boolean v10, v6, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->showRoundCorner:Z

    .line 57
    const/4 v14, 0x0

    .line 58
    .line 59
    const/16 v15, 0x10

    .line 60
    .line 61
    const/16 v16, 0x0

    .line 62
    move v11, v2

    .line 63
    .line 64
    move/from16 v12, p5

    .line 65
    .line 66
    move/from16 v13, p6

    .line 67
    .line 68
    .line 69
    invoke-static/range {v9 .. v16}, Lcom/narvii/video/widget/FrameItemMaskView;->updateBorder$default(Lcom/narvii/video/widget/FrameItemMaskView;ZZZZFILjava/lang/Object;)V

    .line 70
    .line 71
    move/from16 v9, p2

    .line 72
    .line 73
    iput v9, v6, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->tag:I

    .line 74
    .line 75
    move/from16 v0, p3

    .line 76
    .line 77
    iput v0, v6, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->viewWidth:I

    .line 78
    .line 79
    move/from16 v0, p4

    .line 80
    .line 81
    iput v0, v6, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->viewHeight:I

    .line 82
    .line 83
    iget-object v0, v6, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getCurRecyclerViewState()I

    .line 87
    move-result v0

    .line 88
    .line 89
    if-ltz v0, :cond_3

    .line 90
    .line 91
    iget-object v0, v6, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getFrameRetrieverManager$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/video/services/FrameRetrieverManager;

    .line 95
    move-result-object v7

    .line 96
    .line 97
    if-eqz v7, :cond_3

    .line 98
    const/4 v10, 0x0

    .line 99
    .line 100
    new-instance v11, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder$retrieveFrame$1;

    .line 101
    move-object v0, v11

    .line 102
    .line 103
    move-object/from16 v1, p0

    .line 104
    .line 105
    move/from16 v3, p5

    .line 106
    .line 107
    move/from16 v4, p6

    .line 108
    .line 109
    move/from16 v5, p7

    .line 110
    .line 111
    .line 112
    invoke-direct/range {v0 .. v5}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder$retrieveFrame$1;-><init>(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;ZZZF)V

    .line 113
    .line 114
    iget v12, v6, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->viewWidth:I

    .line 115
    .line 116
    iget v13, v6, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->viewHeight:I

    .line 117
    const/4 v14, 0x4

    .line 118
    const/4 v15, 0x0

    .line 119
    .line 120
    move-object/from16 v8, p1

    .line 121
    .line 122
    move/from16 v9, p2

    .line 123
    .line 124
    .line 125
    invoke-static/range {v7 .. v15}, Lcom/narvii/video/services/FrameRetrieverManager;->retrieveFrame$default(Lcom/narvii/video/services/FrameRetrieverManager;Lcom/narvii/video/interfaces/IAVClipInfoPack;IZLcom/narvii/video/interfaces/IVideoServiceCallback;IIILjava/lang/Object;)V

    .line 126
    :cond_3
    return-void
.end method

.method public final setBlankFrame()V
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->frameView:Lcom/narvii/widget/NVImageView;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    .line 8
    iget-object v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->frameMaskView:Lcom/narvii/video/widget/FrameItemMaskView;

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x0

    .line 14
    .line 15
    const/16 v8, 0x1c

    .line 16
    const/4 v9, 0x0

    .line 17
    .line 18
    .line 19
    invoke-static/range {v2 .. v9}, Lcom/narvii/video/widget/FrameItemMaskView;->updateBorder$default(Lcom/narvii/video/widget/FrameItemMaskView;ZZZZFILjava/lang/Object;)V

    .line 20
    return-void
.end method

.method public final setDrawableFrame(Landroid/graphics/drawable/Drawable;ZZF)V
    .locals 7
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "drawable"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->frameView:Lcom/narvii/widget/NVImageView;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->frameMaskView:Lcom/narvii/video/widget/FrameItemMaskView;

    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->showRoundCorner:Z

    .line 15
    .line 16
    iget-boolean v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->showItemBorder:Z

    .line 17
    move v4, p2

    .line 18
    move v5, p3

    .line 19
    move v6, p4

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/video/widget/FrameItemMaskView;->updateBorder(ZZZZF)V

    .line 23
    return-void
.end method

.method public final setOnItemClickedListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    return-void
.end method

.method public final setTag(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->tag:I

    return-void
.end method
