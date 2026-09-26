.class final Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/AnimatedContentKt;->a(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Le8/l;Landroidx/compose/ui/Alignment;Le8/l;Le8/r;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimatedContent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimatedContent.kt\nandroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,737:1\n25#2:738\n36#2:745\n25#2:752\n1057#3,6:739\n1057#3,6:746\n1057#3,6:753\n1#4:759\n*S KotlinDebug\n*F\n+ 1 AnimatedContent.kt\nandroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1\n*L\n626#1:738\n630#1:745\n633#1:752\n626#1:739,6\n630#1:746,6\n633#1:753,6\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $content:Le8/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/r<",
            "Landroidx/compose/animation/AnimatedVisibilityScope;",
            "TS;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $currentlyVisible:Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "TS;>;"
        }
    .end annotation
.end field

.field final synthetic $rootScope:Landroidx/compose/animation/AnimatedContentScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/AnimatedContentScope<",
            "TS;>;"
        }
    .end annotation
.end field

.field final synthetic $stateForContent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field final synthetic $this_AnimatedContent:Landroidx/compose/animation/core/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;"
        }
    .end annotation
.end field

.field final synthetic $transitionSpec:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/animation/AnimatedContentScope<",
            "TS;>;",
            "Landroidx/compose/animation/ContentTransform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;ILe8/l;Landroidx/compose/animation/AnimatedContentScope;Le8/r;Landroidx/compose/runtime/snapshots/SnapshotStateList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;TS;I",
            "Le8/l<",
            "-",
            "Landroidx/compose/animation/AnimatedContentScope<",
            "TS;>;",
            "Landroidx/compose/animation/ContentTransform;",
            ">;",
            "Landroidx/compose/animation/AnimatedContentScope<",
            "TS;>;",
            "Le8/r<",
            "-",
            "Landroidx/compose/animation/AnimatedVisibilityScope;",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "TS;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$this_AnimatedContent:Landroidx/compose/animation/core/Transition;

    iput-object p2, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$stateForContent:Ljava/lang/Object;

    iput p3, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$$dirty:I

    iput-object p4, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$transitionSpec:Le8/l;

    iput-object p5, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$rootScope:Landroidx/compose/animation/AnimatedContentScope;

    iput-object p6, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$content:Le8/r;

    iput-object p7, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$currentlyVisible:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 14
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v7, p1

    .line 3
    .line 4
    and-int/lit8 v1, p2, 0xb

    .line 5
    const/4 v2, 0x2

    .line 6
    .line 7
    if-ne v1, v2, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->b()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->g()V

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_1
    :goto_0
    iget-object v1, v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$transitionSpec:Le8/l;

    .line 22
    .line 23
    iget-object v2, v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$rootScope:Landroidx/compose/animation/AnimatedContentScope;

    .line 24
    .line 25
    .line 26
    const v3, -0x1d58f75c

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 33
    move-result-object v4

    .line 34
    .line 35
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 39
    move-result-object v6

    .line 40
    .line 41
    if-ne v4, v6, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-interface {v1, v2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    move-object v4, v1

    .line 47
    .line 48
    check-cast v4, Landroidx/compose/animation/ContentTransform;

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v4}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 55
    .line 56
    check-cast v4, Landroidx/compose/animation/ContentTransform;

    .line 57
    .line 58
    iget-object v1, v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$this_AnimatedContent:Landroidx/compose/animation/core/Transition;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->k()Landroidx/compose/animation/core/Transition$Segment;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-interface {v1}, Landroidx/compose/animation/core/Transition$Segment;->b()Ljava/lang/Object;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    iget-object v2, v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$stateForContent:Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    move-result v1

    .line 73
    .line 74
    .line 75
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    iget-object v2, v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$transitionSpec:Le8/l;

    .line 79
    .line 80
    iget-object v6, v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$rootScope:Landroidx/compose/animation/AnimatedContentScope;

    .line 81
    .line 82
    .line 83
    const v8, 0x44faf204

    .line 84
    .line 85
    .line 86
    invoke-interface {p1, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 87
    .line 88
    .line 89
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 90
    move-result v1

    .line 91
    .line 92
    .line 93
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 94
    move-result-object v8

    .line 95
    .line 96
    if-nez v1, :cond_3

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 100
    move-result-object v1

    .line 101
    .line 102
    if-ne v8, v1, :cond_4

    .line 103
    .line 104
    .line 105
    :cond_3
    invoke-interface {v2, v6}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    check-cast v1, Landroidx/compose/animation/ContentTransform;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Landroidx/compose/animation/ContentTransform;->a()Landroidx/compose/animation/ExitTransition;

    .line 112
    move-result-object v8

    .line 113
    .line 114
    .line 115
    invoke-interface {p1, v8}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    :cond_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 119
    move-object v6, v8

    .line 120
    .line 121
    check-cast v6, Landroidx/compose/animation/ExitTransition;

    .line 122
    .line 123
    iget-object v1, v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$stateForContent:Ljava/lang/Object;

    .line 124
    .line 125
    iget-object v2, v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$this_AnimatedContent:Landroidx/compose/animation/core/Transition;

    .line 126
    .line 127
    .line 128
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 129
    .line 130
    .line 131
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 132
    move-result-object v3

    .line 133
    .line 134
    .line 135
    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 136
    move-result-object v5

    .line 137
    .line 138
    if-ne v3, v5, :cond_5

    .line 139
    .line 140
    new-instance v3, Landroidx/compose/animation/AnimatedContentScope$ChildData;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 144
    move-result-object v2

    .line 145
    .line 146
    .line 147
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    move-result v1

    .line 149
    .line 150
    .line 151
    invoke-direct {v3, v1}, Landroidx/compose/animation/AnimatedContentScope$ChildData;-><init>(Z)V

    .line 152
    .line 153
    .line 154
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    :cond_5
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 158
    .line 159
    check-cast v3, Landroidx/compose/animation/AnimatedContentScope$ChildData;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4}, Landroidx/compose/animation/ContentTransform;->c()Landroidx/compose/animation/EnterTransition;

    .line 163
    move-result-object v5

    .line 164
    .line 165
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 166
    .line 167
    new-instance v2, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$1;

    .line 168
    .line 169
    .line 170
    invoke-direct {v2, v4}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$1;-><init>(Landroidx/compose/animation/ContentTransform;)V

    .line 171
    .line 172
    .line 173
    invoke-static {v1, v2}, Landroidx/compose/ui/layout/LayoutModifierKt;->a(Landroidx/compose/ui/Modifier;Le8/q;)Landroidx/compose/ui/Modifier;

    .line 174
    move-result-object v1

    .line 175
    .line 176
    iget-object v2, v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$stateForContent:Ljava/lang/Object;

    .line 177
    .line 178
    iget-object v4, v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$this_AnimatedContent:Landroidx/compose/animation/core/Transition;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 182
    move-result-object v4

    .line 183
    .line 184
    .line 185
    invoke-static {v2, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 186
    move-result v2

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3, v2}, Landroidx/compose/animation/AnimatedContentScope$ChildData;->b(Z)V

    .line 190
    .line 191
    .line 192
    invoke-interface {v1, v3}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 193
    move-result-object v3

    .line 194
    .line 195
    iget-object v1, v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$this_AnimatedContent:Landroidx/compose/animation/core/Transition;

    .line 196
    .line 197
    new-instance v2, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$3;

    .line 198
    .line 199
    iget-object v4, v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$stateForContent:Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    invoke-direct {v2, v4}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$3;-><init>(Ljava/lang/Object;)V

    .line 203
    .line 204
    new-instance v4, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4;

    .line 205
    .line 206
    iget-object v9, v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$rootScope:Landroidx/compose/animation/AnimatedContentScope;

    .line 207
    .line 208
    iget-object v10, v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$stateForContent:Ljava/lang/Object;

    .line 209
    .line 210
    iget-object v11, v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$content:Le8/r;

    .line 211
    .line 212
    iget v12, v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$$dirty:I

    .line 213
    .line 214
    iget-object v13, v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$currentlyVisible:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 215
    move-object v8, v4

    .line 216
    .line 217
    .line 218
    invoke-direct/range {v8 .. v13}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4;-><init>(Landroidx/compose/animation/AnimatedContentScope;Ljava/lang/Object;Le8/r;ILandroidx/compose/runtime/snapshots/SnapshotStateList;)V

    .line 219
    .line 220
    .line 221
    const v8, -0x6c4bce92

    .line 222
    const/4 v9, 0x1

    .line 223
    .line 224
    .line 225
    invoke-static {p1, v8, v9, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 226
    move-result-object v8

    .line 227
    .line 228
    iget v4, v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$$dirty:I

    .line 229
    .line 230
    and-int/lit8 v4, v4, 0xe

    .line 231
    .line 232
    const/high16 v9, 0x30000

    .line 233
    or-int/2addr v9, v4

    .line 234
    const/4 v10, 0x0

    .line 235
    move-object v4, v5

    .line 236
    move-object v5, v6

    .line 237
    move-object v6, v8

    .line 238
    move-object v7, p1

    .line 239
    move v8, v9

    .line 240
    move v9, v10

    .line 241
    .line 242
    .line 243
    invoke-static/range {v1 .. v9}, Landroidx/compose/animation/AnimatedVisibilityKt;->c(Landroidx/compose/animation/core/Transition;Le8/l;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Le8/q;Landroidx/compose/runtime/Composer;II)V

    .line 244
    :goto_1
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 8
    move-result p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
