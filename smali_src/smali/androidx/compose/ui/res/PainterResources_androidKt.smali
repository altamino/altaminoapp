.class public final Landroidx/compose/ui/res/PainterResources_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPainterResources.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PainterResources.android.kt\nandroidx/compose/ui/res/PainterResources_androidKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,115:1\n76#2:116\n76#2:132\n25#3:117\n50#3:124\n49#3:125\n1057#4,6:118\n1057#4,6:126\n*S KotlinDebug\n*F\n+ 1 PainterResources.android.kt\nandroidx/compose/ui/res/PainterResources_androidKt\n*L\n58#1:116\n87#1:132\n60#1:117\n69#1:124\n69#1:125\n60#1:118,6\n69#1:126,6\n*E\n"
.end annotation


# static fields
.field private static final errorMessage:Ljava/lang/String; = "Only VectorDrawables and rasterized asset types are supported ex. PNG, JPG"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final a(Landroid/content/res/Resources;I)Landroidx/compose/ui/graphics/ImageBitmap;
    .locals 1

    .line 1
    .line 2
    :try_start_0
    sget-object v0, Landroidx/compose/ui/graphics/ImageBitmap;->Companion:Landroidx/compose/ui/graphics/ImageBitmap$Companion;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0, p1}, Landroidx/compose/ui/res/ImageResources_androidKt;->a(Landroidx/compose/ui/graphics/ImageBitmap$Companion;Landroid/content/res/Resources;I)Landroidx/compose/ui/graphics/ImageBitmap;

    .line 6
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    return-object p0

    .line 8
    .line 9
    :catchall_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string p1, "Only VectorDrawables and rasterized asset types are supported ex. PNG, JPG"

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    throw p0
.end method

.method private static final b(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 3
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p4, 0x7dea3d4c

    .line 4
    .line 5
    .line 6
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->h()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 10
    move-result-object p4

    .line 11
    .line 12
    .line 13
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 14
    move-result-object p4

    .line 15
    .line 16
    check-cast p4, Landroidx/compose/ui/res/ImageVectorCache;

    .line 17
    .line 18
    new-instance v0, Landroidx/compose/ui/res/ImageVectorCache$Key;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p0, p2}, Landroidx/compose/ui/res/ImageVectorCache$Key;-><init>(Landroid/content/res/Resources$Theme;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p4, v0}, Landroidx/compose/ui/res/ImageVectorCache;->b(Landroidx/compose/ui/res/ImageVectorCache$Key;)Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    const-string v1, "res.getXml(id)"

    .line 34
    .line 35
    .line 36
    invoke-static {p2, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p2}, Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;->j(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    const-string/jumbo v2, "vector"

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    move-result v1

    .line 51
    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    .line 55
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/res/VectorResources_androidKt;->a(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    .line 59
    invoke-virtual {p4, v0, v1}, Landroidx/compose/ui/res/ImageVectorCache;->d(Landroidx/compose/ui/res/ImageVectorCache$Key;Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;)V

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 63
    .line 64
    const-string p1, "Only VectorDrawables and rasterized asset types are supported ex. PNG, JPG"

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    throw p0

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;->b()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 72
    move-result-object p0

    .line 73
    .line 74
    .line 75
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 76
    return-object p0
.end method

.method public static final c(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;
    .locals 10
    .param p0    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x1c403a8f

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->g()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    const v2, -0x1d58f75c

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 36
    move-result-object v4

    .line 37
    .line 38
    if-ne v2, v4, :cond_0

    .line 39
    .line 40
    new-instance v2, Landroid/util/TypedValue;

    .line 41
    .line 42
    .line 43
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 50
    .line 51
    check-cast v2, Landroid/util/TypedValue;

    .line 52
    const/4 v4, 0x1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p0, v2, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 56
    .line 57
    iget-object v2, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 58
    .line 59
    const-string v5, "res"

    .line 60
    .line 61
    if-eqz v2, :cond_1

    .line 62
    const/4 v6, 0x2

    .line 63
    const/4 v7, 0x0

    .line 64
    .line 65
    const-string v8, ".xml"

    .line 66
    const/4 v9, 0x0

    .line 67
    .line 68
    .line 69
    invoke-static {v2, v8, v9, v6, v7}, Lkotlin/text/k;->T(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 70
    move-result v6

    .line 71
    .line 72
    if-ne v6, v4, :cond_1

    .line 73
    .line 74
    .line 75
    const v2, -0x2c0108e9

    .line 76
    .line 77
    .line 78
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    const-string v2, "context.theme"

    .line 85
    .line 86
    .line 87
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v1, v5}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    shl-int/lit8 p2, p2, 0x6

    .line 93
    .line 94
    and-int/lit16 p2, p2, 0x380

    .line 95
    .line 96
    or-int/lit8 p2, p2, 0x48

    .line 97
    .line 98
    .line 99
    invoke-static {v0, v1, p0, p1, p2}, Landroidx/compose/ui/res/PainterResources_androidKt;->b(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 100
    move-result-object p0

    .line 101
    .line 102
    .line 103
    invoke-static {p0, p1, v9}, Landroidx/compose/ui/graphics/vector/VectorPainterKt;->b(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/vector/VectorPainter;

    .line 104
    move-result-object p0

    .line 105
    .line 106
    .line 107
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 108
    goto :goto_0

    .line 109
    .line 110
    .line 111
    :cond_1
    const p2, -0x2c01086c

    .line 112
    .line 113
    .line 114
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 115
    .line 116
    .line 117
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    move-result-object p2

    .line 119
    .line 120
    .line 121
    const v0, 0x1e7b2b64

    .line 122
    .line 123
    .line 124
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 125
    .line 126
    .line 127
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 128
    move-result v0

    .line 129
    .line 130
    .line 131
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 132
    move-result p2

    .line 133
    or-int/2addr p2, v0

    .line 134
    .line 135
    .line 136
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 137
    move-result-object v0

    .line 138
    .line 139
    if-nez p2, :cond_2

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 143
    move-result-object p2

    .line 144
    .line 145
    if-ne v0, p2, :cond_3

    .line 146
    .line 147
    .line 148
    :cond_2
    invoke-static {v1, v5}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-static {v1, p0}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(Landroid/content/res/Resources;I)Landroidx/compose/ui/graphics/ImageBitmap;

    .line 152
    move-result-object v0

    .line 153
    .line 154
    .line 155
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 159
    move-object v2, v0

    .line 160
    .line 161
    check-cast v2, Landroidx/compose/ui/graphics/ImageBitmap;

    .line 162
    .line 163
    new-instance p0, Landroidx/compose/ui/graphics/painter/BitmapPainter;

    .line 164
    .line 165
    const-wide/16 v3, 0x0

    .line 166
    .line 167
    const-wide/16 v5, 0x0

    .line 168
    const/4 v7, 0x6

    .line 169
    const/4 v8, 0x0

    .line 170
    move-object v1, p0

    .line 171
    .line 172
    .line 173
    invoke-direct/range {v1 .. v8}, Landroidx/compose/ui/graphics/painter/BitmapPainter;-><init>(Landroidx/compose/ui/graphics/ImageBitmap;JJILkotlin/jvm/internal/k;)V

    .line 174
    .line 175
    .line 176
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 177
    .line 178
    .line 179
    :goto_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 180
    return-object p0
.end method
