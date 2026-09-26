.class public final Landroidx/compose/ui/layout/RootMeasurePolicy;
.super Landroidx/compose/ui/node/LayoutNode$NoIntrinsicsMeasurePolicy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRootMeasurePolicy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RootMeasurePolicy.kt\nandroidx/compose/ui/layout/RootMeasurePolicy\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,67:1\n126#2,3:68\n32#2,4:71\n129#2,2:75\n37#2:77\n131#2:78\n32#2,6:79\n*S KotlinDebug\n*F\n+ 1 RootMeasurePolicy.kt\nandroidx/compose/ui/layout/RootMeasurePolicy\n*L\n47#1:68,3\n47#1:71,4\n47#1:75,2\n47#1:77\n47#1:78\n52#1:79,6\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/layout/RootMeasurePolicy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/layout/RootMeasurePolicy;

    invoke-direct {v0}, Landroidx/compose/ui/layout/RootMeasurePolicy;-><init>()V

    sput-object v0, Landroidx/compose/ui/layout/RootMeasurePolicy;->INSTANCE:Landroidx/compose/ui/layout/RootMeasurePolicy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "Undefined intrinsics block and it is required"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Landroidx/compose/ui/node/LayoutNode$NoIntrinsicsMeasurePolicy;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 11
    .param p1    # Landroidx/compose/ui/layout/MeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$measure"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "measurables"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->p(J)I

    .line 20
    move-result v2

    .line 21
    .line 22
    .line 23
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->o(J)I

    .line 24
    move-result v3

    .line 25
    const/4 v4, 0x0

    .line 26
    .line 27
    sget-object v5, Landroidx/compose/ui/layout/RootMeasurePolicy$measure$1;->INSTANCE:Landroidx/compose/ui/layout/RootMeasurePolicy$measure$1;

    .line 28
    const/4 v6, 0x4

    .line 29
    const/4 v7, 0x0

    .line 30
    move-object v1, p1

    .line 31
    .line 32
    .line 33
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    goto/16 :goto_2

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 40
    move-result v0

    .line 41
    const/4 v1, 0x1

    .line 42
    const/4 v2, 0x0

    .line 43
    .line 44
    if-ne v0, v1, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object p2

    .line 49
    .line 50
    check-cast p2, Landroidx/compose/ui/layout/Measurable;

    .line 51
    .line 52
    .line 53
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 54
    move-result-object p2

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 58
    move-result v0

    .line 59
    .line 60
    .line 61
    invoke-static {p3, p4, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->g(JI)I

    .line 62
    move-result v2

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 66
    move-result v0

    .line 67
    .line 68
    .line 69
    invoke-static {p3, p4, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->f(JI)I

    .line 70
    move-result v3

    .line 71
    const/4 v4, 0x0

    .line 72
    .line 73
    new-instance v5, Landroidx/compose/ui/layout/RootMeasurePolicy$measure$2;

    .line 74
    .line 75
    .line 76
    invoke-direct {v5, p2}, Landroidx/compose/ui/layout/RootMeasurePolicy$measure$2;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    .line 77
    const/4 v6, 0x4

    .line 78
    const/4 v7, 0x0

    .line 79
    move-object v1, p1

    .line 80
    .line 81
    .line 82
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 83
    move-result-object p1

    .line 84
    goto :goto_2

    .line 85
    .line 86
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 87
    .line 88
    .line 89
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 90
    move-result v1

    .line 91
    .line 92
    .line 93
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .line 95
    .line 96
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 97
    move-result v1

    .line 98
    move v3, v2

    .line 99
    .line 100
    :goto_0
    if-ge v3, v1, :cond_2

    .line 101
    .line 102
    .line 103
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    move-result-object v4

    .line 105
    .line 106
    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    .line 107
    .line 108
    .line 109
    invoke-interface {v4, p3, p4}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 110
    move-result-object v4

    .line 111
    .line 112
    .line 113
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    add-int/lit8 v3, v3, 0x1

    .line 116
    goto :goto_0

    .line 117
    .line 118
    .line 119
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 120
    move-result p2

    .line 121
    move v1, v2

    .line 122
    move v3, v1

    .line 123
    .line 124
    :goto_1
    if-ge v2, p2, :cond_3

    .line 125
    .line 126
    .line 127
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 128
    move-result-object v4

    .line 129
    .line 130
    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 134
    move-result v5

    .line 135
    .line 136
    .line 137
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 138
    move-result v1

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 142
    move-result v4

    .line 143
    .line 144
    .line 145
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 146
    move-result v3

    .line 147
    .line 148
    add-int/lit8 v2, v2, 0x1

    .line 149
    goto :goto_1

    .line 150
    .line 151
    .line 152
    :cond_3
    invoke-static {p3, p4, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->g(JI)I

    .line 153
    move-result v5

    .line 154
    .line 155
    .line 156
    invoke-static {p3, p4, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->f(JI)I

    .line 157
    move-result v6

    .line 158
    const/4 v7, 0x0

    .line 159
    .line 160
    new-instance v8, Landroidx/compose/ui/layout/RootMeasurePolicy$measure$4;

    .line 161
    .line 162
    .line 163
    invoke-direct {v8, v0}, Landroidx/compose/ui/layout/RootMeasurePolicy$measure$4;-><init>(Ljava/util/List;)V

    .line 164
    const/4 v9, 0x4

    .line 165
    const/4 v10, 0x0

    .line 166
    move-object v4, p1

    .line 167
    .line 168
    .line 169
    invoke-static/range {v4 .. v10}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 170
    move-result-object p1

    .line 171
    :goto_2
    return-object p1
.end method
