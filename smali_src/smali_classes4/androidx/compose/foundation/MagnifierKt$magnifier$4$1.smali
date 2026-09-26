.class final Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/MagnifierKt$magnifier$4;->i(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/p<",
        "Lkotlinx/coroutines/o0;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.compose.foundation.MagnifierKt$magnifier$4$1"
    f = "Magnifier.kt"
    l = {
        0x16d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $anchorPositionInRoot$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $density:Landroidx/compose/ui/unit/Density;

.field final synthetic $isMagnifierShown$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onNeedsUpdate:Lkotlinx/coroutines/flow/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/w<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

.field final synthetic $sourceCenterInRoot$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $style:Landroidx/compose/foundation/MagnifierStyle;

.field final synthetic $updatedMagnifierCenter$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Le8/l<",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $updatedOnSizeChanged$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Le8/l<",
            "Landroidx/compose/ui/unit/DpSize;",
            "Lw7/l0;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $updatedZoom$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $view:Landroid/view/View;

.field final synthetic $zoom:F

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/foundation/PlatformMagnifierFactory;Landroidx/compose/foundation/MagnifierStyle;Landroid/view/View;Landroidx/compose/ui/unit/Density;FLkotlinx/coroutines/flow/w;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/PlatformMagnifierFactory;",
            "Landroidx/compose/foundation/MagnifierStyle;",
            "Landroid/view/View;",
            "Landroidx/compose/ui/unit/Density;",
            "F",
            "Lkotlinx/coroutines/flow/w<",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/unit/DpSize;",
            "Lw7/l0;",
            ">;>;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;>;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    iput-object p2, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$style:Landroidx/compose/foundation/MagnifierStyle;

    iput-object p3, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$view:Landroid/view/View;

    iput-object p4, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$density:Landroidx/compose/ui/unit/Density;

    iput p5, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$zoom:F

    iput-object p6, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$onNeedsUpdate:Lkotlinx/coroutines/flow/w;

    iput-object p7, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$updatedOnSizeChanged$delegate:Landroidx/compose/runtime/State;

    iput-object p8, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$isMagnifierShown$delegate:Landroidx/compose/runtime/State;

    iput-object p9, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$sourceCenterInRoot$delegate:Landroidx/compose/runtime/State;

    iput-object p10, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$updatedMagnifierCenter$delegate:Landroidx/compose/runtime/State;

    iput-object p11, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$anchorPositionInRoot$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p12, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$updatedZoom$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p13}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 16
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d<",
            "*>;)",
            "Lkotlin/coroutines/d<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    new-instance v15, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;

    iget-object v2, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    iget-object v3, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$style:Landroidx/compose/foundation/MagnifierStyle;

    iget-object v4, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$view:Landroid/view/View;

    iget-object v5, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$density:Landroidx/compose/ui/unit/Density;

    iget v6, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$zoom:F

    iget-object v7, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$onNeedsUpdate:Lkotlinx/coroutines/flow/w;

    iget-object v8, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$updatedOnSizeChanged$delegate:Landroidx/compose/runtime/State;

    iget-object v9, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$isMagnifierShown$delegate:Landroidx/compose/runtime/State;

    iget-object v10, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$sourceCenterInRoot$delegate:Landroidx/compose/runtime/State;

    iget-object v11, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$updatedMagnifierCenter$delegate:Landroidx/compose/runtime/State;

    iget-object v12, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$anchorPositionInRoot$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v13, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$updatedZoom$delegate:Landroidx/compose/runtime/State;

    move-object v1, v15

    move-object/from16 v14, p2

    invoke-direct/range {v1 .. v14}, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;-><init>(Landroidx/compose/foundation/PlatformMagnifierFactory;Landroidx/compose/foundation/MagnifierStyle;Landroid/view/View;Landroidx/compose/ui/unit/Density;FLkotlinx/coroutines/flow/w;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/d;)V

    move-object/from16 v1, p1

    iput-object v1, v15, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->L$0:Ljava/lang/Object;

    return-object v15
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/o0;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget v2, v1, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->label:I

    .line 9
    const/4 v3, 0x1

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    if-ne v2, v3, :cond_0

    .line 14
    .line 15
    iget-object v0, v1, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->L$0:Ljava/lang/Object;

    .line 16
    move-object v2, v0

    .line 17
    .line 18
    check-cast v2, Landroidx/compose/foundation/PlatformMagnifier;

    .line 19
    .line 20
    .line 21
    :try_start_0
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    throw v0

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    iget-object v2, v1, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v2, Lkotlinx/coroutines/o0;

    .line 42
    .line 43
    iget-object v4, v1, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    .line 44
    .line 45
    iget-object v5, v1, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$style:Landroidx/compose/foundation/MagnifierStyle;

    .line 46
    .line 47
    iget-object v6, v1, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$view:Landroid/view/View;

    .line 48
    .line 49
    iget-object v7, v1, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$density:Landroidx/compose/ui/unit/Density;

    .line 50
    .line 51
    iget v8, v1, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$zoom:F

    .line 52
    .line 53
    .line 54
    invoke-interface {v4, v5, v6, v7, v8}, Landroidx/compose/foundation/PlatformMagnifierFactory;->a(Landroidx/compose/foundation/MagnifierStyle;Landroid/view/View;Landroidx/compose/ui/unit/Density;F)Landroidx/compose/foundation/PlatformMagnifier;

    .line 55
    move-result-object v4

    .line 56
    .line 57
    new-instance v5, Lkotlin/jvm/internal/o0;

    .line 58
    .line 59
    .line 60
    invoke-direct {v5}, Lkotlin/jvm/internal/o0;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-interface {v4}, Landroidx/compose/foundation/PlatformMagnifier;->a()J

    .line 64
    move-result-wide v6

    .line 65
    .line 66
    iget-object v8, v1, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$density:Landroidx/compose/ui/unit/Density;

    .line 67
    .line 68
    iget-object v9, v1, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$updatedOnSizeChanged$delegate:Landroidx/compose/runtime/State;

    .line 69
    .line 70
    .line 71
    invoke-static {v9}, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->g(Landroidx/compose/runtime/State;)Le8/l;

    .line 72
    move-result-object v9

    .line 73
    .line 74
    if-eqz v9, :cond_2

    .line 75
    .line 76
    .line 77
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntSizeKt;->b(J)J

    .line 78
    move-result-wide v10

    .line 79
    .line 80
    .line 81
    invoke-interface {v8, v10, v11}, Landroidx/compose/ui/unit/Density;->q(J)J

    .line 82
    move-result-wide v10

    .line 83
    .line 84
    .line 85
    invoke-static {v10, v11}, Landroidx/compose/ui/unit/DpSize;->c(J)Landroidx/compose/ui/unit/DpSize;

    .line 86
    move-result-object v8

    .line 87
    .line 88
    .line 89
    invoke-interface {v9, v8}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    :cond_2
    iput-wide v6, v5, Lkotlin/jvm/internal/o0;->element:J

    .line 92
    .line 93
    iget-object v6, v1, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$onNeedsUpdate:Lkotlinx/coroutines/flow/w;

    .line 94
    .line 95
    new-instance v7, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1$1;

    .line 96
    const/4 v8, 0x0

    .line 97
    .line 98
    .line 99
    invoke-direct {v7, v4, v8}, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1$1;-><init>(Landroidx/compose/foundation/PlatformMagnifier;Lkotlin/coroutines/d;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v6, v7}, Lkotlinx/coroutines/flow/i;->F(Lkotlinx/coroutines/flow/g;Le8/p;)Lkotlinx/coroutines/flow/g;

    .line 103
    move-result-object v6

    .line 104
    .line 105
    .line 106
    invoke-static {v6, v2}, Lkotlinx/coroutines/flow/i;->C(Lkotlinx/coroutines/flow/g;Lkotlinx/coroutines/o0;)Lkotlinx/coroutines/b2;

    .line 107
    .line 108
    :try_start_1
    new-instance v2, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1$2;

    .line 109
    .line 110
    iget-object v11, v1, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$density:Landroidx/compose/ui/unit/Density;

    .line 111
    .line 112
    iget-object v12, v1, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$isMagnifierShown$delegate:Landroidx/compose/runtime/State;

    .line 113
    .line 114
    iget-object v13, v1, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$sourceCenterInRoot$delegate:Landroidx/compose/runtime/State;

    .line 115
    .line 116
    iget-object v14, v1, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$updatedMagnifierCenter$delegate:Landroidx/compose/runtime/State;

    .line 117
    .line 118
    iget-object v15, v1, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$anchorPositionInRoot$delegate:Landroidx/compose/runtime/MutableState;

    .line 119
    .line 120
    iget-object v6, v1, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$updatedZoom$delegate:Landroidx/compose/runtime/State;

    .line 121
    .line 122
    iget-object v7, v1, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$updatedOnSizeChanged$delegate:Landroidx/compose/runtime/State;

    .line 123
    move-object v9, v2

    .line 124
    move-object v10, v4

    .line 125
    .line 126
    move-object/from16 v16, v6

    .line 127
    .line 128
    move-object/from16 v17, v5

    .line 129
    .line 130
    move-object/from16 v18, v7

    .line 131
    .line 132
    .line 133
    invoke-direct/range {v9 .. v18}, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1$2;-><init>(Landroidx/compose/foundation/PlatformMagnifier;Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/jvm/internal/o0;Landroidx/compose/runtime/State;)V

    .line 134
    .line 135
    .line 136
    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->o(Le8/a;)Lkotlinx/coroutines/flow/g;

    .line 137
    move-result-object v2

    .line 138
    .line 139
    iput-object v4, v1, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->L$0:Ljava/lang/Object;

    .line 140
    .line 141
    iput v3, v1, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->label:I

    .line 142
    .line 143
    .line 144
    invoke-static {v2, v1}, Lkotlinx/coroutines/flow/i;->k(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 145
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 146
    .line 147
    if-ne v2, v0, :cond_3

    .line 148
    return-object v0

    .line 149
    :cond_3
    move-object v2, v4

    .line 150
    .line 151
    .line 152
    :goto_0
    invoke-interface {v2}, Landroidx/compose/foundation/PlatformMagnifier;->dismiss()V

    .line 153
    .line 154
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 155
    return-object v0

    .line 156
    :catchall_1
    move-exception v0

    .line 157
    move-object v2, v4

    .line 158
    .line 159
    .line 160
    :goto_1
    invoke-interface {v2}, Landroidx/compose/foundation/PlatformMagnifier;->dismiss()V

    .line 161
    throw v0
.end method
