.class final Landroidx/compose/ui/text/SaversKt$ShadowSaver$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


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
        "Le8/l<",
        "Ljava/lang/Object;",
        "Landroidx/compose/ui/graphics/Shadow;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSavers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Savers.kt\nandroidx/compose/ui/text/SaversKt$ShadowSaver$2\n+ 2 Savers.kt\nandroidx/compose/ui/text/SaversKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,398:1\n55#2,2:399\n55#2,2:402\n70#2:405\n1#3:401\n1#3:404\n1#3:406\n*S KotlinDebug\n*F\n+ 1 Savers.kt\nandroidx/compose/ui/text/SaversKt$ShadowSaver$2\n*L\n325#1:399,2\n326#1:402,2\n327#1:405\n325#1:401\n326#1:404\n327#1:406\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/SaversKt$ShadowSaver$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/SaversKt$ShadowSaver$2;

    invoke-direct {v0}, Landroidx/compose/ui/text/SaversKt$ShadowSaver$2;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/SaversKt$ShadowSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$ShadowSaver$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Landroidx/compose/ui/graphics/Shadow;
    .locals 11
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "it"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    check-cast p1, Ljava/util/List;

    .line 8
    .line 9
    new-instance v7, Landroidx/compose/ui/graphics/Shadow;

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Landroidx/compose/ui/text/SaversKt;->g(Landroidx/compose/ui/graphics/Color$Companion;)Landroidx/compose/runtime/saveable/Saver;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x0

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    :cond_0
    move-object v0, v4

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_1
    if-eqz v0, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-interface {v1, v0}, Landroidx/compose/runtime/saveable/Saver;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 46
    move-result-wide v5

    .line 47
    const/4 v0, 0x1

    .line 48
    .line 49
    .line 50
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Landroidx/compose/ui/text/SaversKt;->f(Landroidx/compose/ui/geometry/Offset$Companion;)Landroidx/compose/runtime/saveable/Saver;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    move-result v2

    .line 62
    .line 63
    if-eqz v2, :cond_3

    .line 64
    :cond_2
    move-object v0, v4

    .line 65
    goto :goto_1

    .line 66
    .line 67
    :cond_3
    if-eqz v0, :cond_2

    .line 68
    .line 69
    .line 70
    invoke-interface {v1, v0}, Landroidx/compose/runtime/saveable/Saver;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    .line 74
    .line 75
    .line 76
    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset;->u()J

    .line 80
    move-result-wide v8

    .line 81
    const/4 v0, 0x2

    .line 82
    .line 83
    .line 84
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    if-eqz p1, :cond_4

    .line 88
    move-object v4, p1

    .line 89
    .line 90
    check-cast v4, Ljava/lang/Float;

    .line 91
    .line 92
    .line 93
    :cond_4
    invoke-static {v4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 97
    move-result p1

    .line 98
    const/4 v10, 0x0

    .line 99
    move-object v0, v7

    .line 100
    move-wide v1, v5

    .line 101
    move-wide v3, v8

    .line 102
    move v5, p1

    .line 103
    move-object v6, v10

    .line 104
    .line 105
    .line 106
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/graphics/Shadow;-><init>(JJFLkotlin/jvm/internal/k;)V

    .line 107
    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/SaversKt$ShadowSaver$2;->a(Ljava/lang/Object;)Landroidx/compose/ui/graphics/Shadow;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
