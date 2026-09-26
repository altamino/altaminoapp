.class public final Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFirebase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Firebase.kt\ncom/google/firebase/ktx/FirebaseCommonKtxRegistrar\n+ 2 Firebase.kt\ncom/google/firebase/ktx/FirebaseKt\n*L\n1#1,155:1\n149#2,6:156\n149#2,6:162\n149#2,6:168\n149#2,6:174\n*S KotlinDebug\n*F\n+ 1 Firebase.kt\ncom/google/firebase/ktx/FirebaseCommonKtxRegistrar\n*L\n140#1:156,6\n141#1:162,6\n142#1:168,6\n143#1:174,6\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/c<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    new-array v0, v0, [Lcom/google/firebase/components/c;

    .line 4
    .line 5
    const-class v1, Lw3/a;

    .line 6
    .line 7
    const-class v2, Lkotlinx/coroutines/k0;

    .line 8
    .line 9
    .line 10
    invoke-static {v1, v2}, Lcom/google/firebase/components/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 11
    move-result-object v3

    .line 12
    .line 13
    .line 14
    invoke-static {v3}, Lcom/google/firebase/components/c;->c(Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/c$b;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    const-class v4, Ljava/util/concurrent/Executor;

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v4}, Lcom/google/firebase/components/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lcom/google/firebase/components/s;->j(Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/s;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v1}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    sget-object v3, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$a;->INSTANCE:Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$a;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v3}, Lcom/google/firebase/components/c$b;->f(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/c$b;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/google/firebase/components/c$b;->d()Lcom/google/firebase/components/c;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    const-string v3, "builder(Qualified.qualif\u2026cher()\n    }\n    .build()"

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    const/4 v5, 0x0

    .line 46
    .line 47
    aput-object v1, v0, v5

    .line 48
    .line 49
    const-class v1, Lw3/c;

    .line 50
    .line 51
    .line 52
    invoke-static {v1, v2}, Lcom/google/firebase/components/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 53
    move-result-object v5

    .line 54
    .line 55
    .line 56
    invoke-static {v5}, Lcom/google/firebase/components/c;->c(Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/c$b;

    .line 57
    move-result-object v5

    .line 58
    .line 59
    .line 60
    invoke-static {v1, v4}, Lcom/google/firebase/components/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    .line 64
    invoke-static {v1}, Lcom/google/firebase/components/s;->j(Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/s;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, v1}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    sget-object v5, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$b;->INSTANCE:Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$b;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v5}, Lcom/google/firebase/components/c$b;->f(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/c$b;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/google/firebase/components/c$b;->d()Lcom/google/firebase/components/c;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    .line 82
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    const/4 v5, 0x1

    .line 84
    .line 85
    aput-object v1, v0, v5

    .line 86
    .line 87
    const-class v1, Lw3/b;

    .line 88
    .line 89
    .line 90
    invoke-static {v1, v2}, Lcom/google/firebase/components/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 91
    move-result-object v5

    .line 92
    .line 93
    .line 94
    invoke-static {v5}, Lcom/google/firebase/components/c;->c(Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/c$b;

    .line 95
    move-result-object v5

    .line 96
    .line 97
    .line 98
    invoke-static {v1, v4}, Lcom/google/firebase/components/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 99
    move-result-object v1

    .line 100
    .line 101
    .line 102
    invoke-static {v1}, Lcom/google/firebase/components/s;->j(Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/s;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5, v1}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 107
    move-result-object v1

    .line 108
    .line 109
    sget-object v5, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$c;->INSTANCE:Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$c;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v5}, Lcom/google/firebase/components/c$b;->f(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/c$b;

    .line 113
    move-result-object v1

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Lcom/google/firebase/components/c$b;->d()Lcom/google/firebase/components/c;

    .line 117
    move-result-object v1

    .line 118
    .line 119
    .line 120
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    const/4 v5, 0x2

    .line 122
    .line 123
    aput-object v1, v0, v5

    .line 124
    .line 125
    const-class v1, Lw3/d;

    .line 126
    .line 127
    .line 128
    invoke-static {v1, v2}, Lcom/google/firebase/components/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 129
    move-result-object v2

    .line 130
    .line 131
    .line 132
    invoke-static {v2}, Lcom/google/firebase/components/c;->c(Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/c$b;

    .line 133
    move-result-object v2

    .line 134
    .line 135
    .line 136
    invoke-static {v1, v4}, Lcom/google/firebase/components/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 137
    move-result-object v1

    .line 138
    .line 139
    .line 140
    invoke-static {v1}, Lcom/google/firebase/components/s;->j(Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/s;

    .line 141
    move-result-object v1

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v1}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 145
    move-result-object v1

    .line 146
    .line 147
    sget-object v2, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$d;->INSTANCE:Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$d;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v2}, Lcom/google/firebase/components/c$b;->f(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/c$b;

    .line 151
    move-result-object v1

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Lcom/google/firebase/components/c$b;->d()Lcom/google/firebase/components/c;

    .line 155
    move-result-object v1

    .line 156
    .line 157
    .line 158
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    const/4 v2, 0x3

    .line 160
    .line 161
    aput-object v1, v0, v2

    .line 162
    .line 163
    .line 164
    invoke-static {v0}, Lkotlin/collections/t;->p([Ljava/lang/Object;)Ljava/util/List;

    .line 165
    move-result-object v0

    .line 166
    return-object v0
.end method
