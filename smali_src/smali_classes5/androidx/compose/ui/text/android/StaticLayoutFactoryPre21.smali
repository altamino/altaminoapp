.class final Landroidx/compose/ui/text/android/StaticLayoutFactoryPre21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/text/android/StaticLayoutFactoryImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/android/StaticLayoutFactoryPre21$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/text/android/StaticLayoutFactoryPre21$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static isInitialized:Z

.field private static staticLayoutConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/text/StaticLayout;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/android/StaticLayoutFactoryPre21$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/android/StaticLayoutFactoryPre21$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Landroidx/compose/ui/text/android/StaticLayoutFactoryPre21;->Companion:Landroidx/compose/ui/text/android/StaticLayoutFactoryPre21$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static final synthetic b()Ljava/lang/reflect/Constructor;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/text/android/StaticLayoutFactoryPre21;->staticLayoutConstructor:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public static final synthetic c()Z
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/compose/ui/text/android/StaticLayoutFactoryPre21;->isInitialized:Z

    return v0
.end method

.method public static final synthetic d(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Landroidx/compose/ui/text/android/StaticLayoutFactoryPre21;->isInitialized:Z

    return-void
.end method

.method public static final synthetic e(Ljava/lang/reflect/Constructor;)V
    .locals 0

    .line 1
    sput-object p0, Landroidx/compose/ui/text/android/StaticLayoutFactoryPre21;->staticLayoutConstructor:Ljava/lang/reflect/Constructor;

    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/ui/text/android/StaticLayoutParams;)Landroid/text/StaticLayout;
    .locals 17
    .param p1    # Landroidx/compose/ui/text/android/StaticLayoutParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "unable to call constructor"

    .line 3
    .line 4
    const-string v1, "StaticLayoutFactory"

    .line 5
    .line 6
    const-string v2, "params"

    .line 7
    .line 8
    move-object/from16 v3, p1

    .line 9
    .line 10
    .line 11
    invoke-static {v3, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    sget-object v2, Landroidx/compose/ui/text/android/StaticLayoutFactoryPre21;->Companion:Landroidx/compose/ui/text/android/StaticLayoutFactoryPre21$Companion;

    .line 14
    .line 15
    .line 16
    invoke-static {v2}, Landroidx/compose/ui/text/android/StaticLayoutFactoryPre21$Companion;->a(Landroidx/compose/ui/text/android/StaticLayoutFactoryPre21$Companion;)Ljava/lang/reflect/Constructor;

    .line 17
    move-result-object v2

    .line 18
    const/4 v4, 0x0

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    const/16 v5, 0xd

    .line 23
    .line 24
    :try_start_0
    new-array v5, v5, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->p()Ljava/lang/CharSequence;

    .line 28
    move-result-object v6

    .line 29
    const/4 v7, 0x0

    .line 30
    .line 31
    aput-object v6, v5, v7

    .line 32
    .line 33
    .line 34
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->o()I

    .line 35
    move-result v6

    .line 36
    .line 37
    .line 38
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v6

    .line 40
    const/4 v7, 0x1

    .line 41
    .line 42
    aput-object v6, v5, v7

    .line 43
    .line 44
    .line 45
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->e()I

    .line 46
    move-result v6

    .line 47
    .line 48
    .line 49
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v6

    .line 51
    const/4 v7, 0x2

    .line 52
    .line 53
    aput-object v6, v5, v7

    .line 54
    .line 55
    .line 56
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->m()Landroid/text/TextPaint;

    .line 57
    move-result-object v6

    .line 58
    const/4 v7, 0x3

    .line 59
    .line 60
    aput-object v6, v5, v7

    .line 61
    .line 62
    .line 63
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->s()I

    .line 64
    move-result v6

    .line 65
    .line 66
    .line 67
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object v6

    .line 69
    const/4 v7, 0x4

    .line 70
    .line 71
    aput-object v6, v5, v7

    .line 72
    .line 73
    .line 74
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->a()Landroid/text/Layout$Alignment;

    .line 75
    move-result-object v6

    .line 76
    const/4 v7, 0x5

    .line 77
    .line 78
    aput-object v6, v5, v7

    .line 79
    .line 80
    .line 81
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->q()Landroid/text/TextDirectionHeuristic;

    .line 82
    move-result-object v6

    .line 83
    const/4 v7, 0x6

    .line 84
    .line 85
    aput-object v6, v5, v7

    .line 86
    .line 87
    .line 88
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->k()F

    .line 89
    move-result v6

    .line 90
    .line 91
    .line 92
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 93
    move-result-object v6

    .line 94
    const/4 v7, 0x7

    .line 95
    .line 96
    aput-object v6, v5, v7

    .line 97
    .line 98
    .line 99
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->j()F

    .line 100
    move-result v6

    .line 101
    .line 102
    .line 103
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 104
    move-result-object v6

    .line 105
    .line 106
    const/16 v7, 0x8

    .line 107
    .line 108
    aput-object v6, v5, v7

    .line 109
    .line 110
    .line 111
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->g()Z

    .line 112
    move-result v6

    .line 113
    .line 114
    .line 115
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 116
    move-result-object v6

    .line 117
    .line 118
    const/16 v7, 0x9

    .line 119
    .line 120
    aput-object v6, v5, v7

    .line 121
    .line 122
    .line 123
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->c()Landroid/text/TextUtils$TruncateAt;

    .line 124
    move-result-object v6

    .line 125
    .line 126
    const/16 v7, 0xa

    .line 127
    .line 128
    aput-object v6, v5, v7

    .line 129
    .line 130
    .line 131
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->d()I

    .line 132
    move-result v6

    .line 133
    .line 134
    .line 135
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    move-result-object v6

    .line 137
    .line 138
    const/16 v7, 0xb

    .line 139
    .line 140
    aput-object v6, v5, v7

    .line 141
    .line 142
    .line 143
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->l()I

    .line 144
    move-result v6

    .line 145
    .line 146
    .line 147
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    move-result-object v6

    .line 149
    .line 150
    const/16 v7, 0xc

    .line 151
    .line 152
    aput-object v6, v5, v7

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    move-result-object v2

    .line 157
    .line 158
    check-cast v2, Landroid/text/StaticLayout;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    move-object v4, v2

    .line 160
    goto :goto_0

    .line 161
    .line 162
    :catch_0
    sput-object v4, Landroidx/compose/ui/text/android/StaticLayoutFactoryPre21;->staticLayoutConstructor:Ljava/lang/reflect/Constructor;

    .line 163
    .line 164
    .line 165
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    goto :goto_0

    .line 167
    .line 168
    :catch_1
    sput-object v4, Landroidx/compose/ui/text/android/StaticLayoutFactoryPre21;->staticLayoutConstructor:Ljava/lang/reflect/Constructor;

    .line 169
    .line 170
    .line 171
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    goto :goto_0

    .line 173
    .line 174
    :catch_2
    sput-object v4, Landroidx/compose/ui/text/android/StaticLayoutFactoryPre21;->staticLayoutConstructor:Ljava/lang/reflect/Constructor;

    .line 175
    .line 176
    .line 177
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 180
    return-object v4

    .line 181
    .line 182
    :cond_1
    new-instance v0, Landroid/text/StaticLayout;

    .line 183
    .line 184
    .line 185
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->p()Ljava/lang/CharSequence;

    .line 186
    move-result-object v6

    .line 187
    .line 188
    .line 189
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->o()I

    .line 190
    move-result v7

    .line 191
    .line 192
    .line 193
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->e()I

    .line 194
    move-result v8

    .line 195
    .line 196
    .line 197
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->m()Landroid/text/TextPaint;

    .line 198
    move-result-object v9

    .line 199
    .line 200
    .line 201
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->s()I

    .line 202
    move-result v10

    .line 203
    .line 204
    .line 205
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->a()Landroid/text/Layout$Alignment;

    .line 206
    move-result-object v11

    .line 207
    .line 208
    .line 209
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->k()F

    .line 210
    move-result v12

    .line 211
    .line 212
    .line 213
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->j()F

    .line 214
    move-result v13

    .line 215
    .line 216
    .line 217
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->g()Z

    .line 218
    move-result v14

    .line 219
    .line 220
    .line 221
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->c()Landroid/text/TextUtils$TruncateAt;

    .line 222
    move-result-object v15

    .line 223
    .line 224
    .line 225
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->d()I

    .line 226
    move-result v16

    .line 227
    move-object v5, v0

    .line 228
    .line 229
    .line 230
    invoke-direct/range {v5 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 231
    return-object v0
.end method
