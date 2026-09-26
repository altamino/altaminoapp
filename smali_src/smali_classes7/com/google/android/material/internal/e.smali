.class public Lcom/google/android/material/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# static fields
.field private static final EDGE_TO_EDGE_BAR_ALPHA:I = 0x80


# direct methods
.method public static a(Landroid/view/Window;ZLjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 5
    .param p0    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 8
    move-result v2

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v2, v0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    move v2, v1

    .line 15
    .line 16
    :goto_1
    if-eqz p3, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 20
    move-result v3

    .line 21
    .line 22
    if-nez v3, :cond_3

    .line 23
    :cond_2
    move v0, v1

    .line 24
    .line 25
    :cond_3
    if-nez v2, :cond_4

    .line 26
    .line 27
    if-eqz v0, :cond_6

    .line 28
    .line 29
    .line 30
    :cond_4
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    const v3, 0x1010031

    .line 35
    .line 36
    const/high16 v4, -0x1000000

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v3, v4}, Li3/a;->b(Landroid/content/Context;II)I

    .line 40
    move-result v1

    .line 41
    .line 42
    if-eqz v2, :cond_5

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    :cond_5
    if-eqz v0, :cond_6

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object p3

    .line 53
    .line 54
    :cond_6
    xor-int/lit8 v0, p1, 0x1

    .line 55
    .line 56
    .line 57
    invoke-static {p0, v0}, Landroidx/core/view/WindowCompat;->b(Landroid/view/Window;Z)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    invoke-static {v0, p1}, Lcom/google/android/material/internal/e;->c(Landroid/content/Context;Z)I

    .line 65
    move-result v0

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    .line 72
    invoke-static {v1, p1}, Lcom/google/android/material/internal/e;->b(Landroid/content/Context;Z)I

    .line 73
    move-result p1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 83
    move-result p2

    .line 84
    .line 85
    .line 86
    invoke-static {p2}, Li3/a;->f(I)Z

    .line 87
    move-result p2

    .line 88
    .line 89
    .line 90
    invoke-static {v0, p2}, Lcom/google/android/material/internal/e;->d(IZ)Z

    .line 91
    move-result p2

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 95
    move-result p3

    .line 96
    .line 97
    .line 98
    invoke-static {p3}, Li3/a;->f(I)Z

    .line 99
    move-result p3

    .line 100
    .line 101
    .line 102
    invoke-static {p1, p3}, Lcom/google/android/material/internal/e;->d(IZ)Z

    .line 103
    move-result p1

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 107
    move-result-object p3

    .line 108
    .line 109
    .line 110
    invoke-static {p0, p3}, Landroidx/core/view/WindowCompat;->a(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    .line 111
    move-result-object p0

    .line 112
    .line 113
    if-eqz p0, :cond_7

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, p2}, Landroidx/core/view/WindowInsetsControllerCompat;->c(Z)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat;->b(Z)V

    .line 120
    :cond_7
    return-void
.end method

.method private static b(Landroid/content/Context;Z)I
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    .line 2
    const/high16 v0, -0x1000000

    .line 3
    .line 4
    .line 5
    const v1, 0x1010452

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v3, 0x1b

    .line 12
    .line 13
    if-ge v2, v3, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v1, v0}, Li3/a;->b(Landroid/content/Context;II)I

    .line 17
    move-result p0

    .line 18
    .line 19
    const/16 p1, 0x80

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p1}, Landroidx/core/graphics/ColorUtils;->o(II)I

    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    .line 26
    :cond_0
    if-eqz p1, :cond_1

    .line 27
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-static {p0, v1, v0}, Li3/a;->b(Landroid/content/Context;II)I

    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method private static c(Landroid/content/Context;Z)I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    .line 6
    .line 7
    :cond_0
    const p1, 0x1010451

    .line 8
    .line 9
    const/high16 v0, -0x1000000

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p1, v0}, Li3/a;->b(Landroid/content/Context;II)I

    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method private static d(IZ)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Li3/a;->f(I)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
.end method
