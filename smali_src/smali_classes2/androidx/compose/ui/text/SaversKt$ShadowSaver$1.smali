.class final Landroidx/compose/ui/text/SaversKt$ShadowSaver$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/SaversKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Landroidx/compose/runtime/saveable/SaverScope;",
        "Landroidx/compose/ui/graphics/Shadow;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/SaversKt$ShadowSaver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/SaversKt$ShadowSaver$1;

    invoke-direct {v0}, Landroidx/compose/ui/text/SaversKt$ShadowSaver$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/SaversKt$ShadowSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$ShadowSaver$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/ui/graphics/Shadow;)Ljava/lang/Object;
    .locals 3
    .param p1    # Landroidx/compose/runtime/saveable/SaverScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/graphics/Shadow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$Saver"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "it"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x3

    .line 12
    .line 13
    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/Shadow;->c()J

    .line 17
    move-result-wide v1

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 24
    .line 25
    .line 26
    invoke-static {v2}, Landroidx/compose/ui/text/SaversKt;->g(Landroidx/compose/ui/graphics/Color$Companion;)Landroidx/compose/runtime/saveable/Saver;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v2, p1}, Landroidx/compose/ui/text/SaversKt;->t(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    const/4 v2, 0x0

    .line 33
    .line 34
    aput-object v1, v0, v2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/Shadow;->d()J

    .line 38
    move-result-wide v1

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 45
    .line 46
    .line 47
    invoke-static {v2}, Landroidx/compose/ui/text/SaversKt;->f(Landroidx/compose/ui/geometry/Offset$Companion;)Landroidx/compose/runtime/saveable/Saver;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    .line 51
    invoke-static {v1, v2, p1}, Landroidx/compose/ui/text/SaversKt;->t(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 52
    move-result-object p1

    .line 53
    const/4 v1, 0x1

    .line 54
    .line 55
    aput-object p1, v0, v1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/Shadow;->b()F

    .line 59
    move-result p1

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Landroidx/compose/ui/text/SaversKt;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    move-result-object p1

    .line 68
    const/4 p2, 0x2

    .line 69
    .line 70
    aput-object p1, v0, p2

    .line 71
    .line 72
    .line 73
    invoke-static {v0}, Lkotlin/collections/t;->g([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 74
    move-result-object p1

    .line 75
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/ui/graphics/Shadow;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/SaversKt$ShadowSaver$1;->a(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/ui/graphics/Shadow;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
