.class final Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/window/AndroidDialog_androidKt;->c(Landroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidDialog.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidDialog.android.kt\nandroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,411:1\n126#2,3:412\n32#2,4:415\n129#2,2:419\n37#2:421\n131#2:422\n145#2,13:423\n145#2,13:436\n*S KotlinDebug\n*F\n+ 1 AndroidDialog.android.kt\nandroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1\n*L\n404#1:412,3\n404#1:415,4\n404#1:419,2\n404#1:421\n404#1:422\n405#1:423,13\n406#1:436,13\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1;

    invoke-direct {v0}, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1;->INSTANCE:Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1;

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
    move v3, v2

    .line 26
    .line 27
    :goto_0
    if-ge v3, v1, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v4

    .line 32
    .line 33
    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    .line 34
    .line 35
    .line 36
    invoke-interface {v4, p3, p4}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 37
    move-result-object v4

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 47
    move-result p2

    .line 48
    const/4 v1, 0x0

    .line 49
    const/4 v3, 0x1

    .line 50
    .line 51
    if-eqz p2, :cond_1

    .line 52
    move-object p2, v1

    .line 53
    goto :goto_2

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object p2

    .line 58
    move-object v4, p2

    .line 59
    .line 60
    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 64
    move-result v4

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Lkotlin/collections/t;->o(Ljava/util/List;)I

    .line 68
    move-result v5

    .line 69
    .line 70
    if-gt v3, v5, :cond_3

    .line 71
    move v6, v3

    .line 72
    .line 73
    .line 74
    :goto_1
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    move-result-object v7

    .line 76
    move-object v8, v7

    .line 77
    .line 78
    check-cast v8, Landroidx/compose/ui/layout/Placeable;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 82
    move-result v8

    .line 83
    .line 84
    if-ge v4, v8, :cond_2

    .line 85
    move-object p2, v7

    .line 86
    move v4, v8

    .line 87
    .line 88
    :cond_2
    if-eq v6, v5, :cond_3

    .line 89
    .line 90
    add-int/lit8 v6, v6, 0x1

    .line 91
    goto :goto_1

    .line 92
    .line 93
    :cond_3
    :goto_2
    check-cast p2, Landroidx/compose/ui/layout/Placeable;

    .line 94
    .line 95
    if-eqz p2, :cond_4

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 99
    move-result p2

    .line 100
    :goto_3
    move v5, p2

    .line 101
    goto :goto_4

    .line 102
    .line 103
    .line 104
    :cond_4
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->p(J)I

    .line 105
    move-result p2

    .line 106
    goto :goto_3

    .line 107
    .line 108
    .line 109
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 110
    move-result p2

    .line 111
    .line 112
    if-eqz p2, :cond_5

    .line 113
    goto :goto_6

    .line 114
    .line 115
    .line 116
    :cond_5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 117
    move-result-object p2

    .line 118
    move-object v1, p2

    .line 119
    .line 120
    check-cast v1, Landroidx/compose/ui/layout/Placeable;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 124
    move-result v1

    .line 125
    .line 126
    .line 127
    invoke-static {v0}, Lkotlin/collections/t;->o(Ljava/util/List;)I

    .line 128
    move-result v2

    .line 129
    .line 130
    if-gt v3, v2, :cond_7

    .line 131
    .line 132
    .line 133
    :goto_5
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 134
    move-result-object v4

    .line 135
    move-object v6, v4

    .line 136
    .line 137
    check-cast v6, Landroidx/compose/ui/layout/Placeable;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 141
    move-result v6

    .line 142
    .line 143
    if-ge v1, v6, :cond_6

    .line 144
    move-object p2, v4

    .line 145
    move v1, v6

    .line 146
    .line 147
    :cond_6
    if-eq v3, v2, :cond_7

    .line 148
    .line 149
    add-int/lit8 v3, v3, 0x1

    .line 150
    goto :goto_5

    .line 151
    :cond_7
    move-object v1, p2

    .line 152
    .line 153
    :goto_6
    check-cast v1, Landroidx/compose/ui/layout/Placeable;

    .line 154
    .line 155
    if-eqz v1, :cond_8

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 159
    move-result p2

    .line 160
    :goto_7
    move v6, p2

    .line 161
    goto :goto_8

    .line 162
    .line 163
    .line 164
    :cond_8
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->o(J)I

    .line 165
    move-result p2

    .line 166
    goto :goto_7

    .line 167
    :goto_8
    const/4 v7, 0x0

    .line 168
    .line 169
    new-instance v8, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1$measure$1;

    .line 170
    .line 171
    .line 172
    invoke-direct {v8, v0}, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1$measure$1;-><init>(Ljava/util/List;)V

    .line 173
    const/4 v9, 0x4

    .line 174
    const/4 v10, 0x0

    .line 175
    move-object v4, p1

    .line 176
    .line 177
    .line 178
    invoke-static/range {v4 .. v10}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 179
    move-result-object p1

    .line 180
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
