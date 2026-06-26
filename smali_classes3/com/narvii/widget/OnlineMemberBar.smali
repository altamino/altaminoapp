.class public final Lcom/narvii/widget/OnlineMemberBar;
.super Landroid/widget/FrameLayout;
.source "OnlineMemberBar.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOnlineMemberBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnlineMemberBar.kt\ncom/narvii/widget/OnlineMemberBar\n*L\n1#1,109:1\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private avatarSize:I

.field private final maxAvatarSize:I

.field private memberCount:I

.field private final overlapRatio:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/OnlineMemberBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/OnlineMemberBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x2

    .line 19
    iput p2, p0, Lcom/narvii/widget/OnlineMemberBar;->maxAvatarSize:I

    const-wide/high16 p2, 0x3fe0000000000000L    # 0.5

    .line 20
    iput-wide p2, p0, Lcom/narvii/widget/OnlineMemberBar;->overlapRatio:D

    const/high16 p2, 0x41c00000    # 24.0f

    .line 25
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/OnlineMemberBar;->avatarSize:I

    const p2, 0x7f0b0565

    .line 26
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p1, 0x0

    .line 27
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 28
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 29
    sget p1, Lcom/narvii/amino/R$id;->bar:I

    invoke-virtual {p0, p1}, Lcom/narvii/widget/OnlineMemberBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x9

    goto :goto_0

    :cond_0
    const/4 p2, 0x6

    :goto_0
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setCornerMask(I)V

    return-void
.end method

