.class public final Landroidx/compose/ui/platform/OutlineResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOutlineResolver.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OutlineResolver.android.kt\nandroidx/compose/ui/platform/OutlineResolver\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 AndroidPath.android.kt\nandroidx/compose/ui/graphics/AndroidPath_androidKt\n*L\n1#1,356:1\n1#2:357\n35#3,5:358\n*S KotlinDebug\n*F\n+ 1 OutlineResolver.android.kt\nandroidx/compose/ui/platform/OutlineResolver\n*L\n330#1:358,5\n*E\n"
.end annotation


# instance fields
.field private cacheIsDirty:Z

.field private final cachedOutline:Landroid/graphics/Outline;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cachedRrectPath:Landroidx/compose/ui/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private calculatedOutline:Landroidx/compose/ui/graphics/Outline;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private density:Landroidx/compose/ui/unit/Density;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isSupportedOutline:Z

.field private layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private outlineNeeded:Z

.field private outlinePath:Landroidx/compose/ui/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private rectSize:J

.field private rectTopLeft:J

.field private roundedCornerRadius:F

.field private shape:Landroidx/compose/ui/graphics/Shape;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private size:J

.field private tmpOpPath:Landroidx/compose/ui/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tmpPath:Landroidx/compose/ui/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tmpRoundRect:Landroidx/compose/ui/geometry/RoundRect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tmpTouchPointPath:Landroidx/compose/ui/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private usePathForClip:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/unit/Density;)V
    .locals 2
    .param p1    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "density"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/compose/ui/platform/OutlineResolver;->density:Landroidx/compose/ui/unit/Density;

    .line 11
    const/4 p1, 0x1

    .line 12
    .line 13
    iput-boolean p1, p0, Landroidx/compose/ui/platform/OutlineResolver;->isSupportedOutline:Z

    .line 14
    .line 15
    new-instance p1, Landroid/graphics/Outline;

    .line 16
    .line 17
    .line 18
    invoke-direct {p1}, Landroid/graphics/Outline;-><init>()V

    .line 19
    .line 20
    const/high16 v0, 0x3f800000    # 1.0f

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 24
    .line 25
    iput-object p1, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    .line 26
    .line 27
    sget-object p1, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Size$Companion;->b()J

    .line 31
    move-result-wide v0

    .line 32
    .line 33
    iput-wide v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->size:J

    .line 34
    .line 35
    .line 36
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->a()Landroidx/compose/ui/graphics/Shape;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    iput-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 40
    .line 41
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 45
    move-result-wide v0

    .line 46
    .line 47
    iput-wide v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Size$Companion;->b()J

    .line 51
    move-result-wide v0

    .line 52
    .line 53
    iput-wide v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    .line 54
    .line 55
    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 56
    .line 57
    iput-object p1, p0, Landroidx/compose/ui/platform/OutlineResolver;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 58
    return-void
.end method

.method private final f(Landroidx/compose/ui/geometry/RoundRect;JJF)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/compose/ui/geometry/RoundRectKt;->d(Landroidx/compose/ui/geometry/RoundRect;)Z

    .line 7
    move-result v1

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->e()F

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 18
    move-result v2

    .line 19
    .line 20
    cmpg-float v1, v1, v2

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->g()F

    .line 26
    move-result v1

    .line 27
    .line 28
    .line 29
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 30
    move-result v2

    .line 31
    .line 32
    cmpg-float v1, v1, v2

    .line 33
    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->f()F

    .line 38
    move-result v1

    .line 39
    .line 40
    .line 41
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 42
    move-result v2

    .line 43
    .line 44
    .line 45
    invoke-static {p4, p5}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 46
    move-result v3

    .line 47
    add-float/2addr v2, v3

    .line 48
    .line 49
    cmpg-float v1, v1, v2

    .line 50
    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->a()F

    .line 55
    move-result v1

    .line 56
    .line 57
    .line 58
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 59
    move-result p2

    .line 60
    .line 61
    .line 62
    invoke-static {p4, p5}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 63
    move-result p3

    .line 64
    add-float/2addr p2, p3

    .line 65
    .line 66
    cmpg-float p2, v1, p2

    .line 67
    .line 68
    if-nez p2, :cond_1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->h()J

    .line 72
    move-result-wide p1

    .line 73
    .line 74
    .line 75
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 76
    move-result p1

    .line 77
    .line 78
    cmpg-float p1, p1, p6

    .line 79
    .line 80
    if-nez p1, :cond_1

    .line 81
    const/4 v0, 0x1

    .line 82
    :cond_1
    :goto_0
    return v0
