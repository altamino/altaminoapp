.class public final Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private config:I

.field private final xmlParser:Lorg/xmlpull/v1/XmlPullParser;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 1
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "xmlParser"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    iput p2, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->config:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/xmlpull/v1/XmlPullParser;IILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;I)V

    return-void
.end method

.method private final m(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->config:I

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->config:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->config:I

    return v0
.end method

.method public final b(Landroid/content/res/TypedArray;IF)F
    .locals 1
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "typedArray"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 9
    move-result p2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 13
    move-result p1

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->m(I)V

    .line 17
    return p2
.end method

.method public final c(Landroid/content/res/TypedArray;IF)F
    .locals 1
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "typedArray"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 9
    move-result p2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 13
    move-result p1

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->m(I)V

    .line 17
    return p2
.end method

.method public final d(Landroid/content/res/TypedArray;II)I
    .locals 1
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "typedArray"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 9
    move-result p2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 13
    move-result p1

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->m(I)V

    .line 17
    return p2
.end method

.method public final e(Landroid/content/res/TypedArray;Ljava/lang/String;IZ)Z
    .locals 1
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "typedArray"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "attrName"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0, p2, p3, p4}, Landroidx/core/content/res/TypedArrayUtils;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    .line 16
    move-result p2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 20
    move-result p1

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->m(I)V

    .line 24
    return p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;

    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v3, p1, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->config:I

    iget p1, p1, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->config:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final f(Landroid/content/res/TypedArray;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources$Theme;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "typedArray"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "attrName"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0, p2, p3, p4}, Landroidx/core/content/res/TypedArrayUtils;->g(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Landroid/content/res/ColorStateList;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 20
    move-result p1

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->m(I)V

    .line 24
    return-object p2
.end method

.method public final g(Landroid/content/res/TypedArray;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Landroidx/core/content/res/ComplexColorCompat;
    .locals 7
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources$Theme;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "typedArray"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "attrName"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 13
    move-object v1, p1

    .line 14
    move-object v3, p2

    .line 15
    move-object v4, p3

    .line 16
    move v5, p4

    .line 17
    move v6, p5

    .line 18
    .line 19
    .line 20
    invoke-static/range {v1 .. v6}, Landroidx/core/content/res/TypedArrayUtils;->i(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Landroidx/core/content/res/ComplexColorCompat;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 25
    move-result p1

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->m(I)V

    .line 29
    .line 30
    const-string p1, "result"

    .line 31
    .line 32
    .line 33
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    return-object p2
.end method

.method public final h(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F
    .locals 1
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "typedArray"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "attrName"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0, p2, p3, p4}, Landroidx/core/content/res/TypedArrayUtils;->j(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 16
    move-result p2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 20
    move-result p1

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->m(I)V

    .line 24
    return p2
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->config:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final i(Landroid/content/res/TypedArray;Ljava/lang/String;II)I
    .locals 1
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "typedArray"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "attrName"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0, p2, p3, p4}, Landroidx/core/content/res/TypedArrayUtils;->k(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 16
    move-result p2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 20
    move-result p1

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->m(I)V

    .line 24
    return p2
.end method

.method public final j(Landroid/content/res/TypedArray;I)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "typedArray"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 13
    move-result p1

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->m(I)V

    .line 17
    return-object p2
.end method

.method public final k()Lorg/xmlpull/v1/XmlPullParser;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    return-object v0
.end method

.method public final l(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1
    .param p1    # Landroid/content/res/Resources;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources$Theme;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    const-string v0, "set"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "attrs"

    .line 13
    .line 14
    .line 15
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2, p3, p4}, Landroidx/core/content/res/TypedArrayUtils;->s(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    const-string p2, "obtainAttributes(\n      \u2026          attrs\n        )"

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 28
    move-result p2

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->m(I)V

    .line 32
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidVectorParser(xmlParser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->config:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
