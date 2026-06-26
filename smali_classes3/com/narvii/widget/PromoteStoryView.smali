.class public final Lcom/narvii/widget/PromoteStoryView;
.super Landroid/widget/LinearLayout;
.source "PromoteStoryView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/PromoteStoryView$OnPromoteListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPromoteStoryView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PromoteStoryView.kt\ncom/narvii/widget/PromoteStoryView\n*L\n1#1,66:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final addStory$delegate:Lkotlin/Lazy;

.field private final coverImage$delegate:Lkotlin/Lazy;

.field private final draggableFL$delegate:Lkotlin/Lazy;

.field private onPromoteListener:Lcom/narvii/widget/PromoteStoryView$OnPromoteListener;

.field private final playStory$delegate:Lkotlin/Lazy;

.field private story:Lcom/narvii/model/Blog;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/widget/PromoteStoryView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "addStory"

    const-string v4, "getAddStory()Landroid/view/ViewGroup;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/widget/PromoteStoryView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "playStory"

    const-string v4, "getPlayStory()Landroid/view/ViewGroup;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/widget/PromoteStoryView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "draggableFL"

    const-string v4, "getDraggableFL()Lcom/narvii/widget/DraggableFrameLayout;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/widget/PromoteStoryView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "coverImage"

    const-string v4, "getCoverImage()Lcom/narvii/widget/ThumbImageView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/widget/PromoteStoryView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/narvii/widget/PromoteStoryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/narvii/widget/PromoteStoryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f0908d6

    .line 16
    invoke-direct {p0, p1}, Lcom/narvii/widget/PromoteStoryView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/PromoteStoryView;->addStory$delegate:Lkotlin/Lazy;

    const p1, 0x7f090843

    .line 17
    invoke-direct {p0, p1}, Lcom/narvii/widget/PromoteStoryView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/PromoteStoryView;->playStory$delegate:Lkotlin/Lazy;

    const p1, 0x7f0908d4

    .line 18
    invoke-direct {p0, p1}, Lcom/narvii/widget/PromoteStoryView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/PromoteStoryView;->draggableFL$delegate:Lkotlin/Lazy;

    const p1, 0x7f0902fe

    .line 20
    invoke-direct {p0, p1}, Lcom/narvii/widget/PromoteStoryView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/PromoteStoryView;->coverImage$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 14
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/widget/PromoteStoryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final bind(I)Lkotlin/Lazy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 59
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/narvii/widget/PromoteStoryView$bind$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/widget/PromoteStoryView$bind$1;-><init>(Lcom/narvii/widget/PromoteStoryView;I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method

.method private final getDraggableFL()Lcom/narvii/widget/DraggableFrameLayout;
    .locals 3

    iget-object v0, p0, Lcom/narvii/widget/PromoteStoryView;->draggableFL$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/widget/PromoteStoryView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/DraggableFrameLayout;

    return-object v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/PromoteStoryView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/widget/PromoteStoryView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/PromoteStoryView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/PromoteStoryView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/widget/PromoteStoryView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getAddStory()Landroid/view/ViewGroup;
    .locals 3

    iget-object v0, p0, Lcom/narvii/widget/PromoteStoryView;->addStory$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/widget/PromoteStoryView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final getCoverImage()Lcom/narvii/widget/ThumbImageView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/widget/PromoteStoryView;->coverImage$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/widget/PromoteStoryView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    return-object v0
.end method

.method public final getOnPromoteListener()Lcom/narvii/widget/PromoteStoryView$OnPromoteListener;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/narvii/widget/PromoteStoryView;->onPromoteListener:Lcom/narvii/widget/PromoteStoryView$OnPromoteListener;

    return-object v0
.end method

.method public final getPlayStory()Landroid/view/ViewGroup;
    .locals 3

    iget-object v0, p0, Lcom/narvii/widget/PromoteStoryView;->playStory$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/widget/PromoteStoryView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final getStory()Lcom/narvii/model/Blog;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/narvii/widget/PromoteStoryView;->story:Lcom/narvii/model/Blog;

    return-object v0
.end method

.method public final hide()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/narvii/widget/PromoteStoryView;->getDraggableFL()Lcom/narvii/widget/DraggableFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/widget/DraggableFrameLayout;->hide()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 47
    iget-object p1, p0, Lcom/narvii/widget/PromoteStoryView;->story:Lcom/narvii/model/Blog;

    if-nez p1, :cond_0

    .line 48
    iget-object p1, p0, Lcom/narvii/widget/PromoteStoryView;->onPromoteListener:Lcom/narvii/widget/PromoteStoryView$OnPromoteListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/narvii/widget/PromoteStoryView$OnPromoteListener;->onPromoteStory()V

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/PromoteStoryView;->onPromoteListener:Lcom/narvii/widget/PromoteStoryView$OnPromoteListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/narvii/widget/PromoteStoryView$OnPromoteListener;->onPlayStory(Lcom/narvii/model/Blog;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 26
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 27
    invoke-direct {p0}, Lcom/narvii/widget/PromoteStoryView;->getDraggableFL()Lcom/narvii/widget/DraggableFrameLayout;

    move-result-object v0

    new-instance v1, Lcom/narvii/util/OnPreventRepeatedClickListener;

    invoke-direct {v1, p0}, Lcom/narvii/util/OnPreventRepeatedClickListener;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Lcom/narvii/widget/DraggableFrameLayout;->setOnTap(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setOnPromoteListener(Lcom/narvii/widget/PromoteStoryView$OnPromoteListener;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/narvii/widget/PromoteStoryView;->onPromoteListener:Lcom/narvii/widget/PromoteStoryView$OnPromoteListener;

    return-void
.end method

.method public final setStory(Lcom/narvii/model/Blog;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/narvii/widget/PromoteStoryView;->story:Lcom/narvii/model/Blog;

    return-void
.end method

.method public final show(Lcom/narvii/model/Blog;)V
    .locals 3

    .line 31
    iput-object p1, p0, Lcom/narvii/widget/PromoteStoryView;->story:Lcom/narvii/model/Blog;

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/narvii/widget/PromoteStoryView;->getPlayStory()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 34
    invoke-virtual {p0}, Lcom/narvii/widget/PromoteStoryView;->getAddStory()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 35
    invoke-virtual {p0}, Lcom/narvii/widget/PromoteStoryView;->getCoverImage()Lcom/narvii/widget/ThumbImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getExtraCoverMedia()Lcom/narvii/model/Media;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 36
    invoke-direct {p0}, Lcom/narvii/widget/PromoteStoryView;->getDraggableFL()Lcom/narvii/widget/DraggableFrameLayout;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/DraggableFrameLayout;->setMinViewVisibleWidth(I)V

    .line 37
    invoke-direct {p0}, Lcom/narvii/widget/PromoteStoryView;->getDraggableFL()Lcom/narvii/widget/DraggableFrameLayout;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/DraggableFrameLayout;->setEndMargin(I)V

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/widget/PromoteStoryView;->getPlayStory()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 40
    invoke-virtual {p0}, Lcom/narvii/widget/PromoteStoryView;->getAddStory()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 41
    invoke-direct {p0}, Lcom/narvii/widget/PromoteStoryView;->getDraggableFL()Lcom/narvii/widget/DraggableFrameLayout;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/DraggableFrameLayout;->setMinViewVisibleWidth(I)V

    .line 42
    invoke-direct {p0}, Lcom/narvii/widget/PromoteStoryView;->getDraggableFL()Lcom/narvii/widget/DraggableFrameLayout;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/DraggableFrameLayout;->setEndMargin(I)V

    :goto_0
    return-void
.end method
