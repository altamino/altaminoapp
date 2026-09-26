.class final Lcoil/intercept/a$i;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/intercept/a;->k(Lcoil/intercept/a$b;Lcoil/request/h;Lcoil/request/m;Lcoil/c;Lkotlin/coroutines/d;)Ljava/lang/Object;
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
        "Lcoil/intercept/a$b;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEngineInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EngineInterceptor.kt\ncoil/intercept/EngineInterceptor$transform$3\n+ 2 Collections.kt\ncoil/util/-Collections\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Bitmaps.kt\ncoil/util/-Bitmaps\n+ 5 BitmapDrawable.kt\nandroidx/core/graphics/drawable/BitmapDrawableKt\n*L\n1#1,302:1\n32#2,3:303\n36#2:307\n1#3:306\n45#4:308\n28#5:309\n*S KotlinDebug\n*F\n+ 1 EngineInterceptor.kt\ncoil/intercept/EngineInterceptor$transform$3\n*L\n241#1:303,3\n241#1:307\n245#1:308\n245#1:309\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "coil.intercept.EngineInterceptor$transform$3"
    f = "EngineInterceptor.kt"
    l = {
        0xf2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $eventListener:Lcoil/c;

.field final synthetic $options:Lcoil/request/m;

.field final synthetic $request:Lcoil/request/h;

.field final synthetic $result:Lcoil/intercept/a$b;

.field final synthetic $transformations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg0/a;",
            ">;"
        }
    .end annotation
.end field

.field I$0:I

.field I$1:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcoil/intercept/a;


