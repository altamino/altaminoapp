.class final Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/window/layout/WindowInfoTrackerImpl;->a(Landroid/app/Activity;)Lkotlinx/coroutines/flow/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/p<",
        "Lkotlinx/coroutines/flow/h<",
        "-",
        "Landroidx/window/layout/WindowLayoutInfo;",
        ">;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.window.layout.WindowInfoTrackerImpl$windowLayoutInfo$1"
    f = "WindowInfoTrackerImpl.kt"
    l = {
        0x36,
        0x37
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/window/layout/WindowInfoTrackerImpl;


# direct methods
.method constructor <init>(Landroidx/window/layout/WindowInfoTrackerImpl;Landroid/app/Activity;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/window/layout/WindowInfoTrackerImpl;",
            "Landroid/app/Activity;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->this$0:Landroidx/window/layout/WindowInfoTrackerImpl;

    iput-object p2, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->$activity:Landroid/app/Activity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method

.method public static synthetic f(Lkotlinx/coroutines/channels/d;Landroidx/window/layout/WindowLayoutInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->g(Lkotlinx/coroutines/channels/d;Landroidx/window/layout/WindowLayoutInfo;)V

    return-void
.end method

.method private static final g(Lkotlinx/coroutines/channels/d;Landroidx/window/layout/WindowLayoutInfo;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "info"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/u;->p(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 3
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

    new-instance v0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;

    iget-object v1, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->this$0:Landroidx/window/layout/WindowInfoTrackerImpl;

    iget-object v2, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->$activity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2, p2}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;-><init>(Landroidx/window/layout/WindowInfoTrackerImpl;Landroid/app/Activity;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/h;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->invoke(Lkotlinx/coroutines/flow/h;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/h;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/flow/h;
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
            "Lkotlinx/coroutines/flow/h<",
            "-",
            "Landroidx/window/layout/WindowLayoutInfo;",
            ">;",
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
    invoke-virtual {p0, p1, p2}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget v1, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->label:I

    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v3, :cond_1

    .line 13
    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$2:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lkotlinx/coroutines/channels/f;

    .line 19
    .line 20
    iget-object v4, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$1:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v4, Landroidx/core/util/Consumer;

    .line 23
    .line 24
    iget-object v5, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$0:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v5, Lkotlinx/coroutines/flow/h;

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    move-object p1, v5

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    move-object v5, p0

    .line 34
    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    throw p1

    .line 44
    .line 45
    :cond_1
    iget-object v1, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$2:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Lkotlinx/coroutines/channels/f;

    .line 48
    .line 49
    iget-object v4, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$1:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v4, Landroidx/core/util/Consumer;

    .line 52
    .line 53
    iget-object v5, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$0:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v5, Lkotlinx/coroutines/flow/h;

    .line 56
    .line 57
    .line 58
    :try_start_1
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    move-object v6, v5

    .line 60
    move-object v5, p0

    .line 61
    goto :goto_2

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    iget-object p1, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$0:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p1, Lkotlinx/coroutines/flow/h;

    .line 69
    .line 70
    sget-object v1, Lkotlinx/coroutines/channels/a;->DROP_OLDEST:Lkotlinx/coroutines/channels/a;

    .line 71
    const/4 v4, 0x4

    .line 72
    .line 73
    const/16 v5, 0xa

    .line 74
    const/4 v6, 0x0

    .line 75
    .line 76
    .line 77
    invoke-static {v5, v1, v6, v4, v6}, Lkotlinx/coroutines/channels/g;->b(ILkotlinx/coroutines/channels/a;Le8/l;ILjava/lang/Object;)Lkotlinx/coroutines/channels/d;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    new-instance v4, Landroidx/window/layout/h;

    .line 81
    .line 82
    .line 83
    invoke-direct {v4, v1}, Landroidx/window/layout/h;-><init>(Lkotlinx/coroutines/channels/d;)V

    .line 84
    .line 85
    iget-object v5, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->this$0:Landroidx/window/layout/WindowInfoTrackerImpl;

    .line 86
    .line 87
    .line 88
    invoke-static {v5}, Landroidx/window/layout/WindowInfoTrackerImpl;->b(Landroidx/window/layout/WindowInfoTrackerImpl;)Landroidx/window/layout/WindowBackend;

    .line 89
    move-result-object v5

    .line 90
    .line 91
    iget-object v6, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->$activity:Landroid/app/Activity;

    .line 92
    .line 93
    new-instance v7, Landroidx/media3/exoplayer/dash/offline/a;

    .line 94
    .line 95
    .line 96
    invoke-direct {v7}, Landroidx/media3/exoplayer/dash/offline/a;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-interface {v5, v6, v7, v4}, Landroidx/window/layout/WindowBackend;->a(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    .line 100
    .line 101
    .line 102
    :try_start_2
    invoke-interface {v1}, Lkotlinx/coroutines/channels/t;->iterator()Lkotlinx/coroutines/channels/f;

    .line 103
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    :goto_0
    move-object v5, p0

    .line 105
    .line 106
    :goto_1
    :try_start_3
    iput-object p1, v5, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$0:Ljava/lang/Object;

    .line 107
    .line 108
    iput-object v4, v5, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$1:Ljava/lang/Object;

    .line 109
    .line 110
    iput-object v1, v5, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$2:Ljava/lang/Object;

    .line 111
    .line 112
    iput v3, v5, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->label:I

    .line 113
    .line 114
    .line 115
    invoke-interface {v1, v5}, Lkotlinx/coroutines/channels/f;->b(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 116
    move-result-object v6

    .line 117
    .line 118
    if-ne v6, v0, :cond_3

    .line 119
    return-object v0

    .line 120
    :cond_3
    move-object v8, v6

    .line 121
    move-object v6, p1

    .line 122
    move-object p1, v8

    .line 123
    .line 124
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 128
    move-result p1

    .line 129
    .line 130
    if-eqz p1, :cond_5

    .line 131
    .line 132
    .line 133
    invoke-interface {v1}, Lkotlinx/coroutines/channels/f;->next()Ljava/lang/Object;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    check-cast p1, Landroidx/window/layout/WindowLayoutInfo;

    .line 137
    .line 138
    iput-object v6, v5, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$0:Ljava/lang/Object;

    .line 139
    .line 140
    iput-object v4, v5, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$1:Ljava/lang/Object;

    .line 141
    .line 142
    iput-object v1, v5, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$2:Ljava/lang/Object;

    .line 143
    .line 144
    iput v2, v5, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->label:I

    .line 145
    .line 146
    .line 147
    invoke-interface {v6, p1, v5}, Lkotlinx/coroutines/flow/h;->emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 148
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 149
    .line 150
    if-ne p1, v0, :cond_4

    .line 151
    return-object v0

    .line 152
    :cond_4
    move-object p1, v6

    .line 153
    goto :goto_1

    .line 154
    :catchall_1
    move-exception p1

    .line 155
    goto :goto_3

    .line 156
    .line 157
    :cond_5
    iget-object p1, v5, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->this$0:Landroidx/window/layout/WindowInfoTrackerImpl;

    .line 158
    .line 159
    .line 160
    invoke-static {p1}, Landroidx/window/layout/WindowInfoTrackerImpl;->b(Landroidx/window/layout/WindowInfoTrackerImpl;)Landroidx/window/layout/WindowBackend;

    .line 161
    move-result-object p1

    .line 162
    .line 163
    .line 164
    invoke-interface {p1, v4}, Landroidx/window/layout/WindowBackend;->b(Landroidx/core/util/Consumer;)V

    .line 165
    .line 166
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 167
    return-object p1

    .line 168
    .line 169
    :goto_3
    iget-object v0, v5, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->this$0:Landroidx/window/layout/WindowInfoTrackerImpl;

    .line 170
    .line 171
    .line 172
    invoke-static {v0}, Landroidx/window/layout/WindowInfoTrackerImpl;->b(Landroidx/window/layout/WindowInfoTrackerImpl;)Landroidx/window/layout/WindowBackend;

    .line 173
    move-result-object v0

    .line 174
    .line 175
    .line 176
    invoke-interface {v0, v4}, Landroidx/window/layout/WindowBackend;->b(Landroidx/core/util/Consumer;)V

    .line 177
    throw p1
.end method
