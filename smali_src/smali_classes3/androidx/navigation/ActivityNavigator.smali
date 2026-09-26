.class public Landroidx/navigation/ActivityNavigator;
.super Landroidx/navigation/Navigator;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/navigation/Navigator$Name;
    value = "activity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/ActivityNavigator$Destination;,
        Landroidx/navigation/ActivityNavigator$Extras;,
        Landroidx/navigation/ActivityNavigator$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/Navigator<",
        "Landroidx/navigation/ActivityNavigator$Destination;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivityNavigator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityNavigator.kt\nandroidx/navigation/ActivityNavigator\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,511:1\n178#2,2:512\n*S KotlinDebug\n*F\n+ 1 ActivityNavigator.kt\nandroidx/navigation/ActivityNavigator\n*L\n48#1:512,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Landroidx/navigation/ActivityNavigator$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final EXTRA_NAV_CURRENT:Ljava/lang/String; = "android-support-navigation:ActivityNavigator:current"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final EXTRA_NAV_SOURCE:Ljava/lang/String; = "android-support-navigation:ActivityNavigator:source"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final EXTRA_POP_ENTER_ANIM:Ljava/lang/String; = "android-support-navigation:ActivityNavigator:popEnterAnim"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final EXTRA_POP_EXIT_ANIM:Ljava/lang/String; = "android-support-navigation:ActivityNavigator:popExitAnim"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "ActivityNavigator"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final hostActivity:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/navigation/ActivityNavigator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/ActivityNavigator$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Landroidx/navigation/ActivityNavigator;->Companion:Landroidx/navigation/ActivityNavigator$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/navigation/Navigator;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/navigation/ActivityNavigator;->context:Landroid/content/Context;

    .line 11
    .line 12
    sget-object v0, Landroidx/navigation/ActivityNavigator$hostActivity$1;->INSTANCE:Landroidx/navigation/ActivityNavigator$hostActivity$1;

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/sequences/j;->f(Ljava/lang/Object;Le8/l;)Lkotlin/sequences/g;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Lkotlin/sequences/g;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    move-object v1, v0

    .line 32
    .line 33
    check-cast v1, Landroid/content/Context;

    .line 34
    .line 35
    instance-of v1, v1, Landroid/app/Activity;

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    .line 41
    :goto_0
    check-cast v0, Landroid/app/Activity;

    .line 42
    .line 43
    iput-object v0, p0, Landroidx/navigation/ActivityNavigator;->hostActivity:Landroid/app/Activity;

    .line 44
    return-void
.end method

