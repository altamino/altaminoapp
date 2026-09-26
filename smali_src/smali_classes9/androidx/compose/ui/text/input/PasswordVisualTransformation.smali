.class public final Landroidx/compose/ui/text/input/PasswordVisualTransformation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/text/input/VisualTransformation;


# instance fields
.field private final mask:C


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/compose/ui/text/input/PasswordVisualTransformation;-><init>(CILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(C)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Landroidx/compose/ui/text/input/PasswordVisualTransformation;->mask:C

    return-void
.end method

.method public synthetic constructor <init>(CILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x2022

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/input/PasswordVisualTransformation;-><init>(C)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/input/TransformedText;
    .locals 8
    .param p1    # Landroidx/compose/ui/text/AnnotatedString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "text"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/ui/text/input/TransformedText;

    .line 8
    .line 9
    new-instance v7, Landroidx/compose/ui/text/AnnotatedString;

    .line 10
    .line 11
    iget-char v1, p0, Landroidx/compose/ui/text/input/PasswordVisualTransformation;->mask:C

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->g()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 23
    move-result p1

    .line 24
    .line 25
    .line 26
    invoke-static {v1, p1}, Lkotlin/text/k;->C(Ljava/lang/CharSequence;I)Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x6

    .line 31
    const/4 v6, 0x0

    .line 32
    move-object v1, v7

    .line 33
    .line 34
    .line 35
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 36
    .line 37
    sget-object p1, Landroidx/compose/ui/text/input/OffsetMapping;->Companion:Landroidx/compose/ui/text/input/OffsetMapping$Companion;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/OffsetMapping$Companion;->a()Landroidx/compose/ui/text/input/OffsetMapping;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v7, p1}, Landroidx/compose/ui/text/input/TransformedText;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/input/OffsetMapping;)V

    .line 45
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/input/PasswordVisualTransformation;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    return v2

    .line 11
    .line 12
    :cond_1
    iget-char v1, p0, Landroidx/compose/ui/text/input/PasswordVisualTransformation;->mask:C

    .line 13
    .line 14
    check-cast p1, Landroidx/compose/ui/text/input/PasswordVisualTransformation;

    .line 15
    .line 16
    iget-char p1, p1, Landroidx/compose/ui/text/input/PasswordVisualTransformation;->mask:C

    .line 17
    .line 18
    if-eq v1, p1, :cond_2

    .line 19
    return v2

    .line 20
    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-char v0, p0, Landroidx/compose/ui/text/input/PasswordVisualTransformation;->mask:C

    return v0
.end method