.end method

.method private final i()V
    .locals 5

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cacheIsDirty:Z

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    iput-wide v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    .line 13
    .line 14
    iget-wide v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->size:J

    .line 15
    .line 16
    iput-wide v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    iput v2, p0, Landroidx/compose/ui/platform/OutlineResolver;->roundedCornerRadius:F

    .line 20
    const/4 v3, 0x0

    .line 21
    .line 22
    iput-object v3, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlinePath:Landroidx/compose/ui/graphics/Path;

    .line 23
    const/4 v3, 0x0

    .line 24
    .line 25
    iput-boolean v3, p0, Landroidx/compose/ui/platform/OutlineResolver;->cacheIsDirty:Z

    .line 26
    .line 27
    iput-boolean v3, p0, Landroidx/compose/ui/platform/OutlineResolver;->usePathForClip:Z

    .line 28
    .line 29
    iget-boolean v3, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlineNeeded:Z

    .line 30
    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 35
    move-result v0

    .line 36
    .line 37
    cmpl-float v0, v0, v2

    .line 38
    .line 39
    if-lez v0, :cond_2

    .line 40
    .line 41
    iget-wide v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->size:J

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 45
    move-result v0

    .line 46
    .line 47
    cmpl-float v0, v0, v2

    .line 48
    .line 49
    if-lez v0, :cond_2

    .line 50
    const/4 v0, 0x1

    .line 51
    .line 52
    iput-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->isSupportedOutline:Z

    .line 53
    .line 54
    iget-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 55
    .line 56
    iget-wide v1, p0, Landroidx/compose/ui/platform/OutlineResolver;->size:J

    .line 57
    .line 58
    iget-object v3, p0, Landroidx/compose/ui/platform/OutlineResolver;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 59
    .line 60
    iget-object v4, p0, Landroidx/compose/ui/platform/OutlineResolver;->density:Landroidx/compose/ui/unit/Density;

    .line 61
    .line 62
    .line 63
    invoke-interface {v0, v1, v2, v3, v4}, Landroidx/compose/ui/graphics/Shape;->a(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    iput-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->calculatedOutline:Landroidx/compose/ui/graphics/Outline;

    .line 67
    .line 68
    instance-of v1, v0, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 69
    .line 70
    if-eqz v1, :cond_0

    .line 71
    .line 72
    check-cast v0, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Outline$Rectangle;->a()Landroidx/compose/ui/geometry/Rect;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    .line 79
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/OutlineResolver;->k(Landroidx/compose/ui/geometry/Rect;)V

    .line 80
    goto :goto_0

    .line 81
    .line 82
    :cond_0
    instance-of v1, v0, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 83
    .line 84
    if-eqz v1, :cond_1

    .line 85
    .line 86
    check-cast v0, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Outline$Rounded;->a()Landroidx/compose/ui/geometry/RoundRect;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    .line 93
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/OutlineResolver;->l(Landroidx/compose/ui/geometry/RoundRect;)V

    .line 94
    goto :goto_0

    .line 95
    .line 96
    :cond_1
    instance-of v1, v0, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 97
    .line 98
    if-eqz v1, :cond_3

    .line 99
    .line 100
    check-cast v0, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Outline$Generic;->a()Landroidx/compose/ui/graphics/Path;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    .line 107
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/OutlineResolver;->j(Landroidx/compose/ui/graphics/Path;)V

    .line 108
    goto :goto_0

    .line 109
    .line 110
    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/graphics/Outline;->setEmpty()V

    .line 114
    :cond_3
    :goto_0
    return-void
.end method

.method private final j(Landroidx/compose/ui/graphics/Path;)V
    .locals 3

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1c

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    if-gt v0, v1, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Path;->g()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    .line 17
    iput-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->isSupportedOutline:Z

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/graphics/Outline;->setEmpty()V

    .line 23
    .line 24
    iput-boolean v2, p0, Landroidx/compose/ui/platform/OutlineResolver;->usePathForClip:Z

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    .line 28
    .line 29
    instance-of v1, p1, Landroidx/compose/ui/graphics/AndroidPath;

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    move-object v1, p1

    .line 33
    .line 34
    check-cast v1, Landroidx/compose/ui/graphics/AndroidPath;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/AndroidPath;->n()Landroid/graphics/Path;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    .line 42
    .line 43
    iget-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/graphics/Outline;->canClip()Z

    .line 47
    move-result v0

    .line 48
    xor-int/2addr v0, v2

    .line 49
    .line 50
    iput-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->usePathForClip:Z

    .line 51
    .line 52
    :goto_1
    iput-object p1, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlinePath:Landroidx/compose/ui/graphics/Path;

    .line 53
    return-void

    .line 54
    .line 55
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 56
    .line 57
    const-string v0, "Unable to obtain android.graphics.Path"

    .line 58
    .line 59
    .line 60
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 61
    throw p1
.end method

.method private final k(Landroidx/compose/ui/geometry/Rect;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->j()F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->m()F

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    iput-wide v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->p()F

    .line 18
    move-result v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->i()F

    .line 22
    move-result v1

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/SizeKt;->a(FF)J

    .line 26
    move-result-wide v0

    .line 27
    .line 28
    iput-wide v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->j()F

    .line 34
    move-result v1

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Lg8/a;->c(F)I

    .line 38
    move-result v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->m()F

    .line 42
    move-result v2

    .line 43
    .line 44
    .line 45
    invoke-static {v2}, Lg8/a;->c(F)I

    .line 46
    move-result v2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->k()F

    .line 50
    move-result v3

    .line 51
    .line 52
    .line 53
    invoke-static {v3}, Lg8/a;->c(F)I

    .line 54
    move-result v3

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->e()F

    .line 58
    move-result p1

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Lg8/a;->c(F)I

    .line 62
    move-result p1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Outline;->setRect(IIII)V

    .line 66
    return-void
.end method

.method private final l(Landroidx/compose/ui/geometry/RoundRect;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->h()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->e()F

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->g()F

    .line 16
    move-result v2

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 20
    move-result-wide v1

    .line 21
    .line 22
    iput-wide v1, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->j()F

    .line 26
    move-result v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->d()F

    .line 30
    move-result v2

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/SizeKt;->a(FF)J

    .line 34
    move-result-wide v1

    .line 35
    .line 36
    iput-wide v1, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Landroidx/compose/ui/geometry/RoundRectKt;->d(Landroidx/compose/ui/geometry/RoundRect;)Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    iget-object v2, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->e()F

    .line 48
    move-result v1

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Lg8/a;->c(F)I

    .line 52
    move-result v3

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->g()F

    .line 56
    move-result v1

    .line 57
    .line 58
    .line 59
    invoke-static {v1}, Lg8/a;->c(F)I

    .line 60
    move-result v4

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->f()F

    .line 64
    move-result v1

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Lg8/a;->c(F)I

    .line 68
    move-result v5

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->a()F

    .line 72
    move-result p1

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Lg8/a;->c(F)I

    .line 76
    move-result v6

    .line 77
    move v7, v0

    .line 78
    .line 79
    .line 80
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 81
    .line 82
    iput v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->roundedCornerRadius:F

    .line 83
    goto :goto_0

    .line 84
    .line 85
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedRrectPath:Landroidx/compose/ui/graphics/Path;

    .line 86
    .line 87
    if-nez v0, :cond_1

    .line 88
    .line 89
    .line 90
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->a()Landroidx/compose/ui/graphics/Path;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    iput-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedRrectPath:Landroidx/compose/ui/graphics/Path;

    .line 94
    .line 95
    .line 96
    :cond_1
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Path;->reset()V

    .line 97
    .line 98
    .line 99
    invoke-interface {v0, p1}, Landroidx/compose/ui/graphics/Path;->e(Landroidx/compose/ui/geometry/RoundRect;)V

    .line 100
    .line 101
    .line 102
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/OutlineResolver;->j(Landroidx/compose/ui/graphics/Path;)V

    .line 103
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 20
    .param p1    # Landroidx/compose/ui/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v7, p0

    .line 3
    .line 4
    move-object/from16 v8, p1

    .line 5
    .line 6
    const-string v0, "canvas"

    .line 7
    .line 8
    .line 9
    invoke-static {v8, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/OutlineResolver;->b()Landroidx/compose/ui/graphics/Path;

    .line 13
    move-result-object v0

    .line 14
    const/4 v9, 0x0

    .line 15
    const/4 v10, 0x0

    .line 16
    const/4 v11, 0x2

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-static {v8, v0, v9, v11, v10}, Landroidx/compose/ui/graphics/b1;->c(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Path;IILjava/lang/Object;)V

    .line 22
    .line 23
    goto/16 :goto_1

    .line 24
    .line 25
    :cond_0
    iget v6, v7, Landroidx/compose/ui/platform/OutlineResolver;->roundedCornerRadius:F

    .line 26
    const/4 v12, 0x0

    .line 27
    .line 28
    cmpl-float v0, v6, v12

    .line 29
    .line 30
    if-lez v0, :cond_4

    .line 31
    .line 32
    iget-object v13, v7, Landroidx/compose/ui/platform/OutlineResolver;->tmpPath:Landroidx/compose/ui/graphics/Path;

    .line 33
    .line 34
    iget-object v1, v7, Landroidx/compose/ui/platform/OutlineResolver;->tmpRoundRect:Landroidx/compose/ui/geometry/RoundRect;

    .line 35
    .line 36
    if-eqz v13, :cond_1

    .line 37
    .line 38
    iget-wide v2, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    .line 39
    .line 40
    iget-wide v4, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    .line 41
    .line 42
    move-object/from16 v0, p0

    .line 43
    .line 44
    .line 45
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/platform/OutlineResolver;->f(Landroidx/compose/ui/geometry/RoundRect;JJF)Z

    .line 46
    move-result v0

    .line 47
    .line 48
    if-nez v0, :cond_3

    .line 49
    .line 50
    :cond_1
    iget-wide v0, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 54
    move-result v14

    .line 55
    .line 56
    iget-wide v0, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 60
    move-result v15

    .line 61
    .line 62
    iget-wide v0, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 66
    move-result v0

    .line 67
    .line 68
    iget-wide v1, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    .line 69
    .line 70
    .line 71
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 72
    move-result v1

    .line 73
    .line 74
    add-float v16, v0, v1

    .line 75
    .line 76
    iget-wide v0, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 80
    move-result v0

    .line 81
    .line 82
    iget-wide v1, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    .line 83
    .line 84
    .line 85
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 86
    move-result v1

    .line 87
    .line 88
    add-float v17, v0, v1

    .line 89
    .line 90
    iget v0, v7, Landroidx/compose/ui/platform/OutlineResolver;->roundedCornerRadius:F

    .line 91
    .line 92
    .line 93
    invoke-static {v0, v12, v11, v10}, Landroidx/compose/ui/geometry/CornerRadiusKt;->b(FFILjava/lang/Object;)J

    .line 94
    move-result-wide v18

    .line 95
    .line 96
    .line 97
    invoke-static/range {v14 .. v19}, Landroidx/compose/ui/geometry/RoundRectKt;->c(FFFFJ)Landroidx/compose/ui/geometry/RoundRect;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    if-nez v13, :cond_2

    .line 101
    .line 102
    .line 103
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->a()Landroidx/compose/ui/graphics/Path;

    .line 104
    move-result-object v13

    .line 105
    goto :goto_0

    .line 106
    .line 107
    .line 108
    :cond_2
    invoke-interface {v13}, Landroidx/compose/ui/graphics/Path;->reset()V

    .line 109
    .line 110
    .line 111
    :goto_0
    invoke-interface {v13, v0}, Landroidx/compose/ui/graphics/Path;->e(Landroidx/compose/ui/geometry/RoundRect;)V

    .line 112
    .line 113
    iput-object v0, v7, Landroidx/compose/ui/platform/OutlineResolver;->tmpRoundRect:Landroidx/compose/ui/geometry/RoundRect;

    .line 114
    .line 115
    iput-object v13, v7, Landroidx/compose/ui/platform/OutlineResolver;->tmpPath:Landroidx/compose/ui/graphics/Path;

    .line 116
    .line 117
    .line 118
    :cond_3
    invoke-static {v8, v13, v9, v11, v10}, Landroidx/compose/ui/graphics/b1;->c(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Path;IILjava/lang/Object;)V

    .line 119
    goto :goto_1

    .line 120
    .line 121
    :cond_4
    iget-wide v0, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    .line 122
    .line 123
    .line 124
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 125
    move-result v9

    .line 126
    .line 127
    iget-wide v0, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    .line 128
    .line 129
    .line 130
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 131
    move-result v10

    .line 132
    .line 133
    iget-wide v0, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    .line 134
    .line 135
    .line 136
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 137
    move-result v0

    .line 138
    .line 139
    iget-wide v1, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    .line 140
    .line 141
    .line 142
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 143
    move-result v1

    .line 144
    .line 145
    add-float v11, v0, v1

    .line 146
    .line 147
    iget-wide v0, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    .line 148
    .line 149
    .line 150
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 151
    move-result v0

    .line 152
    .line 153
    iget-wide v1, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    .line 154
    .line 155
    .line 156
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 157
    move-result v1

    .line 158
    .line 159
    add-float v12, v0, v1

    .line 160
    const/4 v13, 0x0

    .line 161
    .line 162
    const/16 v14, 0x10

    .line 163
    const/4 v15, 0x0

    .line 164
    .line 165
    move-object/from16 v8, p1

    .line 166
    .line 167
    .line 168
    invoke-static/range {v8 .. v15}, Landroidx/compose/ui/graphics/b1;->d(Landroidx/compose/ui/graphics/Canvas;FFFFIILjava/lang/Object;)V

    .line 169
    :goto_1
    return-void
.end method

.method public final b()Landroidx/compose/ui/graphics/Path;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/platform/OutlineResolver;->i()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlinePath:Landroidx/compose/ui/graphics/Path;

    .line 6
    return-object v0
.end method

.method public final c()Landroid/graphics/Outline;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/platform/OutlineResolver;->i()V

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlineNeeded:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->isSupportedOutline:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 17
    :goto_1
    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->usePathForClip:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final e(J)Z
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlineNeeded:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->calculatedOutline:Landroidx/compose/ui/graphics/Outline;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    return v1

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 15
    move-result v1

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 19
    move-result p1

    .line 20
    .line 21
    iget-object p2, p0, Landroidx/compose/ui/platform/OutlineResolver;->tmpTouchPointPath:Landroidx/compose/ui/graphics/Path;

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/compose/ui/platform/OutlineResolver;->tmpOpPath:Landroidx/compose/ui/graphics/Path;

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1, p1, p2, v2}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->b(Landroidx/compose/ui/graphics/Outline;FFLandroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;)Z

    .line 27
    move-result p1

    .line 28
    return p1
.end method

.method public final g(Landroidx/compose/ui/graphics/Shape;FZFLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Z
    .locals 1
    .param p1    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "shape"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "layoutDirection"

    .line 8
    .line 9
    .line 10
    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "density"

    .line 13
    .line 14
    .line 15
    invoke-static {p6, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 21
    .line 22
    iget-object p2, p0, Landroidx/compose/ui/platform/OutlineResolver;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 23
    .line 24
    .line 25
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result p2

    .line 27
    const/4 v0, 0x1

    .line 28
    xor-int/2addr p2, v0

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    iput-object p1, p0, Landroidx/compose/ui/platform/OutlineResolver;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 33
    .line 34
    iput-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cacheIsDirty:Z

    .line 35
    .line 36
    :cond_0
    if-nez p3, :cond_2

    .line 37
    const/4 p1, 0x0

    .line 38
    .line 39
    cmpl-float p1, p4, p1

    .line 40
    .line 41
    if-lez p1, :cond_1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 p1, 0x0

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    :goto_0
    move p1, v0

    .line 46
    .line 47
    :goto_1
    iget-boolean p3, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlineNeeded:Z

    .line 48
    .line 49
    if-eq p3, p1, :cond_3

    .line 50
    .line 51
    iput-boolean p1, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlineNeeded:Z

    .line 52
    .line 53
    iput-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cacheIsDirty:Z

    .line 54
    .line 55
    :cond_3
    iget-object p1, p0, Landroidx/compose/ui/platform/OutlineResolver;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 56
    .line 57
    if-eq p1, p5, :cond_4

    .line 58
    .line 59
    iput-object p5, p0, Landroidx/compose/ui/platform/OutlineResolver;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 60
    .line 61
    iput-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cacheIsDirty:Z

    .line 62
    .line 63
    :cond_4
    iget-object p1, p0, Landroidx/compose/ui/platform/OutlineResolver;->density:Landroidx/compose/ui/unit/Density;

    .line 64
    .line 65
    .line 66
    invoke-static {p1, p6}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    move-result p1

    .line 68
    .line 69
    if-nez p1, :cond_5

    .line 70
    .line 71
    iput-object p6, p0, Landroidx/compose/ui/platform/OutlineResolver;->density:Landroidx/compose/ui/unit/Density;

    .line 72
    .line 73
    iput-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cacheIsDirty:Z

    .line 74
    :cond_5
    return p2
.end method

.method public final h(J)V
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->size:J

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/geometry/Size;->f(JJ)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iput-wide p1, p0, Landroidx/compose/ui/platform/OutlineResolver;->size:J

    .line 11
    const/4 p1, 0x1

    .line 12
    .line 13
    iput-boolean p1, p0, Landroidx/compose/ui/platform/OutlineResolver;->cacheIsDirty:Z

    .line 14
    :cond_0
    return-void
.end method
