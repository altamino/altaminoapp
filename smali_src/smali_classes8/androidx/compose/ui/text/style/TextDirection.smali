.class public final Landroidx/compose/ui/text/style/TextDirection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/style/TextDirection$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/text/style/TextDirection$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Content:I

.field private static final ContentOrLtr:I

.field private static final ContentOrRtl:I

.field private static final Ltr:I

.field private static final Rtl:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/text/style/TextDirection$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/TextDirection$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/text/style/TextDirection;->Companion:Landroidx/compose/ui/text/style/TextDirection$Companion;

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroidx/compose/ui/text/style/TextDirection;->g(I)I

    .line 13
    move-result v0

    .line 14
    .line 15
    sput v0, Landroidx/compose/ui/text/style/TextDirection;->Ltr:I

    .line 16
    const/4 v0, 0x2

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroidx/compose/ui/text/style/TextDirection;->g(I)I

    .line 20
    move-result v0

    .line 21
    .line 22
    sput v0, Landroidx/compose/ui/text/style/TextDirection;->Rtl:I

    .line 23
    const/4 v0, 0x3

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Landroidx/compose/ui/text/style/TextDirection;->g(I)I

    .line 27
    move-result v0

    .line 28
    .line 29
    sput v0, Landroidx/compose/ui/text/style/TextDirection;->Content:I

    .line 30
    const/4 v0, 0x4

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Landroidx/compose/ui/text/style/TextDirection;->g(I)I

    .line 34
    move-result v0

    .line 35
    .line 36
    sput v0, Landroidx/compose/ui/text/style/TextDirection;->ContentOrLtr:I

    .line 37
    const/4 v0, 0x5

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Landroidx/compose/ui/text/style/TextDirection;->g(I)I

    .line 41
    move-result v0

    .line 42
    .line 43
    sput v0, Landroidx/compose/ui/text/style/TextDirection;->ContentOrRtl:I

    .line 44
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
    iput p1, p0, Landroidx/compose/ui/text/style/TextDirection;->value:I

    .line 6
    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/text/style/TextDirection;->Content:I

    return v0
.end method

.method public static final synthetic b()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/text/style/TextDirection;->ContentOrLtr:I

    return v0
.end method

.method public static final synthetic c()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/text/style/TextDirection;->ContentOrRtl:I

    return v0
.end method

.method public static final synthetic d()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/text/style/TextDirection;->Ltr:I

    return v0
.end method

.method public static final synthetic e()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/text/style/TextDirection;->Rtl:I

    return v0
.end method

.method public static final synthetic f(I)Landroidx/compose/ui/text/style/TextDirection;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/text/style/TextDirection;

    invoke-direct {v0, p0}, Landroidx/compose/ui/text/style/TextDirection;-><init>(I)V

    return-object v0
.end method

.method public static g(I)I
    .locals 0

    .line 1
    return p0
.end method

.method public static h(ILjava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/compose/ui/text/style/TextDirection;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/ui/text/style/TextDirection;

    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextDirection;->l()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final i(II)Z
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

.method public static j(I)I
    .locals 0

    .line 1
    return p0
.end method

.method public static k(I)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget v0, Landroidx/compose/ui/text/style/TextDirection;->Ltr:I

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/TextDirection;->i(II)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string p0, "Ltr"

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    sget v0, Landroidx/compose/ui/text/style/TextDirection;->Rtl:I

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/TextDirection;->i(II)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const-string p0, "Rtl"

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_1
    sget v0, Landroidx/compose/ui/text/style/TextDirection;->Content:I

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/TextDirection;->i(II)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    const-string p0, "Content"

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_2
    sget v0, Landroidx/compose/ui/text/style/TextDirection;->ContentOrLtr:I

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/TextDirection;->i(II)Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    const-string p0, "ContentOrLtr"

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_3
    sget v0, Landroidx/compose/ui/text/style/TextDirection;->ContentOrRtl:I

    .line 47
    .line 48
    .line 49
    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/TextDirection;->i(II)Z

    .line 50
    move-result p0

    .line 51
    .line 52
    if-eqz p0, :cond_4

    .line 53
    .line 54
    const-string p0, "ContentOrRtl"

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_4
    const-string p0, "Invalid"

    .line 58
    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/style/TextDirection;->value:I

    invoke-static {v0, p1}, Landroidx/compose/ui/text/style/TextDirection;->h(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/style/TextDirection;->value:I

    invoke-static {v0}, Landroidx/compose/ui/text/style/TextDirection;->j(I)I

    move-result v0

    return v0
.end method

.method public final synthetic l()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/style/TextDirection;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/ui/text/style/TextDirection;->value:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/ui/text/style/TextDirection;->k(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
