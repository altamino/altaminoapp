.class final Landroidx/datastore/preferences/SharedPreferencesMigrationKt$getMigrationFunction$1;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/q<",
        "Landroidx/datastore/migrations/SharedPreferencesView;",
        "Landroidx/datastore/preferences/core/Preferences;",
        "Lkotlin/coroutines/d<",
        "-",
        "Landroidx/datastore/preferences/core/Preferences;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSharedPreferencesMigration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedPreferencesMigration.kt\nandroidx/datastore/preferences/SharedPreferencesMigrationKt$getMigrationFunction$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,154:1\n1547#2:155\n1618#2,3:156\n509#3:159\n494#3,6:160\n*S KotlinDebug\n*F\n+ 1 SharedPreferencesMigration.kt\nandroidx/datastore/preferences/SharedPreferencesMigrationKt$getMigrationFunction$1\n*L\n105#1:155\n105#1:156,3\n108#1:159\n108#1:160,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.datastore.preferences.SharedPreferencesMigrationKt$getMigrationFunction$1"
    f = "SharedPreferencesMigration.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/datastore/preferences/SharedPreferencesMigrationKt$getMigrationFunction$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final f(Landroidx/datastore/migrations/SharedPreferencesView;Landroidx/datastore/preferences/core/Preferences;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroidx/datastore/migrations/SharedPreferencesView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/datastore/preferences/core/Preferences;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/migrations/SharedPreferencesView;",
            "Landroidx/datastore/preferences/core/Preferences;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/datastore/preferences/core/Preferences;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Landroidx/datastore/preferences/SharedPreferencesMigrationKt$getMigrationFunction$1;

    invoke-direct {v0, p3}, Landroidx/datastore/preferences/SharedPreferencesMigrationKt$getMigrationFunction$1;-><init>(Lkotlin/coroutines/d;)V

    iput-object p1, v0, Landroidx/datastore/preferences/SharedPreferencesMigrationKt$getMigrationFunction$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/datastore/preferences/SharedPreferencesMigrationKt$getMigrationFunction$1;->L$1:Ljava/lang/Object;

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/SharedPreferencesMigrationKt$getMigrationFunction$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/datastore/migrations/SharedPreferencesView;

    check-cast p2, Landroidx/datastore/preferences/core/Preferences;

    check-cast p3, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/SharedPreferencesMigrationKt$getMigrationFunction$1;->f(Landroidx/datastore/migrations/SharedPreferencesView;Landroidx/datastore/preferences/core/Preferences;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
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
    .line 5
    iget v0, p0, Landroidx/datastore/preferences/SharedPreferencesMigrationKt$getMigrationFunction$1;->label:I

    .line 6
    .line 7
    if-nez v0, :cond_b

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    iget-object p1, p0, Landroidx/datastore/preferences/SharedPreferencesMigrationKt$getMigrationFunction$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Landroidx/datastore/migrations/SharedPreferencesView;

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/datastore/preferences/SharedPreferencesMigrationKt$getMigrationFunction$1;->L$1:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Landroidx/datastore/preferences/core/Preferences;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/datastore/preferences/core/Preferences;->a()Ljava/util/Map;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    new-instance v2, Ljava/util/ArrayList;

    .line 29
    .line 30
    const/16 v3, 0xa

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v3}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 34
    move-result v3

    .line 35
    .line 36
    .line 37
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v3

    .line 46
    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    check-cast v3, Landroidx/datastore/preferences/core/Preferences$Key;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Landroidx/datastore/preferences/core/Preferences$Key;->a()Ljava/lang/String;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    .line 60
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-virtual {p1}, Landroidx/datastore/migrations/SharedPreferencesView;->a()Ljava/util/Map;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 68
    .line 69
    .line 70
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    .line 77
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    .line 81
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    move-result v3

    .line 83
    .line 84
    if-eqz v3, :cond_2

    .line 85
    .line 86
    .line 87
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    move-result-object v3

    .line 89
    .line 90
    check-cast v3, Ljava/util/Map$Entry;

    .line 91
    .line 92
    .line 93
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 94
    move-result-object v4

    .line 95
    .line 96
    check-cast v4, Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 100
    move-result v4

    .line 101
    .line 102
    xor-int/lit8 v4, v4, 0x1

    .line 103
    .line 104
    .line 105
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 106
    move-result-object v4

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 110
    move-result v4

    .line 111
    .line 112
    if-eqz v4, :cond_1

    .line 113
    .line 114
    .line 115
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 116
    move-result-object v4

    .line 117
    .line 118
    .line 119
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 120
    move-result-object v3

    .line 121
    .line 122
    .line 123
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    goto :goto_1

    .line 125
    .line 126
    .line 127
    :cond_2
    invoke-virtual {v0}, Landroidx/datastore/preferences/core/Preferences;->c()Landroidx/datastore/preferences/core/MutablePreferences;

    .line 128
    move-result-object p1

    .line 129
    .line 130
    .line 131
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 132
    move-result-object v0

    .line 133
    .line 134
    .line 135
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 136
    move-result-object v0

    .line 137
    .line 138
    .line 139
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    move-result v1

    .line 141
    .line 142
    if-eqz v1, :cond_a

    .line 143
    .line 144
    .line 145
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    move-result-object v1

    .line 147
    .line 148
    check-cast v1, Ljava/util/Map$Entry;

    .line 149
    .line 150
    .line 151
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 152
    move-result-object v2

    .line 153
    .line 154
    check-cast v2, Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 158
    move-result-object v1

    .line 159
    .line 160
    instance-of v3, v1, Ljava/lang/Boolean;

    .line 161
    .line 162
    if-eqz v3, :cond_4

    .line 163
    .line 164
    .line 165
    invoke-static {v2}, Landroidx/datastore/preferences/core/PreferencesKeys;->a(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    .line 166
    move-result-object v2

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v2, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->i(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 170
    goto :goto_2

    .line 171
    .line 172
    :cond_4
    instance-of v3, v1, Ljava/lang/Float;

    .line 173
    .line 174
    if-eqz v3, :cond_5

    .line 175
    .line 176
    .line 177
    invoke-static {v2}, Landroidx/datastore/preferences/core/PreferencesKeys;->c(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    .line 178
    move-result-object v2

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v2, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->i(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 182
    goto :goto_2

    .line 183
    .line 184
    :cond_5
    instance-of v3, v1, Ljava/lang/Integer;

    .line 185
    .line 186
    if-eqz v3, :cond_6

    .line 187
    .line 188
    .line 189
    invoke-static {v2}, Landroidx/datastore/preferences/core/PreferencesKeys;->d(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    .line 190
    move-result-object v2

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, v2, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->i(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 194
    goto :goto_2

    .line 195
    .line 196
    :cond_6
    instance-of v3, v1, Ljava/lang/Long;

    .line 197
    .line 198
    if-eqz v3, :cond_7

    .line 199
    .line 200
    .line 201
    invoke-static {v2}, Landroidx/datastore/preferences/core/PreferencesKeys;->e(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    .line 202
    move-result-object v2

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, v2, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->i(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 206
    goto :goto_2

    .line 207
    .line 208
    :cond_7
    instance-of v3, v1, Ljava/lang/String;

    .line 209
    .line 210
    if-eqz v3, :cond_8

    .line 211
    .line 212
    .line 213
    invoke-static {v2}, Landroidx/datastore/preferences/core/PreferencesKeys;->f(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    .line 214
    move-result-object v2

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1, v2, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->i(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 218
    goto :goto_2

    .line 219
    .line 220
    :cond_8
    instance-of v3, v1, Ljava/util/Set;

    .line 221
    .line 222
    if-eqz v3, :cond_3

    .line 223
    .line 224
    .line 225
    invoke-static {v2}, Landroidx/datastore/preferences/core/PreferencesKeys;->g(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    .line 226
    move-result-object v2

    .line 227
    .line 228
    if-eqz v1, :cond_9

    .line 229
    .line 230
    check-cast v1, Ljava/util/Set;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v2, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->i(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 234
    goto :goto_2

    .line 235
    .line 236
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    .line 237
    .line 238
    const-string v0, "null cannot be cast to non-null type kotlin.collections.Set<kotlin.String>"

    .line 239
    .line 240
    .line 241
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 242
    throw p1

    .line 243
    .line 244
    .line 245
    :cond_a
    invoke-virtual {p1}, Landroidx/datastore/preferences/core/Preferences;->d()Landroidx/datastore/preferences/core/Preferences;

    .line 246
    move-result-object p1

    .line 247
    return-object p1

    .line 248
    .line 249
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 250
    .line 251
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 252
    .line 253
    .line 254
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 255
    throw p1
.end method
