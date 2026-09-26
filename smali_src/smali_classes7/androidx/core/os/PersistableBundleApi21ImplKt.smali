.class final Landroidx/core/os/PersistableBundleApi21ImplKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/core/os/PersistableBundleApi21ImplKt;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/core/os/PersistableBundleApi21ImplKt;

    invoke-direct {v0}, Landroidx/core/os/PersistableBundleApi21ImplKt;-><init>()V

    sput-object v0, Landroidx/core/os/PersistableBundleApi21ImplKt;->INSTANCE:Landroidx/core/os/PersistableBundleApi21ImplKt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static final a(I)Landroid/os/PersistableBundle;
    .locals 1
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/os/PersistableBundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroid/os/PersistableBundle;-><init>(I)V

    .line 6
    return-object v0
.end method

.method public static final b(Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0    # Landroid/os/PersistableBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    .line 2
    const-string v0, "persistableBundle"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_0
    instance-of v0, p2, Ljava/lang/Boolean;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    check-cast p2, Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    move-result p2

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1, p2}, Landroidx/core/os/PersistableBundleApi22ImplKt;->a(Landroid/os/PersistableBundle;Ljava/lang/String;Z)V

    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    check-cast p2, Ljava/lang/Number;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    .line 38
    move-result-wide v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 42
    .line 43
    goto/16 :goto_0

    .line 44
    .line 45
    :cond_2
    instance-of v0, p2, Ljava/lang/Integer;

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    check-cast p2, Ljava/lang/Number;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 53
    move-result p2

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_3
    instance-of v0, p2, Ljava/lang/Long;

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    check-cast p2, Ljava/lang/Number;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 67
    move-result-wide v0

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_4
    instance-of v0, p2, Ljava/lang/String;

    .line 74
    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    check-cast p2, Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    goto :goto_0

    .line 82
    .line 83
    :cond_5
    instance-of v0, p2, [Z

    .line 84
    .line 85
    if-eqz v0, :cond_6

    .line 86
    .line 87
    check-cast p2, [Z

    .line 88
    .line 89
    .line 90
    invoke-static {p0, p1, p2}, Landroidx/core/os/PersistableBundleApi22ImplKt;->b(Landroid/os/PersistableBundle;Ljava/lang/String;[Z)V

    .line 91
    goto :goto_0

    .line 92
    .line 93
    :cond_6
    instance-of v0, p2, [D

    .line 94
    .line 95
    if-eqz v0, :cond_7

    .line 96
    .line 97
    check-cast p2, [D

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 101
    goto :goto_0

    .line 102
    .line 103
    :cond_7
    instance-of v0, p2, [I

    .line 104
    .line 105
    if-eqz v0, :cond_8

    .line 106
    .line 107
    check-cast p2, [I

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 111
    goto :goto_0

    .line 112
    .line 113
    :cond_8
    instance-of v0, p2, [J

    .line 114
    .line 115
    if-eqz v0, :cond_9

    .line 116
    .line 117
    check-cast p2, [J

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    .line 121
    goto :goto_0

    .line 122
    .line 123
    :cond_9
    instance-of v0, p2, [Ljava/lang/Object;

    .line 124
    .line 125
    const/16 v1, 0x22

    .line 126
    .line 127
    const-string v2, " for key \""

    .line 128
    .line 129
    if-eqz v0, :cond_b

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    move-result-object v0

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 137
    move-result-object v0

    .line 138
    .line 139
    .line 140
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 141
    .line 142
    const-class v3, Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 146
    move-result v3

    .line 147
    .line 148
    if-eqz v3, :cond_a

    .line 149
    .line 150
    const-string v0, "null cannot be cast to non-null type kotlin.Array<kotlin.String>"

    .line 151
    .line 152
    .line 153
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    .line 155
    check-cast p2, [Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 159
    :goto_0
    return-void

    .line 160
    .line 161
    .line 162
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 163
    move-result-object p0

    .line 164
    .line 165
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 166
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    const-string v3, "Illegal value array type "

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    move-result-object p0

    .line 192
    .line 193
    .line 194
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 195
    throw p2

    .line 196
    .line 197
    .line 198
    :cond_b
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    move-result-object p0

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 203
    move-result-object p0

    .line 204
    .line 205
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 206
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    const-string v3, "Illegal value type "

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    move-result-object p0

    .line 232
    .line 233
    .line 234
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 235
    throw p2
.end method
