.class public final Lcom/narvii/widget/FakeHeightViewWrapper;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFakeHeightViewWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FakeHeightViewWrapper.kt\ncom/narvii/widget/FakeHeightViewWrapper\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,41:1\n1313#2,2:42\n*S KotlinDebug\n*F\n+ 1 FakeHeightViewWrapper.kt\ncom/narvii/widget/FakeHeightViewWrapper\n*L\n34#1:42,2\n*E\n"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private fakeHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string p1, "fakeHeight"

    iput-object p1, p0, Lcom/narvii/widget/FakeHeightViewWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "fakeHeight"

    iput-object v0, p0, Lcom/narvii/widget/FakeHeightViewWrapper;->TAG:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 3
    sget-object v0, Lcom/narvii/amino/R$styleable;->FakeHeightViewWrapper:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0704b8

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 6
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/FakeHeightViewWrapper;->fakeHeight:I

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final getTAG()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/widget/FakeHeightViewWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result p3

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p3}, Lj8/m;->v(II)Lj8/i;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/collections/t;->Y(Ljava/lang/Iterable;)Lkotlin/sequences/g;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    new-instance p3, Lcom/narvii/widget/FakeHeightViewWrapper$onLayout$1;

    .line 19
    .line 20
    .line 21
    invoke-direct {p3, p0}, Lcom/narvii/widget/FakeHeightViewWrapper$onLayout$1;-><init>(Lcom/narvii/widget/FakeHeightViewWrapper;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p3}, Lkotlin/sequences/j;->u(Lkotlin/sequences/g;Le8/l;)Lkotlin/sequences/g;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    new-instance p3, Lcom/narvii/widget/FakeHeightViewWrapper$onLayout$2;

    .line 28
    .line 29
    .line 30
    invoke-direct {p3, p0}, Lcom/narvii/widget/FakeHeightViewWrapper$onLayout$2;-><init>(Lcom/narvii/widget/FakeHeightViewWrapper;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p3}, Lkotlin/sequences/j;->l(Lkotlin/sequences/g;Le8/l;)Lkotlin/sequences/g;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-interface {p1}, Lkotlin/sequences/g;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result p3

    .line 43
    .line 44
    if-eqz p3, :cond_0

    .line 45
    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object p3

    .line 49
    .line 50
    check-cast p3, Landroid/view/View;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 54
    move-result p5

    .line 55
    .line 56
    iget v0, p0, Lcom/narvii/widget/FakeHeightViewWrapper;->fakeHeight:I

    .line 57
    sub-int/2addr p5, v0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 61
    move-result v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3, p2, p5, p4, v0}, Landroid/view/View;->layout(IIII)V

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method public final updateFakeHeight(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/FakeHeightViewWrapper;->fakeHeight:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    return-void
.end method
