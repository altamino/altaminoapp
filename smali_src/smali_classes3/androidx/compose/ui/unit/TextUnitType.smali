.class public final Landroidx/compose/ui/unit/TextUnitType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/unit/TextUnitType$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Em:J

.field private static final Sp:J

.field private static final Unspecified:J


# instance fields
.field private final type:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/unit/TextUnitType$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/compose/ui/unit/TextUnitType$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnitType;->e(J)J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    sput-wide v0, Landroidx/compose/ui/unit/TextUnitType;->Unspecified:J

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    const-wide v0, 0x100000000L

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnitType;->e(J)J

    .line 25
    move-result-wide v0

    .line 26
    .line 27
    sput-wide v0, Landroidx/compose/ui/unit/TextUnitType;->Sp:J

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    const-wide v0, 0x200000000L

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnitType;->e(J)J

    .line 36
    move-result-wide v0

    .line 37
    .line 38
    sput-wide v0, Landroidx/compose/ui/unit/TextUnitType;->Em:J

    .line 39
    return-void
.end method

.method private synthetic constructor <init>(J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-wide p1, p0, Landroidx/compose/ui/unit/TextUnitType;->type:J

    .line 6
    return-void
.end method

.method public static final synthetic a()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/unit/TextUnitType;->Em:J

    return-wide v0
.end method

.method public static final synthetic b()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/unit/TextUnitType;->Sp:J

    return-wide v0
.end method

.method public static final synthetic c()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/unit/TextUnitType;->Unspecified:J

    return-wide v0
.end method

.method public static final synthetic d(J)Landroidx/compose/ui/unit/TextUnitType;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/unit/TextUnitType;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/TextUnitType;-><init>(J)V

    return-object v0
.end method

.method public static e(J)J
    .locals 0

    .line 1
    return-wide p0
.end method

.method public static f(JLjava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p2, Landroidx/compose/ui/unit/TextUnitType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Landroidx/compose/ui/unit/TextUnitType;

    invoke-virtual {p2}, Landroidx/compose/ui/unit/TextUnitType;->j()J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final g(JJ)Z
    .locals 0

    .line 1
    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static h(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li/a;->a(J)I

    move-result p0

    return p0
.end method

.method public static i(J)Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-wide v0, Landroidx/compose/ui/unit/TextUnitType;->Unspecified:J

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/unit/TextUnitType;->g(JJ)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string p0, "Unspecified"

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    sget-wide v0, Landroidx/compose/ui/unit/TextUnitType;->Sp:J

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/unit/TextUnitType;->g(JJ)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const-string p0, "Sp"

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_1
    sget-wide v0, Landroidx/compose/ui/unit/TextUnitType;->Em:J

    .line 25
    .line 26
    .line 27
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/unit/TextUnitType;->g(JJ)Z

    .line 28
    move-result p0

    .line 29
    .line 30
    if-eqz p0, :cond_2

    .line 31
    .line 32
    const-string p0, "Em"

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_2
    const-string p0, "Invalid"

    .line 36
    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/unit/TextUnitType;->type:J

    invoke-static {v0, v1, p1}, Landroidx/compose/ui/unit/TextUnitType;->f(JLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/unit/TextUnitType;->type:J

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnitType;->h(J)I

    move-result v0

    return v0
.end method

.method public final synthetic j()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/unit/TextUnitType;->type:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/compose/ui/unit/TextUnitType;->type:J

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnitType;->i(J)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