.method public static safedk_ContextCompat_startActivity_f482d8446b01c5580049a261a99b538c(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # Landroid/os/Bundle;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/core/content/ContextCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/core/content/ContextCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Landroidx/navigation/NavDestination;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/navigation/ActivityNavigator;->l()Landroidx/navigation/ActivityNavigator$Destination;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic d(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Landroidx/navigation/NavDestination;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/navigation/ActivityNavigator$Destination;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/navigation/ActivityNavigator;->n(Landroidx/navigation/ActivityNavigator$Destination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Landroidx/navigation/NavDestination;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public k()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/navigation/ActivityNavigator;->hostActivity:Landroid/app/Activity;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public l()Landroidx/navigation/ActivityNavigator$Destination;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/navigation/ActivityNavigator$Destination;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroidx/navigation/ActivityNavigator$Destination;-><init>(Landroidx/navigation/Navigator;)V

    .line 6
    return-object v0
.end method

.method public final m()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/navigation/ActivityNavigator;->context:Landroid/content/Context;

    return-object v0
.end method

.method public n(Landroidx/navigation/ActivityNavigator$Destination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Landroidx/navigation/NavDestination;
    .locals 9
    .param p1    # Landroidx/navigation/ActivityNavigator$Destination;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/navigation/NavOptions;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/navigation/Navigator$Extras;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "destination"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/navigation/ActivityNavigator$Destination;->E()Landroid/content/Intent;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_13

    .line 12
    .line 13
    new-instance v0, Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/navigation/ActivityNavigator$Destination;->E()Landroid/content/Intent;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 21
    .line 22
    if-eqz p2, :cond_3

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/navigation/ActivityNavigator$Destination;->D()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    .line 34
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 35
    move-result v2

    .line 36
    .line 37
    if-nez v2, :cond_0

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    .line 41
    .line 42
    .line 43
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 44
    .line 45
    const-string v3, "\\{(.+?)\\}"

    .line 46
    .line 47
    .line 48
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    .line 57
    move-result v4

    .line 58
    .line 59
    if-eqz v4, :cond_2

    .line 60
    const/4 v4, 0x1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 64
    move-result-object v4

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 68
    move-result v5

    .line 69
    .line 70
    if-eqz v5, :cond_1

    .line 71
    .line 72
    const-string v5, ""

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v2, v5}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    move-result-object v4

    .line 80
    .line 81
    .line 82
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    move-result-object v4

    .line 84
    .line 85
    .line 86
    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object v4

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    goto :goto_0

    .line 92
    .line 93
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 94
    .line 95
    new-instance p3, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    const-string p4, "Could not find "

    .line 101
    .line 102
    .line 103
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string p4, " in "

    .line 109
    .line 110
    .line 111
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string p2, " to fill data pattern "

    .line 117
    .line 118
    .line 119
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object p2

    .line 127
    .line 128
    .line 129
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 130
    throw p1

    .line 131
    .line 132
    .line 133
    :cond_2
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 137
    move-result-object p2

    .line 138
    .line 139
    .line 140
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 141
    move-result-object p2

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 145
    .line 146
    :cond_3
    :goto_1
    instance-of p2, p4, Landroidx/navigation/ActivityNavigator$Extras;

    .line 147
    .line 148
    if-eqz p2, :cond_4

    .line 149
    move-object v1, p4

    .line 150
    .line 151
    check-cast v1, Landroidx/navigation/ActivityNavigator$Extras;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Landroidx/navigation/ActivityNavigator$Extras;->b()I

    .line 155
    move-result v1

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 159
    .line 160
    :cond_4
    iget-object v1, p0, Landroidx/navigation/ActivityNavigator;->hostActivity:Landroid/app/Activity;

    .line 161
    .line 162
    if-nez v1, :cond_5

    .line 163
    .line 164
    const/high16 v1, 0x10000000

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 168
    .line 169
    :cond_5
    if-eqz p3, :cond_6

    .line 170
    .line 171
    .line 172
    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->g()Z

    .line 173
    move-result v1

    .line 174
    .line 175
    if-eqz v1, :cond_6

    .line 176
    .line 177
    const/high16 v1, 0x20000000

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 181
    .line 182
    :cond_6
    iget-object v1, p0, Landroidx/navigation/ActivityNavigator;->hostActivity:Landroid/app/Activity;

    .line 183
    .line 184
    const-string v2, "android-support-navigation:ActivityNavigator:current"

    .line 185
    const/4 v3, 0x0

    .line 186
    .line 187
    if-eqz v1, :cond_7

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 191
    move-result-object v1

    .line 192
    .line 193
    if-eqz v1, :cond_7

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 197
    move-result v1

    .line 198
    .line 199
    if-eqz v1, :cond_7

    .line 200
    .line 201
    const-string v4, "android-support-navigation:ActivityNavigator:source"

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    .line 206
    .line 207
    :cond_7
    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->p()I

    .line 208
    move-result v1

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    .line 213
    iget-object v1, p0, Landroidx/navigation/ActivityNavigator;->context:Landroid/content/Context;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 217
    move-result-object v1

    .line 218
    .line 219
    const-string v2, "ActivityNavigator"

    .line 220
    .line 221
    const-string v4, "animator"

    .line 222
    .line 223
    if-eqz p3, :cond_b

    .line 224
    .line 225
    .line 226
    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->c()I

    .line 227
    move-result v5

    .line 228
    .line 229
    .line 230
    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->d()I

    .line 231
    move-result v6

    .line 232
    .line 233
    if-lez v5, :cond_8

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    .line 237
    move-result-object v7

    .line 238
    .line 239
    .line 240
    invoke-static {v7, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 241
    move-result v7

    .line 242
    .line 243
    if-nez v7, :cond_9

    .line 244
    .line 245
    :cond_8
    if-lez v6, :cond_a

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    .line 249
    move-result-object v7

    .line 250
    .line 251
    .line 252
    invoke-static {v7, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 253
    move-result v7

    .line 254
    .line 255
    if-eqz v7, :cond_a

    .line 256
    .line 257
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    const-string v8, "Activity destinations do not support Animator resource. Ignoring popEnter resource "

    .line 263
    .line 264
    .line 265
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 269
    move-result-object v5

    .line 270
    .line 271
    .line 272
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    const-string v5, " and popExit resource "

    .line 275
    .line 276
    .line 277
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 281
    move-result-object v5

    .line 282
    .line 283
    .line 284
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    const-string v5, " when launching "

    .line 287
    .line 288
    .line 289
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    move-result-object v5

    .line 297
    .line 298
    .line 299
    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    goto :goto_2

    .line 301
    .line 302
    :cond_a
    const-string v7, "android-support-navigation:ActivityNavigator:popEnterAnim"

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    .line 307
    const-string v5, "android-support-navigation:ActivityNavigator:popExitAnim"

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    .line 312
    :cond_b
    :goto_2
    if-eqz p2, :cond_d

    .line 313
    .line 314
    check-cast p4, Landroidx/navigation/ActivityNavigator$Extras;

    .line 315
    .line 316
    .line 317
    invoke-virtual {p4}, Landroidx/navigation/ActivityNavigator$Extras;->a()Landroidx/core/app/ActivityOptionsCompat;

    .line 318
    move-result-object p2

    .line 319
    .line 320
    if-eqz p2, :cond_c

    .line 321
    .line 322
    iget-object p4, p0, Landroidx/navigation/ActivityNavigator;->context:Landroid/content/Context;

    .line 323
    .line 324
    .line 325
    invoke-virtual {p2}, Landroidx/core/app/ActivityOptionsCompat;->b()Landroid/os/Bundle;

    .line 326
    move-result-object p2

    .line 327
    .line 328
    .line 329
    invoke-static {p4, v0, p2}, Landroidx/navigation/ActivityNavigator;->safedk_ContextCompat_startActivity_f482d8446b01c5580049a261a99b538c(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 330
    goto :goto_3

    .line 331
    .line 332
    :cond_c
    iget-object p2, p0, Landroidx/navigation/ActivityNavigator;->context:Landroid/content/Context;

    .line 333
    .line 334
    .line 335
    invoke-static {p2, v0}, Landroidx/navigation/ActivityNavigator;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 336
    goto :goto_3

    .line 337
    .line 338
    :cond_d
    iget-object p2, p0, Landroidx/navigation/ActivityNavigator;->context:Landroid/content/Context;

    .line 339
    .line 340
    .line 341
    invoke-static {p2, v0}, Landroidx/navigation/ActivityNavigator;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 342
    .line 343
    :goto_3
    if-eqz p3, :cond_12

    .line 344
    .line 345
    iget-object p2, p0, Landroidx/navigation/ActivityNavigator;->hostActivity:Landroid/app/Activity;

    .line 346
    .line 347
    if-eqz p2, :cond_12

    .line 348
    .line 349
    .line 350
    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->a()I

    .line 351
    move-result p2

    .line 352
    .line 353
    .line 354
    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->b()I

    .line 355
    move-result p3

    .line 356
    .line 357
    if-lez p2, :cond_e

    .line 358
    .line 359
    .line 360
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    .line 361
    move-result-object p4

    .line 362
    .line 363
    .line 364
    invoke-static {p4, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 365
    move-result p4

    .line 366
    .line 367
    if-nez p4, :cond_f

    .line 368
    .line 369
    :cond_e
    if-lez p3, :cond_10

    .line 370
    .line 371
    .line 372
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    .line 373
    move-result-object p4

    .line 374
    .line 375
    .line 376
    invoke-static {p4, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 377
    move-result p4

    .line 378
    .line 379
    if-eqz p4, :cond_10

    .line 380
    .line 381
    :cond_f
    new-instance p4, Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    .line 386
    const-string v0, "Activity destinations do not support Animator resource. Ignoring enter resource "

    .line 387
    .line 388
    .line 389
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 393
    move-result-object p2

    .line 394
    .line 395
    .line 396
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    const-string p2, " and exit resource "

    .line 399
    .line 400
    .line 401
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 405
    move-result-object p2

    .line 406
    .line 407
    .line 408
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    const-string/jumbo p2, "when launching "

    .line 412
    .line 413
    .line 414
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 421
    move-result-object p1

    .line 422
    .line 423
    .line 424
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    goto :goto_4

    .line 426
    .line 427
    :cond_10
    if-gez p2, :cond_11

    .line 428
    .line 429
    if-ltz p3, :cond_12

    .line 430
    .line 431
    .line 432
    :cond_11
    invoke-static {p2, v3}, Lj8/m;->e(II)I

    .line 433
    move-result p1

    .line 434
    .line 435
    .line 436
    invoke-static {p3, v3}, Lj8/m;->e(II)I

    .line 437
    move-result p2

    .line 438
    .line 439
    iget-object p3, p0, Landroidx/navigation/ActivityNavigator;->hostActivity:Landroid/app/Activity;

    .line 440
    .line 441
    .line 442
    invoke-virtual {p3, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 443
    :cond_12
    :goto_4
    const/4 p1, 0x0

    .line 444
    return-object p1

    .line 445
    .line 446
    :cond_13
    new-instance p2, Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    .line 451
    const-string p3, "Destination "

    .line 452
    .line 453
    .line 454
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->p()I

    .line 458
    move-result p1

    .line 459
    .line 460
    .line 461
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    const-string p1, " does not have an Intent set."

    .line 464
    .line 465
    .line 466
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 470
    move-result-object p1

    .line 471
    .line 472
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 473
    .line 474
    .line 475
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 476
    move-result-object p1

    .line 477
    .line 478
    .line 479
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 480
    throw p2
.end method
