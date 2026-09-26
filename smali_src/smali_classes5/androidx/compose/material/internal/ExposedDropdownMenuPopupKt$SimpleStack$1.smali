.class public final Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$SimpleStack$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExposedDropdownMenuPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExposedDropdownMenuPopup.kt\nandroidx/compose/material/internal/ExposedDropdownMenuPopupKt$SimpleStack$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,471:1\n126#2,3:472\n32#2,4:475\n129#2,2:479\n37#2:481\n131#2:482\n*S KotlinDebug\n*F\n+ 1 ExposedDropdownMenuPopup.kt\nandroidx/compose/material/internal/ExposedDropdownMenuPopupKt$SimpleStack$1\n*L\n187#1:472,3\n187#1:475,4\n187#1:479,2\n187#1:481\n187#1:482\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$SimpleStack$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$SimpleStack$1;

    invoke-direct {v0}, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$SimpleStack$1;-><init>()V

    sput-object v0, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$SimpleStack$1;->INSTANCE:Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$SimpleStack$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 10
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
    const-string v0, "$this$Layout"

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
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_4

    .line 17
    const/4 v1, 0x1

    .line 18
    const/4 v2, 0x0

    .line 19
    .line 20
    if-eq v0, v1, :cond_3

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 26
    move-result v1

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 33
    move-result v1

    .line 34
    move v3, v2

    .line 35
    .line 36
    :goto_0
    if-ge v3, v1, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v4

    .line 41
    .line 42
    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    .line 43
    .line 44
    .line 45
    invoke-interface {v4, p3, p4}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 46
    move-result-object v4

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    add-int/lit8 v3, v3, 0x1

    .line 52
    goto :goto_0

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-static {v0}, Lkotlin/collections/t;->o(Ljava/util/List;)I

    .line 56
    move-result p2

    .line 57
    .line 58
    if-ltz p2, :cond_2

    .line 59
    move p3, v2

    .line 60
    move p4, p3

    .line 61
    .line 62
    .line 63
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    check-cast v1, Landroidx/compose/ui/layout/Placeable;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 70
    move-result v3

    .line 71
    .line 72
    .line 73
    invoke-static {p3, v3}, Ljava/lang/Math;->max(II)I

    .line 74
    move-result p3

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 78
    move-result v1

    .line 79
    .line 80
    .line 81
    invoke-static {p4, v1}, Ljava/lang/Math;->max(II)I

    .line 82
    move-result p4

    .line 83
    .line 84
    if-eq v2, p2, :cond_1

    .line 85
    .line 86
    add-int/lit8 v2, v2, 0x1

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    move v4, p3

    .line 89
    move v5, p4

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    move v4, v2

    .line 92
    move v5, v4

    .line 93
    :goto_2
    const/4 v6, 0x0

    .line 94
    .line 95
    new-instance v7, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$SimpleStack$1$measure$3;

    .line 96
    .line 97
    .line 98
    invoke-direct {v7, v0}, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$SimpleStack$1$measure$3;-><init>(Ljava/util/List;)V

    .line 99
    const/4 v8, 0x4

    .line 100
    const/4 v9, 0x0

    .line 101
    move-object v3, p1

    .line 102
    .line 103
    .line 104
    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 105
    move-result-object p1

    .line 106
    goto :goto_3

    .line 107
    .line 108
    .line 109
    :cond_3
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 110
    move-result-object p2

    .line 111
    .line 112
    check-cast p2, Landroidx/compose/ui/layout/Measurable;

    .line 113
    .line 114
    .line 115
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 116
    move-result-object p2

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 120
    move-result v1

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 124
    move-result v2

    .line 125
    const/4 v3, 0x0

    .line 126
    .line 127
    new-instance v4, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$SimpleStack$1$measure$2;

    .line 128
    .line 129
    .line 130
    invoke-direct {v4, p2}, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$SimpleStack$1$measure$2;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    .line 131
    const/4 v5, 0x4

    .line 132
    const/4 v6, 0x0

    .line 133
    move-object v0, p1

    .line 134
    .line 135
    .line 136
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 137
    move-result-object p1

    .line 138
    goto :goto_3

    .line 139
    :cond_4
    const/4 v1, 0x0

    .line 140
    const/4 v2, 0x0

    .line 141
    const/4 v3, 0x0

    .line 142
    .line 143
    sget-object v4, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$SimpleStack$1$measure$1;->INSTANCE:Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$SimpleStack$1$measure$1;

    .line 144
    const/4 v5, 0x4

    .line 145
    const/4 v6, 0x0

    .line 146
    move-object v0, p1

    .line 147
    .line 148
    .line 149
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 150
    move-result-object p1

    .line 151
    :goto_3
    return-object p1
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