.method private final getAvatarView(Lcom/narvii/model/User;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 90
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0564

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090c10

    .line 91
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    const-string v1, "avatar"

    .line 92
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 93
    iget v2, p0, Lcom/narvii/widget/OnlineMemberBar;->avatarSize:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 94
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    invoke-virtual {v0, p1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    const-string p1, "avatarLayout"

    .line 97
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/OnlineMemberBar;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/widget/OnlineMemberBar;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/OnlineMemberBar;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/OnlineMemberBar;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/widget/OnlineMemberBar;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getAvatarSize()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/narvii/widget/OnlineMemberBar;->avatarSize:I

    return v0
.end method

.method public final getFormatedMemberCount()Ljava/lang/String;
    .locals 3

    .line 101
    iget v0, p0, Lcom/narvii/widget/OnlineMemberBar;->memberCount:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/widget/OnlineMemberBar;->memberCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v2, 0xf4240

    if-ge v0, v2, :cond_1

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/narvii/widget/OnlineMemberBar;->memberCount:I

    div-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "0K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/narvii/widget/OnlineMemberBar;->memberCount:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getMaxAvatarSize()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/narvii/widget/OnlineMemberBar;->maxAvatarSize:I

    return v0
.end method

.method public final getMemberCount()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/narvii/widget/OnlineMemberBar;->memberCount:I

    return v0
.end method

.method public final getOverlapRatio()D
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/narvii/widget/OnlineMemberBar;->overlapRatio:D

    return-wide v0
.end method

.method protected onLayout(ZIIII)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p5

    .line 61
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 62
    sget v2, Lcom/narvii/amino/R$id;->onlineTextLayout:I

    invoke-virtual {v0, v2}, Lcom/narvii/widget/OnlineMemberBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    const-string v3, "onlineTextLayout"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    .line 63
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v3

    const/high16 v4, 0x40400000    # 3.0f

    const v5, 0x7f070211

    const-string v6, "context"

    const-string v7, "mainLayout"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v3, :cond_0

    .line 65
    sget v3, Lcom/narvii/amino/R$id;->onlineTextLayout:I

    invoke-virtual {v0, v3}, Lcom/narvii/widget/OnlineMemberBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    add-int/2addr v2, v8

    invoke-virtual {v3, v8, v8, v2, v1}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v2, v3

    .line 67
    sget v3, Lcom/narvii/amino/R$id;->mainLayout:I

    invoke-virtual {v0, v3}, Lcom/narvii/widget/OnlineMemberBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    if-le v3, v9, :cond_1

    .line 68
    sget v3, Lcom/narvii/amino/R$id;->mainLayout:I

    invoke-virtual {v0, v3}, Lcom/narvii/widget/OnlineMemberBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    :goto_0
    if-ge v4, v3, :cond_1

    .line 69
    sget v5, Lcom/narvii/amino/R$id;->mainLayout:I

    invoke-virtual {v0, v5}, Lcom/narvii/widget/OnlineMemberBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    int-to-double v6, v2

    add-int/lit8 v10, v4, -0x1

    .line 70
    iget v11, v0, Lcom/narvii/widget/OnlineMemberBar;->avatarSize:I

    mul-int v10, v10, v11

    int-to-double v12, v10

    int-to-double v14, v9

    iget-wide v9, v0, Lcom/narvii/widget/OnlineMemberBar;->overlapRatio:D

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v14, v9

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v14

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v12

    double-to-int v6, v6

    add-int/2addr v11, v6

    .line 71
    invoke-virtual {v5, v6, v8, v11, v1}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v4, v4, 0x1

    const/4 v9, 0x1

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v9

    sub-int/2addr v3, v9

    sub-int/2addr v3, v2

    .line 76
    sget v9, Lcom/narvii/amino/R$id;->onlineTextLayout:I

    invoke-virtual {v0, v9}, Lcom/narvii/widget/OnlineMemberBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    add-int/2addr v2, v3

    invoke-virtual {v9, v3, v8, v2, v1}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 77
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v3, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v3, v2

    .line 78
    sget v2, Lcom/narvii/amino/R$id;->mainLayout:I

    invoke-virtual {v0, v2}, Lcom/narvii/widget/OnlineMemberBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    .line 79
    sget v2, Lcom/narvii/amino/R$id;->mainLayout:I

    invoke-virtual {v0, v2}, Lcom/narvii/widget/OnlineMemberBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    const/4 v4, 0x1

    :goto_1
    if-ge v4, v2, :cond_1

    .line 80
    sget v5, Lcom/narvii/amino/R$id;->mainLayout:I

    invoke-virtual {v0, v5}, Lcom/narvii/widget/OnlineMemberBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    int-to-double v6, v3

    add-int/lit8 v9, v4, -0x1

    .line 81
    iget v10, v0, Lcom/narvii/widget/OnlineMemberBar;->avatarSize:I

    mul-int v9, v9, v10

    int-to-double v11, v9

    const/4 v9, 0x1

    int-to-double v13, v9

    iget-wide v8, v0, Lcom/narvii/widget/OnlineMemberBar;->overlapRatio:D

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v13, v8

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v13

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v6, v11

    double-to-int v6, v6

    sub-int v7, v6, v10

    const/4 v8, 0x0

    .line 82
    invoke-virtual {v5, v7, v8, v6, v1}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final setAvatarSize(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/narvii/widget/OnlineMemberBar;->avatarSize:I

    return-void
.end method

.method public final setMemberCount(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/narvii/widget/OnlineMemberBar;->memberCount:I

    return-void
.end method

.method public final setUserList(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/User;",
            ">;I)V"
        }
    .end annotation

    .line 33
    iput p2, p0, Lcom/narvii/widget/OnlineMemberBar;->memberCount:I

    .line 34
    sget v0, Lcom/narvii/amino/R$id;->onlineMemberCount:I

    invoke-virtual {p0, v0}, Lcom/narvii/widget/OnlineMemberBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "onlineMemberCount"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/narvii/widget/OnlineMemberBar;->getFormatedMemberCount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    if-eqz p1, :cond_1

    .line 35
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p2, 0x1

    :goto_3
    if-eqz p2, :cond_4

    const/4 p2, 0x4

    goto :goto_4

    :cond_4
    const/4 p2, 0x0

    .line 36
    :goto_4
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz p1, :cond_6

    .line 38
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_5

    :cond_5
    const/4 p2, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    const/4 p2, 0x1

    :goto_6
    const-string v2, "mainLayout"

    if-eqz p2, :cond_7

    .line 39
    :goto_7
    sget p1, Lcom/narvii/amino/R$id;->mainLayout:I

    invoke-virtual {p0, p1}, Lcom/narvii/widget/OnlineMemberBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    if-le p1, v1, :cond_b

    .line 40
    sget p1, Lcom/narvii/amino/R$id;->mainLayout:I

    invoke-virtual {p0, p1}, Lcom/narvii/widget/OnlineMemberBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    sget p2, Lcom/narvii/amino/R$id;->mainLayout:I

    invoke-virtual {p0, p2}, Lcom/narvii/widget/OnlineMemberBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    goto :goto_7

    .line 43
    :cond_7
    iget p2, p0, Lcom/narvii/widget/OnlineMemberBar;->maxAvatarSize:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 44
    :goto_8
    sget v3, Lcom/narvii/amino/R$id;->mainLayout:I

    invoke-virtual {p0, v3}, Lcom/narvii/widget/OnlineMemberBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    if-le v3, p2, :cond_8

    .line 45
    sget v3, Lcom/narvii/amino/R$id;->mainLayout:I

    invoke-virtual {p0, v3}, Lcom/narvii/widget/OnlineMemberBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    sget v4, Lcom/narvii/amino/R$id;->mainLayout:I

    invoke-virtual {p0, v4}, Lcom/narvii/widget/OnlineMemberBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    goto :goto_8

    :cond_8
    :goto_9
    if-ge v0, p2, :cond_b

    .line 48
    sget v1, Lcom/narvii/amino/R$id;->mainLayout:I

    invoke-virtual {p0, v1}, Lcom/narvii/widget/OnlineMemberBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_9

    .line 50
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    sget v1, Lcom/narvii/amino/R$id;->mainLayout:I

    invoke-virtual {p0, v1}, Lcom/narvii/widget/OnlineMemberBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/narvii/widget/OnlineMemberBar;->getAvatarView(Lcom/narvii/model/User;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 51
    sget v1, Lcom/narvii/amino/R$id;->mainLayout:I

    invoke-virtual {p0, v1}, Lcom/narvii/widget/OnlineMemberBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_a

    :cond_9
    const v4, 0x7f090c10

    .line 53
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/UserAvatarLayout;

    if-eqz v1, :cond_a

    .line 54
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    invoke-virtual {v1, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    :cond_a
    :goto_a
    move v0, v3

    goto :goto_9

    :cond_b
    return-void
.end method
