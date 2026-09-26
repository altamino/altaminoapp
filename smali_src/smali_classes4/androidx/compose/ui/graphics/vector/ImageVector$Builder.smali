.class public final Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/vector/ImageVector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final autoMirror:Z

.field private final defaultHeight:F

.field private final defaultWidth:F

.field private isConsumed:Z

.field private final name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final nodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private root:Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tintBlendMode:I

.field private final tintColor:J

.field private final viewportHeight:F

.field private final viewportWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;FFFFJI)V
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    .line 13
    invoke-direct/range {v0 .. v10}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZLkotlin/jvm/internal/k;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/k;)V
    .locals 11

    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_0

    const-string v0, ""

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_1

    .line 10
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->f()J

    move-result-wide v0

    move-wide v7, v0

    goto :goto_1

    :cond_1
    move-wide/from16 v7, p6

    :goto_1
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_2

    .line 11
    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->z()I

    move-result v0

    move v9, v0

    goto :goto_2

    :cond_2
    move/from16 v9, p8

    :goto_2
    const/4 v10, 0x0

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    .line 12
    invoke-direct/range {v1 .. v10}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;FFFFJILkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;FFFFJIZ)V
    .locals 16

    move-object/from16 v0, p0

    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    iput-object v1, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->name:Ljava/lang/String;

    move/from16 v1, p2

    iput v1, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->defaultWidth:F

    move/from16 v1, p3

    iput v1, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->defaultHeight:F

    move/from16 v1, p4

    iput v1, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->viewportWidth:F

    move/from16 v1, p5

    iput v1, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->viewportHeight:F

    move-wide/from16 v1, p6

    iput-wide v1, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->tintColor:J

    move/from16 v1, p8

    iput v1, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->tintBlendMode:I

    move/from16 v1, p9

    iput-boolean v1, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->autoMirror:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4
    invoke-static {v1, v2, v1}, Landroidx/compose/ui/graphics/vector/Stack;->b(Ljava/util/ArrayList;ILkotlin/jvm/internal/k;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->nodes:Ljava/util/ArrayList;

    .line 5
    new-instance v15, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x3ff

    const/4 v14, 0x0

    move-object v2, v15

    invoke-direct/range {v2 .. v14}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    iput-object v15, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->root:Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    .line 6
    invoke-static {v1, v15}, Landroidx/compose/ui/graphics/vector/Stack;->h(Ljava/util/ArrayList;Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/k;)V
    .locals 13

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const-string v1, ""

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    .line 7
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->f()J

    move-result-wide v1

    move-wide v8, v1

    goto :goto_1

    :cond_1
    move-wide/from16 v8, p6

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    .line 8
    sget-object v1, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/BlendMode$Companion;->z()I

    move-result v1

    move v10, v1

    goto :goto_2

    :cond_2
    move/from16 v10, p8

    :goto_2
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v11, v0

    goto :goto_3

    :cond_3
    move/from16 v11, p9

    :goto_3
    const/4 v12, 0x0

    move-object v2, p0

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 9
    invoke-direct/range {v2 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZLkotlin/jvm/internal/k;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;FFFFJIZLkotlin/jvm/internal/k;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p9}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZ)V

    return-void
.end method

