.class public Lcom/narvii/media/color/DefaultBackgroundRecyclerView;
.super Lcom/narvii/widget/recycleview/NVRecyclerView;
.source "DefaultBackgroundRecyclerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/media/color/DefaultBackgroundRecyclerView$SpaceItemDecoration;,
        Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;,
        Lcom/narvii/media/color/DefaultBackgroundRecyclerView$OnColorSelectedListener;
    }
.end annotation


# static fields
.field private static builtInColorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final adapter:Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;

.field private currentSelectColor:I

.field private customColorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private onColorSelectedListener:Lcom/narvii/media/color/DefaultBackgroundRecyclerView$OnColorSelectedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->builtInColorList:Ljava/util/List;

    .line 33
    sget-object v0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->builtInColorList:Ljava/util/List;

    const-string v1, "#ff3d00"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->builtInColorList:Ljava/util/List;

    const-string v1, "#e91e63"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->builtInColorList:Ljava/util/List;

    const-string v1, "#ff8f00"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->builtInColorList:Ljava/util/List;

    const-string v1, "#fdd835"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->builtInColorList:Ljava/util/List;

    const-string v1, "#43a047"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->builtInColorList:Ljava/util/List;

    const-string v1, "#0097a7"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->builtInColorList:Ljava/util/List;

    const-string v1, "#00b0ff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->builtInColorList:Ljava/util/List;

    const-string v1, "#283593"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->builtInColorList:Ljava/util/List;

    const-string v1, "#8e24aa"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->builtInColorList:Ljava/util/List;

    const-string v1, "#4e342e"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->builtInColorList:Ljava/util/List;

    const-string v1, "#424242"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/widget/recycleview/NVRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->customColorList:Ljava/util/List;

    .line 63
    new-instance p1, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;-><init>(Lcom/narvii/media/color/DefaultBackgroundRecyclerView;)V

    iput-object p1, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->adapter:Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 64
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    const/4 p2, 0x0

    .line 66
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 67
    new-instance p1, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$SpaceItemDecoration;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x41700000    # 15.0f

    invoke-static {p2, p3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p3

    float-to-int p3, p3

    invoke-direct {p1, p0, p2, p3}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$SpaceItemDecoration;-><init>(Lcom/narvii/media/color/DefaultBackgroundRecyclerView;II)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/media/color/DefaultBackgroundRecyclerView;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->customColorList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .line 28
    sget-object v0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->builtInColorList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/narvii/media/color/DefaultBackgroundRecyclerView;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->currentSelectColor:I

    return p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 72
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->adapter:Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;

    invoke-virtual {v0}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->getItemCount()I

    move-result v0

    if-gt p1, v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->onColorSelectedListener:Lcom/narvii/media/color/DefaultBackgroundRecyclerView$OnColorSelectedListener;

    if-nez v0, :cond_1

    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->adapter:Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->getItemColor(I)I

    move-result p1

    .line 83
    iget-object v0, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->onColorSelectedListener:Lcom/narvii/media/color/DefaultBackgroundRecyclerView$OnColorSelectedListener;

    invoke-interface {v0, p1}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$OnColorSelectedListener;->onColorSelected(I)V

    .line 84
    iput p1, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->currentSelectColor:I

    .line 85
    iget-object p1, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->adapter:Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :cond_2
    :goto_0
    const-string p1, "DefaultBackgroundRecyclerView click with NO_POSITION"

    .line 74
    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    return-void
.end method

.method public removeCurrentSelectColor()V
    .locals 1

    const/4 v0, -0x1

    .line 101
    invoke-virtual {p0, v0}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->setCurrentSelectColor(I)V

    return-void
.end method

.method public setCurrentSelectColor(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->currentSelectColor:I

    .line 106
    iget-object p1, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->adapter:Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setCustomColorList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->customColorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->customColorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->adapter:Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnColorSelectedListener(Lcom/narvii/media/color/DefaultBackgroundRecyclerView$OnColorSelectedListener;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->onColorSelectedListener:Lcom/narvii/media/color/DefaultBackgroundRecyclerView$OnColorSelectedListener;

    return-void
.end method
