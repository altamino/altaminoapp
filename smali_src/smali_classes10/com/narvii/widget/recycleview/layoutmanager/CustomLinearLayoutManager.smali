.class public Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# static fields
.field public static final MILLISECONDS_PER_INCH:F = 100.0f


# instance fields
.field private speed:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager;-><init>(Landroid/content/Context;F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;F)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager;->speed:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager;-><init>(Landroid/content/Context;IZF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZF)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput p4, p0, Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager;->speed:F

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager;->speed:F

    return p0
.end method


# virtual methods
.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 1
    .line 2
    new-instance p2, Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager$1;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {p2, p0, p1}, Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager$1;-><init>(Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager;Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 16
    return-void
.end method
