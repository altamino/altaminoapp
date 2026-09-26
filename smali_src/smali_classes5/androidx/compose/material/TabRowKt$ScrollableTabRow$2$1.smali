.class final Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/TabRowKt$ScrollableTabRow$2;->a(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTabRow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TabRow.kt\nandroidx/compose/material/TabRowKt$ScrollableTabRow$2$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,517:1\n1547#2:518\n1618#2,3:519\n1849#2,2:522\n*S KotlinDebug\n*F\n+ 1 TabRow.kt\nandroidx/compose/material/TabRowKt$ScrollableTabRow$2$1\n*L\n266#1:518\n266#1:519,3\n270#1:522,2\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $divider:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $edgePadding:F

.field final synthetic $indicator:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Ljava/util/List<",
            "Landroidx/compose/material/TabPosition;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $scrollableTabData:Landroidx/compose/material/ScrollableTabData;

.field final synthetic $selectedTabIndex:I

.field final synthetic $tabs:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(FLe8/p;Le8/p;Landroidx/compose/material/ScrollableTabData;ILe8/q;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/material/ScrollableTabData;",
            "I",
            "Le8/q<",
            "-",
            "Ljava/util/List<",
            "Landroidx/compose/material/TabPosition;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$edgePadding:F

    iput-object p2, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$tabs:Le8/p;

    iput-object p3, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$divider:Le8/p;

    iput-object p4, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$scrollableTabData:Landroidx/compose/material/ScrollableTabData;

    iput p5, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$selectedTabIndex:I

    iput-object p6, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$indicator:Le8/q;

    iput p7, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$$dirty:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 20
    .param p1    # Landroidx/compose/ui/layout/SubcomposeMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v14, p1

    .line 5
    .line 6
    const-string v1, "$this$SubcomposeLayout"

    .line 7
    .line 8
    .line 9
    invoke-static {v14, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroidx/compose/material/TabRowKt;->c()F

    .line 13
    move-result v1

    .line 14
    .line 15
    .line 16
    invoke-interface {v14, v1}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 17
    move-result v4

    .line 18
    .line 19
    iget v1, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$edgePadding:F

    .line 20
    .line 21
    .line 22
    invoke-interface {v14, v1}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 23
    move-result v10

    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v7, 0x0

    .line 27
    .line 28
    const/16 v8, 0xe

    .line 29
    const/4 v9, 0x0

    .line 30
    .line 31
    move-wide/from16 v2, p2

    .line 32
    .line 33
    .line 34
    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/unit/Constraints;->e(JIIIIILjava/lang/Object;)J

    .line 35
    move-result-wide v1

    .line 36
    .line 37
    sget-object v3, Landroidx/compose/material/TabSlots;->Tabs:Landroidx/compose/material/TabSlots;

    .line 38
    .line 39
    iget-object v4, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$tabs:Le8/p;

    .line 40
    .line 41
    .line 42
    invoke-interface {v14, v3, v4}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->v(Ljava/lang/Object;Le8/p;)Ljava/util/List;

    .line 43
    move-result-object v3

    .line 44
    .line 45
    check-cast v3, Ljava/lang/Iterable;

    .line 46
    .line 47
    new-instance v4, Ljava/util/ArrayList;

    .line 48
    .line 49
    const/16 v5, 0xa

    .line 50
    .line 51
    .line 52
    invoke-static {v3, v5}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 53
    move-result v5

    .line 54
    .line 55
    .line 56
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 60
    move-result-object v3

    .line 61
    .line 62
    .line 63
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    move-result v5

    .line 65
    .line 66
    if-eqz v5, :cond_0

    .line 67
    .line 68
    .line 69
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    move-result-object v5

    .line 71
    .line 72
    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    .line 73
    .line 74
    .line 75
    invoke-interface {v5, v1, v2}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 76
    move-result-object v5

    .line 77
    .line 78
    .line 79
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 80
    goto :goto_0

    .line 81
    .line 82
    :cond_0
    new-instance v11, Lkotlin/jvm/internal/n0;

    .line 83
    .line 84
    .line 85
    invoke-direct {v11}, Lkotlin/jvm/internal/n0;-><init>()V

    .line 86
    .line 87
    mul-int/lit8 v1, v10, 0x2

    .line 88
    .line 89
    iput v1, v11, Lkotlin/jvm/internal/n0;->element:I

    .line 90
    .line 91
    new-instance v12, Lkotlin/jvm/internal/n0;

    .line 92
    .line 93
    .line 94
    invoke-direct {v12}, Lkotlin/jvm/internal/n0;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    .line 101
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    move-result v2

    .line 103
    .line 104
    if-eqz v2, :cond_1

    .line 105
    .line 106
    .line 107
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    move-result-object v2

    .line 109
    .line 110
    check-cast v2, Landroidx/compose/ui/layout/Placeable;

    .line 111
    .line 112
    iget v3, v11, Lkotlin/jvm/internal/n0;->element:I

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 116
    move-result v5

    .line 117
    add-int/2addr v3, v5

    .line 118
    .line 119
    iput v3, v11, Lkotlin/jvm/internal/n0;->element:I

    .line 120
    .line 121
    iget v3, v12, Lkotlin/jvm/internal/n0;->element:I

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 125
    move-result v2

    .line 126
    .line 127
    .line 128
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 129
    move-result v2

    .line 130
    .line 131
    iput v2, v12, Lkotlin/jvm/internal/n0;->element:I

    .line 132
    goto :goto_1

    .line 133
    .line 134
    :cond_1
    iget v15, v11, Lkotlin/jvm/internal/n0;->element:I

    .line 135
    .line 136
    iget v13, v12, Lkotlin/jvm/internal/n0;->element:I

    .line 137
    .line 138
    const/16 v16, 0x0

    .line 139
    .line 140
    new-instance v17, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;

    .line 141
    .line 142
    iget-object v5, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$divider:Le8/p;

    .line 143
    .line 144
    iget-object v6, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$scrollableTabData:Landroidx/compose/material/ScrollableTabData;

    .line 145
    .line 146
    iget v7, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$selectedTabIndex:I

    .line 147
    .line 148
    iget-object v8, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$indicator:Le8/q;

    .line 149
    .line 150
    iget v9, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$$dirty:I

    .line 151
    .line 152
    move-object/from16 v1, v17

    .line 153
    move v2, v10

    .line 154
    move-object v3, v4

    .line 155
    .line 156
    move-object/from16 v4, p1

    .line 157
    .line 158
    move-object/from16 v18, v8

    .line 159
    .line 160
    move/from16 v19, v9

    .line 161
    .line 162
    move-wide/from16 v8, p2

    .line 163
    move-object v10, v11

    .line 164
    move-object v11, v12

    .line 165
    .line 166
    move-object/from16 v12, v18

    .line 167
    .line 168
    move/from16 v18, v13

    .line 169
    .line 170
    move/from16 v13, v19

    .line 171
    .line 172
    .line 173
    invoke-direct/range {v1 .. v13}, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;-><init>(ILjava/util/List;Landroidx/compose/ui/layout/SubcomposeMeasureScope;Le8/p;Landroidx/compose/material/ScrollableTabData;IJLkotlin/jvm/internal/n0;Lkotlin/jvm/internal/n0;Le8/q;I)V

    .line 174
    const/4 v6, 0x4

    .line 175
    const/4 v7, 0x0

    .line 176
    .line 177
    move-object/from16 v1, p1

    .line 178
    move v2, v15

    .line 179
    .line 180
    move/from16 v3, v18

    .line 181
    .line 182
    move-object/from16 v4, v16

    .line 183
    .line 184
    move-object/from16 v5, v17

    .line 185
    .line 186
    .line 187
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 188
    move-result-object v1

    .line 189
    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/ui/unit/Constraints;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroidx/compose/ui/unit/Constraints;->t()J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->a(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
