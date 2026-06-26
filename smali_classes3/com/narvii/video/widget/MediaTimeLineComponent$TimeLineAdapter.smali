.class final Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MediaTimeLineComponent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/widget/MediaTimeLineComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TimeLineAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaTimeLineComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaTimeLineComponent.kt\ncom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter\n*L\n1#1,1175:1\n*E\n"
.end annotation


# instance fields
.field private final VIEW_TYPE_FAKE_TAIL_PREFIX:I

.field private final VIEW_TYPE_NORMAL:I

.field private final VIEW_TYPE_PRE_OFFSET:I

.field private final VIEW_TYPE_TAIL_PREFIX:I

.field private final itemHeight:I

.field private final showAdditionalBorderAtTail:Z

.field private final showItemBorder:Z

.field private final showRoundCorner:Z

.field final synthetic this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;


# direct methods
.method public constructor <init>(Lcom/narvii/video/widget/MediaTimeLineComponent;ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)V"
        }
    .end annotation

    .line 987
    iput-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-boolean p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->showItemBorder:Z

    iput-boolean p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->showRoundCorner:Z

    iput-boolean p4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->showAdditionalBorderAtTail:Z

    const/4 p2, 0x1

    .line 988
    iput p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->VIEW_TYPE_NORMAL:I

    const/4 p2, 0x2

    .line 989
    iput p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->VIEW_TYPE_PRE_OFFSET:I

    const/16 p2, 0x64

    .line 990
    iput p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->VIEW_TYPE_TAIL_PREFIX:I

    const/16 p2, 0xc8

    .line 991
    iput p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->VIEW_TYPE_FAKE_TAIL_PREFIX:I

    .line 992
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$dimen;->scene_editor_time_line_item_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->itemHeight:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/narvii/video/widget/MediaTimeLineComponent;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    const/4 p4, 0x1

    .line 987
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;-><init>(Lcom/narvii/video/widget/MediaTimeLineComponent;ZZZ)V

    return-void
.end method

