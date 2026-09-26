.class final Landroidx/compose/material/TabRowKt$TabRow$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/TabRowKt;->b(ILandroidx/compose/ui/Modifier;JJLe8/q;Le8/p;Le8/p;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTabRow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TabRow.kt\nandroidx/compose/material/TabRowKt$TabRow$2\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,517:1\n67#2,3:518\n66#2:521\n1057#3,6:522\n*S KotlinDebug\n*F\n+ 1 TabRow.kt\nandroidx/compose/material/TabRowKt$TabRow$2\n*L\n151#1:518,3\n151#1:521\n151#1:522,6\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $divider:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $indicator:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Ljava/util/List<",
            "Landroidx/compose/material/TabPosition;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $tabs:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Le8/p;Le8/p;Le8/q;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Le8/q<",
            "-",
            "Ljava/util/List<",
            "Landroidx/compose/material/TabPosition;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/TabRowKt$TabRow$2;->$tabs:Le8/p;

    iput-object p2, p0, Landroidx/compose/material/TabRowKt$TabRow$2;->$divider:Le8/p;

    iput-object p3, p0, Landroidx/compose/material/TabRowKt$TabRow$2;->$indicator:Le8/q;

    iput p4, p0, Landroidx/compose/material/TabRowKt$TabRow$2;->$$dirty:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 6
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .line 1
    .line 2
    and-int/lit8 p2, p2, 0xb

    .line 3
    const/4 v0, 0x2

    .line 4
    .line 5
    if-ne p2, v0, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->b()Z

    .line 9
    move-result p2

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->g()V

    .line 16
    goto :goto_1

    .line 17
    .line 18
    :cond_1
    :goto_0
    sget-object p2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 19
    const/4 v0, 0x1

    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    .line 23
    .line 24
    invoke-static {p2, v2, v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->n(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/compose/material/TabRowKt$TabRow$2;->$tabs:Le8/p;

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/compose/material/TabRowKt$TabRow$2;->$divider:Le8/p;

    .line 30
    .line 31
    iget-object v2, p0, Landroidx/compose/material/TabRowKt$TabRow$2;->$indicator:Le8/q;

    .line 32
    .line 33
    iget v3, p0, Landroidx/compose/material/TabRowKt$TabRow$2;->$$dirty:I

    .line 34
    .line 35
    .line 36
    const v4, 0x607fb4c4

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 43
    move-result v4

    .line 44
    .line 45
    .line 46
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 47
    move-result v5

    .line 48
    or-int/2addr v4, v5

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 52
    move-result v5

    .line 53
    or-int/2addr v4, v5

    .line 54
    .line 55
    .line 56
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 57
    move-result-object v5

    .line 58
    .line 59
    if-nez v4, :cond_2

    .line 60
    .line 61
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 65
    move-result-object v4

    .line 66
    .line 67
    if-ne v5, v4, :cond_3

    .line 68
    .line 69
    :cond_2
    new-instance v5, Landroidx/compose/material/TabRowKt$TabRow$2$1$1;

    .line 70
    .line 71
    .line 72
    invoke-direct {v5, v0, v1, v2, v3}, Landroidx/compose/material/TabRowKt$TabRow$2$1$1;-><init>(Le8/p;Le8/p;Le8/q;I)V

    .line 73
    .line 74
    .line 75
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 79
    .line 80
    check-cast v5, Le8/p;

    .line 81
    const/4 v0, 0x6

    .line 82
    const/4 v1, 0x0

    .line 83
    .line 84
    .line 85
    invoke-static {p2, v5, p1, v0, v1}, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->a(Landroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/runtime/Composer;II)V

    .line 86
    :goto_1
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 8
    move-result p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/TabRowKt$TabRow$2;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
