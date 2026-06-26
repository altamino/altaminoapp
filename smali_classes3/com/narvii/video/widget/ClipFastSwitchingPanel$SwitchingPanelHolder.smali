.class final Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ClipFastSwitchingPanel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/widget/ClipFastSwitchingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SwitchingPanelHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;


# direct methods
.method public constructor <init>(Lcom/narvii/video/widget/ClipFastSwitchingPanel;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iput-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final setData(Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 10

    const-string v0, "clip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    invoke-static {v0}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->access$getPanelItemSize$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)I

    move-result v7

    .line 129
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    invoke-static {v0}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->access$getFrameRetrieverManager$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    iget v2, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    div-int/lit8 v2, v2, 0x3

    add-int/2addr v0, v2

    int-to-double v2, v0

    iget-wide v4, p1, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    double-to-int v3, v2

    const/4 v4, 0x0

    new-instance v5, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder$setData$1;

    invoke-direct {v5, p0}, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder$setData$1;-><init>(Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v2, p1

    move v6, v7

    invoke-static/range {v1 .. v9}, Lcom/narvii/video/services/FrameRetrieverManager;->retrieveFrame$default(Lcom/narvii/video/services/FrameRetrieverManager;Lcom/narvii/video/interfaces/IAVClipInfoPack;IZLcom/narvii/video/interfaces/IVideoServiceCallback;IIILjava/lang/Object;)V

    .line 134
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/narvii/mediaeditor/R$id;->clip_duration:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "itemView.clip_duration"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMsWithSpeed()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/narvii/mediaeditor/R$id;->clip_thumbnail:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const-string v3, "#666666"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v2, v0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 136
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/narvii/mediaeditor/R$id;->clip_thumbnail:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    const/4 v2, -0x1

    iput v2, v0, Lcom/narvii/widget/NVImageView;->strokeColor:I

    .line 137
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/narvii/mediaeditor/R$id;->clip_thumbnail:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iget v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    iget-object v2, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    invoke-static {v2}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->access$getSelectedClipIndex$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)I

    move-result v2

    if-ne v1, v2, :cond_1

    const/high16 v1, 0x40800000    # 4.0f

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setStrokeWidth(F)V

    .line 138
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder$setData$2;

    invoke-direct {v1, p0, p1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder$setData$2;-><init>(Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;Lcom/narvii/video/model/AVClipInfoPack;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
