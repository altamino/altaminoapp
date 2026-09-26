.class public final Lcom/narvii/scene/template/SceneTemplateGeneratorFragmentKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneTemplateGeneratorFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneTemplateGeneratorFragment.kt\ncom/narvii/scene/template/SceneTemplateGeneratorFragmentKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,924:1\n1#2:925\n1549#3:926\n1620#3,3:927\n*S KotlinDebug\n*F\n+ 1 SceneTemplateGeneratorFragment.kt\ncom/narvii/scene/template/SceneTemplateGeneratorFragmentKt\n*L\n913#1:926\n913#1:927,3\n*E\n"
.end annotation


# direct methods
.method public static final blogConvertToScene(Lcom/narvii/model/Blog;Landroid/content/Context;Ljava/lang/String;Lcom/narvii/videotemplate/Template;Lcom/narvii/video/model/StreamInfo;)Lcom/narvii/scene/model/SceneInfo;
    .locals 10
    .param p0    # Lcom/narvii/model/Blog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/videotemplate/Template;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/video/model/StreamInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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
    const-string/jumbo v0, "videoFilePath"

    .line 9
    .line 10
    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string/jumbo v0, "template"

    .line 15
    .line 16
    .line 17
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string/jumbo v0, "videoStreamInfo"

    .line 21
    .line 22
    .line 23
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    const/4 v0, 0x0

    .line 25
    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    iget-object p0, p0, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    .line 29
    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 34
    move-result v1

    .line 35
    .line 36
    const/16 v2, 0x14

    .line 37
    .line 38
    if-le v1, v2, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    .line 44
    .line 45
    const-string/jumbo v1, "substring(...)"

    .line 46
    .line 47
    .line 48
    invoke-static {p0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 p0, 0x0

    .line 51
    .line 52
    :cond_1
    :goto_0
    new-instance v1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 53
    .line 54
    .line 55
    invoke-direct {v1}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 56
    .line 57
    iput-object p2, v1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 58
    .line 59
    iput-object p2, v1, Lcom/narvii/video/model/AVClipInfoPack;->originalInputPath:Ljava/lang/String;

    .line 60
    .line 61
    new-instance v2, Ljava/io/File;

    .line 62
    .line 63
    .line 64
    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 68
    move-result-object p2

    .line 69
    .line 70
    iput-object p2, v1, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    .line 71
    .line 72
    iput v0, v1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 73
    .line 74
    iget p2, p4, Lcom/narvii/video/model/StreamInfo;->durationInMs:I

    .line 75
    .line 76
    .line 77
    invoke-static {}, Lcom/narvii/scene/SceneConstant;->getMaxSceneLengthMs()I

    .line 78
    move-result p4

    .line 79
    .line 80
    .line 81
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    .line 82
    move-result p2

    .line 83
    .line 84
    iput p2, v1, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 85
    .line 86
    const/16 p2, 0x10

    .line 87
    .line 88
    iput p2, v1, Lcom/narvii/video/model/AVClipInfoPack;->videoSource:I

    .line 89
    .line 90
    new-instance p2, Lcom/narvii/scene/model/SceneInfo;

    .line 91
    .line 92
    .line 93
    invoke-direct {p2}, Lcom/narvii/scene/model/SceneInfo;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 97
    move-result-object p4

    .line 98
    .line 99
    .line 100
    invoke-virtual {p4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 101
    move-result-object p4

    .line 102
    .line 103
    iput-object p4, p2, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 104
    const/4 p4, 0x1

    .line 105
    .line 106
    new-array v2, p4, [Lcom/narvii/video/model/AVClipInfoPack;

    .line 107
    .line 108
    aput-object v1, v2, v0

    .line 109
    .line 110
    .line 111
    invoke-static {v2}, Lkotlin/collections/t;->g([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 112
    move-result-object v1

    .line 113
    .line 114
    iput-object v1, p2, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    .line 115
    .line 116
    .line 117
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 118
    move-result v1

    .line 119
    .line 120
    if-nez v1, :cond_4

    .line 121
    .line 122
    new-instance v1, Lcom/narvii/video/model/Caption;

    .line 123
    .line 124
    .line 125
    invoke-direct {v1}, Lcom/narvii/video/model/Caption;-><init>()V

    .line 126
    .line 127
    iput-object p0, v1, Lcom/narvii/video/model/Caption;->text:Ljava/lang/String;

    .line 128
    const/4 p0, -0x1

    .line 129
    .line 130
    iput p0, v1, Lcom/narvii/video/model/Caption;->textColor:I

    .line 131
    .line 132
    iput-boolean p4, v1, Lcom/narvii/video/model/Caption;->isBold:Z

    .line 133
    .line 134
    new-instance v4, Landroid/text/TextPaint;

    .line 135
    .line 136
    .line 137
    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    .line 138
    .line 139
    iget p0, v1, Lcom/narvii/video/model/Caption;->fontSize:F

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 143
    .line 144
    new-instance p0, Landroid/text/StaticLayout;

    .line 145
    .line 146
    iget-object v3, v1, Lcom/narvii/video/model/Caption;->text:Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    invoke-static {p1}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    .line 150
    move-result v5

    .line 151
    .line 152
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 153
    .line 154
    const/high16 v7, 0x3f800000    # 1.0f

    .line 155
    const/4 v8, 0x0

    .line 156
    const/4 v9, 0x1

    .line 157
    move-object v2, p0

    .line 158
    .line 159
    .line 160
    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getLineCount()I

    .line 164
    move-result p1

    .line 165
    .line 166
    .line 167
    invoke-static {v0, p1}, Lj8/m;->v(II)Lj8/i;

    .line 168
    move-result-object p1

    .line 169
    .line 170
    new-instance v2, Ljava/util/ArrayList;

    .line 171
    .line 172
    const/16 v3, 0xa

    .line 173
    .line 174
    .line 175
    invoke-static {p1, v3}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 176
    move-result v3

    .line 177
    .line 178
    .line 179
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 180
    .line 181
    .line 182
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 183
    move-result-object p1

    .line 184
    .line 185
    .line 186
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    move-result v3

    .line 188
    .line 189
    if-eqz v3, :cond_2

    .line 190
    move-object v3, p1

    .line 191
    .line 192
    check-cast v3, Lkotlin/collections/m0;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3}, Lkotlin/collections/m0;->nextInt()I

    .line 196
    move-result v3

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineWidth(I)F

    .line 200
    move-result v3

    .line 201
    .line 202
    .line 203
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 204
    move-result-object v3

    .line 205
    .line 206
    .line 207
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 208
    goto :goto_1

    .line 209
    .line 210
    .line 211
    :cond_2
    invoke-static {v2}, Lkotlin/collections/t;->y0(Ljava/lang/Iterable;)Ljava/lang/Float;

    .line 212
    move-result-object p1

    .line 213
    .line 214
    if-eqz p1, :cond_3

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 218
    move-result p1

    .line 219
    goto :goto_2

    .line 220
    .line 221
    .line 222
    :cond_3
    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    .line 223
    move-result p1

    .line 224
    int-to-float p1, p1

    .line 225
    .line 226
    :goto_2
    const/high16 v2, 0x44100000    # 576.0f

    .line 227
    div-float/2addr v2, p1

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0}, Landroid/text/Layout;->getHeight()I

    .line 231
    move-result p0

    .line 232
    int-to-float p0, p0

    .line 233
    .line 234
    const/high16 p1, 0x43a00000    # 320.0f

    .line 235
    div-float/2addr p1, p0

    .line 236
    .line 237
    .line 238
    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    .line 239
    move-result p0

    .line 240
    .line 241
    iput p0, v1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    .line 242
    .line 243
    iput p0, v1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    .line 244
    .line 245
    const/16 p0, 0x1388

    .line 246
    .line 247
    iput p0, v1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 248
    .line 249
    new-array p0, p4, [Lcom/narvii/video/model/Caption;

    .line 250
    .line 251
    aput-object v1, p0, v0

    .line 252
    .line 253
    .line 254
    invoke-static {p0}, Lkotlin/collections/t;->g([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 255
    move-result-object p0

    .line 256
    .line 257
    iput-object p0, p2, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    .line 258
    .line 259
    :cond_4
    iput-object p3, p2, Lcom/narvii/scene/model/SceneInfo;->template:Lcom/narvii/videotemplate/Template;

    .line 260
    return-object p2
.end method
