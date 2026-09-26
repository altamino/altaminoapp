.class final Landroidx/compose/material/BadgeKt$BadgedBox$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/BadgeKt;->b(Le8/q;Landroidx/compose/ui/Modifier;Le8/q;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBadge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Badge.kt\nandroidx/compose/material/BadgeKt$BadgedBox$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,187:1\n221#2,2:188\n221#2,2:190\n*S KotlinDebug\n*F\n+ 1 Badge.kt\nandroidx/compose/material/BadgeKt$BadgedBox$2\n*L\n79#1:188,2\n85#1:190,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/material/BadgeKt$BadgedBox$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material/BadgeKt$BadgedBox$2;

    invoke-direct {v0}, Landroidx/compose/material/BadgeKt$BadgedBox$2;-><init>()V

    sput-object v0, Landroidx/compose/material/BadgeKt$BadgedBox$2;->INSTANCE:Landroidx/compose/material/BadgeKt$BadgedBox$2;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 14
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
    move-object v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "$this$Layout"

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    const-string v2, "measurables"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    check-cast v1, Ljava/lang/Iterable;

    .line 16
    .line 17
    .line 18
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v3

    .line 24
    .line 25
    const-string v4, "Collection contains no element matching the predicate."

    .line 26
    .line 27
    if-eqz v3, :cond_3

    .line 28
    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    check-cast v3, Landroidx/compose/ui/layout/Measurable;

    .line 34
    .line 35
    .line 36
    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 37
    move-result-object v5

    .line 38
    .line 39
    const-string v6, "badge"

    .line 40
    .line 41
    .line 42
    invoke-static {v5, v6}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    move-result v5

    .line 44
    .line 45
    if-eqz v5, :cond_2

    .line 46
    const/4 v8, 0x0

    .line 47
    const/4 v9, 0x0

    .line 48
    const/4 v10, 0x0

    .line 49
    const/4 v11, 0x0

    .line 50
    .line 51
    const/16 v12, 0xb

    .line 52
    const/4 v13, 0x0

    .line 53
    .line 54
    move-wide/from16 v6, p3

    .line 55
    .line 56
    .line 57
    invoke-static/range {v6 .. v13}, Landroidx/compose/ui/unit/Constraints;->e(JIIIIILjava/lang/Object;)J

    .line 58
    move-result-wide v5

    .line 59
    .line 60
    .line 61
    invoke-interface {v3, v5, v6}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 62
    move-result-object v2

    .line 63
    .line 64
    .line 65
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    .line 69
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    move-result v3

    .line 71
    .line 72
    if-eqz v3, :cond_1

    .line 73
    .line 74
    .line 75
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    move-result-object v3

    .line 77
    .line 78
    check-cast v3, Landroidx/compose/ui/layout/Measurable;

    .line 79
    .line 80
    .line 81
    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 82
    move-result-object v5

    .line 83
    .line 84
    const-string v6, "anchor"

    .line 85
    .line 86
    .line 87
    invoke-static {v5, v6}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    move-result v5

    .line 89
    .line 90
    if-eqz v5, :cond_0

    .line 91
    .line 92
    move-wide/from16 v5, p3

    .line 93
    .line 94
    .line 95
    invoke-interface {v3, v5, v6}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    .line 99
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->a()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 100
    move-result-object v3

    .line 101
    .line 102
    .line 103
    invoke-interface {v1, v3}, Landroidx/compose/ui/layout/Measured;->c0(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 104
    move-result v3

    .line 105
    .line 106
    .line 107
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->b()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 108
    move-result-object v4

    .line 109
    .line 110
    .line 111
    invoke-interface {v1, v4}, Landroidx/compose/ui/layout/Measured;->c0(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 112
    move-result v4

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 116
    move-result v5

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 120
    move-result v6

    .line 121
    const/4 v7, 0x2

    .line 122
    .line 123
    new-array v7, v7, [Lw7/u;

    .line 124
    .line 125
    .line 126
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->a()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 127
    move-result-object v8

    .line 128
    .line 129
    .line 130
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    move-result-object v3

    .line 132
    .line 133
    .line 134
    invoke-static {v8, v3}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 135
    move-result-object v3

    .line 136
    const/4 v8, 0x0

    .line 137
    .line 138
    aput-object v3, v7, v8

    .line 139
    .line 140
    .line 141
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->b()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 142
    move-result-object v3

    .line 143
    .line 144
    .line 145
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    move-result-object v4

    .line 147
    .line 148
    .line 149
    invoke-static {v3, v4}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 150
    move-result-object v3

    .line 151
    const/4 v4, 0x1

    .line 152
    .line 153
    aput-object v3, v7, v4

    .line 154
    .line 155
    .line 156
    invoke-static {v7}, Lkotlin/collections/p0;->l([Lw7/u;)Ljava/util/Map;

    .line 157
    move-result-object v3

    .line 158
    .line 159
    new-instance v4, Landroidx/compose/material/BadgeKt$BadgedBox$2$measure$1;

    .line 160
    .line 161
    .line 162
    invoke-direct {v4, v2, p1, v1}, Landroidx/compose/material/BadgeKt$BadgedBox$2$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;)V

    .line 163
    .line 164
    .line 165
    invoke-interface {p1, v5, v6, v3, v4}, Landroidx/compose/ui/layout/MeasureScope;->G0(IILjava/util/Map;Le8/l;)Landroidx/compose/ui/layout/MeasureResult;

    .line 166
    move-result-object v0

    .line 167
    return-object v0

    .line 168
    .line 169
    :cond_0
    move-wide/from16 v5, p3

    .line 170
    goto :goto_1

    .line 171
    .line 172
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 173
    .line 174
    .line 175
    invoke-direct {v0, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 176
    throw v0

    .line 177
    .line 178
    :cond_2
    move-wide/from16 v5, p3

    .line 179
    .line 180
    goto/16 :goto_0

    .line 181
    .line 182
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 183
    .line 184
    .line 185
    invoke-direct {v0, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 186
    throw v0
.end method

.method public synthetic b(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/c;->c(Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    move-result p1

    return p1
.end method

.method public synthetic c(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/c;->d(Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    move-result p1

    return p1
.end method

.method public synthetic d(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/c;->a(Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    move-result p1

    return p1
.end method

.method public synthetic e(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/c;->b(Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    move-result p1

    return p1
.end method
