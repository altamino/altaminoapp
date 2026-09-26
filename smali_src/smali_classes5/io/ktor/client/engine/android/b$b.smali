.class final Lio/ktor/client/engine/android/b$b;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/android/b;->R(Li7/e;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Ljava/net/HttpURLConnection;",
        "Li7/h;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidClientEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidClientEngine.kt\nio/ktor/client/engine/android/AndroidClientEngine$execute$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,130:1\n1#2:131\n457#3:132\n403#3:133\n515#3:138\n500#3,6:139\n1238#4,4:134\n*S KotlinDebug\n*F\n+ 1 AndroidClientEngine.kt\nio/ktor/client/engine/android/AndroidClientEngine$execute$2\n*L\n90#1:132\n90#1:133\n91#1:138\n91#1:139,6\n90#1:134,4\n*E\n"
.end annotation


# instance fields
.field final synthetic $callContext:Lkotlin/coroutines/g;

.field final synthetic $data:Li7/e;

.field final synthetic $requestTime:Lm7/b;


# direct methods
.method constructor <init>(Lkotlin/coroutines/g;Li7/e;Lm7/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/ktor/client/engine/android/b$b;->$callContext:Lkotlin/coroutines/g;

    iput-object p2, p0, Lio/ktor/client/engine/android/b$b;->$data:Li7/e;

    iput-object p3, p0, Lio/ktor/client/engine/android/b$b;->$requestTime:Lm7/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/net/HttpURLConnection;)Li7/h;
    .locals 10
    .param p1    # Ljava/net/HttpURLConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "current"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 9
    move-result v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    new-instance v2, Lio/ktor/http/v;

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v0, v1}, Lio/ktor/http/v;-><init>(ILjava/lang/String;)V

    .line 21
    :goto_0
    move-object v4, v2

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_0
    sget-object v1, Lio/ktor/http/v;->Companion:Lio/ktor/http/v$a;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lio/ktor/http/v$a;->a(I)Lio/ktor/http/v;

    .line 28
    move-result-object v2

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :goto_1
    iget-object v0, p0, Lio/ktor/client/engine/android/b$b;->$callContext:Lkotlin/coroutines/g;

    .line 32
    .line 33
    iget-object v1, p0, Lio/ktor/client/engine/android/b$b;->$data:Li7/e;

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v0, v1}, Lio/ktor/client/engine/android/e;->a(Ljava/net/HttpURLConnection;Lkotlin/coroutines/g;Li7/e;)Lio/ktor/utils/io/g;

    .line 37
    move-result-object v8

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    const-string v0, "current.headerFields"

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 49
    .line 50
    .line 51
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 52
    move-result v1

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Lkotlin/collections/p0;->e(I)I

    .line 56
    move-result v1

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    .line 70
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    move-result v1

    .line 72
    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    .line 76
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    check-cast v1, Ljava/util/Map$Entry;

    .line 80
    .line 81
    .line 82
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 83
    move-result-object v2

    .line 84
    .line 85
    check-cast v2, Ljava/lang/String;

    .line 86
    .line 87
    if-eqz v2, :cond_1

    .line 88
    .line 89
    const-string v3, "key"

    .line 90
    .line 91
    .line 92
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 96
    move-result-object v3

    .line 97
    .line 98
    const-string v5, "getDefault()"

    .line 99
    .line 100
    .line 101
    invoke-static {v3, v5}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 105
    move-result-object v2

    .line 106
    .line 107
    const-string v3, "this as java.lang.String).toLowerCase(locale)"

    .line 108
    .line 109
    .line 110
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    if-nez v2, :cond_2

    .line 113
    .line 114
    :cond_1
    const-string v2, ""

    .line 115
    .line 116
    .line 117
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 118
    move-result-object v1

    .line 119
    .line 120
    .line 121
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    goto :goto_2

    .line 123
    .line 124
    :cond_3
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 125
    .line 126
    .line 127
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 131
    move-result-object v0

    .line 132
    .line 133
    .line 134
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 135
    move-result-object v0

    .line 136
    .line 137
    .line 138
    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    move-result v1

    .line 140
    .line 141
    if-eqz v1, :cond_5

    .line 142
    .line 143
    .line 144
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    move-result-object v1

    .line 146
    .line 147
    check-cast v1, Ljava/util/Map$Entry;

    .line 148
    .line 149
    .line 150
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 151
    move-result-object v2

    .line 152
    .line 153
    check-cast v2, Ljava/lang/CharSequence;

    .line 154
    .line 155
    .line 156
    invoke-static {v2}, Lkotlin/text/k;->z(Ljava/lang/CharSequence;)Z

    .line 157
    move-result v2

    .line 158
    .line 159
    xor-int/lit8 v2, v2, 0x1

    .line 160
    .line 161
    if-eqz v2, :cond_4

    .line 162
    .line 163
    .line 164
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 165
    move-result-object v2

    .line 166
    .line 167
    .line 168
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 169
    move-result-object v1

    .line 170
    .line 171
    .line 172
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    goto :goto_3

    .line 174
    .line 175
    :cond_5
    sget-object v0, Lio/ktor/http/u;->Companion:Lio/ktor/http/u$a;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Lio/ktor/http/u$a;->a()Lio/ktor/http/u;

    .line 179
    move-result-object v7

    .line 180
    .line 181
    new-instance v6, Lio/ktor/http/m;

    .line 182
    .line 183
    .line 184
    invoke-direct {v6, p1}, Lio/ktor/http/m;-><init>(Ljava/util/Map;)V

    .line 185
    .line 186
    new-instance p1, Li7/h;

    .line 187
    .line 188
    iget-object v5, p0, Lio/ktor/client/engine/android/b$b;->$requestTime:Lm7/b;

    .line 189
    .line 190
    iget-object v9, p0, Lio/ktor/client/engine/android/b$b;->$callContext:Lkotlin/coroutines/g;

    .line 191
    move-object v3, p1

    .line 192
    .line 193
    .line 194
    invoke-direct/range {v3 .. v9}, Li7/h;-><init>(Lio/ktor/http/v;Lm7/b;Lio/ktor/http/k;Lio/ktor/http/u;Ljava/lang/Object;Lkotlin/coroutines/g;)V

    .line 195
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lio/ktor/client/engine/android/b$b;->a(Ljava/net/HttpURLConnection;)Li7/h;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