.method private final getFrameTimeByPosition(I)Lkotlin/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/Pair<",
            "Lcom/narvii/video/interfaces/ITimelineClip;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1137
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getFrameOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v0

    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getAdditionalFramePreOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    if-lt p1, v0, :cond_6

    invoke-virtual {p0}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->getItemCount()I

    move-result v0

    iget-object v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getFrameOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getAdditionalFramePostOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v2

    sub-int/2addr v0, v2

    if-lt p1, v0, :cond_0

    goto/16 :goto_4

    .line 1143
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCompositionLengthMsList$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_5

    .line 1144
    iget-object v5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v5}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getRoundCompositionVisibleFrameCountList$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "roundCompositionVisibleFrameCountList[index]"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    .line 1145
    iget-object v5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v5}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getFrameOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v5

    sub-int v5, p1, v5

    iget-object v7, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v7}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getAdditionalFramePreOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v7

    sub-int/2addr v5, v7

    if-ge v5, v4, :cond_4

    .line 1146
    iget-object v5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v5}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getFrameOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v5

    sub-int v5, p1, v5

    iget-object v7, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v7}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getAdditionalFramePreOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v7

    sub-int/2addr v5, v7

    sub-int/2addr v5, v4

    iget-object v7, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v7}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getRoundCompositionVisibleFrameCountList$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v6, v5, -0x1

    int-to-float v6, v6

    .line 1147
    iget-object v7, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v7}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getTimeLineItemFrameLengthInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)F

    move-result v7

    mul-float v6, v6, v7

    .line 1148
    iget-object v7, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v7}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getRoundCompositionVisibleFrameCountList$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v5, v7, :cond_1

    iget-object v5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v5}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCompositionTailFrameLengthInMsList$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v5}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getTimeLineItemFrameLengthInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    :goto_1
    const-string v7, "if (inCompositionPositio\u2026meLineItemFrameLengthInMs"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v6, v5

    .line 1150
    iget-object v5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v5}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getMediaClipList$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/narvii/video/interfaces/ITimelineClip;

    .line 1151
    invoke-interface {v8}, Lcom/narvii/video/interfaces/ITimelineClip;->clipLengthComposition()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move v10, v7

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v9, :cond_3

    if-ne v10, v3, :cond_2

    .line 1153
    new-instance p1, Lkotlin/Pair;

    float-to-int v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v8, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_2
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    move v7, v10

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1160
    :cond_5
    new-instance v0, Lkotlin/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 1138
    :cond_6
    :goto_4
    new-instance v0, Lkotlin/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 1022
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getTotalVisibleFrameCountForAdapter$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v0

    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getFrameOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getAdditionalFramePreOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getAdditionalFramePostOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 9

    .line 1080
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getAdditionalFramePreOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    if-le v0, p1, :cond_1

    .line 1081
    iget p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->VIEW_TYPE_PRE_OFFSET:I

    return p1

    .line 1083
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->getFrameTimeByPosition(I)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/interfaces/ITimelineClip;

    if-eqz v0, :cond_8

    .line 1085
    invoke-interface {v0}, Lcom/narvii/video/interfaces/ITimelineClip;->clipLengthComposition()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 1086
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getRoundCompositionVisibleFrameCountList$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0}, Lcom/narvii/video/interfaces/ITimelineClip;->indexInScene()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    const-string v2, "roundCompositionVisibleF\u20260, it.indexInScene() + 1)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->sumOfInt(Ljava/lang/Iterable;)I

    move-result v1

    .line 1087
    iget-object v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getFrameOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getAdditionalFramePreOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v3

    if-ne p1, v1, :cond_2

    iget p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->VIEW_TYPE_TAIL_PREFIX:I

    invoke-interface {v0}, Lcom/narvii/video/interfaces/ITimelineClip;->indexInScene()I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->VIEW_TYPE_NORMAL:I

    :goto_1
    return p1

    .line 1090
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1091
    invoke-interface {v0}, Lcom/narvii/video/interfaces/ITimelineClip;->clipLengthComposition()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    int-to-float v5, v5

    .line 1092
    iget-object v6, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v6}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getTimeLineItemFrameLengthInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)F

    move-result v6

    div-float/2addr v5, v6

    const v6, 0x3f7d70a4    # 0.99f

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1094
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    if-ge v5, v4, :cond_8

    .line 1095
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "roundCompositionFrameCountList[index]"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    add-int/2addr v6, v7

    .line 1096
    iget-object v7, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v7}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getFrameOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v7

    sub-int v7, p1, v7

    iget-object v8, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v8}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getAdditionalFramePreOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v8

    sub-int/2addr v7, v8

    if-ge v7, v6, :cond_7

    add-int/lit8 v4, v5, 0x1

    .line 1097
    invoke-virtual {v1, v2, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    const-string v4, "roundCompositionFrameCou\u2026ist.subList(0, index + 1)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->sumOfInt(Ljava/lang/Iterable;)I

    move-result v2

    .line 1098
    iget-object v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v4}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getFrameOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v4}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getAdditionalFramePreOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v2, v3

    if-ne p1, v2, :cond_6

    .line 1099
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v3

    if-ne v5, p1, :cond_5

    iget p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->VIEW_TYPE_TAIL_PREFIX:I

    invoke-interface {v0}, Lcom/narvii/video/interfaces/ITimelineClip;->indexInScene()I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_4

    :cond_5
    iget p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->VIEW_TYPE_FAKE_TAIL_PREFIX:I

    add-int/2addr p1, v5

    goto :goto_4

    .line 1101
    :cond_6
    iget p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->VIEW_TYPE_NORMAL:I

    :goto_4
    return p1

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1107
    :cond_8
    iget p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->VIEW_TYPE_NORMAL:I

    return p1
.end method

.method public final getShowAdditionalBorderAtTail()Z
    .locals 1

    .line 987
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->showAdditionalBorderAtTail:Z

    return v0
.end method

.method public final getShowItemBorder()Z
    .locals 1

    .line 987
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->showItemBorder:Z

    return v0
.end method

.method public final getShowRoundCorner()Z
    .locals 1

    .line 987
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->showRoundCorner:Z

    return v0
.end method

