.class public final Landroidx/compose/foundation/MagnifierStyle$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/MagnifierStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/foundation/MagnifierStyle$Companion;-><init>()V

    return-void
.end method

.method public static synthetic d(Landroidx/compose/foundation/MagnifierStyle$Companion;Landroidx/compose/foundation/MagnifierStyle;IILjava/lang/Object;)Z
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p3, p3, 0x2

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/MagnifierStyle$Companion;->c(Landroidx/compose/foundation/MagnifierStyle;I)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method


# virtual methods
.method public final a()Landroidx/compose/foundation/MagnifierStyle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/foundation/MagnifierStyle;->a()Landroidx/compose/foundation/MagnifierStyle;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final b()Landroidx/compose/foundation/MagnifierStyle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/foundation/MagnifierStyle;->b()Landroidx/compose/foundation/MagnifierStyle;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final c(Landroidx/compose/foundation/MagnifierStyle;I)Z
    .locals 3
    .param p1    # Landroidx/compose/foundation/MagnifierStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "style"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Landroidx/compose/foundation/MagnifierKt;->b(I)Z

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    goto :goto_1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/foundation/MagnifierStyle;->f()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    goto :goto_1

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/foundation/MagnifierStyle;->h()Z

    .line 24
    move-result v0

    .line 25
    const/4 v2, 0x1

    .line 26
    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/compose/foundation/MagnifierStyle$Companion;->a()Landroidx/compose/foundation/MagnifierStyle;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    move-result p1

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_2
    const/16 p1, 0x1d

    .line 41
    .line 42
    if-lt p2, p1, :cond_4

    .line 43
    :cond_3
    :goto_0
    move v1, v2

    .line 44
    :cond_4
    :goto_1
    return v1
.end method
