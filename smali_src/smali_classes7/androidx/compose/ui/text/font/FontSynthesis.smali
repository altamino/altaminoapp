.class public final Landroidx/compose/ui/text/font/FontSynthesis;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/font/FontSynthesis$Companion;
    }
.end annotation


# static fields
.field private static final All:I

.field public static final Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final None:I

.field private static final Style:I

.field private static final Weight:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/text/font/FontSynthesis;->Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroidx/compose/ui/text/font/FontSynthesis;->f(I)I

    .line 13
    move-result v0

    .line 14
    .line 15
    sput v0, Landroidx/compose/ui/text/font/FontSynthesis;->None:I

    .line 16
    const/4 v0, 0x1

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroidx/compose/ui/text/font/FontSynthesis;->f(I)I

    .line 20
    move-result v0

    .line 21
    .line 22
    sput v0, Landroidx/compose/ui/text/font/FontSynthesis;->All:I

    .line 23
    const/4 v0, 0x2

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Landroidx/compose/ui/text/font/FontSynthesis;->f(I)I

    .line 27
    move-result v0

    .line 28
    .line 29
    sput v0, Landroidx/compose/ui/text/font/FontSynthesis;->Weight:I

    .line 30
    const/4 v0, 0x3

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Landroidx/compose/ui/text/font/FontSynthesis;->f(I)I

    .line 34
    move-result v0

    .line 35
    .line 36
    sput v0, Landroidx/compose/ui/text/font/FontSynthesis;->Style:I

    .line 37
    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Landroidx/compose/ui/text/font/FontSynthesis;->value:I

    .line 6
    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/text/font/FontSynthesis;->All:I

    return v0
.end method

.method public static final synthetic b()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/text/font/FontSynthesis;->None:I

    return v0
.end method

.method public static final synthetic c()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/text/font/FontSynthesis;->Style:I

    return v0
.end method

.method public static final synthetic d()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/text/font/FontSynthesis;->Weight:I

    return v0
.end method

.method public static final synthetic e(I)Landroidx/compose/ui/text/font/FontSynthesis;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/text/font/FontSynthesis;

    invoke-direct {v0, p0}, Landroidx/compose/ui/text/font/FontSynthesis;-><init>(I)V

    return-object v0
.end method

.method public static f(I)I
    .locals 0

    .line 1
    return p0
.end method

.method public static g(ILjava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/compose/ui/text/font/FontSynthesis;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/ui/text/font/FontSynthesis;

    invoke-virtual {p1}, Landroidx/compose/ui/text/font/FontSynthesis;->m()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final h(II)Z
    .locals 0

    .line 1
    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static i(I)I
    .locals 0

    .line 1
    return p0
.end method

.method public static final j(I)Z
    .locals 1

    .line 1
    .line 2
    sget v0, Landroidx/compose/ui/text/font/FontSynthesis;->All:I

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Landroidx/compose/ui/text/font/FontSynthesis;->h(II)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    sget v0, Landroidx/compose/ui/text/font/FontSynthesis;->Style:I

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v0}, Landroidx/compose/ui/text/font/FontSynthesis;->h(II)Z

    .line 14
    move-result p0

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method

.method public static final k(I)Z
    .locals 1

    .line 1
    .line 2
    sget v0, Landroidx/compose/ui/text/font/FontSynthesis;->All:I

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Landroidx/compose/ui/text/font/FontSynthesis;->h(II)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    sget v0, Landroidx/compose/ui/text/font/FontSynthesis;->Weight:I

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v0}, Landroidx/compose/ui/text/font/FontSynthesis;->h(II)Z

    .line 14
    move-result p0

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method

.method public static l(I)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget v0, Landroidx/compose/ui/text/font/FontSynthesis;->None:I

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Landroidx/compose/ui/text/font/FontSynthesis;->h(II)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string p0, "None"

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    sget v0, Landroidx/compose/ui/text/font/FontSynthesis;->All:I

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Landroidx/compose/ui/text/font/FontSynthesis;->h(II)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const-string p0, "All"

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_1
    sget v0, Landroidx/compose/ui/text/font/FontSynthesis;->Weight:I

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v0}, Landroidx/compose/ui/text/font/FontSynthesis;->h(II)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    const-string p0, "Weight"

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_2
    sget v0, Landroidx/compose/ui/text/font/FontSynthesis;->Style:I

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v0}, Landroidx/compose/ui/text/font/FontSynthesis;->h(II)Z

    .line 39
    move-result p0

    .line 40
    .line 41
    if-eqz p0, :cond_3

    .line 42
    .line 43
    const-string p0, "Style"

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_3
    const-string p0, "Invalid"

    .line 47
    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/font/FontSynthesis;->value:I

    invoke-static {v0, p1}, Landroidx/compose/ui/text/font/FontSynthesis;->g(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/font/FontSynthesis;->value:I

    invoke-static {v0}, Landroidx/compose/ui/text/font/FontSynthesis;->i(I)I

    move-result v0

    return v0
.end method

.method public final synthetic m()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/font/FontSynthesis;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/ui/text/font/FontSynthesis;->value:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/ui/text/font/FontSynthesis;->l(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
