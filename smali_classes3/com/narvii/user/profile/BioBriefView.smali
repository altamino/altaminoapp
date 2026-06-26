.class public final Lcom/narvii/user/profile/BioBriefView;
.super Landroid/widget/FrameLayout;
.source "BioBriefView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBioBriefView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BioBriefView.kt\ncom/narvii/user/profile/BioBriefView\n*L\n1#1,167:1\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final arrowBtn:Lcom/narvii/widget/TintButton;

.field private final bioContainer:Landroid/view/ViewGroup;

.field private final bioTV:Landroid/widget/TextView;

.field private final emptyTV:Landroid/widget/TextView;

.field private hasBioContent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/narvii/user/profile/BioBriefView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/user/profile/BioBriefView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0b005d

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090231

    .line 41
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.chevron)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/TintButton;

    iput-object p1, p0, Lcom/narvii/user/profile/BioBriefView;->arrowBtn:Lcom/narvii/widget/TintButton;

    const p1, 0x7f0902d6

    .line 42
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.content_empty)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/user/profile/BioBriefView;->emptyTV:Landroid/widget/TextView;

    const p1, 0x7f090133

    .line 43
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.bio_content)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/user/profile/BioBriefView;->bioTV:Landroid/widget/TextView;

    const p1, 0x7f0902d2

    .line 44
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.content_container)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/narvii/user/profile/BioBriefView;->bioContainer:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/user/profile/BioBriefView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/user/profile/BioBriefView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/user/profile/BioBriefView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/user/profile/BioBriefView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/user/profile/BioBriefView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final hasBioContent()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/narvii/user/profile/BioBriefView;->hasBioContent:Z

    return v0
.end method

.method public final setBio(Lcom/narvii/model/User;ZZLcom/narvii/user/profile/BioBriefStyle;)V
    .locals 8

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "style"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/narvii/user/profile/BioBriefView;->emptyTV:Landroid/widget/TextView;

    invoke-interface {p4, v0, p2, p3}, Lcom/narvii/user/profile/BioBriefStyle;->setEmptyTVStyle(Landroid/widget/TextView;ZZ)V

    .line 49
    iget-object p2, p0, Lcom/narvii/user/profile/BioBriefView;->bioTV:Landroid/widget/TextView;

    invoke-interface {p4, p2, p3}, Lcom/narvii/user/profile/BioBriefStyle;->setBioTVStyle(Landroid/widget/TextView;Z)V

    .line 51
    invoke-virtual {p1}, Lcom/narvii/model/User;->getBioMedias()Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result p2

    .line 52
    iget-object v0, p1, Lcom/narvii/model/User;->content:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->compactContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez p2, :cond_0

    if-eqz v1, :cond_0

    .line 55
    iget-object p1, p0, Lcom/narvii/user/profile/BioBriefView;->emptyTV:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    iget-object p1, p0, Lcom/narvii/user/profile/BioBriefView;->bioContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 57
    iput-boolean v2, p0, Lcom/narvii/user/profile/BioBriefView;->hasBioContent:Z

    goto/16 :goto_3

    .line 59
    :cond_0
    iget-object v4, p0, Lcom/narvii/user/profile/BioBriefView;->emptyTV:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    iget-object v4, p0, Lcom/narvii/user/profile/BioBriefView;->bioContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v4, 0x1

    .line 61
    iput-boolean v4, p0, Lcom/narvii/user/profile/BioBriefView;->hasBioContent:Z

    const v5, 0x7f09057b

    const v6, 0x7f090577

    if-nez v1, :cond_1

    .line 63
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v7, "findViewById<View>(R.id.image_flow_layout)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 64
    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "findViewById(R.id.image_container)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/ViewGroup;

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const-string v7, "findViewById<View>(R.id.image_container)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 67
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "findViewById(R.id.image_flow_layout)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/ViewGroup;

    .line 70
    :goto_0
    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    if-nez p2, :cond_2

    .line 72
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 74
    :cond_2
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 75
    invoke-virtual {p1}, Lcom/narvii/model/User;->getBioMedias()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_1
    if-ge v2, p2, :cond_4

    .line 77
    invoke-virtual {p1}, Lcom/narvii/model/User;->getBioMedias()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Media;

    .line 78
    new-instance v3, Lcom/narvii/widget/NVImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/narvii/widget/NVImageView;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-interface {p4, v3, p3}, Lcom/narvii/user/profile/BioBriefStyle;->setSnippetImageStyle(Lcom/narvii/widget/NVImageView;Z)V

    .line 80
    invoke-virtual {v3, v1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 81
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 84
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/narvii/user/profile/BioBriefView;->bioTV:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :goto_3
    iget-object p1, p0, Lcom/narvii/user/profile/BioBriefView;->arrowBtn:Lcom/narvii/widget/TintButton;

    invoke-interface {p4, p1, p3}, Lcom/narvii/user/profile/BioBriefStyle;->setArrowBtnStyle(Lcom/narvii/widget/TintButton;Z)V

    return-void
.end method
