.class public final Lcom/narvii/nested/tab/ScrollTabViewDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/nested/tab/UpdateTabViewDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/view/View;IF)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    sget p2, Lcom/narvii/lib/R$id;->tab_title:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    check-cast p2, Landroid/widget/TextView;

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p2, 0x0

    .line 13
    .line 14
    :goto_0
    if-eqz p1, :cond_6

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    goto :goto_3

    .line 18
    :cond_1
    const/4 v0, -0x1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    .line 23
    .line 24
    const v0, 0x3f7ae148    # 0.98f

    .line 25
    .line 26
    cmpl-float v0, p3, v0

    .line 27
    .line 28
    const/high16 v1, 0x3f800000    # 1.0f

    .line 29
    .line 30
    if-lez v0, :cond_2

    .line 31
    move p3, v1

    .line 32
    goto :goto_1

    .line 33
    .line 34
    .line 35
    :cond_2
    const v0, 0x3ca3d70a    # 0.02f

    .line 36
    .line 37
    cmpg-float v0, p3, v0

    .line 38
    .line 39
    if-gez v0, :cond_3

    .line 40
    const/4 p3, 0x0

    .line 41
    .line 42
    :cond_3
    :goto_1
    instance-of v0, p1, Lcom/narvii/widget/ScaleView;

    .line 43
    .line 44
    if-eqz v0, :cond_4

    .line 45
    const/4 v0, 0x1

    .line 46
    int-to-float v0, v0

    .line 47
    .line 48
    .line 49
    const v2, 0x3f9b645a    # 1.214f

    .line 50
    sub-float/2addr v2, v0

    .line 51
    mul-float/2addr v2, p3

    .line 52
    add-float/2addr v2, v1

    .line 53
    .line 54
    check-cast p1, Lcom/narvii/widget/ScaleView;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v2}, Lcom/narvii/widget/ScaleView;->setScale(F)V

    .line 58
    .line 59
    .line 60
    :cond_4
    const p1, 0x3e99999a    # 0.3f

    .line 61
    .line 62
    cmpl-float p1, p3, p1

    .line 63
    .line 64
    if-lez p1, :cond_5

    .line 65
    .line 66
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 67
    goto :goto_2

    .line 68
    .line 69
    :cond_5
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 70
    .line 71
    .line 72
    :goto_2
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    const-wide v0, 0x3fd3333333333333L    # 0.3

    .line 78
    float-to-double v2, p3

    .line 79
    mul-double/2addr v2, v0

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    const-wide v0, 0x3fe6666666666666L    # 0.7

    .line 85
    add-double/2addr v2, v0

    .line 86
    double-to-float p1, v2

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 90
    :cond_6
    :goto_3
    return-void
.end method

.method public onSelected(Landroid/view/View;IZ)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method
