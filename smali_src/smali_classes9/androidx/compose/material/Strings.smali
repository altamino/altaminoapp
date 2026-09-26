.class public final Landroidx/compose/material/Strings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/Strings$Companion;
    }
.end annotation


# static fields
.field private static final CloseDrawer:I

.field private static final CloseSheet:I

.field public static final Companion:Landroidx/compose/material/Strings$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DefaultErrorMessage:I

.field private static final ExposedDropdownMenu:I

.field private static final NavigationMenu:I

.field private static final SliderRangeEnd:I

.field private static final SliderRangeStart:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/material/Strings$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/compose/material/Strings$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/material/Strings;->Companion:Landroidx/compose/material/Strings$Companion;

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroidx/compose/material/Strings;->h(I)I

    .line 13
    move-result v0

    .line 14
    .line 15
    sput v0, Landroidx/compose/material/Strings;->NavigationMenu:I

    .line 16
    const/4 v0, 0x1

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroidx/compose/material/Strings;->h(I)I

    .line 20
    move-result v0

    .line 21
    .line 22
    sput v0, Landroidx/compose/material/Strings;->CloseDrawer:I

    .line 23
    const/4 v0, 0x2

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Landroidx/compose/material/Strings;->h(I)I

    .line 27
    move-result v0

    .line 28
    .line 29
    sput v0, Landroidx/compose/material/Strings;->CloseSheet:I

    .line 30
    const/4 v0, 0x3

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Landroidx/compose/material/Strings;->h(I)I

    .line 34
    move-result v0

    .line 35
    .line 36
    sput v0, Landroidx/compose/material/Strings;->DefaultErrorMessage:I

    .line 37
    const/4 v0, 0x4

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Landroidx/compose/material/Strings;->h(I)I

    .line 41
    move-result v0

    .line 42
    .line 43
    sput v0, Landroidx/compose/material/Strings;->ExposedDropdownMenu:I

    .line 44
    const/4 v0, 0x5

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Landroidx/compose/material/Strings;->h(I)I

    .line 48
    move-result v0

    .line 49
    .line 50
    sput v0, Landroidx/compose/material/Strings;->SliderRangeStart:I

    .line 51
    const/4 v0, 0x6

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Landroidx/compose/material/Strings;->h(I)I

    .line 55
    move-result v0

    .line 56
    .line 57
    sput v0, Landroidx/compose/material/Strings;->SliderRangeEnd:I

    .line 58
    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/Strings;->CloseDrawer:I

    return v0
.end method

.method public static final synthetic b()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/Strings;->CloseSheet:I

    return v0
.end method

.method public static final synthetic c()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/Strings;->DefaultErrorMessage:I

    return v0
.end method

.method public static final synthetic d()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/Strings;->ExposedDropdownMenu:I

    return v0
.end method

.method public static final synthetic e()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/Strings;->NavigationMenu:I

    return v0
.end method

.method public static final synthetic f()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/Strings;->SliderRangeEnd:I

    return v0
.end method

.method public static final synthetic g()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/Strings;->SliderRangeStart:I

    return v0
.end method

.method private static h(I)I
    .locals 0

    .line 1
    return p0
.end method

.method public static i(ILjava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/compose/material/Strings;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/material/Strings;

    invoke-virtual {p1}, Landroidx/compose/material/Strings;->m()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final j(II)Z
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

.method public static k(I)I
    .locals 0

    .line 1
    return p0
.end method

.method public static l(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Strings(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Landroidx/compose/material/Strings;->value:I

    invoke-static {v0, p1}, Landroidx/compose/material/Strings;->i(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/compose/material/Strings;->value:I

    invoke-static {v0}, Landroidx/compose/material/Strings;->k(I)I

    move-result v0

    return v0
.end method

.method public final synthetic m()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/material/Strings;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroidx/compose/material/Strings;->value:I

    invoke-static {v0}, Landroidx/compose/material/Strings;->l(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
