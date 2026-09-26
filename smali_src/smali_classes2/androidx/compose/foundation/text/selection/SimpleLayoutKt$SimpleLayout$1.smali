.class final Landroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/selection/SimpleLayoutKt;->a(Landroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSimpleLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SimpleLayout.kt\nandroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 TempListUtils.kt\nandroidx/compose/foundation/TempListUtilsKt\n*L\n1#1,53:1\n126#2,3:54\n32#2,4:57\n129#2,2:61\n37#2:63\n131#2:64\n32#2,4:68\n37#2:74\n32#2,4:79\n37#2:85\n57#3,3:65\n60#3,2:72\n62#3:75\n57#3,3:76\n60#3,2:83\n62#3:86\n*S KotlinDebug\n*F\n+ 1 SimpleLayout.kt\nandroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1\n*L\n34#1:54,3\n34#1:57,4\n34#1:61,2\n34#1:63\n34#1:64\n38#1:68,4\n38#1:74\n42#1:79,4\n42#1:85\n38#1:65,3\n38#1:72,2\n38#1:75\n42#1:76,3\n42#1:83,2\n42#1:86\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1;

    invoke-direct {v0}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1;->INSTANCE:Landroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
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
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x0

    .line 25
    .line 26
    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v3

    .line 29
    move v4, v2

    .line 30
    .line 31
    :goto_0
    if-ge v4, v1, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v5

    .line 36
    .line 37
    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    .line 38
    .line 39
    .line 40
    invoke-interface {v5, p3, p4}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 41
    move-result-object v5

    .line 42
    .line 43
    .line 44
    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    add-int/lit8 v4, v4, 0x1

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 51
    move-result p2

    .line 52
    move p3, v2

    .line 53
    move-object p4, v3

    .line 54
    .line 55
    :goto_1
    if-ge p3, p2, :cond_1

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    check-cast v1, Landroidx/compose/ui/layout/Placeable;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    .line 65
    move-result p4

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 69
    move-result v1

    .line 70
    .line 71
    .line 72
    invoke-static {p4, v1}, Ljava/lang/Math;->max(II)I

    .line 73
    move-result p4

    .line 74
    .line 75
    .line 76
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    move-result-object p4

    .line 78
    .line 79
    add-int/lit8 p3, p3, 0x1

    .line 80
    goto :goto_1

    .line 81
    .line 82
    .line 83
    :cond_1
    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    .line 84
    move-result v5

    .line 85
    .line 86
    .line 87
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 88
    move-result p2

    .line 89
    .line 90
    :goto_2
    if-ge v2, p2, :cond_2

    .line 91
    .line 92
    .line 93
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    move-result-object p3

    .line 95
    .line 96
    check-cast p3, Landroidx/compose/ui/layout/Placeable;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 100
    move-result p4

    .line 101
    .line 102
    .line 103
    invoke-virtual {p3}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 104
    move-result p3

    .line 105
    .line 106
    .line 107
    invoke-static {p4, p3}, Ljava/lang/Math;->max(II)I

    .line 108
    move-result p3

    .line 109
    .line 110
    .line 111
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    move-result-object v3

    .line 113
    .line 114
    add-int/lit8 v2, v2, 0x1

    .line 115
    goto :goto_2

    .line 116
    .line 117
    .line 118
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 119
    move-result v6

    .line 120
    const/4 v7, 0x0

    .line 121
    .line 122
    new-instance v8, Landroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1$measure$1;

    .line 123
    .line 124
    .line 125
    invoke-direct {v8, v0}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1$measure$1;-><init>(Ljava/util/List;)V

    .line 126
    const/4 v9, 0x4

    .line 127
    const/4 v10, 0x0

    .line 128
    move-object v4, p1

    .line 129
    .line 130
    .line 131
    invoke-static/range {v4 .. v10}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 132
    move-result-object p1

    .line 133
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