# direct methods
.method constructor <init>(Lcoil/intercept/a;Lcoil/intercept/a$b;Lcoil/request/m;Ljava/util/List;Lcoil/c;Lcoil/request/h;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/intercept/a;",
            "Lcoil/intercept/a$b;",
            "Lcoil/request/m;",
            "Ljava/util/List<",
            "+",
            "Lg0/a;",
            ">;",
            "Lcoil/c;",
            "Lcoil/request/h;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcoil/intercept/a$i;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcoil/intercept/a$i;->this$0:Lcoil/intercept/a;

    iput-object p2, p0, Lcoil/intercept/a$i;->$result:Lcoil/intercept/a$b;

    iput-object p3, p0, Lcoil/intercept/a$i;->$options:Lcoil/request/m;

    iput-object p4, p0, Lcoil/intercept/a$i;->$transformations:Ljava/util/List;

    iput-object p5, p0, Lcoil/intercept/a$i;->$eventListener:Lcoil/c;

    iput-object p6, p0, Lcoil/intercept/a$i;->$request:Lcoil/request/h;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 9
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

    new-instance v8, Lcoil/intercept/a$i;

    iget-object v1, p0, Lcoil/intercept/a$i;->this$0:Lcoil/intercept/a;

    iget-object v2, p0, Lcoil/intercept/a$i;->$result:Lcoil/intercept/a$b;

    iget-object v3, p0, Lcoil/intercept/a$i;->$options:Lcoil/request/m;

    iget-object v4, p0, Lcoil/intercept/a$i;->$transformations:Ljava/util/List;

    iget-object v5, p0, Lcoil/intercept/a$i;->$eventListener:Lcoil/c;

    iget-object v6, p0, Lcoil/intercept/a$i;->$request:Lcoil/request/h;

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcoil/intercept/a$i;-><init>(Lcoil/intercept/a;Lcoil/intercept/a$b;Lcoil/request/m;Ljava/util/List;Lcoil/c;Lcoil/request/h;Lkotlin/coroutines/d;)V

    iput-object p1, v8, Lcoil/intercept/a$i;->L$0:Ljava/lang/Object;

    return-object v8
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcoil/intercept/a$i;->invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
            "Lcoil/intercept/a$b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcoil/intercept/a$i;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcoil/intercept/a$i;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Lcoil/intercept/a$i;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    iget v2, v0, Lcoil/intercept/a$i;->label:I

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
    iget v2, v0, Lcoil/intercept/a$i;->I$1:I

    .line 16
    .line 17
    iget v4, v0, Lcoil/intercept/a$i;->I$0:I

    .line 18
    .line 19
    iget-object v5, v0, Lcoil/intercept/a$i;->L$2:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v5, Lcoil/request/m;

    .line 22
    .line 23
    iget-object v6, v0, Lcoil/intercept/a$i;->L$1:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v6, Ljava/util/List;

    .line 26
    .line 27
    iget-object v7, v0, Lcoil/intercept/a$i;->L$0:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v7, Lkotlinx/coroutines/o0;

    .line 30
    .line 31
    .line 32
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 33
    move-object v9, v0

    .line 34
    move-object v8, v7

    .line 35
    move-object v7, v6

    .line 36
    move-object v6, v5

    .line 37
    .line 38
    move-object/from16 v5, p1

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    .line 46
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    throw v1

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    iget-object v2, v0, Lcoil/intercept/a$i;->L$0:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v2, Lkotlinx/coroutines/o0;

    .line 55
    .line 56
    iget-object v4, v0, Lcoil/intercept/a$i;->this$0:Lcoil/intercept/a;

    .line 57
    .line 58
    iget-object v5, v0, Lcoil/intercept/a$i;->$result:Lcoil/intercept/a$b;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Lcoil/intercept/a$b;->e()Landroid/graphics/drawable/Drawable;

    .line 62
    move-result-object v5

    .line 63
    .line 64
    iget-object v6, v0, Lcoil/intercept/a$i;->$options:Lcoil/request/m;

    .line 65
    .line 66
    iget-object v7, v0, Lcoil/intercept/a$i;->$transformations:Ljava/util/List;

    .line 67
    .line 68
    .line 69
    invoke-static {v4, v5, v6, v7}, Lcoil/intercept/a;->b(Lcoil/intercept/a;Landroid/graphics/drawable/Drawable;Lcoil/request/m;Ljava/util/List;)Landroid/graphics/Bitmap;

    .line 70
    move-result-object v4

    .line 71
    .line 72
    iget-object v5, v0, Lcoil/intercept/a$i;->$eventListener:Lcoil/c;

    .line 73
    .line 74
    iget-object v6, v0, Lcoil/intercept/a$i;->$request:Lcoil/request/h;

    .line 75
    .line 76
    .line 77
    invoke-interface {v5, v6, v4}, Lcoil/c;->n(Lcoil/request/h;Landroid/graphics/Bitmap;)V

    .line 78
    .line 79
    iget-object v5, v0, Lcoil/intercept/a$i;->$transformations:Ljava/util/List;

    .line 80
    .line 81
    iget-object v6, v0, Lcoil/intercept/a$i;->$options:Lcoil/request/m;

    .line 82
    .line 83
    .line 84
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 85
    move-result v7

    .line 86
    const/4 v8, 0x0

    .line 87
    move-object v9, v0

    .line 88
    .line 89
    move/from16 v17, v8

    .line 90
    move-object v8, v2

    .line 91
    move v2, v7

    .line 92
    move-object v7, v5

    .line 93
    move-object v5, v4

    .line 94
    .line 95
    move/from16 v4, v17

    .line 96
    .line 97
    :goto_0
    if-ge v4, v2, :cond_3

    .line 98
    .line 99
    .line 100
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    move-result-object v10

    .line 102
    .line 103
    check-cast v10, Lg0/a;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6}, Lcoil/request/m;->n()Lcoil/size/i;

    .line 107
    move-result-object v11

    .line 108
    .line 109
    iput-object v8, v9, Lcoil/intercept/a$i;->L$0:Ljava/lang/Object;

    .line 110
    .line 111
    iput-object v7, v9, Lcoil/intercept/a$i;->L$1:Ljava/lang/Object;

    .line 112
    .line 113
    iput-object v6, v9, Lcoil/intercept/a$i;->L$2:Ljava/lang/Object;

    .line 114
    .line 115
    iput v4, v9, Lcoil/intercept/a$i;->I$0:I

    .line 116
    .line 117
    iput v2, v9, Lcoil/intercept/a$i;->I$1:I

    .line 118
    .line 119
    iput v3, v9, Lcoil/intercept/a$i;->label:I

    .line 120
    .line 121
    .line 122
    invoke-interface {v10, v5, v11, v9}, Lg0/a;->b(Landroid/graphics/Bitmap;Lcoil/size/i;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 123
    move-result-object v5

    .line 124
    .line 125
    if-ne v5, v1, :cond_2

    .line 126
    return-object v1

    .line 127
    .line 128
    :cond_2
    :goto_1
    check-cast v5, Landroid/graphics/Bitmap;

    .line 129
    .line 130
    .line 131
    invoke-static {v8}, Lkotlinx/coroutines/p0;->g(Lkotlinx/coroutines/o0;)V

    .line 132
    add-int/2addr v4, v3

    .line 133
    goto :goto_0

    .line 134
    .line 135
    :cond_3
    iget-object v1, v9, Lcoil/intercept/a$i;->$eventListener:Lcoil/c;

    .line 136
    .line 137
    iget-object v2, v9, Lcoil/intercept/a$i;->$request:Lcoil/request/h;

    .line 138
    .line 139
    .line 140
    invoke-interface {v1, v2, v5}, Lcoil/c;->p(Lcoil/request/h;Landroid/graphics/Bitmap;)V

    .line 141
    .line 142
    iget-object v10, v9, Lcoil/intercept/a$i;->$result:Lcoil/intercept/a$b;

    .line 143
    .line 144
    iget-object v1, v9, Lcoil/intercept/a$i;->$request:Lcoil/request/h;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Lcoil/request/h;->l()Landroid/content/Context;

    .line 148
    move-result-object v1

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 152
    move-result-object v1

    .line 153
    .line 154
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .line 155
    .line 156
    .line 157
    invoke-direct {v11, v1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 158
    const/4 v12, 0x0

    .line 159
    const/4 v13, 0x0

    .line 160
    const/4 v14, 0x0

    .line 161
    .line 162
    const/16 v15, 0xe

    .line 163
    .line 164
    const/16 v16, 0x0

    .line 165
    .line 166
    .line 167
    invoke-static/range {v10 .. v16}, Lcoil/intercept/a$b;->b(Lcoil/intercept/a$b;Landroid/graphics/drawable/Drawable;ZLcoil/decode/f;Ljava/lang/String;ILjava/lang/Object;)Lcoil/intercept/a$b;

    .line 168
    move-result-object v1

    .line 169
    return-object v1
.end method
