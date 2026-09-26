.class final Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt$nestedScroll$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/q<",
        "Landroidx/compose/ui/Modifier;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/ui/Modifier;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNestedScrollModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NestedScrollModifier.kt\nandroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt$nestedScroll$2\n+ 2 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n*L\n1#1,344:1\n473#2,4:345\n477#2,2:353\n481#2:359\n25#3:349\n25#3:360\n67#3,3:367\n66#3:370\n1057#4,3:350\n1060#4,3:356\n1057#4,6:361\n1057#4,6:371\n473#5:355\n*S KotlinDebug\n*F\n+ 1 NestedScrollModifier.kt\nandroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt$nestedScroll$2\n*L\n337#1:345,4\n337#1:353,2\n337#1:359\n337#1:349\n339#1:360\n340#1:367,3\n340#1:370\n337#1:350,3\n337#1:356,3\n339#1:361,6\n340#1:371,6\n337#1:355\n*E\n"
.end annotation


# instance fields
.field final synthetic $connection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

.field final synthetic $dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;


# direct methods
.method constructor <init>(Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt$nestedScroll$2;->$dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    iput-object p2, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt$nestedScroll$2;->$connection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 4
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p3, "$this$composed"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p1, 0x187562b7

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    .line 14
    const p1, 0x2e20b340

    .line 15
    .line 16
    .line 17
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 18
    .line 19
    .line 20
    const p1, -0x1d58f75c

    .line 21
    .line 22
    .line 23
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 27
    move-result-object p3

    .line 28
    .line 29
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    if-ne p3, v1, :cond_0

    .line 36
    .line 37
    sget-object p3, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    .line 38
    .line 39
    .line 40
    invoke-static {p3, p2}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/g;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/o0;

    .line 41
    move-result-object p3

    .line 42
    .line 43
    new-instance v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 44
    .line 45
    .line 46
    invoke-direct {v1, p3}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/o0;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 50
    move-object p3, v1

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 54
    .line 55
    check-cast p3, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->a()Lkotlinx/coroutines/o0;

    .line 59
    move-result-object p3

    .line 60
    .line 61
    .line 62
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 63
    .line 64
    iget-object v1, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt$nestedScroll$2;->$dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 65
    .line 66
    .line 67
    const v2, 0x5fd2422

    .line 68
    .line 69
    .line 70
    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 71
    .line 72
    if-nez v1, :cond_2

    .line 73
    .line 74
    .line 75
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 76
    .line 77
    .line 78
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    if-ne p1, v1, :cond_1

    .line 86
    .line 87
    new-instance p1, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 88
    .line 89
    .line 90
    invoke-direct {p1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 97
    move-object v1, p1

    .line 98
    .line 99
    check-cast v1, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 100
    .line 101
    .line 102
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 103
    .line 104
    iget-object p1, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt$nestedScroll$2;->$connection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 105
    .line 106
    .line 107
    const v2, 0x607fb4c4

    .line 108
    .line 109
    .line 110
    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 111
    .line 112
    .line 113
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 114
    move-result v2

    .line 115
    .line 116
    .line 117
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 118
    move-result v3

    .line 119
    or-int/2addr v2, v3

    .line 120
    .line 121
    .line 122
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 123
    move-result v3

    .line 124
    or-int/2addr v2, v3

    .line 125
    .line 126
    .line 127
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 128
    move-result-object v3

    .line 129
    .line 130
    if-nez v2, :cond_3

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 134
    move-result-object v0

    .line 135
    .line 136
    if-ne v3, v0, :cond_4

    .line 137
    .line 138
    .line 139
    :cond_3
    invoke-virtual {v1, p3}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->h(Lkotlinx/coroutines/o0;)V

    .line 140
    .line 141
    new-instance v3, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;

    .line 142
    .line 143
    .line 144
    invoke-direct {v3, v1, p1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;-><init>(Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;)V

    .line 145
    .line 146
    .line 147
    invoke-interface {p2, v3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    :cond_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 151
    .line 152
    check-cast v3, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;

    .line 153
    .line 154
    .line 155
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 156
    return-object v3
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/Modifier;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 5
    .line 6
    check-cast p3, Ljava/lang/Number;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 10
    move-result p3

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt$nestedScroll$2;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
