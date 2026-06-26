.class public Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "CustomLinearLayoutManager.java"


# static fields
.field public static final MILLISECONDS_PER_INCH:F = 100.0f


# instance fields
.field private speed:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager;-><init>(Landroid/content/Context;F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;F)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x42c80000    # 100.0f

    .line 13
    iput p1, p0, Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager;->speed:F

    .line 21
    iput p2, p0, Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager;->speed:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    .line 25
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager;-><init>(Landroid/content/Context;IZF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZF)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/high16 p1, 0x42c80000    # 100.0f

    .line 13
    iput p1, p0, Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager;->speed:F

    .line 30
    iput p4, p0, Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager;->speed:F

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager;)F
    .locals 0

    .line 10
    iget p0, p0, Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager;->speed:F

    return p0
.end method


# virtual methods
.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 0

    .line 35
    new-instance p2, Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager$1;

    .line 36
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager$1;-><init>(Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager;Landroid/content/Context;)V

    .line 51
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 52
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
