.class final Landroidx/compose/ui/platform/WrappedComposition$setContent$1$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/platform/WrappedComposition$setContent$1;->a(Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;)V
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


# instance fields
.field final synthetic $content:Le8/p;
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

.field final synthetic this$0:Landroidx/compose/ui/platform/WrappedComposition;


# direct methods
.method constructor <init>(Landroidx/compose/ui/platform/WrappedComposition;Le8/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/platform/WrappedComposition;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$1;->this$0:Landroidx/compose/ui/platform/WrappedComposition;

    iput-object p2, p0, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$1;->$content:Le8/p;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 5
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .line 1
    .line 2
    and-int/lit8 p2, p2, 0xb

    .line 3
    const/4 v0, 0x2

    .line 4
    .line 5
    if-ne p2, v0, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->b()Z

    .line 9
    move-result p2

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->g()V

    .line 16
    .line 17
    goto/16 :goto_5

    .line 18
    .line 19
    :cond_1
    :goto_0
    iget-object p2, p0, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$1;->this$0:Landroidx/compose/ui/platform/WrappedComposition;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Landroidx/compose/ui/platform/WrappedComposition;->y()Landroidx/compose/ui/platform/AndroidComposeView;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    sget v0, Landroidx/compose/ui/R$id;->inspection_slot_table_set:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    .line 32
    invoke-static {p2}, Lkotlin/jvm/internal/v0;->n(Ljava/lang/Object;)Z

    .line 33
    move-result v1

    .line 34
    const/4 v2, 0x0

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    check-cast p2, Ljava/util/Set;

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move-object p2, v2

    .line 41
    .line 42
    :goto_1
    if-nez p2, :cond_6

    .line 43
    .line 44
    iget-object p2, p0, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$1;->this$0:Landroidx/compose/ui/platform/WrappedComposition;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Landroidx/compose/ui/platform/WrappedComposition;->y()Landroidx/compose/ui/platform/AndroidComposeView;

    .line 48
    move-result-object p2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 52
    move-result-object p2

    .line 53
    .line 54
    instance-of v1, p2, Landroid/view/View;

    .line 55
    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    check-cast p2, Landroid/view/View;

    .line 59
    goto :goto_2

    .line 60
    :cond_3
    move-object p2, v2

    .line 61
    .line 62
    :goto_2
    if-eqz p2, :cond_4

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 66
    move-result-object p2

    .line 67
    goto :goto_3

    .line 68
    :cond_4
    move-object p2, v2

    .line 69
    .line 70
    .line 71
    :goto_3
    invoke-static {p2}, Lkotlin/jvm/internal/v0;->n(Ljava/lang/Object;)Z

    .line 72
    move-result v0

    .line 73
    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    check-cast p2, Ljava/util/Set;

    .line 77
    goto :goto_4

    .line 78
    :cond_5
    move-object p2, v2

    .line 79
    .line 80
    :cond_6
    :goto_4
    if-eqz p2, :cond_7

    .line 81
    .line 82
    .line 83
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->I()Landroidx/compose/runtime/tooling/CompositionData;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    .line 87
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    .line 91
    .line 92
    :cond_7
    iget-object v0, p0, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$1;->this$0:Landroidx/compose/ui/platform/WrappedComposition;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Landroidx/compose/ui/platform/WrappedComposition;->y()Landroidx/compose/ui/platform/AndroidComposeView;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    new-instance v1, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$1$1;

    .line 99
    .line 100
    iget-object v3, p0, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$1;->this$0:Landroidx/compose/ui/platform/WrappedComposition;

    .line 101
    .line 102
    .line 103
    invoke-direct {v1, v3, v2}, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$1$1;-><init>(Landroidx/compose/ui/platform/WrappedComposition;Lkotlin/coroutines/d;)V

    .line 104
    .line 105
    const/16 v3, 0x8

    .line 106
    .line 107
    .line 108
    invoke-static {v0, v1, p1, v3}, Landroidx/compose/runtime/EffectsKt;->d(Ljava/lang/Object;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 109
    .line 110
    iget-object v0, p0, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$1;->this$0:Landroidx/compose/ui/platform/WrappedComposition;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Landroidx/compose/ui/platform/WrappedComposition;->y()Landroidx/compose/ui/platform/AndroidComposeView;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    new-instance v1, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$1$2;

    .line 117
    .line 118
    iget-object v4, p0, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$1;->this$0:Landroidx/compose/ui/platform/WrappedComposition;

    .line 119
    .line 120
    .line 121
    invoke-direct {v1, v4, v2}, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$1$2;-><init>(Landroidx/compose/ui/platform/WrappedComposition;Lkotlin/coroutines/d;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v0, v1, p1, v3}, Landroidx/compose/runtime/EffectsKt;->d(Ljava/lang/Object;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 125
    const/4 v0, 0x1

    .line 126
    .line 127
    new-array v1, v0, [Landroidx/compose/runtime/ProvidedValue;

    .line 128
    .line 129
    .line 130
    invoke-static {}, Landroidx/compose/runtime/tooling/InspectionTablesKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 131
    move-result-object v2

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, p2}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 135
    move-result-object p2

    .line 136
    const/4 v2, 0x0

    .line 137
    .line 138
    aput-object p2, v1, v2

    .line 139
    .line 140
    new-instance p2, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$1$3;

    .line 141
    .line 142
    iget-object v2, p0, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$1;->this$0:Landroidx/compose/ui/platform/WrappedComposition;

    .line 143
    .line 144
    iget-object v3, p0, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$1;->$content:Le8/p;

    .line 145
    .line 146
    .line 147
    invoke-direct {p2, v2, v3}, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$1$3;-><init>(Landroidx/compose/ui/platform/WrappedComposition;Le8/p;)V

    .line 148
    .line 149
    .line 150
    const v2, -0x4722c3de

    .line 151
    .line 152
    .line 153
    invoke-static {p1, v2, v0, p2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 154
    move-result-object p2

    .line 155
    .line 156
    const/16 v0, 0x38

    .line 157
    .line 158
    .line 159
    invoke-static {v1, p2, p1, v0}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 160
    :goto_5
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$1;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
