.class public final Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1;->a(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoreTextField.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoreTextField.kt\nandroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1$2\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n+ 3 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n*L\n1#1,966:1\n479#2,4:967\n484#2:976\n483#2:977\n122#3,5:971\n*S KotlinDebug\n*F\n+ 1 CoreTextField.kt\nandroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1$2\n*L\n559#1:967,4\n559#1:976\n559#1:977\n559#1:971,5\n*E\n"
.end annotation


# instance fields
.field final synthetic $onTextLayout:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $state:Landroidx/compose/foundation/text/TextFieldState;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/TextFieldState;Le8/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/TextFieldState;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1$2;->$state:Landroidx/compose/foundation/text/TextFieldState;

    .line 3
    .line 4
    iput-object p2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1$2;->$onTextLayout:Le8/l;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 8
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
    sget-object p2, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1$2;->$state:Landroidx/compose/foundation/text/TextFieldState;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    .line 21
    :try_start_0
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->k()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 22
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    .line 24
    .line 25
    :try_start_1
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->g()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->i()Landroidx/compose/ui/text/TextLayoutResult;

    .line 32
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    .line 36
    goto/16 :goto_1

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    .line 39
    .line 40
    :goto_0
    :try_start_2
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/snapshots/Snapshot;->r(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->d()V

    .line 44
    .line 45
    sget-object v2, Landroidx/compose/foundation/text/TextFieldDelegate;->Companion:Landroidx/compose/foundation/text/TextFieldDelegate$Companion;

    .line 46
    .line 47
    iget-object p2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1$2;->$state:Landroidx/compose/foundation/text/TextFieldState;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextFieldState;->q()Landroidx/compose/foundation/text/TextDelegate;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    .line 54
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 55
    move-result-object v6

    .line 56
    move-wide v4, p3

    .line 57
    move-object v7, v0

    .line 58
    .line 59
    .line 60
    invoke-virtual/range {v2 .. v7}, Landroidx/compose/foundation/text/TextFieldDelegate$Companion;->d(Landroidx/compose/foundation/text/TextDelegate;JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextLayoutResult;)Lw7/z;

    .line 61
    move-result-object p2

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Lw7/z;->a()Ljava/lang/Object;

    .line 65
    move-result-object p3

    .line 66
    .line 67
    check-cast p3, Ljava/lang/Number;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 71
    move-result p3

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Lw7/z;->b()Ljava/lang/Object;

    .line 75
    move-result-object p4

    .line 76
    .line 77
    check-cast p4, Ljava/lang/Number;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    .line 81
    move-result p4

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2}, Lw7/z;->c()Ljava/lang/Object;

    .line 85
    move-result-object p2

    .line 86
    .line 87
    check-cast p2, Landroidx/compose/ui/text/TextLayoutResult;

    .line 88
    .line 89
    .line 90
    invoke-static {v0, p2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    move-result v0

    .line 92
    .line 93
    if-nez v0, :cond_1

    .line 94
    .line 95
    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1$2;->$state:Landroidx/compose/foundation/text/TextFieldState;

    .line 96
    .line 97
    new-instance v1, Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 98
    .line 99
    .line 100
    invoke-direct {v1, p2}, Landroidx/compose/foundation/text/TextLayoutResultProxy;-><init>(Landroidx/compose/ui/text/TextLayoutResult;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/TextFieldState;->v(Landroidx/compose/foundation/text/TextLayoutResultProxy;)V

    .line 104
    .line 105
    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1$2;->$onTextLayout:Le8/l;

    .line 106
    .line 107
    .line 108
    invoke-interface {v0, p2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_1
    const/4 v0, 0x2

    .line 110
    .line 111
    new-array v0, v0, [Lw7/u;

    .line 112
    .line 113
    .line 114
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->a()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 115
    move-result-object v1

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Landroidx/compose/ui/text/TextLayoutResult;->g()F

    .line 119
    move-result v2

    .line 120
    .line 121
    .line 122
    invoke-static {v2}, Lg8/a;->c(F)I

    .line 123
    move-result v2

    .line 124
    .line 125
    .line 126
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    move-result-object v2

    .line 128
    .line 129
    .line 130
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 131
    move-result-object v1

    .line 132
    const/4 v2, 0x0

    .line 133
    .line 134
    aput-object v1, v0, v2

    .line 135
    .line 136
    .line 137
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->b()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 138
    move-result-object v1

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2}, Landroidx/compose/ui/text/TextLayoutResult;->j()F

    .line 142
    move-result p2

    .line 143
    .line 144
    .line 145
    invoke-static {p2}, Lg8/a;->c(F)I

    .line 146
    move-result p2

    .line 147
    .line 148
    .line 149
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    move-result-object p2

    .line 151
    .line 152
    .line 153
    invoke-static {v1, p2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 154
    move-result-object p2

    .line 155
    const/4 v1, 0x1

    .line 156
    .line 157
    aput-object p2, v0, v1

    .line 158
    .line 159
    .line 160
    invoke-static {v0}, Lkotlin/collections/p0;->l([Lw7/u;)Ljava/util/Map;

    .line 161
    move-result-object p2

    .line 162
    .line 163
    sget-object v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1$2$measure$1;->INSTANCE:Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1$2$measure$1;

    .line 164
    .line 165
    .line 166
    invoke-interface {p1, p3, p4, p2, v0}, Landroidx/compose/ui/layout/MeasureScope;->G0(IILjava/util/Map;Le8/l;)Landroidx/compose/ui/layout/MeasureResult;

    .line 167
    move-result-object p1

    .line 168
    return-object p1

    .line 169
    :catchall_1
    move-exception p1

    .line 170
    goto :goto_2

    .line 171
    .line 172
    .line 173
    :goto_1
    :try_start_3
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/snapshots/Snapshot;->r(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 174
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 175
    .line 176
    .line 177
    :goto_2
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->d()V

    .line 178
    throw p1
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

.method public e(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
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
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 1
    .line 2
    const-string p3, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p3, "measurables"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object p2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1$2;->$state:Landroidx/compose/foundation/text/TextFieldState;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextFieldState;->q()Landroidx/compose/foundation/text/TextDelegate;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p1}, Landroidx/compose/foundation/text/TextDelegate;->n(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 24
    .line 25
    iget-object p1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1$2;->$state:Landroidx/compose/foundation/text/TextFieldState;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextFieldState;->q()Landroidx/compose/foundation/text/TextDelegate;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextDelegate;->c()I

    .line 33
    move-result p1

    .line 34
    return p1
.end method
