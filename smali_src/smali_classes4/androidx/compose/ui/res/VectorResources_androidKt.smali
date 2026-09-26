.class public final Landroidx/compose/ui/res/VectorResources_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVectorResources.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VectorResources.android.kt\nandroidx/compose/ui/res/VectorResources_androidKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,141:1\n76#2:142\n36#3:143\n1057#4,6:144\n1#5:150\n*S KotlinDebug\n*F\n+ 1 VectorResources.android.kt\nandroidx/compose/ui/res/VectorResources_androidKt\n*L\n48#1:142\n51#1:143\n51#1:144,6\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;
    .locals 9
    .param p0    # Landroid/content/res/Resources$Theme;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/content/res/Resources;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/XmlResourceParser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "res"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "parser"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    new-instance v7, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;

    .line 17
    const/4 v1, 0x2

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    .line 21
    .line 22
    invoke-direct {v7, p2, v3, v1, v2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;IILkotlin/jvm/internal/k;)V

    .line 23
    .line 24
    const-string v1, "attrs"

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v7, p1, p0, v0}, Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;->a(Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 31
    move-result-object v8

    .line 32
    move v6, v3

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-static {p2}, Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;->d(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 36
    move-result v1

    .line 37
    .line 38
    if-nez v1, :cond_0

    .line 39
    move-object v1, v7

    .line 40
    move-object v2, p1

    .line 41
    move-object v3, v0

    .line 42
    move-object v4, p0

    .line 43
    move-object v5, v8

    .line 44
    .line 45
    .line 46
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;->g(Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Landroidx/compose/ui/graphics/vector/ImageVector$Builder;I)I

    .line 47
    move-result v6

    .line 48
    .line 49
    .line 50
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_0
    new-instance p0, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->f()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->a()I

    .line 61
    move-result p2

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;I)V

    .line 65
    return-object p0
.end method
