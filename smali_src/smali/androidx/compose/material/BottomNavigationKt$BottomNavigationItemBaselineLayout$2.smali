.class final Landroidx/compose/material/BottomNavigationKt$BottomNavigationItemBaselineLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/BottomNavigationKt;->c(Le8/p;Le8/p;FLandroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBottomNavigation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BottomNavigation.kt\nandroidx/compose/material/BottomNavigationKt$BottomNavigationItemBaselineLayout$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,400:1\n221#2,2:401\n221#2,2:403\n*S KotlinDebug\n*F\n+ 1 BottomNavigation.kt\nandroidx/compose/material/BottomNavigationKt$BottomNavigationItemBaselineLayout$2\n*L\n273#1:401,2\n276#1:403,2\n*E\n"
.end annotation


# instance fields
.field final synthetic $iconPositionAnimationProgress:F

.field final synthetic $label:Le8/p;
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
.method constructor <init>(Le8/p;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;F)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/BottomNavigationKt$BottomNavigationItemBaselineLayout$2;->$label:Le8/p;

    iput p2, p0, Landroidx/compose/material/BottomNavigationKt$BottomNavigationItemBaselineLayout$2;->$iconPositionAnimationProgress:F

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
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    .line 4
    move-object/from16 v2, p2

    .line 5
    .line 6
    move-wide/from16 v10, p3

    .line 7
    .line 8
    const-string v3, "$this$Layout"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v3, "measurables"

    .line 14
    .line 15
    .line 16
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    check-cast v2, Ljava/lang/Iterable;

    .line 19
    .line 20
    .line 21
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v4

    .line 27
    .line 28
    const-string v5, "Collection contains no element matching the predicate."

    .line 29
    .line 30
    if-eqz v4, :cond_5

    .line 31
    .line 32
    .line 33
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v4

    .line 35
    .line 36
    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    .line 37
    .line 38
    .line 39
    invoke-static {v4}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 40
    move-result-object v6

    .line 41
    .line 42
    const-string v7, "icon"

    .line 43
    .line 44
    .line 45
    invoke-static {v6, v7}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    move-result v6

    .line 47
    .line 48
    if-eqz v6, :cond_0

    .line 49
    .line 50
    .line 51
    invoke-interface {v4, v10, v11}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 52
    move-result-object v12

    .line 53
    .line 54
    iget-object v3, v0, Landroidx/compose/material/BottomNavigationKt$BottomNavigationItemBaselineLayout$2;->$label:Le8/p;

    .line 55
    .line 56
    if-eqz v3, :cond_3

    .line 57
    .line 58
    .line 59
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    move-result v3

    .line 65
    .line 66
    if-eqz v3, :cond_2

    .line 67
    .line 68
    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    move-result-object v3

    .line 71
    move-object v13, v3

    .line 72
    .line 73
    check-cast v13, Landroidx/compose/ui/layout/Measurable;

    .line 74
    .line 75
    .line 76
    invoke-static {v13}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 77
    move-result-object v3

    .line 78
    .line 79
    const-string v4, "label"

    .line 80
    .line 81
    .line 82
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    move-result v3

    .line 84
    .line 85
    if-eqz v3, :cond_1

    .line 86
    const/4 v4, 0x0

    .line 87
    const/4 v5, 0x0

    .line 88
    const/4 v6, 0x0

    .line 89
    const/4 v7, 0x0

    .line 90
    .line 91
    const/16 v8, 0xb

    .line 92
    const/4 v9, 0x0

    .line 93
    .line 94
    move-wide/from16 v2, p3

    .line 95
    .line 96
    .line 97
    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/unit/Constraints;->e(JIIIIILjava/lang/Object;)J

    .line 98
    move-result-wide v2

    .line 99
    .line 100
    .line 101
    invoke-interface {v13, v2, v3}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 102
    move-result-object v2

    .line 103
    goto :goto_0

    .line 104
    .line 105
    :cond_2
    new-instance v1, Ljava/util/NoSuchElementException;

    .line 106
    .line 107
    .line 108
    invoke-direct {v1, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 109
    throw v1

    .line 110
    :cond_3
    const/4 v2, 0x0

    .line 111
    .line 112
    :goto_0
    iget-object v3, v0, Landroidx/compose/material/BottomNavigationKt$BottomNavigationItemBaselineLayout$2;->$label:Le8/p;

    .line 113
    .line 114
    if-nez v3, :cond_4

    .line 115
    .line 116
    .line 117
    invoke-static {p1, v12, v10, v11}, Landroidx/compose/material/BottomNavigationKt;->j(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;J)Landroidx/compose/ui/layout/MeasureResult;

    .line 118
    move-result-object v1

    .line 119
    goto :goto_1

    .line 120
    .line 121
    .line 122
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 123
    .line 124
    iget v6, v0, Landroidx/compose/material/BottomNavigationKt$BottomNavigationItemBaselineLayout$2;->$iconPositionAnimationProgress:F

    .line 125
    move-object v1, p1

    .line 126
    move-object v3, v12

    .line 127
    .line 128
    move-wide/from16 v4, p3

    .line 129
    .line 130
    .line 131
    invoke-static/range {v1 .. v6}, Landroidx/compose/material/BottomNavigationKt;->k(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JF)Landroidx/compose/ui/layout/MeasureResult;

    .line 132
    move-result-object v1

    .line 133
    :goto_1
    return-object v1

    .line 134
    .line 135
    :cond_5
    new-instance v1, Ljava/util/NoSuchElementException;

    .line 136
    .line 137
    .line 138
    invoke-direct {v1, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 139
    throw v1
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