.method public final getTailFrameItemInfo(I)Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1127
    new-instance v0, Lkotlin/Pair;

    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getRoundCompositionVisibleFrameCountList$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    const-string v1, "roundCompositionVisibleF\u2026(0, compositionIndex + 1)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->sumOfInt(Ljava/lang/Iterable;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1128
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getFrameCellWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1127
    invoke-direct {v0, p1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 987
    check-cast p1, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->onBindViewHolder(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;I)V
    .locals 12

    const-string v2, "holder"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1026
    iget-object v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getFrameOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v2

    iget-object v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getAdditionalFramePreOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v3

    add-int/2addr v2, v3

    if-lt p2, v2, :cond_c

    invoke-virtual {p0}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->getItemCount()I

    move-result v2

    iget-object v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getFrameOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getAdditionalFramePostOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lt p2, v2, :cond_0

    goto/16 :goto_9

    .line 1032
    :cond_0
    invoke-direct {p0, p2}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->getFrameTimeByPosition(I)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/video/interfaces/ITimelineClip;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 1033
    new-instance v4, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter$onBindViewHolder$1;

    invoke-direct {v4, p0, v3}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter$onBindViewHolder$1;-><init>(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;Lcom/narvii/video/interfaces/ITimelineClip;)V

    invoke-virtual {p1, v4}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->setOnItemClickedListener(Landroid/view/View$OnClickListener;)V

    .line 1038
    invoke-virtual {p0, p2}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->getItemViewType(I)I

    move-result v4

    .line 1039
    iget-object v5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v5}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getFrameOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v5

    iget-object v6, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v6}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getAdditionalFramePreOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, 0x0

    const/16 v7, 0x64

    const/4 v8, 0x1

    if-eq p2, v5, :cond_2

    add-int/lit8 v5, p2, -0x1

    invoke-virtual {p0, v5}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->getItemViewType(I)I

    move-result v5

    div-int/2addr v5, v7

    mul-int/lit8 v5, v5, 0x64

    iget v9, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->VIEW_TYPE_TAIL_PREFIX:I

    if-ne v5, v9, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, 0x1

    .line 1040
    :goto_1
    div-int/lit8 v9, v4, 0x64

    mul-int/lit8 v9, v9, 0x64

    iget v10, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->VIEW_TYPE_TAIL_PREFIX:I

    if-ne v9, v10, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_4

    .line 1041
    iget v10, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->VIEW_TYPE_TAIL_PREFIX:I

    rem-int/2addr v4, v10

    iget-object v10, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v10}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getMediaClipList$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v8

    if-ne v4, v10, :cond_4

    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    const/high16 v10, -0x3b860000    # -1000.0f

    if-eqz v4, :cond_5

    .line 1045
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getRealTailFrameWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v1, v1, v4

    :goto_4
    move v10, v1

    goto :goto_5

    :cond_5
    add-int/lit8 v1, p2, 0x1

    .line 1046
    invoke-virtual {p0}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->getItemCount()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 1047
    invoke-virtual {p0, v1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->getItemViewType(I)I

    move-result v4

    div-int/2addr v4, v7

    mul-int/lit8 v4, v4, 0x64

    iget v11, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->VIEW_TYPE_TAIL_PREFIX:I

    if-ne v4, v11, :cond_6

    .line 1048
    invoke-virtual {p0, v1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->getItemViewType(I)I

    move-result v1

    iget v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->VIEW_TYPE_TAIL_PREFIX:I

    rem-int/2addr v1, v4

    iget-object v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v4}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getMediaClipList$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v8

    if-ne v1, v4, :cond_6

    .line 1049
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getFrameCellWidth()I

    move-result v1

    iget-object v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getRealTailFrameWidth()I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v1, v1

    goto :goto_4

    .line 1053
    :cond_6
    :goto_5
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getFrameRetrieverManager$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getDataType$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v1

    if-eq v1, v7, :cond_7

    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getDataType$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v1

    const/16 v4, 0x68

    if-eq v1, v4, :cond_7

    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$isForAudioWave$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_6

    .line 1073
    :cond_7
    instance-of v1, v3, Lcom/narvii/video/interfaces/IAVClipInfoPack;

    if-eqz v1, :cond_b

    .line 1074
    move-object v1, v3

    check-cast v1, Lcom/narvii/video/interfaces/IAVClipInfoPack;

    invoke-interface {v1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->hasInvisibleFrames()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->trimStartInMsWithSpeed()I

    move-result v6

    :cond_8
    add-int/2addr v2, v6

    .line 1075
    iget-object v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-virtual {v3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getFrameCellWidth()I

    move-result v3

    iget v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->itemHeight:I

    move-object v0, p1

    move v6, v9

    move v7, v10

    invoke-virtual/range {v0 .. v7}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->retrieveFrame(Lcom/narvii/video/interfaces/IAVClipInfoPack;IIIZZF)V

    goto :goto_8

    .line 1054
    :cond_9
    :goto_6
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getDataType$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1069
    sget v1, Lcom/narvii/mediaeditor/R$color;->media_timeline_audio_frame_color:I

    goto :goto_7

    .line 1066
    :pswitch_0
    sget v1, Lcom/narvii/mediaeditor/R$color;->media_timeline_sticker_frame_color:I

    goto :goto_7

    .line 1063
    :pswitch_1
    sget v1, Lcom/narvii/mediaeditor/R$color;->media_timeline_caption_frame_color:I

    goto :goto_7

    .line 1056
    :pswitch_2
    instance-of v1, v3, Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz v1, :cond_a

    check-cast v3, Lcom/narvii/video/model/AVClipInfoPack;

    iget-boolean v1, v3, Lcom/narvii/video/model/AVClipInfoPack;->isSfx:Z

    if-eqz v1, :cond_a

    .line 1057
    sget v1, Lcom/narvii/mediaeditor/R$color;->media_timeline_sfx_frame_color:I

    goto :goto_7

    .line 1059
    :cond_a
    sget v1, Lcom/narvii/mediaeditor/R$color;->media_timeline_audio_frame_color:I

    .line 1072
    :goto_7
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget-object v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v2, v5, v9, v10}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->setDrawableFrame(Landroid/graphics/drawable/Drawable;ZZF)V

    :cond_b
    :goto_8
    return-void

    :cond_c
    :goto_9
    const/4 v1, -0x1

    .line 1027
    invoke-virtual {p1, v1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->setTag(I)V

    .line 1028
    invoke-virtual {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->setBlankFrame()V

    const/4 v1, 0x0

    .line 1029
    invoke-virtual {p1, v1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->setOnItemClickedListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 987
    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 995
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$layout;->item_media_retriever:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 996
    div-int/lit8 v0, p2, 0x64

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->VIEW_TYPE_TAIL_PREFIX:I

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 997
    iget v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->VIEW_TYPE_TAIL_PREFIX:I

    rem-int/2addr p2, v1

    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getMediaClipList$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-ne p2, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_2

    .line 1000
    iget-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-virtual {p2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getRealTailFrameWidth()I

    move-result p2

    goto :goto_1

    .line 1002
    :cond_2
    iget-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-virtual {p2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getFrameCellWidth()I

    move-result p2

    .line 1005
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1006
    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1007
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string p2, "view"

    if-eqz v0, :cond_3

    if-nez v2, :cond_3

    .line 1009
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->showAdditionalBorderAtTail:Z

    if-eqz v0, :cond_3

    .line 1010
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/narvii/mediaeditor/R$id;->frame_mask:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/FrameItemMaskView;

    .line 1011
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1012
    iget-object v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-virtual {v2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getFrameCellWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f333333    # 0.7f

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1013
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1016
    :cond_3
    new-instance v0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;

    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->showItemBorder:Z

    iget-boolean v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->showRoundCorner:Z

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;-><init>(Lcom/narvii/video/widget/MediaTimeLineComponent;Landroid/view/View;ZZ)V

    .line 1017
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final refreshVisibleArea()V
    .locals 5

    .line 1112
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getTimeLine$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/widget/HorizontalRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_4

    .line 1114
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 1115
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    :goto_1
    if-ge v1, v2, :cond_4

    .line 1117
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1118
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;

    if-eqz v4, :cond_3

    .line 1119
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    check-cast v3, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;

    .line 1120
    invoke-virtual {p0, v3, v1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->onBindViewHolder(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;I)V

    goto :goto_2

    .line 1119
    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.narvii.video.widget.MediaTimeLineComponent.TimeLineItemHolder"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method
