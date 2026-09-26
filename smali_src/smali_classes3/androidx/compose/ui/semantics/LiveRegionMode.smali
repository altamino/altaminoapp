.class public final Landroidx/compose/ui/semantics/LiveRegionMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/semantics/LiveRegionMode$Companion;
    }
.end annotation


# static fields
.field private static final Assertive:I

.field public static final Companion:Landroidx/compose/ui/semantics/LiveRegionMode$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Polite:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/semantics/LiveRegionMode$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/compose/ui/semantics/LiveRegionMode$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/semantics/LiveRegionMode;->Companion:Landroidx/compose/ui/semantics/LiveRegionMode$Companion;

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroidx/compose/ui/semantics/LiveRegionMode;->d(I)I

    .line 13
    move-result v0

    .line 14
    .line 15
    sput v0, Landroidx/compose/ui/semantics/LiveRegionMode;->Polite:I

    .line 16
    const/4 v0, 0x1

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroidx/compose/ui/semantics/LiveRegionMode;->d(I)I

    .line 20
    move-result v0

    .line 21
    .line 22
    sput v0, Landroidx/compose/ui/semantics/LiveRegionMode;->Assertive:I

    .line 23
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
    iput p1, p0, Landroidx/compose/ui/semantics/LiveRegionMode;->value:I

    .line 6
    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/semantics/LiveRegionMode;->Assertive:I

    return v0
.end method

.method public static final synthetic b()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/semantics/LiveRegionMode;->Polite:I

    return v0
.end method

.method public static final synthetic c(I)Landroidx/compose/ui/semantics/LiveRegionMode;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/semantics/LiveRegionMode;

    invoke-direct {v0, p0}, Landroidx/compose/ui/semantics/LiveRegionMode;-><init>(I)V

    return-object v0
.end method

.method private static d(I)I
    .locals 0

    .line 1
    return p0
.end method

.method public static e(ILjava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/compose/ui/semantics/LiveRegionMode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/ui/semantics/LiveRegionMode;

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/LiveRegionMode;->i()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final f(II)Z
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

.method public static g(I)I
    .locals 0

    .line 1
    return p0
.end method

.method public static h(I)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget v0, Landroidx/compose/ui/semantics/LiveRegionMode;->Polite:I

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Landroidx/compose/ui/semantics/LiveRegionMode;->f(II)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string p0, "Polite"

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    sget v0, Landroidx/compose/ui/semantics/LiveRegionMode;->Assertive:I

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Landroidx/compose/ui/semantics/LiveRegionMode;->f(II)Z

    .line 17
    move-result p0

    .line 18
    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    const-string p0, "Assertive"

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_1
    const-string p0, "Unknown"

    .line 25
    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Landroidx/compose/ui/semantics/LiveRegionMode;->value:I

    invoke-static {v0, p1}, Landroidx/compose/ui/semantics/LiveRegionMode;->e(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/semantics/LiveRegionMode;->value:I

    invoke-static {v0}, Landroidx/compose/ui/semantics/LiveRegionMode;->g(I)I

    move-result v0

    return v0
.end method

.method public final synthetic i()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/semantics/LiveRegionMode;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/ui/semantics/LiveRegionMode;->value:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/ui/semantics/LiveRegionMode;->h(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
