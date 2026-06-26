.class final Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MediaTimeLineComponent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/widget/MediaTimeLineComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TimeLineItemHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaTimeLineComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaTimeLineComponent.kt\ncom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder\n*L\n1#1,1175:1\n*E\n"
.end annotation


# instance fields
.field private final frameMaskView:Lcom/narvii/video/widget/FrameItemMaskView;

.field private final frameView:Lcom/narvii/widget/NVImageView;

.field private final showItemBorder:Z

.field private final showRoundCorner:Z

.field private tag:I

.field final synthetic this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method public constructor <init>(Lcom/narvii/video/widget/MediaTimeLineComponent;Landroid/view/View;ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "ZZ)V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 933
    iput-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-boolean p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->showItemBorder:Z

    iput-boolean p4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->showRoundCorner:Z

    .line 934
    sget p3, Lcom/narvii/mediaeditor/R$id;->frame_pic:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string p4, "itemView.findViewById(R.id.frame_pic)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/narvii/widget/NVImageView;

    iput-object p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->frameView:Lcom/narvii/widget/NVImageView;

    .line 935
    sget p3, Lcom/narvii/mediaeditor/R$id;->frame_mask:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "itemView.findViewById(R.id.frame_mask)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/video/widget/FrameItemMaskView;

    iput-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->frameMaskView:Lcom/narvii/video/widget/FrameItemMaskView;

    const/4 p2, -0x1

    .line 936
    iput p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->tag:I

    .line 941
    iget-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->frameView:Lcom/narvii/widget/NVImageView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 942
    iget-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->frameMaskView:Lcom/narvii/video/widget/FrameItemMaskView;

    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getBorderColor$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result p3

    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getFrameItemCornerRadius$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p3, p1}, Lcom/narvii/video/widget/FrameItemMaskView;->setBorderStyle(IF)V

    .line 943
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->frameMaskView:Lcom/narvii/video/widget/FrameItemMaskView;

    iget-boolean v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->showRoundCorner:Z

    iget-boolean v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->showItemBorder:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/narvii/video/widget/FrameItemMaskView;->updateBorder$default(Lcom/narvii/video/widget/FrameItemMaskView;ZZZZFILjava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getFrameMaskView$p(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;)Lcom/narvii/video/widget/FrameItemMaskView;
    .locals 0

    .line 933
    iget-object p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->frameMaskView:Lcom/narvii/video/widget/FrameItemMaskView;

    return-object p0
.end method

.method public static final synthetic access$getFrameView$p(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;)Lcom/narvii/widget/NVImageView;
    .locals 0

    .line 933
    iget-object p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->frameView:Lcom/narvii/widget/NVImageView;

    return-object p0
.end method


# virtual methods
.method public final getShowItemBorder()Z
    .locals 1

    .line 933
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->showItemBorder:Z

    return v0
.end method

.method public final getShowRoundCorner()Z
    .locals 1

    .line 933
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->showRoundCorner:Z

    return v0
.end method

.method public final getTag()I
    .locals 1

    .line 936
    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->tag:I

    return v0
.end method

.method public final retrieveFrame(Lcom/narvii/video/interfaces/IAVClipInfoPack;IIIZZF)V
    .locals 17

    move-object/from16 v6, p0

    const-string v0, "inputClip"

    move-object/from16 v8, p1

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 961
    invoke-interface/range {p1 .. p1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 962
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 964
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 967
    :cond_1
    iget-boolean v0, v6, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->showItemBorder:Z

    if-eqz v0, :cond_2

    invoke-interface/range {p1 .. p1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->indexInScene()I

    move-result v0

    iget-object v1, v6, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getActiveClipIndex$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 968
    :goto_1
    iget-object v9, v6, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->frameMaskView:Lcom/narvii/video/widget/FrameItemMaskView;

    iget-boolean v10, v6, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->showRoundCorner:Z

    const/4 v14, 0x0

    const/16 v15, 0x10

    const/16 v16, 0x0

    move v11, v2

    move/from16 v12, p5

    move/from16 v13, p6

    invoke-static/range {v9 .. v16}, Lcom/narvii/video/widget/FrameItemMaskView;->updateBorder$default(Lcom/narvii/video/widget/FrameItemMaskView;ZZZZFILjava/lang/Object;)V

    move/from16 v9, p2

    .line 969
    iput v9, v6, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->tag:I

    move/from16 v0, p3

    .line 970
    iput v0, v6, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->viewWidth:I

    move/from16 v0, p4

    .line 971
    iput v0, v6, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->viewHeight:I

    .line 972
    iget-object v0, v6, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getCurRecyclerViewState()I

    move-result v0

    if-ltz v0, :cond_3

    .line 973
    iget-object v0, v6, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getFrameRetrieverManager$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object v7

    if-eqz v7, :cond_3

    const/4 v10, 0x0

    new-instance v11, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder$retrieveFrame$1;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder$retrieveFrame$1;-><init>(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;ZZZF)V

    .line 981
    iget v12, v6, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->viewWidth:I

    iget v13, v6, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->viewHeight:I

    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object/from16 v8, p1

    move/from16 v9, p2

    .line 973
    invoke-static/range {v7 .. v15}, Lcom/narvii/video/services/FrameRetrieverManager;->retrieveFrame$default(Lcom/narvii/video/services/FrameRetrieverManager;Lcom/narvii/video/interfaces/IAVClipInfoPack;IZLcom/narvii/video/interfaces/IVideoServiceCallback;IIILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final setBlankFrame()V
    .locals 10

    .line 947
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->frameView:Lcom/narvii/widget/NVImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 948
    iget-object v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->frameMaskView:Lcom/narvii/video/widget/FrameItemMaskView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/narvii/video/widget/FrameItemMaskView;->updateBorder$default(Lcom/narvii/video/widget/FrameItemMaskView;ZZZZFILjava/lang/Object;)V

    return-void
.end method

.method public final setDrawableFrame(Landroid/graphics/drawable/Drawable;ZZF)V
    .locals 7

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 956
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->frameView:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 957
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->frameMaskView:Lcom/narvii/video/widget/FrameItemMaskView;

    iget-boolean v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->showRoundCorner:Z

    iget-boolean v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->showItemBorder:Z

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/narvii/video/widget/FrameItemMaskView;->updateBorder(ZZZZF)V

    return-void
.end method

.method public final setOnItemClickedListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 952
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setTag(I)V
    .locals 0

    .line 936
    iput p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->tag:I

    return-void
.end method
