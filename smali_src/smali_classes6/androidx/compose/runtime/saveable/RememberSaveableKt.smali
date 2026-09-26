.class public final Landroidx/compose/runtime/saveable/RememberSaveableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRememberSaveable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RememberSaveable.kt\nandroidx/compose/runtime/saveable/RememberSaveableKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,200:1\n76#2:201\n83#3,3:202\n1057#4,6:205\n*S KotlinDebug\n*F\n+ 1 RememberSaveable.kt\nandroidx/compose/runtime/saveable/RememberSaveableKt\n*L\n81#1:201\n83#1:202,3\n83#1:205,6\n*E\n"
.end annotation


# static fields
.field private static final MaxSupportedRadix:I = 0x24


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->c(Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method public static final b([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Le8/a;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;
    .locals 5
    .param p0    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/saveable/Saver;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "Landroidx/compose/runtime/saveable/Saver<",
            "TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Le8/a<",
            "+TT;>;",
            "Landroidx/compose/runtime/Composer;",
            "II)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p5, "inputs"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p5, "init"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, p5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const p5, 0x1a56bfab

    .line 14
    .line 15
    .line 16
    invoke-interface {p4, p5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 17
    .line 18
    and-int/lit8 p5, p6, 0x2

    .line 19
    .line 20
    if-eqz p5, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroidx/compose/runtime/saveable/SaverKt;->b()Landroidx/compose/runtime/saveable/Saver;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    :cond_0
    and-int/lit8 p5, p6, 0x4

    .line 27
    const/4 p6, 0x0

    .line 28
    .line 29
    if-eqz p5, :cond_1

    .line 30
    move-object p2, p6

    .line 31
    .line 32
    .line 33
    :cond_1
    const p5, 0x3f24a645

    .line 34
    .line 35
    .line 36
    invoke-interface {p4, p5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 37
    const/4 p5, 0x0

    .line 38
    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 43
    move-result v0

    .line 44
    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-static {p4, p5}, Landroidx/compose/runtime/ComposablesKt;->a(Landroidx/compose/runtime/Composer;I)I

    .line 49
    move-result p2

    .line 50
    .line 51
    sget v0, Landroidx/compose/runtime/saveable/RememberSaveableKt;->MaxSupportedRadix:I

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Lkotlin/text/a;->a(I)I

    .line 55
    move-result v0

    .line 56
    .line 57
    .line 58
    invoke-static {p2, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    const-string v0, "toString(this, checkRadix(radix))"

    .line 62
    .line 63
    .line 64
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 68
    .line 69
    if-eqz p1, :cond_a

    .line 70
    .line 71
    .line 72
    invoke-static {}, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->b()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 80
    array-length v1, p0

    .line 81
    .line 82
    .line 83
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 84
    move-result-object p0

    .line 85
    .line 86
    .line 87
    const v1, -0x21de6e89

    .line 88
    .line 89
    .line 90
    invoke-interface {p4, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 91
    array-length v1, p0

    .line 92
    move v2, p5

    .line 93
    move v3, v2

    .line 94
    .line 95
    :goto_0
    if-ge v2, v1, :cond_4

    .line 96
    .line 97
    aget-object v4, p0, v2

    .line 98
    .line 99
    .line 100
    invoke-interface {p4, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 101
    move-result v4

    .line 102
    or-int/2addr v3, v4

    .line 103
    .line 104
    add-int/lit8 v2, v2, 0x1

    .line 105
    goto :goto_0

    .line 106
    .line 107
    .line 108
    :cond_4
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 109
    move-result-object p0

    .line 110
    .line 111
    if-nez v3, :cond_5

    .line 112
    .line 113
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 117
    move-result-object v1

    .line 118
    .line 119
    if-ne p0, v1, :cond_8

    .line 120
    .line 121
    :cond_5
    if-eqz v0, :cond_6

    .line 122
    .line 123
    .line 124
    invoke-interface {v0, p2}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    move-result-object p0

    .line 126
    .line 127
    if-eqz p0, :cond_6

    .line 128
    .line 129
    .line 130
    invoke-interface {p1, p0}, Landroidx/compose/runtime/saveable/Saver;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    move-result-object p6

    .line 132
    .line 133
    :cond_6
    if-nez p6, :cond_7

    .line 134
    .line 135
    .line 136
    invoke-interface {p3}, Le8/a;->invoke()Ljava/lang/Object;

    .line 137
    move-result-object p0

    .line 138
    goto :goto_1

    .line 139
    :cond_7
    move-object p0, p6

    .line 140
    .line 141
    .line 142
    :goto_1
    invoke-interface {p4, p0}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    :cond_8
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 146
    .line 147
    if-eqz v0, :cond_9

    .line 148
    .line 149
    .line 150
    invoke-static {p1, p4, p5}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 151
    move-result-object p1

    .line 152
    .line 153
    .line 154
    invoke-static {p0, p4, p5}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 155
    move-result-object p3

    .line 156
    .line 157
    new-instance p6, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1;

    .line 158
    .line 159
    .line 160
    invoke-direct {p6, v0, p2, p1, p3}, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1;-><init>(Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/lang/String;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    .line 161
    .line 162
    .line 163
    invoke-static {v0, p2, p6, p4, p5}, Landroidx/compose/runtime/EffectsKt;->b(Ljava/lang/Object;Ljava/lang/Object;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 164
    .line 165
    .line 166
    :cond_9
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 167
    return-object p0

    .line 168
    .line 169
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    .line 170
    .line 171
    const-string p1, "null cannot be cast to non-null type androidx.compose.runtime.saveable.Saver<T of androidx.compose.runtime.saveable.RememberSaveableKt.rememberSaveable, kotlin.Any>"

    .line 172
    .line 173
    .line 174
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 175
    throw p0
.end method

.method private static final c(Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/lang/Object;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, p1}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->a(Ljava/lang/Object;)Z

    .line 6
    move-result p0

    .line 7
    .line 8
    if-nez p0, :cond_2

    .line 9
    .line 10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    instance-of v0, p1, Landroidx/compose/runtime/snapshots/SnapshotMutableState;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    check-cast p1, Landroidx/compose/runtime/snapshots/SnapshotMutableState;

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Landroidx/compose/runtime/snapshots/SnapshotMutableState;->g()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->i()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    if-eq v0, v1, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Landroidx/compose/runtime/snapshots/SnapshotMutableState;->g()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->p()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    if-eq v0, v1, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Landroidx/compose/runtime/snapshots/SnapshotMutableState;->g()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->m()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    if-eq v0, v1, :cond_0

    .line 47
    .line 48
    const-string p1, "If you use a custom SnapshotMutationPolicy for your MutableState you have to write a custom Saver"

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    const-string v1, "MutableState containing "

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-interface {p1}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string p1, " cannot be saved using the current SaveableStateRegistry. The default implementation only supports types which can be stored inside the Bundle. Please consider implementing a custom Saver for this class and pass it as a stateSaver parameter to rememberSaveable()."

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    goto :goto_0

    .line 77
    .line 78
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string p1, " cannot be saved using the current SaveableStateRegistry. The default implementation only supports types which can be stored inside the Bundle. Please consider implementing a custom Saver for this class and pass it to rememberSaveable()."

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    .line 96
    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 97
    throw p0

    .line 98
    :cond_2
    return-void
.end method