.method public static synthetic b(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/lang/String;FFFFFFFLjava/util/List;ILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .locals 10

    .line 1
    .line 2
    move/from16 v0, p10

    .line 3
    .line 4
    and-int/lit8 v1, v0, 0x1

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const-string v1, ""

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v1, p1

    .line 11
    .line 12
    :goto_0
    and-int/lit8 v2, v0, 0x2

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    move v2, v3

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move v2, p2

    .line 19
    .line 20
    :goto_1
    and-int/lit8 v4, v0, 0x4

    .line 21
    .line 22
    if-eqz v4, :cond_2

    .line 23
    move v4, v3

    .line 24
    goto :goto_2

    .line 25
    :cond_2
    move v4, p3

    .line 26
    .line 27
    :goto_2
    and-int/lit8 v5, v0, 0x8

    .line 28
    .line 29
    if-eqz v5, :cond_3

    .line 30
    move v5, v3

    .line 31
    goto :goto_3

    .line 32
    :cond_3
    move v5, p4

    .line 33
    .line 34
    :goto_3
    and-int/lit8 v6, v0, 0x10

    .line 35
    .line 36
    const/high16 v7, 0x3f800000    # 1.0f

    .line 37
    .line 38
    if-eqz v6, :cond_4

    .line 39
    move v6, v7

    .line 40
    goto :goto_4

    .line 41
    :cond_4
    move v6, p5

    .line 42
    .line 43
    :goto_4
    and-int/lit8 v8, v0, 0x20

    .line 44
    .line 45
    if-eqz v8, :cond_5

    .line 46
    goto :goto_5

    .line 47
    .line 48
    :cond_5
    move/from16 v7, p6

    .line 49
    .line 50
    :goto_5
    and-int/lit8 v8, v0, 0x40

    .line 51
    .line 52
    if-eqz v8, :cond_6

    .line 53
    move v8, v3

    .line 54
    goto :goto_6

    .line 55
    .line 56
    :cond_6
    move/from16 v8, p7

    .line 57
    .line 58
    :goto_6
    and-int/lit16 v9, v0, 0x80

    .line 59
    .line 60
    if-eqz v9, :cond_7

    .line 61
    goto :goto_7

    .line 62
    .line 63
    :cond_7
    move/from16 v3, p8

    .line 64
    .line 65
    :goto_7
    and-int/lit16 v0, v0, 0x100

    .line 66
    .line 67
    if-eqz v0, :cond_8

    .line 68
    .line 69
    .line 70
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->e()Ljava/util/List;

    .line 71
    move-result-object v0

    .line 72
    goto :goto_8

    .line 73
    .line 74
    :cond_8
    move-object/from16 v0, p9

    .line 75
    :goto_8
    move-object p1, v1

    .line 76
    move p2, v2

    .line 77
    move p3, v4

    .line 78
    move p4, v5

    .line 79
    move p5, v6

    .line 80
    .line 81
    move/from16 p6, v7

    .line 82
    .line 83
    move/from16 p7, v8

    .line 84
    .line 85
    move/from16 p8, v3

    .line 86
    .line 87
    move-object/from16 p9, v0

    .line 88
    .line 89
    .line 90
    invoke-virtual/range {p0 .. p9}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->a(Ljava/lang/String;FFFFFFFLjava/util/List;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 91
    move-result-object v0

    .line 92
    return-object v0
.end method

.method public static synthetic d(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .locals 15

    .line 1
    .line 2
    move/from16 v0, p15

    .line 3
    .line 4
    and-int/lit8 v1, v0, 0x2

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->b()I

    .line 10
    move-result v1

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    move/from16 v1, p2

    .line 14
    .line 15
    :goto_0
    and-int/lit8 v2, v0, 0x4

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    const-string v2, ""

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_1
    move-object/from16 v2, p3

    .line 23
    .line 24
    :goto_1
    and-int/lit8 v3, v0, 0x8

    .line 25
    const/4 v4, 0x0

    .line 26
    .line 27
    if-eqz v3, :cond_2

    .line 28
    move-object v3, v4

    .line 29
    goto :goto_2

    .line 30
    .line 31
    :cond_2
    move-object/from16 v3, p4

    .line 32
    .line 33
    :goto_2
    and-int/lit8 v5, v0, 0x10

    .line 34
    .line 35
    const/high16 v6, 0x3f800000    # 1.0f

    .line 36
    .line 37
    if-eqz v5, :cond_3

    .line 38
    move v5, v6

    .line 39
    goto :goto_3

    .line 40
    .line 41
    :cond_3
    move/from16 v5, p5

    .line 42
    .line 43
    :goto_3
    and-int/lit8 v7, v0, 0x20

    .line 44
    .line 45
    if-eqz v7, :cond_4

    .line 46
    goto :goto_4

    .line 47
    .line 48
    :cond_4
    move-object/from16 v4, p6

    .line 49
    .line 50
    :goto_4
    and-int/lit8 v7, v0, 0x40

    .line 51
    .line 52
    if-eqz v7, :cond_5

    .line 53
    move v7, v6

    .line 54
    goto :goto_5

    .line 55
    .line 56
    :cond_5
    move/from16 v7, p7

    .line 57
    .line 58
    :goto_5
    and-int/lit16 v8, v0, 0x80

    .line 59
    const/4 v9, 0x0

    .line 60
    .line 61
    if-eqz v8, :cond_6

    .line 62
    move v8, v9

    .line 63
    goto :goto_6

    .line 64
    .line 65
    :cond_6
    move/from16 v8, p8

    .line 66
    .line 67
    :goto_6
    and-int/lit16 v10, v0, 0x100

    .line 68
    .line 69
    if-eqz v10, :cond_7

    .line 70
    .line 71
    .line 72
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->c()I

    .line 73
    move-result v10

    .line 74
    goto :goto_7

    .line 75
    .line 76
    :cond_7
    move/from16 v10, p9

    .line 77
    .line 78
    :goto_7
    and-int/lit16 v11, v0, 0x200

    .line 79
    .line 80
    if-eqz v11, :cond_8

    .line 81
    .line 82
    .line 83
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->d()I

    .line 84
    move-result v11

    .line 85
    goto :goto_8

    .line 86
    .line 87
    :cond_8
    move/from16 v11, p10

    .line 88
    .line 89
    :goto_8
    and-int/lit16 v12, v0, 0x400

    .line 90
    .line 91
    if-eqz v12, :cond_9

    .line 92
    .line 93
    const/high16 v12, 0x40800000    # 4.0f

    .line 94
    goto :goto_9

    .line 95
    .line 96
    :cond_9
    move/from16 v12, p11

    .line 97
    .line 98
    :goto_9
    and-int/lit16 v13, v0, 0x800

    .line 99
    .line 100
    if-eqz v13, :cond_a

    .line 101
    move v13, v9

    .line 102
    goto :goto_a

    .line 103
    .line 104
    :cond_a
    move/from16 v13, p12

    .line 105
    .line 106
    :goto_a
    and-int/lit16 v14, v0, 0x1000

    .line 107
    .line 108
    if-eqz v14, :cond_b

    .line 109
    goto :goto_b

    .line 110
    .line 111
    :cond_b
    move/from16 v6, p13

    .line 112
    .line 113
    :goto_b
    and-int/lit16 v0, v0, 0x2000

    .line 114
    .line 115
    if-eqz v0, :cond_c

    .line 116
    goto :goto_c

    .line 117
    .line 118
    :cond_c
    move/from16 v9, p14

    .line 119
    .line 120
    :goto_c
    move-object/from16 p2, p0

    .line 121
    .line 122
    move-object/from16 p3, p1

    .line 123
    .line 124
    move/from16 p4, v1

    .line 125
    .line 126
    move-object/from16 p5, v2

    .line 127
    .line 128
    move-object/from16 p6, v3

    .line 129
    .line 130
    move/from16 p7, v5

    .line 131
    .line 132
    move-object/from16 p8, v4

    .line 133
    .line 134
    move/from16 p9, v7

    .line 135
    .line 136
    move/from16 p10, v8

    .line 137
    .line 138
    move/from16 p11, v10

    .line 139
    .line 140
    move/from16 p12, v11

    .line 141
    .line 142
    move/from16 p13, v12

    .line 143
    .line 144
    move/from16 p14, v13

    .line 145
    .line 146
    move/from16 p15, v6

    .line 147
    .line 148
    move/from16 p16, v9

    .line 149
    .line 150
    .line 151
    invoke-virtual/range {p2 .. p16}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->c(Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFF)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 152
    move-result-object v0

    .line 153
    return-object v0
.end method

.method private final e(Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;)Landroidx/compose/ui/graphics/vector/VectorGroup;
    .locals 12

    .line 1
    .line 2
    new-instance v11, Landroidx/compose/ui/graphics/vector/VectorGroup;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->c()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->f()F

    .line 10
    move-result v2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->d()F

    .line 14
    move-result v3

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->e()F

    .line 18
    move-result v4

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->g()F

    .line 22
    move-result v5

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->h()F

    .line 26
    move-result v6

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->i()F

    .line 30
    move-result v7

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->j()F

    .line 34
    move-result v8

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->b()Ljava/util/List;

    .line 38
    move-result-object v9

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->a()Ljava/util/List;

    .line 42
    move-result-object v10

    .line 43
    move-object v0, v11

    .line 44
    .line 45
    .line 46
    invoke-direct/range {v0 .. v10}, Landroidx/compose/ui/graphics/vector/VectorGroup;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/List;)V

    .line 47
    return-object v11
.end method

.method private final h()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->isConsumed:Z

    .line 3
    .line 4
    xor-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string v1, "ImageVector.Builder is single use, create a new instance to create a new ImageVector"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0
.end method

.method private final i()Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->nodes:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/ui/graphics/vector/Stack;->f(Ljava/util/ArrayList;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    .line 9
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;FFFFFFFLjava/util/List;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .locals 15
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "FFFFFFF",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;)",
            "Landroidx/compose/ui/graphics/vector/ImageVector$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    const-string v1, "name"

    .line 4
    .line 5
    move-object/from16 v3, p1

    .line 6
    .line 7
    .line 8
    invoke-static {v3, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    const-string v1, "clipPathData"

    .line 11
    .line 12
    move-object/from16 v11, p9

    .line 13
    .line 14
    .line 15
    invoke-static {v11, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->h()V

    .line 19
    .line 20
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    .line 21
    const/4 v12, 0x0

    .line 22
    .line 23
    const/16 v13, 0x200

    .line 24
    const/4 v14, 0x0

    .line 25
    move-object v2, v1

    .line 26
    .line 27
    move/from16 v4, p2

    .line 28
    .line 29
    move/from16 v5, p3

    .line 30
    .line 31
    move/from16 v6, p4

    .line 32
    .line 33
    move/from16 v7, p5

    .line 34
    .line 35
    move/from16 v8, p6

    .line 36
    .line 37
    move/from16 v9, p7

    .line 38
    .line 39
    move/from16 v10, p8

    .line 40
    .line 41
    .line 42
    invoke-direct/range {v2 .. v14}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 43
    .line 44
    iget-object v2, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->nodes:Ljava/util/ArrayList;

    .line 45
    .line 46
    .line 47
    invoke-static {v2, v1}, Landroidx/compose/ui/graphics/vector/Stack;->h(Ljava/util/ArrayList;Ljava/lang/Object;)Z

    .line 48
    return-object v0
.end method

.method public final c(Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFF)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .locals 18
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/graphics/Brush;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/ui/graphics/Brush;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;I",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/graphics/Brush;",
            "F",
            "Landroidx/compose/ui/graphics/Brush;",
            "FFIIFFFF)",
            "Landroidx/compose/ui/graphics/vector/ImageVector$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "pathData"

    .line 3
    .line 4
    move-object/from16 v3, p1

    .line 5
    .line 6
    .line 7
    invoke-static {v3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    const-string v0, "name"

    .line 10
    .line 11
    move-object/from16 v2, p3

    .line 12
    .line 13
    .line 14
    invoke-static {v2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->h()V

    .line 18
    .line 19
    .line 20
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->i()Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->a()Ljava/util/List;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    new-instance v15, Landroidx/compose/ui/graphics/vector/VectorPath;

    .line 28
    .line 29
    const/16 v16, 0x0

    .line 30
    move-object v1, v15

    .line 31
    .line 32
    move/from16 v4, p2

    .line 33
    .line 34
    move-object/from16 v5, p4

    .line 35
    .line 36
    move/from16 v6, p5

    .line 37
    .line 38
    move-object/from16 v7, p6

    .line 39
    .line 40
    move/from16 v8, p7

    .line 41
    .line 42
    move/from16 v9, p8

    .line 43
    .line 44
    move/from16 v10, p9

    .line 45
    .line 46
    move/from16 v11, p10

    .line 47
    .line 48
    move/from16 v12, p11

    .line 49
    .line 50
    move/from16 v13, p12

    .line 51
    .line 52
    move/from16 v14, p13

    .line 53
    .line 54
    move-object/from16 v17, v15

    .line 55
    .line 56
    move/from16 v15, p14

    .line 57
    .line 58
    .line 59
    invoke-direct/range {v1 .. v16}, Landroidx/compose/ui/graphics/vector/VectorPath;-><init>(Ljava/lang/String;Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFLkotlin/jvm/internal/k;)V

    .line 60
    .line 61
    move-object/from16 v1, v17

    .line 62
    .line 63
    .line 64
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    return-object p0
.end method

.method public final f()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 14
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->h()V

    .line 4
    .line 5
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->nodes:Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroidx/compose/ui/graphics/vector/Stack;->d(Ljava/util/ArrayList;)I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    if-le v0, v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->g()Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    new-instance v0, Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 19
    .line 20
    iget-object v3, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->name:Ljava/lang/String;

    .line 21
    .line 22
    iget v4, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->defaultWidth:F

    .line 23
    .line 24
    iget v5, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->defaultHeight:F

    .line 25
    .line 26
    iget v6, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->viewportWidth:F

    .line 27
    .line 28
    iget v7, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->viewportHeight:F

    .line 29
    .line 30
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->root:Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v2}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->e(Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;)Landroidx/compose/ui/graphics/vector/VectorGroup;

    .line 34
    move-result-object v8

    .line 35
    .line 36
    iget-wide v9, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->tintColor:J

    .line 37
    .line 38
    iget v11, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->tintBlendMode:I

    .line 39
    .line 40
    iget-boolean v12, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->autoMirror:Z

    .line 41
    const/4 v13, 0x0

    .line 42
    move-object v2, v0

    .line 43
    .line 44
    .line 45
    invoke-direct/range {v2 .. v13}, Landroidx/compose/ui/graphics/vector/ImageVector;-><init>(Ljava/lang/String;FFFFLandroidx/compose/ui/graphics/vector/VectorGroup;JIZLkotlin/jvm/internal/k;)V

    .line 46
    .line 47
    iput-boolean v1, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->isConsumed:Z

    .line 48
    return-object v0
.end method

.method public final g()Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->h()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->nodes:Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroidx/compose/ui/graphics/vector/Stack;->g(Ljava/util/ArrayList;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->i()Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->a()Ljava/util/List;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->e(Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;)Landroidx/compose/ui/graphics/vector/VectorGroup;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    return-object p0
.end method
