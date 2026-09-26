.class final Lcom/narvii/util/WMEAttachView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final h:I

.field private final v:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v0, "view"

    .line 9
    .line 10
    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 25
    .line 26
    iput v0, p0, Lcom/narvii/util/WMEAttachView;->w:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 37
    .line 38
    iput p1, p0, Lcom/narvii/util/WMEAttachView;->h:I

    .line 39
    .line 40
    iput-object p2, p0, Lcom/narvii/util/WMEAttachView;->v:Landroid/view/View;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/util/WMEAttachView;->v:Landroid/view/View;

    .line 6
    .line 7
    iget p2, p0, Lcom/narvii/util/WMEAttachView;->w:I

    .line 8
    .line 9
    iget p3, p0, Lcom/narvii/util/WMEAttachView;->h:I

    .line 10
    const/4 p4, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/view/View;->layout(IIII)V

    .line 14
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/util/WMEAttachView;->v:Landroid/view/View;

    .line 6
    .line 7
    iget p2, p0, Lcom/narvii/util/WMEAttachView;->w:I

    .line 8
    .line 9
    const/high16 v0, 0x40000000    # 2.0f

    .line 10
    .line 11
    .line 12
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 13
    move-result p2

    .line 14
    .line 15
    iget v1, p0, Lcom/narvii/util/WMEAttachView;->h:I

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 19
    move-result v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    .line 23
    return-void
.end method
