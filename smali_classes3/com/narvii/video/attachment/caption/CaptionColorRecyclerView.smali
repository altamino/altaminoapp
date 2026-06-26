.class public Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;
.super Lcom/narvii/widget/HorizontalRecyclerView;
.source "CaptionColorRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;,
        Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$OnColorSelectedListener;
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
.field private adapter:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

.field private currentSelectColor:I

.field private enabled:Z

.field private onColorSelectedListener:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$OnColorSelectedListener;

.field private supportDisable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    .line 38
    sget-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    const-string v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    const-string v1, "#54515d"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    const-string v1, "#f2ff41"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    const-string v1, "#0076FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    const-string v1, "#ffc102"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    const-string v1, "#ff6809"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    const-string v1, "#f20d57"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    const-string v1, "#1598ff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    const-string v1, "#8134ff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    const-string v1, "#a10abf"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    const-string v1, "#fe37ba"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    const-string v1, "#ff9dff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    const-string v1, "#22f39e"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    const-string v1, "#018c86"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    const-string v1, "#00477f"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    const-string v1, "#036100"

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

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/HorizontalRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->supportDisable:Z

    .line 69
    new-instance p2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p1, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 70
    new-instance p1, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

    invoke-direct {p1, p0}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;-><init>(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)V

    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->adapter:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const/4 p1, 0x0

    .line 71
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 72
    new-instance p1, Lcom/narvii/widget/SpaceItemDecoration;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    invoke-direct {p1, p2}, Lcom/narvii/widget/SpaceItemDecoration;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->supportDisable:Z

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->enabled:Z

    return p0
.end method

.method static synthetic access$102(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->enabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->currentSelectColor:I

    return p0
.end method

.method static synthetic access$202(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->currentSelectColor:I

    return p1
.end method

.method static synthetic access$300(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$OnColorSelectedListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->onColorSelectedListener:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$OnColorSelectedListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->adapter:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

    return-object p0
.end method

.method static synthetic access$500()Ljava/util/List;
    .locals 1

    .line 23
    sget-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public setCurrentSelectColor(I)V
    .locals 1

    const/4 v0, 0x1

    .line 80
    invoke-virtual {p0, p1, v0}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->setCurrentSelectColor(IZ)V

    return-void
.end method

.method public setCurrentSelectColor(IZ)V
    .locals 1

    const/16 v0, 0xff

    .line 85
    invoke-static {p1, v0}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    .line 86
    iput p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->currentSelectColor:I

    .line 87
    iput-boolean p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->enabled:Z

    .line 88
    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->adapter:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnColorSelectedListener(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$OnColorSelectedListener;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->onColorSelectedListener:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$OnColorSelectedListener;

    return-void
.end method

.method public setSupportDisable(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->supportDisable:Z

    return-void
.end method
