.class public final Lffmpeg/executable/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg7/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lffmpeg/executable/a$a;,
        Lffmpeg/executable/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFFMpegEditorDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FFMpegEditorDelegate.kt\nffmpeg/executable/FFMpegEditorDelegate\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,691:1\n1313#2,2:692\n*S KotlinDebug\n*F\n+ 1 FFMpegEditorDelegate.kt\nffmpeg/executable/FFMpegEditorDelegate\n*L\n71#1:692,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lffmpeg/executable/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static volatile instance:Lffmpeg/executable/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private final localFileDir:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final runningTasks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lg7/d;",
            "Lffmpeg/executable/a$b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lffmpeg/executable/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lffmpeg/executable/a$a;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lffmpeg/executable/a;->Companion:Lffmpeg/executable/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lffmpeg/executable/a;->localFileDir:Ljava/io/File;

    .line 3
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lffmpeg/executable/a;->runningTasks:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lffmpeg/executable/a;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public static final synthetic a()Lffmpeg/executable/a;
    .locals 1

    .line 1
    sget-object v0, Lffmpeg/executable/a;->instance:Lffmpeg/executable/a;

    return-object v0
.end method

.method public static final synthetic b(Lffmpeg/executable/a;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lffmpeg/executable/a;->runningTasks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lffmpeg/executable/a;Lg7/d;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lffmpeg/executable/a;->g(Lg7/d;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Lffmpeg/executable/a;)V
    .locals 0

    .line 1
    sput-object p0, Lffmpeg/executable/a;->instance:Lffmpeg/executable/a;

    return-void
.end method

.method public static final synthetic e(Lffmpeg/executable/a;Lg7/d;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lffmpeg/executable/a;->h(Lg7/d;Ljava/util/ArrayList;)V

    .line 4
    return-void
.end method

.method private final f(ILcom/narvii/video/model/AVClipInfoPack;Ljava/lang/StringBuilder;I)V
    .locals 7

    .line 1
    .line 2
    sget-object v0, Lkotlin/jvm/internal/u0;->INSTANCE:Lkotlin/jvm/internal/u0;

    .line 3
    const/4 v0, 0x4

    .line 4
    .line 5
    new-array v1, v0, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    .line 12
    aput-object v2, v1, v3

    .line 13
    .line 14
    iget v2, p2, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    const/4 v4, 0x1

    .line 20
    .line 21
    aput-object v2, v1, v4

    .line 22
    .line 23
    .line 24
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    const/4 v5, 0x2

    .line 27
    .line 28
    aput-object v2, v1, v5

    .line 29
    const/4 v2, 0x3

    .line 30
    .line 31
    .line 32
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 33
    move-result-object p4

    .line 34
    .line 35
    aput-object p4, v1, v2

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 39
    move-result-object p4

    .line 40
    .line 41
    const-string v0, "[%s:a]aformat=sample_fmts=fltp:sample_rates=44100:channel_layouts=stereo,volume=%s,adelay=%s|%s"

    .line 42
    .line 43
    .line 44
    invoke-static {v0, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    move-result-object p4

    .line 46
    .line 47
    const-string v0, "format(...)"

    .line 48
    .line 49
    .line 50
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    iget-boolean p4, p2, Lcom/narvii/video/model/AVClipInfoPack;->fadeIn:Z

    .line 56
    .line 57
    const-string v1, ","

    .line 58
    .line 59
    const/16 v2, 0xfa0

    .line 60
    .line 61
    if-eqz p4, :cond_0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    new-array p4, v5, [Ljava/lang/Object;

    .line 67
    .line 68
    iget v6, p2, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 69
    .line 70
    div-int/lit16 v6, v6, 0x3e8

    .line 71
    .line 72
    .line 73
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 74
    move-result-object v6

    .line 75
    .line 76
    aput-object v6, p4, v3

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    .line 80
    move-result v6

    .line 81
    .line 82
    .line 83
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    .line 84
    move-result v6

    .line 85
    .line 86
    div-int/lit16 v6, v6, 0x3e8

    .line 87
    .line 88
    .line 89
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 90
    move-result-object v6

    .line 91
    .line 92
    aput-object v6, p4, v4

    .line 93
    .line 94
    .line 95
    invoke-static {p4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 96
    move-result-object p4

    .line 97
    .line 98
    const-string v6, "afade=t=in:ss=%s:d=%s"

    .line 99
    .line 100
    .line 101
    invoke-static {v6, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    move-result-object p4

    .line 103
    .line 104
    .line 105
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    :cond_0
    iget-boolean p4, p2, Lcom/narvii/video/model/AVClipInfoPack;->fadeOut:Z

    .line 111
    .line 112
    if-eqz p4, :cond_1

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    .line 116
    move-result p4

    .line 117
    .line 118
    if-le p4, v2, :cond_1

    .line 119
    .line 120
    .line 121
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    .line 125
    move-result p4

    .line 126
    sub-int/2addr p4, v2

    .line 127
    .line 128
    .line 129
    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    .line 130
    move-result p4

    .line 131
    .line 132
    new-array v1, v5, [Ljava/lang/Object;

    .line 133
    .line 134
    iget p2, p2, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 135
    sub-int/2addr p2, p4

    .line 136
    .line 137
    div-int/lit16 p2, p2, 0x3e8

    .line 138
    .line 139
    .line 140
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 141
    move-result-object p2

    .line 142
    .line 143
    aput-object p2, v1, v3

    .line 144
    .line 145
    div-int/lit16 p4, p4, 0x3e8

    .line 146
    .line 147
    .line 148
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 149
    move-result-object p2

    .line 150
    .line 151
    aput-object p2, v1, v4

    .line 152
    .line 153
    .line 154
    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 155
    move-result-object p2

    .line 156
    .line 157
    const-string p4, "afade=t=out:st=%s:d=%s"

    .line 158
    .line 159
    .line 160
    invoke-static {p4, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 161
    move-result-object p2

    .line 162
    .line 163
    .line 164
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    :cond_1
    new-array p2, v4, [Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 173
    move-result-object p1

    .line 174
    .line 175
    aput-object p1, p2, v3

    .line 176
    .line 177
    .line 178
    invoke-static {p2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 179
    move-result-object p1

    .line 180
    .line 181
    const-string p2, "[a%s]"

    .line 182
    .line 183
    .line 184
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 185
    move-result-object p1

    .line 186
    .line 187
    .line 188
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    const-string p1, ";"

    .line 194
    .line 195
    .line 196
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    return-void
.end method

.method private final g(Lg7/d;)Ljava/util/List;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/d;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lffmpeg/executable/a;->localFileDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ffmpeg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual/range {p1 .. p1}, Lg7/d;->a()I

    move-result v3

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    const/4 v5, 0x2

    const-string v6, "format(...)"

    const-string v7, " "

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v3, v4, :cond_0

    .line 4
    sget-object v3, Lkotlin/jvm/internal/u0;->INSTANCE:Lkotlin/jvm/internal/u0;

    new-array v3, v5, [Ljava/lang/Object;

    sget-object v4, Lffmpeg/executable/a;->Companion:Lffmpeg/executable/a$a;

    invoke-virtual/range {p1 .. p1}, Lg7/d;->e()I

    move-result v10

    invoke-virtual {v4, v10}, Lffmpeg/executable/a$a;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual/range {p1 .. p1}, Lg7/d;->y()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "-f lavfi -i anullsrc -t %s -c:a aac -y %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    move-object v1, v2

    move-object/from16 v28, v7

    goto/16 :goto_28

    .line 5
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lg7/d;->a()I

    move-result v3

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    const-string v10, "-y"

    const-string v11, "-i"

    if-ne v3, v4, :cond_4

    invoke-virtual/range {p1 .. p1}, Lg7/d;->k()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Lg7/d;->E()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6
    :cond_1
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual/range {p1 .. p1}, Lg7/d;->l()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v3

    iget-object v3, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual/range {p1 .. p1}, Lg7/d;->E()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v11, "-vf vflip"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    .line 9
    invoke-static/range {v11 .. v16}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 10
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lg7/d;->k()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v11, "-vf hflip"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    .line 11
    invoke-static/range {v11 .. v16}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 12
    :cond_3
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual/range {p1 .. p1}, Lg7/d;->y()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lg7/d;->a()I

    move-result v3

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    const-string v12, "scale=%s:%s,pad=720:1280:(ow-iw)/2:(oh-ih)/2"

    const/4 v14, 0x0

    const-string v15, "-vf"

    const-string v5, "-ss"

    const-string v13, "get(...)"

    if-ne v3, v4, :cond_e

    .line 15
    invoke-virtual/range {p1 .. p1}, Lg7/d;->q()Z

    .line 16
    invoke-virtual/range {p1 .. p1}, Lg7/d;->H()Z

    move-result v3

    if-nez v3, :cond_5

    .line 17
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lffmpeg/executable/a;->Companion:Lffmpeg/executable/a$a;

    .line 18
    invoke-virtual/range {p1 .. p1}, Lg7/d;->D()I

    move-result v4

    invoke-virtual {v3, v4}, Lffmpeg/executable/a$a;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_5
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual/range {p1 .. p1}, Lg7/d;->l()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v3

    iget-object v3, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual/range {p1 .. p1}, Lg7/d;->H()Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "-frames:v"

    .line 22
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual/range {p1 .. p1}, Lg7/d;->A()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "-r"

    .line 24
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-virtual/range {p1 .. p1}, Lg7/d;->B()F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lg7/d;->p()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 27
    invoke-virtual/range {p1 .. p1}, Lg7/d;->H()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 28
    invoke-virtual/range {p1 .. p1}, Lg7/d;->l()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v3

    iget-object v3, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/narvii/util/image/BitmapUtils;->readImageRotation(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_7

    .line 29
    sget-object v3, Lkotlin/jvm/internal/u0;->INSTANCE:Lkotlin/jvm/internal/u0;

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v4, v3, v9

    invoke-static {v3, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "-vf %sscale=720:1280:force_original_aspect_ratio=1,pad=720:1280:(ow-iw)/2:(oh-ih)/2"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 30
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    const/16 v5, 0x5a

    if-lt v3, v5, :cond_8

    const-string/jumbo v5, "transpose=1,"

    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x5a

    goto :goto_1

    .line 32
    :cond_8
    sget-object v3, Lkotlin/jvm/internal/u0;->INSTANCE:Lkotlin/jvm/internal/u0;

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v3, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "-vf %sscale=720:1280:force_original_aspect_ratio=1,pad=720:1280:(ow-iw)/2:(oh-ih)/2"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 33
    :cond_9
    invoke-static {v1, v9, v8, v14}, Lg7/d;->w(Lg7/d;IILjava/lang/Object;)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-nez v3, :cond_a

    const-string v17, "-sar 1"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x6

    const/16 v22, 0x0

    .line 34
    invoke-static/range {v17 .. v22}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 35
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v16, "scale=720:1280:force_original_aspect_ratio=1,pad=720:1280:(ow-iw)/2:(oh-ih)/2"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v20, 0x6

    const/16 v21, 0x0

    .line 36
    invoke-static/range {v16 .. v21}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    :cond_a
    const-string v17, "-sar 1"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x6

    const/16 v22, 0x0

    .line 37
    invoke-static/range {v17 .. v22}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 38
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lffmpeg/executable/a;->Companion:Lffmpeg/executable/a$a;

    const/4 v4, 0x2

    .line 39
    invoke-static {v3, v1, v9, v4, v14}, Lffmpeg/executable/a$a;->e(Lffmpeg/executable/a$a;Lg7/d;IILjava/lang/Object;)Lw7/u;

    move-result-object v3

    invoke-virtual {v3}, Lw7/u;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3}, Lw7/u;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 40
    sget-object v11, Lkotlin/jvm/internal/u0;->INSTANCE:Lkotlin/jvm/internal/u0;

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v5, v11, v9

    aput-object v3, v11, v8

    invoke-static {v11, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v12, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-static/range {v13 .. v18}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 41
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lg7/d;->C()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-vf scale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lg7/d;->C()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 43
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lg7/d;->I()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v13}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v11, "-vf scale=240:-2"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    .line 44
    invoke-static/range {v11 .. v16}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_d
    const-string v11, "-vf scale=-2:240"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    .line 45
    invoke-static/range {v11 .. v16}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 46
    :goto_2
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual/range {p1 .. p1}, Lg7/d;->y()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 48
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lg7/d;->a()I

    move-result v3

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    const-string v14, "-filter_complex"

    const-string v8, "-t"

    if-ne v3, v4, :cond_f

    .line 49
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lffmpeg/executable/a;->Companion:Lffmpeg/executable/a$a;

    .line 50
    invoke-virtual/range {p1 .. p1}, Lg7/d;->D()I

    move-result v4

    invoke-virtual {v3, v4}, Lffmpeg/executable/a$a;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual/range {p1 .. p1}, Lg7/d;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Lffmpeg/executable/a$a;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual/range {p1 .. p1}, Lg7/d;->l()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v3

    iget-object v3, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v3, Lkotlin/jvm/internal/u0;->INSTANCE:Lkotlin/jvm/internal/u0;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lg7/d;->j()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual/range {p1 .. p1}, Lg7/d;->i()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    aput-object v5, v4, v8

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "[0:a]aformat=channel_layouts=mono,compand,showwavespic=s=%sx%s:colors=#1598FF,drawbox=x=(iw-w)/2:y=(ih-h)/2:w=iw:h=1:color=#1598FF"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "-frames:v"

    .line 57
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "1"

    .line 58
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual/range {p1 .. p1}, Lg7/d;->y()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 61
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lg7/d;->a()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    const-string v20, "0"

    if-ne v3, v4, :cond_15

    .line 62
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual/range {p1 .. p1}, Lg7/d;->l()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v3

    iget-object v3, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual/range {p1 .. p1}, Lg7/d;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/video/model/AVClipInfoPack;

    .line 65
    invoke-virtual {v4}, Lcom/narvii/video/model/AVClipInfoPack;->isTrimSectionValid()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 66
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v12, Lffmpeg/executable/a;->Companion:Lffmpeg/executable/a$a;

    .line 67
    iget v13, v4, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    invoke-virtual {v12, v13}, Lffmpeg/executable/a$a;->c(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {v4}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result v13

    invoke-virtual {v12, v13}, Lffmpeg/executable/a$a;->c(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_10
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v4, v4, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_11
    const-string v12, "-c:v copy"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x6

    const/16 v17, 0x0

    .line 72
    invoke-static/range {v12 .. v17}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 73
    invoke-virtual/range {p1 .. p1}, Lg7/d;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "-an"

    .line 74
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 75
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lg7/d;->f()Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v11, "-c:a copy"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    .line 76
    invoke-static/range {v11 .. v16}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_13
    const-string v11, "-c:a aac -ar 44100 -b:a 128k -ac 2"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    .line 77
    invoke-static/range {v11 .. v16}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 78
    :goto_4
    sget-object v3, Lkotlin/jvm/internal/u0;->INSTANCE:Lkotlin/jvm/internal/u0;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v20, v4, v9

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v3, "-map %s:v"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 79
    invoke-virtual/range {p1 .. p1}, Lg7/d;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v9

    :goto_5
    if-ge v4, v3, :cond_14

    .line 80
    sget-object v5, Lkotlin/jvm/internal/u0;->INSTANCE:Lkotlin/jvm/internal/u0;

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-static {v8, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    const-string v5, "-map %s:a"

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 81
    :cond_14
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v11, "-movflags +faststart"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    .line 82
    invoke-static/range {v11 .. v16}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 83
    invoke-virtual/range {p1 .. p1}, Lg7/d;->y()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 84
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lg7/d;->a()I

    move-result v3

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_16

    const-string v21, "-loop 1 -framerate 10"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x6

    const/16 v26, 0x0

    .line 85
    invoke-static/range {v21 .. v26}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 86
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual/range {p1 .. p1}, Lg7/d;->l()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v3

    iget-object v3, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lffmpeg/executable/a;->Companion:Lffmpeg/executable/a$a;

    const/16 v4, 0x1388

    .line 89
    invoke-virtual {v3, v4}, Lffmpeg/executable/a$a;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v16, "scale=720:1280:force_original_aspect_ratio=1,pad=720:1280:(ow-iw)/2:(oh-ih)/2"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x6

    const/16 v21, 0x0

    .line 91
    invoke-static/range {v16 .. v21}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v11, "-threads 0 -pix_fmt yuv420p -c:v libx264 -preset:v superfast -r:v 30000/1001 -force_fps -crf 24"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    .line 92
    invoke-static/range {v11 .. v16}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 93
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual/range {p1 .. p1}, Lg7/d;->y()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 95
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lg7/d;->a()I

    move-result v3

    and-int/lit16 v3, v3, 0x800

    const/16 v4, 0x800

    const-string v9, "scale="

    if-ne v3, v4, :cond_18

    .line 96
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual/range {p1 .. p1}, Lg7/d;->l()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v3

    iget-object v3, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lg7/d;->I()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v13}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_17

    const-string v4, "720:-2"

    goto :goto_6

    :cond_17
    const-string v4, "-2:720"

    :goto_6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v11, "-threads 0 -pix_fmt yuv420p -c:v libx264 -preset:v superfast -r:v 30000/1001 -force_fps -crf 24"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v12

    .line 100
    invoke-static/range {v11 .. v16}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 101
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual/range {p1 .. p1}, Lg7/d;->y()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 103
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lg7/d;->a()I

    move-result v3

    and-int/lit16 v3, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_19

    const-string v22, "-f concat -safe 0"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x6

    const/16 v27, 0x0

    .line 104
    invoke-static/range {v22 .. v27}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 105
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual/range {p1 .. p1}, Lg7/d;->l()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v3

    iget-object v3, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "-c copy"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    .line 107
    invoke-static/range {v8 .. v13}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 108
    invoke-virtual/range {p1 .. p1}, Lg7/d;->y()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 109
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lg7/d;->n()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_1a
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Boolean;

    .line 110
    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    if-eqz v22, :cond_1a

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 111
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lg7/d;->a()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    move-object/from16 v22, v10

    const/16 v10, 0x8

    if-ne v3, v10, :cond_1c

    const/4 v3, 0x1

    goto :goto_8

    :cond_1c
    const/4 v3, 0x0

    .line 112
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lg7/d;->a()I

    move-result v10

    and-int/lit8 v10, v10, 0x20

    move-object/from16 v23, v15

    const/16 v15, 0x20

    if-ne v10, v15, :cond_1e

    if-gtz v4, :cond_1d

    .line 113
    invoke-virtual/range {p1 .. p1}, Lg7/d;->b()Ljava/util/ArrayList;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    const/4 v15, 0x1

    xor-int/2addr v10, v15

    if-eqz v10, :cond_1f

    goto :goto_9

    :cond_1d
    const/4 v15, 0x1

    :goto_9
    move v10, v15

    goto :goto_a

    :cond_1e
    const/4 v15, 0x1

    :cond_1f
    const/4 v10, 0x0

    .line 114
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lg7/d;->m()Ljava/util/List;

    move-result-object v19

    move/from16 v24, v4

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v15, :cond_22

    if-eqz v3, :cond_20

    .line 115
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lffmpeg/executable/a;->Companion:Lffmpeg/executable/a$a;

    .line 116
    invoke-virtual/range {p1 .. p1}, Lg7/d;->D()I

    move-result v15

    invoke-virtual {v4, v15}, Lffmpeg/executable/a$a;->c(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual/range {p1 .. p1}, Lg7/d;->e()I

    move-result v15

    invoke-virtual {v4, v15}, Lffmpeg/executable/a$a;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "-accurate_seek"

    .line 119
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_20
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual/range {p1 .. p1}, Lg7/d;->l()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v4

    iget-object v4, v4, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    move/from16 v26, v3

    goto/16 :goto_d

    .line 122
    :cond_22
    sget-object v4, Lkotlin/jvm/internal/u0;->INSTANCE:Lkotlin/jvm/internal/u0;

    const/4 v4, 0x1

    new-array v15, v4, [Ljava/lang/Object;

    const-string v19, "0.1"

    const/16 v21, 0x0

    aput-object v19, v15, v21

    invoke-static {v15, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v15

    const-string v4, "-f lavfi -t %s -i anullsrc"

    invoke-static {v4, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x6

    const/16 v30, 0x0

    move-object/from16 v25, v4

    invoke-static/range {v25 .. v30}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 123
    invoke-virtual/range {p1 .. p1}, Lg7/d;->m()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_21

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/narvii/video/model/AVClipInfoPack;

    .line 124
    invoke-virtual {v15}, Lcom/narvii/video/model/AVClipInfoPack;->isTrimSectionValid()Z

    move-result v25

    if-eqz v25, :cond_23

    .line 125
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v25, v4

    sget-object v4, Lffmpeg/executable/a;->Companion:Lffmpeg/executable/a$a;

    move/from16 v26, v3

    .line 126
    iget v3, v15, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    invoke-virtual {v4, v3}, Lffmpeg/executable/a$a;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {v15}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result v3

    invoke-virtual {v4, v3}, Lffmpeg/executable/a$a;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_23
    move/from16 v26, v3

    move-object/from16 v25, v4

    .line 129
    :goto_c
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v3, v15, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v25

    move/from16 v3, v26

    goto :goto_b

    :goto_d
    if-eqz v10, :cond_25

    .line 131
    invoke-virtual/range {p1 .. p1}, Lg7/d;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/video/model/AVClipInfoPack;

    .line 132
    invoke-virtual {v4}, Lcom/narvii/video/model/AVClipInfoPack;->isTrimSectionValid()Z

    move-result v15

    if-eqz v15, :cond_24

    .line 133
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v15, Lffmpeg/executable/a;->Companion:Lffmpeg/executable/a$a;

    move-object/from16 v25, v3

    .line 134
    iget v3, v4, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    invoke-virtual {v15, v3}, Lffmpeg/executable/a$a;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {v4}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result v3

    invoke-virtual {v15, v3}, Lffmpeg/executable/a$a;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_24
    move-object/from16 v25, v3

    .line 137
    :goto_f
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v3, v4, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v25

    goto :goto_e

    .line 139
    :cond_25
    invoke-virtual/range {p1 .. p1}, Lg7/d;->m()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "-map [%s]"

    const-string v8, "[a%s]"

    const/4 v11, 0x1

    if-le v3, v11, :cond_3e

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    invoke-virtual/range {p1 .. p1}, Lg7/d;->m()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v15, 0x0

    const/16 v18, 0x0

    :goto_10
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2a

    add-int/lit8 v5, v15, 0x1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v24, v11

    move-object/from16 v11, v23

    check-cast v11, Lcom/narvii/video/model/AVClipInfoPack;

    move/from16 v27, v10

    .line 142
    invoke-virtual/range {p1 .. p1}, Lg7/d;->o()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v13}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_29

    add-int/lit8 v18, v18, 0x1

    .line 143
    sget-object v10, Lkotlin/jvm/internal/u0;->INSTANCE:Lkotlin/jvm/internal/u0;

    move-object/from16 v28, v7

    const/4 v10, 0x1

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x0

    aput-object v19, v7, v21

    invoke-static {v7, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    const-string v10, "[%s:v]"

    invoke-static {v10, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual/range {p1 .. p1}, Lg7/d;->p()Z

    move-result v7

    const-string v10, "setsar=1"

    move-object/from16 v29, v4

    const-string v4, ","

    if-eqz v7, :cond_27

    .line 145
    invoke-virtual {v1, v15}, Lg7/d;->v(I)F

    move-result v7

    const/high16 v17, 0x3f800000    # 1.0f

    cmpg-float v7, v7, v17

    if-nez v7, :cond_26

    const-string v7, "scale=720:1280:force_original_aspect_ratio=1,pad=720:1280:(ow-iw)/2:(oh-ih)/2"

    .line 146
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v30, v2

    :goto_11
    move-object/from16 v31, v9

    move-object/from16 v32, v12

    move-object/from16 v33, v14

    :goto_12
    const/4 v1, 0x1

    goto/16 :goto_13

    :cond_26
    sget-object v7, Lffmpeg/executable/a;->Companion:Lffmpeg/executable/a$a;

    .line 149
    invoke-static {v7, v1, v15}, Lffmpeg/executable/a$a;->a(Lffmpeg/executable/a$a;Lg7/d;I)Lw7/u;

    move-result-object v7

    invoke-virtual {v7}, Lw7/u;->a()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    invoke-virtual {v7}, Lw7/u;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v30, v2

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v23, v2, v16

    const/16 v16, 0x1

    aput-object v7, v2, v16

    .line 150
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v12, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    :cond_27
    move-object/from16 v30, v2

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lffmpeg/executable/a;->Companion:Lffmpeg/executable/a$a;

    .line 154
    invoke-virtual/range {p1 .. p1}, Lg7/d;->x()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v13}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    move-object/from16 v31, v9

    invoke-virtual/range {p1 .. p1}, Lg7/d;->u()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v13}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    move-object/from16 v32, v12

    invoke-virtual/range {p1 .. p1}, Lg7/d;->I()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v13}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    move-object/from16 v33, v14

    invoke-virtual/range {p1 .. p1}, Lg7/d;->t()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14, v13}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->floatValue()F

    move-result v14

    invoke-static {v2, v7, v9, v12, v14}, Lffmpeg/executable/a$a;->b(Lffmpeg/executable/a$a;IIZF)Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    :goto_13
    new-array v2, v1, [Ljava/lang/Object;

    .line 158
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    aput-object v4, v2, v7

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v1, "[v%s]"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    .line 159
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual/range {p1 .. p1}, Lg7/d;->n()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v13}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 v1, 0x0

    .line 161
    invoke-direct {v0, v5, v11, v3, v1}, Lffmpeg/executable/a;->f(ILcom/narvii/video/model/AVClipInfoPack;Ljava/lang/StringBuilder;I)V

    :cond_28
    move-object/from16 v1, p1

    move v15, v5

    move-object/from16 v11, v24

    move/from16 v10, v27

    move-object/from16 v7, v28

    move-object/from16 v4, v29

    move-object/from16 v2, v30

    move-object/from16 v9, v31

    move-object/from16 v12, v32

    move-object/from16 v14, v33

    goto/16 :goto_10

    :cond_29
    move-object/from16 v1, p1

    move v15, v5

    move-object/from16 v11, v24

    move/from16 v10, v27

    goto/16 :goto_10

    :cond_2a
    move-object/from16 v30, v2

    move-object/from16 v29, v4

    move-object/from16 v28, v7

    move/from16 v27, v10

    move-object/from16 v33, v14

    .line 162
    invoke-virtual/range {p1 .. p1}, Lg7/d;->m()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_2d

    .line 163
    invoke-virtual/range {p1 .. p1}, Lg7/d;->o()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v13}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 164
    sget-object v4, Lkotlin/jvm/internal/u0;->INSTANCE:Lkotlin/jvm/internal/u0;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    add-int/lit8 v7, v2, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v5, v10

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    const-string v9, "[v%s]"

    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual/range {p1 .. p1}, Lg7/d;->n()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v13}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2b

    new-array v5, v4, [Ljava/lang/Object;

    .line 166
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v5, v9

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_2b
    const/4 v9, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v20, v5, v9

    .line 167
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    const-string v4, "[%s:a]"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    :goto_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_2d
    if-lez v18, :cond_2e

    .line 168
    sget-object v1, Lkotlin/jvm/internal/u0;->INSTANCE:Lkotlin/jvm/internal/u0;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v1, "concat=n=%s:v=1:a=1"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[vout]"

    .line 169
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[aout]"

    .line 170
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual/range {p1 .. p1}, Lg7/d;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2e

    move-object/from16 v1, v30

    move-object/from16 v2, v33

    .line 172
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_2e
    move-object/from16 v1, v30

    move-object/from16 v2, v33

    .line 174
    :goto_16
    invoke-virtual/range {p1 .. p1}, Lg7/d;->b()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_37

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    invoke-virtual/range {p1 .. p1}, Lg7/d;->b()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_30

    add-int/lit8 v10, v9, 0x1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/narvii/video/model/AVClipInfoPack;

    .line 177
    iget-boolean v12, v11, Lcom/narvii/video/model/AVClipInfoPack;->hasAudioTrack:Z

    if-nez v12, :cond_2f

    :goto_18
    move v9, v10

    goto :goto_17

    :cond_2f
    add-int/lit8 v7, v7, 0x1

    .line 178
    invoke-virtual/range {p1 .. p1}, Lg7/d;->m()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/2addr v9, v12

    const/4 v12, 0x1

    add-int/2addr v9, v12

    iget v12, v11, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    invoke-direct {v0, v9, v11, v4, v12}, Lffmpeg/executable/a;->f(ILcom/narvii/video/model/AVClipInfoPack;Ljava/lang/StringBuilder;I)V

    goto :goto_18

    :cond_30
    if-lez v7, :cond_34

    if-lez v18, :cond_31

    add-int/lit8 v7, v7, 0x1

    const-string v5, "[aout]"

    .line 179
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_31
    invoke-virtual/range {p1 .. p1}, Lg7/d;->b()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v9, 0x0

    :goto_19
    if-ge v9, v5, :cond_33

    .line 181
    invoke-virtual/range {p1 .. p1}, Lg7/d;->b()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/narvii/video/model/AVClipInfoPack;

    iget-boolean v10, v10, Lcom/narvii/video/model/AVClipInfoPack;->hasAudioTrack:Z

    if-eqz v10, :cond_32

    .line 182
    sget-object v10, Lkotlin/jvm/internal/u0;->INSTANCE:Lkotlin/jvm/internal/u0;

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lg7/d;->m()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/2addr v12, v9

    add-int/2addr v12, v10

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-static {v11, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    add-int/lit8 v9, v9, 0x1

    goto :goto_19

    .line 183
    :cond_33
    sget-object v5, Lkotlin/jvm/internal/u0;->INSTANCE:Lkotlin/jvm/internal/u0;

    const/4 v5, 0x4

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const-string v9, "longest"

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    const/4 v9, 0x3

    const-string v10, "amixout"

    aput-object v10, v8, v9

    invoke-static {v8, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    const-string v8, "amix=inputs=%s:duration=%s,volume=%s[%s]"

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_34
    if-gtz v18, :cond_35

    if-lez v7, :cond_35

    .line 184
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_35
    if-lez v18, :cond_38

    .line 186
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lez v7, :cond_36

    const-string v2, ";"

    .line 187
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_37
    const/4 v7, 0x0

    :cond_38
    :goto_1a
    if-lez v18, :cond_39

    .line 190
    sget-object v2, Lkotlin/jvm/internal/u0;->INSTANCE:Lkotlin/jvm/internal/u0;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "vout"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v4, v29

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array/range {v28 .. v28}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-nez v7, :cond_3a

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v5, "aout"

    const/4 v8, 0x0

    aput-object v5, v3, v8

    .line 191
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array/range {v28 .. v28}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1b

    :cond_39
    move-object/from16 v4, v29

    :cond_3a
    :goto_1b
    if-lez v7, :cond_3b

    .line 192
    sget-object v2, Lkotlin/jvm/internal/u0;->INSTANCE:Lkotlin/jvm/internal/u0;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v5, "amixout"

    const/4 v7, 0x0

    aput-object v5, v3, v7

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array/range {v28 .. v28}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3b
    if-lez v18, :cond_3c

    const-string v3, "-threads 0 -pix_fmt yuv420p -c:v libx264 -preset:v veryfast -profile:v main -level 3.1 -r:v 30000/1001 -force_fps -crf 22 -max_muxing_queue_size 1024"

    filled-new-array/range {v28 .. v28}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    .line 193
    invoke-static/range {v3 .. v8}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v2, "-maxrate"

    .line 194
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-virtual/range {p1 .. p1}, Lg7/d;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "-bufsize"

    .line 196
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-virtual/range {p1 .. p1}, Lg7/d;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3c
    if-eqz v27, :cond_3d

    const-string v3, "-c:a aac -ar 44100 -b:a 128k -ac 2"

    filled-new-array/range {v28 .. v28}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    .line 198
    invoke-static/range {v3 .. v8}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3d
    move-object/from16 v3, p1

    goto/16 :goto_23

    :cond_3e
    move-object v1, v2

    move-object/from16 v28, v7

    move-object/from16 v31, v9

    move/from16 v27, v10

    move-object/from16 v32, v12

    move-object v2, v14

    if-eqz v27, :cond_46

    .line 199
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v24, :cond_3f

    .line 201
    invoke-virtual/range {p1 .. p1}, Lg7/d;->l()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v0, v5, v3, v2, v5}, Lffmpeg/executable/a;->f(ILcom/narvii/video/model/AVClipInfoPack;Ljava/lang/StringBuilder;I)V

    .line 202
    :cond_3f
    invoke-virtual/range {p1 .. p1}, Lg7/d;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :cond_40
    :goto_1c
    if-ge v5, v3, :cond_41

    .line 203
    invoke-virtual/range {p1 .. p1}, Lg7/d;->b()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v13}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/narvii/video/model/AVClipInfoPack;

    add-int/lit8 v5, v5, 0x1

    .line 204
    iget-boolean v9, v7, Lcom/narvii/video/model/AVClipInfoPack;->hasAudioTrack:Z

    if-eqz v9, :cond_40

    .line 205
    iget v9, v7, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    invoke-direct {v0, v5, v7, v2, v9}, Lffmpeg/executable/a;->f(ILcom/narvii/video/model/AVClipInfoPack;Ljava/lang/StringBuilder;I)V

    goto :goto_1c

    .line 206
    :cond_41
    invoke-virtual/range {p1 .. p1}, Lg7/d;->n()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v13}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 207
    sget-object v3, Lkotlin/jvm/internal/u0;->INSTANCE:Lkotlin/jvm/internal/u0;

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v20, v7, v5

    invoke-static {v7, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :cond_42
    invoke-virtual/range {p1 .. p1}, Lg7/d;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_1d
    if-ge v5, v3, :cond_44

    add-int/lit8 v9, v5, 0x1

    .line 209
    invoke-virtual/range {p1 .. p1}, Lg7/d;->b()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/video/model/AVClipInfoPack;

    iget-boolean v5, v5, Lcom/narvii/video/model/AVClipInfoPack;->hasAudioTrack:Z

    if-eqz v5, :cond_43

    add-int/lit8 v7, v7, 0x1

    .line 210
    sget-object v5, Lkotlin/jvm/internal/u0;->INSTANCE:Lkotlin/jvm/internal/u0;

    const/4 v5, 0x1

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v10, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    :cond_43
    const/4 v12, 0x0

    :goto_1e
    move v5, v9

    goto :goto_1d

    :cond_44
    const/4 v12, 0x0

    .line 211
    invoke-virtual/range {p1 .. p1}, Lg7/d;->n()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v13}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    add-int/2addr v7, v3

    .line 212
    sget-object v3, Lkotlin/jvm/internal/u0;->INSTANCE:Lkotlin/jvm/internal/u0;

    const/4 v3, 0x4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v12

    const-string v8, "first"

    const/4 v9, 0x1

    aput-object v8, v5, v9

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v5, v8

    const/4 v7, 0x3

    const-string v8, "out"

    aput-object v8, v5, v7

    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    const-string v3, "amix=inputs=%s:duration=%s,volume=%s[%s]"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-virtual/range {p1 .. p1}, Lg7/d;->o()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v13}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_45

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v20, v5, v3

    .line 215
    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v2, "-map %s:v"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array/range {v28 .. v28}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_45
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v5, "out"

    const/4 v7, 0x0

    aput-object v5, v3, v7

    .line 216
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array/range {v28 .. v28}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 217
    :cond_46
    invoke-virtual/range {p1 .. p1}, Lg7/d;->o()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v13}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 218
    invoke-virtual/range {p1 .. p1}, Lg7/d;->h()Z

    move-result v2

    if-nez v2, :cond_47

    if-nez v26, :cond_48

    invoke-virtual/range {p1 .. p1}, Lg7/d;->a()I

    move-result v2

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_47

    goto :goto_1f

    :cond_47
    move-object/from16 v3, p1

    goto/16 :goto_21

    .line 219
    :cond_48
    :goto_1f
    invoke-virtual/range {p1 .. p1}, Lg7/d;->p()Z

    move-result v2

    if-eqz v2, :cond_4a

    const-string v7, "-sar 1"

    filled-new-array/range {v28 .. v28}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    .line 220
    invoke-static/range {v7 .. v12}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v2, v23

    .line 221
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, p1

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 222
    invoke-static {v3, v4, v2, v5}, Lg7/d;->w(Lg7/d;IILjava/lang/Object;)F

    move-result v7

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v7, v2

    if-nez v2, :cond_49

    const-string v2, "scale=720:1280:force_original_aspect_ratio=1,pad=720:1280:(ow-iw)/2:(oh-ih)/2"

    .line 223
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20

    :cond_49
    sget-object v2, Lffmpeg/executable/a;->Companion:Lffmpeg/executable/a$a;

    const/4 v7, 0x2

    .line 224
    invoke-static {v2, v3, v4, v7, v5}, Lffmpeg/executable/a$a;->e(Lffmpeg/executable/a$a;Lg7/d;IILjava/lang/Object;)Lw7/u;

    move-result-object v2

    invoke-virtual {v2}, Lw7/u;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2}, Lw7/u;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 225
    sget-object v8, Lkotlin/jvm/internal/u0;->INSTANCE:Lkotlin/jvm/internal/u0;

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v5, v8, v4

    const/4 v4, 0x1

    aput-object v2, v8, v4

    invoke-static {v8, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v4, v32

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_4a
    move-object/from16 v3, p1

    move-object/from16 v2, v23

    const-string v7, "-sar 1"

    filled-new-array/range {v28 .. v28}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    .line 226
    invoke-static/range {v7 .. v12}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 227
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v31

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lffmpeg/executable/a;->Companion:Lffmpeg/executable/a$a;

    .line 229
    invoke-virtual/range {p1 .. p1}, Lg7/d;->x()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v13}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lg7/d;->u()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v13}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lg7/d;->I()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v13}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lg7/d;->t()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v13}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-static {v4, v5, v7, v8, v6}, Lffmpeg/executable/a$a;->b(Lffmpeg/executable/a$a;IIZF)Ljava/lang/String;

    move-result-object v4

    .line 230
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_20
    const-string v4, "-threads 0 -pix_fmt yuv420p -c:v libx264 -preset:v veryfast -profile:v main -level 3.1 -r:v 30000/1001 -force_fps -crf 22 -max_muxing_queue_size 1024"

    filled-new-array/range {v28 .. v28}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    .line 231
    invoke-static/range {v4 .. v9}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v2, "-maxrate"

    .line 232
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-virtual/range {p1 .. p1}, Lg7/d;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "-bufsize"

    .line 234
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-virtual/range {p1 .. p1}, Lg7/d;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :goto_21
    const-string v4, "-c:v copy"

    filled-new-array/range {v28 .. v28}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    .line 236
    invoke-static/range {v4 .. v9}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_22

    :cond_4b
    move-object/from16 v3, p1

    .line 237
    :goto_22
    invoke-virtual/range {p1 .. p1}, Lg7/d;->n()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v13}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 238
    invoke-virtual/range {p1 .. p1}, Lg7/d;->f()Z

    move-result v2

    if-nez v2, :cond_4d

    if-nez v26, :cond_4c

    invoke-virtual/range {p1 .. p1}, Lg7/d;->a()I

    move-result v2

    const/4 v4, 0x4

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_4d

    :cond_4c
    const-string v5, "-c:a aac -ar 44100 -b:a 128k -ac 2"

    filled-new-array/range {v28 .. v28}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    .line 239
    invoke-static/range {v5 .. v10}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_23

    :cond_4d
    const-string v4, "-c:a copy"

    filled-new-array/range {v28 .. v28}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    .line 240
    invoke-static/range {v4 .. v9}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 241
    :cond_4e
    :goto_23
    invoke-virtual/range {p1 .. p1}, Lg7/d;->G()Z

    move-result v2

    if-eqz v2, :cond_4f

    const-string v2, "-an"

    .line 242
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 243
    :cond_4f
    invoke-virtual/range {p1 .. p1}, Lg7/d;->c()Z

    move-result v2

    if-eqz v2, :cond_50

    const-string v2, "-vn"

    .line 244
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_50
    :goto_24
    if-nez v26, :cond_52

    .line 245
    invoke-virtual/range {p1 .. p1}, Lg7/d;->m()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_51

    goto :goto_26

    :cond_51
    :goto_25
    move-object/from16 v2, v22

    goto :goto_27

    .line 246
    :cond_52
    :goto_26
    invoke-virtual/range {p1 .. p1}, Lg7/d;->d()Z

    move-result v2

    if-eqz v2, :cond_51

    const-string v4, "-avoid_negative_ts 1"

    filled-new-array/range {v28 .. v28}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    .line 247
    invoke-static/range {v4 .. v9}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_25

    .line 248
    :goto_27
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "-movflags +faststart"

    filled-new-array/range {v28 .. v28}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    .line 249
    invoke-static/range {v4 .. v9}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 250
    invoke-virtual/range {p1 .. p1}, Lg7/d;->y()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    :goto_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 253
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v28

    .line 254
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    :cond_53
    const-string v3, "ffmpeg cmdline"

    .line 255
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private final h(Lg7/d;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/d;",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/StreamInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    .line 12
    if-eqz v1, :cond_9

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/narvii/video/model/StreamInfo;

    .line 19
    .line 20
    iget v4, v1, Lcom/narvii/video/model/StreamInfo;->rotate:I

    .line 21
    .line 22
    div-int/lit8 v4, v4, 0x5a

    .line 23
    and-int/2addr v4, v3

    .line 24
    .line 25
    if-eqz v4, :cond_0

    .line 26
    move v4, v3

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    move v4, v2

    .line 29
    .line 30
    :goto_1
    if-eqz v4, :cond_1

    .line 31
    .line 32
    iget v5, v1, Lcom/narvii/video/model/StreamInfo;->height:I

    .line 33
    goto :goto_2

    .line 34
    .line 35
    :cond_1
    iget v5, v1, Lcom/narvii/video/model/StreamInfo;->width:I

    .line 36
    .line 37
    :goto_2
    if-eqz v4, :cond_2

    .line 38
    .line 39
    iget v6, v1, Lcom/narvii/video/model/StreamInfo;->width:I

    .line 40
    goto :goto_3

    .line 41
    .line 42
    :cond_2
    iget v6, v1, Lcom/narvii/video/model/StreamInfo;->height:I

    .line 43
    .line 44
    .line 45
    :goto_3
    invoke-virtual {p1}, Lg7/d;->I()Ljava/util/ArrayList;

    .line 46
    move-result-object v7

    .line 47
    .line 48
    if-eqz v4, :cond_4

    .line 49
    .line 50
    iget v8, v1, Lcom/narvii/video/model/StreamInfo;->width:I

    .line 51
    .line 52
    iget v9, v1, Lcom/narvii/video/model/StreamInfo;->height:I

    .line 53
    .line 54
    if-le v8, v9, :cond_3

    .line 55
    :goto_4
    move v8, v3

    .line 56
    goto :goto_5

    .line 57
    :cond_3
    move v8, v2

    .line 58
    goto :goto_5

    .line 59
    .line 60
    :cond_4
    iget v8, v1, Lcom/narvii/video/model/StreamInfo;->height:I

    .line 61
    .line 62
    iget v9, v1, Lcom/narvii/video/model/StreamInfo;->width:I

    .line 63
    .line 64
    if-le v8, v9, :cond_3

    .line 65
    goto :goto_4

    .line 66
    .line 67
    .line 68
    :goto_5
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 69
    move-result-object v8

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lg7/d;->n()Ljava/util/ArrayList;

    .line 76
    move-result-object v7

    .line 77
    .line 78
    iget-object v8, v1, Lcom/narvii/video/model/StreamInfo;->aCodecType:Ljava/lang/String;

    .line 79
    .line 80
    if-eqz v8, :cond_5

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lg7/d;->G()Z

    .line 84
    move-result v8

    .line 85
    .line 86
    if-nez v8, :cond_5

    .line 87
    move v8, v3

    .line 88
    goto :goto_6

    .line 89
    :cond_5
    move v8, v2

    .line 90
    .line 91
    .line 92
    :goto_6
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 93
    move-result-object v8

    .line 94
    .line 95
    .line 96
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lg7/d;->o()Ljava/util/ArrayList;

    .line 100
    move-result-object v7

    .line 101
    .line 102
    iget-object v8, v1, Lcom/narvii/video/model/StreamInfo;->vCodecType:Ljava/lang/String;

    .line 103
    .line 104
    if-eqz v8, :cond_6

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lg7/d;->c()Z

    .line 108
    move-result v8

    .line 109
    .line 110
    if-nez v8, :cond_6

    .line 111
    move v2, v3

    .line 112
    .line 113
    .line 114
    :cond_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 115
    move-result-object v2

    .line 116
    .line 117
    .line 118
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Lg7/d;->x()Ljava/util/ArrayList;

    .line 122
    move-result-object v2

    .line 123
    .line 124
    .line 125
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    move-result-object v3

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Lg7/d;->u()Ljava/util/ArrayList;

    .line 133
    move-result-object v2

    .line 134
    .line 135
    .line 136
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    move-result-object v3

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Lg7/d;->t()Ljava/util/ArrayList;

    .line 144
    move-result-object v2

    .line 145
    .line 146
    iget v1, v1, Lcom/narvii/video/model/StreamInfo;->dar:F

    .line 147
    const/4 v3, 0x0

    .line 148
    .line 149
    cmpg-float v3, v1, v3

    .line 150
    .line 151
    if-gtz v3, :cond_7

    .line 152
    int-to-float v1, v5

    .line 153
    int-to-float v3, v6

    .line 154
    div-float/2addr v1, v3

    .line 155
    goto :goto_7

    .line 156
    .line 157
    :cond_7
    if-eqz v4, :cond_8

    .line 158
    .line 159
    const/high16 v3, 0x3f800000    # 1.0f

    .line 160
    .line 161
    div-float v1, v3, v1

    .line 162
    .line 163
    .line 164
    :cond_8
    :goto_7
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 165
    move-result-object v1

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    .line 173
    :cond_9
    invoke-virtual {p1}, Lg7/d;->m()Ljava/util/List;

    .line 174
    move-result-object v0

    .line 175
    .line 176
    .line 177
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 178
    move-result v0

    .line 179
    .line 180
    if-le v0, v3, :cond_a

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v3}, Lg7/d;->L(Z)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v3}, Lg7/d;->M(Z)V

    .line 187
    return-void

    .line 188
    .line 189
    .line 190
    :cond_a
    invoke-virtual {p1}, Lg7/d;->a()I

    .line 191
    move-result v0

    .line 192
    .line 193
    if-eq v0, v3, :cond_b

    .line 194
    return-void

    .line 195
    .line 196
    .line 197
    :cond_b
    invoke-virtual {p1, v3}, Lg7/d;->L(Z)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v3}, Lg7/d;->M(Z)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 204
    move-result-object v0

    .line 205
    .line 206
    check-cast v0, Lcom/narvii/video/model/StreamInfo;

    .line 207
    .line 208
    iget v0, v0, Lcom/narvii/video/model/StreamInfo;->durationInMs:I

    .line 209
    .line 210
    const/16 v1, 0x3a98

    .line 211
    .line 212
    if-gt v0, v1, :cond_c

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1}, Lg7/d;->e()I

    .line 216
    move-result v0

    .line 217
    .line 218
    .line 219
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 220
    move-result-object p2

    .line 221
    .line 222
    check-cast p2, Lcom/narvii/video/model/StreamInfo;

    .line 223
    .line 224
    iget p2, p2, Lcom/narvii/video/model/StreamInfo;->durationInMs:I

    .line 225
    .line 226
    if-eq v0, p2, :cond_d

    .line 227
    :cond_c
    move v2, v3

    .line 228
    .line 229
    .line 230
    :cond_d
    invoke-virtual {p1, v2}, Lg7/d;->N(Z)V

    .line 231
    return-void
.end method


# virtual methods
.method public abort(Lg7/d;)V
    .locals 1
    .param p1    # Lg7/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lffmpeg/executable/a;->runningTasks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Lffmpeg/executable/a$b;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lffmpeg/executable/a$b;->c()V

    .line 19
    :cond_0
    return-void
.end method

.method public abortAll(Z)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lffmpeg/executable/a;->runningTasks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "<get-entries>(...)"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/collections/t;->Y(Ljava/lang/Iterable;)Lkotlin/sequences/g;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Lkotlin/sequences/g;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    check-cast v1, Ljava/util/Map$Entry;

    .line 32
    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    check-cast v2, Lg7/d;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Lg7/d;->z()Z

    .line 43
    move-result v2

    .line 44
    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    check-cast v1, Lffmpeg/executable/a$b;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Lffmpeg/executable/a$b;->c()V

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    return-void
.end method

.method public abortAnimatedStickerConvertTask(Lcom/narvii/video/model/StickerInfoPack;)V
    .locals 0
    .param p1    # Lcom/narvii/video/model/StickerInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lg7/a$a;->a(Lg7/a;Lcom/narvii/video/model/StickerInfoPack;)V

    .line 4
    return-void
.end method

.method public abortAnimatedStickerConvertTasks()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lg7/a$a;->b(Lg7/a;)V

    .line 4
    return-void
.end method

.method public execute(Lg7/d;Ljava/util/concurrent/ExecutorService;Lg7/c;)V
    .locals 2
    .param p1    # Lg7/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/ExecutorService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lg7/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lffmpeg/executable/a$b;

    .line 8
    .line 9
    new-instance v1, Lffmpeg/executable/a$c;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, p3, p0, p1}, Lffmpeg/executable/a$c;-><init>(Lg7/c;Lffmpeg/executable/a;Lg7/d;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0, p1, v1}, Lffmpeg/executable/a$b;-><init>(Lffmpeg/executable/a;Lg7/d;Lg7/c;)V

    .line 16
    const/4 p3, 0x0

    .line 17
    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    new-array p2, p3, [Ljava/lang/Void;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    new-array p3, p3, [Ljava/lang/Void;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p2, p3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 30
    .line 31
    :goto_0
    iget-object p2, p0, Lffmpeg/executable/a;->runningTasks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    .line 33
    .line 34
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public fetchStreamingInfo(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "input"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/editors/ffmpeg/FFmpegJni;->fetchStreamInfo(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    new-instance p1, Lcom/narvii/video/model/StreamInfo;

    .line 14
    .line 15
    .line 16
    invoke-direct {p1}, Lcom/narvii/video/model/StreamInfo;-><init>()V

    .line 17
    .line 18
    :cond_0
    iget v0, p1, Lcom/narvii/video/model/StreamInfo;->durationInMs:I

    .line 19
    .line 20
    if-gtz v0, :cond_1

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    .line 25
    :goto_0
    iput-boolean v0, p1, Lcom/narvii/video/model/StreamInfo;->hasError:Z

    .line 26
    return-object p1
.end method

.method public getStickerCopiedSrcFile(Lcom/narvii/video/model/StickerInfoPack;)Ljava/io/File;
    .locals 0
    .param p1    # Lcom/narvii/video/model/StickerInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lg7/a$a;->c(Lg7/a;Lcom/narvii/video/model/StickerInfoPack;)Ljava/io/File;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getTargetStickerInstallFile(Lcom/narvii/video/model/StickerInfoPack;)Ljava/io/File;
    .locals 0
    .param p1    # Lcom/narvii/video/model/StickerInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lg7/a$a;->d(Lg7/a;Lcom/narvii/video/model/StickerInfoPack;)Ljava/io/File;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public hasStickerTemplatedInstalled(Lcom/narvii/video/model/StickerInfoPack;)Z
    .locals 0
    .param p1    # Lcom/narvii/video/model/StickerInfoPack;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lg7/a$a;->e(Lg7/a;Lcom/narvii/video/model/StickerInfoPack;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public installSticker(Landroid/content/Context;Lcom/narvii/video/model/StickerInfoPack;ZLjava/util/concurrent/ExecutorService;Lg7/b;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/video/model/StickerInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/ExecutorService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lg7/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p5}, Lg7/a$a;->f(Lg7/a;Landroid/content/Context;Lcom/narvii/video/model/StickerInfoPack;ZLjava/util/concurrent/ExecutorService;Lg7/b;)V

    .line 4
    return-void
.end method

.method public onLocalStickerCacheCleared()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lg7/a$a;->g(Lg7/a;)V

    .line 4
    return-void
.end method
