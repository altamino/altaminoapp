.class final Landroidx/viewpager2/widget/PageTransformerAdapter;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# instance fields
.field private final mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mPageTransformer:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 6
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(IFI)V
    .locals 4

    .line 1
    .line 2
    iget-object p3, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mPageTransformer:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    .line 3
    .line 4
    if-nez p3, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    neg-float p2, p2

    .line 7
    const/4 p3, 0x0

    .line 8
    move v0, p3

    .line 9
    .line 10
    :goto_0
    iget-object v1, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 14
    move-result v1

    .line 15
    .line 16
    if-ge v0, v1, :cond_2

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget-object v2, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 30
    move-result v2

    .line 31
    sub-int/2addr v2, p1

    .line 32
    int-to-float v2, v2

    .line 33
    add-float/2addr v2, p2

    .line 34
    .line 35
    iget-object v3, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mPageTransformer:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    .line 36
    .line 37
    .line 38
    invoke-interface {v3, v1, v2}, Landroidx/viewpager2/widget/ViewPager2$PageTransformer;->transformPage(Landroid/view/View;F)V

    .line 39
    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 46
    const/4 v1, 0x2

    .line 47
    .line 48
    new-array v1, v1, [Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    aput-object v0, v1, p3

    .line 55
    .line 56
    iget-object p3, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 60
    move-result p3

    .line 61
    .line 62
    .line 63
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object p3

    .line 65
    const/4 v0, 0x1

    .line 66
    .line 67
    aput-object p3, v1, v0

    .line 68
    .line 69
    const-string p3, "LayoutManager returned a null child at pos %d/%d while transforming pages"

    .line 70
    .line 71
    .line 72
    invoke-static {p2, p3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    move-result-object p2

    .line 74
    .line 75
    .line 76
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    throw p1

    .line 78
    :cond_2
    return-void
.end method

.method public c(I)V
    .locals 0

    .line 1
    return-void
.end method

.method d()Landroidx/viewpager2/widget/ViewPager2$PageTransformer;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mPageTransformer:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    return-object v0
.end method

.method e(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V
    .locals 0
    .param p1    # Landroidx/viewpager2/widget/ViewPager2$PageTransformer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mPageTransformer:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    return-void
.end method
