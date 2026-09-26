.class public abstract Lcom/narvii/livelayer/detailview/LiveLayerCategoryTitleAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# instance fields
.field private nvContext:Lcom/narvii/app/NVContext;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerCategoryTitleAdapter;->nvContext:Lcom/narvii/app/NVContext;

    .line 6
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract getTitleIcon()I
.end method

.method public abstract getTitleIconBackgroundColor()I
.end method

.method public abstract getTitleView()Ljava/lang/String;
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d04f4

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    const/high16 p3, 0x40c00000    # 6.0f

    .line 14
    .line 15
    .line 16
    invoke-static {p2, p3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 17
    move-result p2

    .line 18
    float-to-int p2, p2

    .line 19
    const/4 p3, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p3, p2, p3, p3}, Landroid/view/View;->setPadding(IIII)V

    .line 23
    .line 24
    .line 25
    const p2, 0x7f0a083f

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 33
    move-result-object p3

    .line 34
    .line 35
    const/high16 v0, 0x40000000    # 2.0f

    .line 36
    .line 37
    .line 38
    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 39
    move-result p3

    .line 40
    float-to-int p3, p3

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    .line 44
    move-result v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    .line 48
    move-result v1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v0, p3, v1, p3}, Landroid/view/View;->setPadding(IIII)V

    .line 52
    .line 53
    .line 54
    const p2, 0x7f0a06d5

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    move-result-object p2

    .line 59
    .line 60
    check-cast p2, Landroid/widget/ImageView;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/narvii/livelayer/detailview/LiveLayerCategoryTitleAdapter;->getTitleIcon()I

    .line 64
    move-result p3

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    .line 69
    new-instance p3, Landroid/graphics/drawable/ShapeDrawable;

    .line 70
    .line 71
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    .line 72
    .line 73
    .line 74
    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-direct {p3, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/narvii/livelayer/detailview/LiveLayerCategoryTitleAdapter;->getTitleIconBackgroundColor()I

    .line 85
    move-result v1

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    .line 93
    .line 94
    const p2, 0x7f0a0805

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    move-result-object p2

    .line 99
    .line 100
    check-cast p2, Landroid/widget/TextView;

    .line 101
    .line 102
    iput-object p2, p0, Lcom/narvii/livelayer/detailview/LiveLayerCategoryTitleAdapter;->titleView:Landroid/widget/TextView;

    .line 103
    .line 104
    if-eqz p2, :cond_0

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/narvii/livelayer/detailview/LiveLayerCategoryTitleAdapter;->getTitleView()Ljava/lang/String;

    .line 108
    move-result-object p3

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_0
    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
