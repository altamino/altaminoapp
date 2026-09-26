.class final Landroidx/compose/material/NavigationRailKt$NavigationRailItem$2$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/NavigationRailKt;->b(ZLe8/a;Le8/p;Landroidx/compose/ui/Modifier;ZLe8/p;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;JJLandroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/q<",
        "Ljava/lang/Float;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $alwaysShowLabel:Z

.field final synthetic $icon:Le8/p;
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

.field final synthetic $styledLabel:Le8/p;
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
.method constructor <init>(ZLe8/p;Le8/p;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
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
            ">;I)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroidx/compose/material/NavigationRailKt$NavigationRailItem$2$1;->$alwaysShowLabel:Z

    iput-object p2, p0, Landroidx/compose/material/NavigationRailKt$NavigationRailItem$2$1;->$icon:Le8/p;

    iput-object p3, p0, Landroidx/compose/material/NavigationRailKt$NavigationRailItem$2$1;->$styledLabel:Le8/p;

    iput p4, p0, Landroidx/compose/material/NavigationRailKt$NavigationRailItem$2$1;->$$dirty:I

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(FLandroidx/compose/runtime/Composer;I)V
    .locals 2
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .line 1
    .line 2
    and-int/lit8 v0, p3, 0xe

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->n(F)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x4

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x2

    .line 14
    :goto_0
    or-int/2addr p3, v0

    .line 15
    .line 16
    :cond_1
    and-int/lit8 p3, p3, 0x5b

    .line 17
    .line 18
    const/16 v0, 0x12

    .line 19
    .line 20
    if-ne p3, v0, :cond_3

    .line 21
    .line 22
    .line 23
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->b()Z

    .line 24
    move-result p3

    .line 25
    .line 26
    if-nez p3, :cond_2

    .line 27
    goto :goto_1

    .line 28
    .line 29
    .line 30
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->g()V

    .line 31
    goto :goto_2

    .line 32
    .line 33
    :cond_3
    :goto_1
    iget-boolean p3, p0, Landroidx/compose/material/NavigationRailKt$NavigationRailItem$2$1;->$alwaysShowLabel:Z

    .line 34
    .line 35
    if-eqz p3, :cond_4

    .line 36
    .line 37
    const/high16 p1, 0x3f800000    # 1.0f

    .line 38
    .line 39
    :cond_4
    iget-object p3, p0, Landroidx/compose/material/NavigationRailKt$NavigationRailItem$2$1;->$icon:Le8/p;

    .line 40
    .line 41
    iget-object v0, p0, Landroidx/compose/material/NavigationRailKt$NavigationRailItem$2$1;->$styledLabel:Le8/p;

    .line 42
    .line 43
    iget v1, p0, Landroidx/compose/material/NavigationRailKt$NavigationRailItem$2$1;->$$dirty:I

    .line 44
    .line 45
    shr-int/lit8 v1, v1, 0x6

    .line 46
    .line 47
    and-int/lit8 v1, v1, 0xe

    .line 48
    .line 49
    .line 50
    invoke-static {p3, v0, p1, p2, v1}, Landroidx/compose/material/NavigationRailKt;->f(Le8/p;Le8/p;FLandroidx/compose/runtime/Composer;I)V

    .line 51
    :goto_2
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Number;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 6
    move-result p1

    .line 7
    .line 8
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 9
    .line 10
    check-cast p3, Ljava/lang/Number;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 14
    move-result p3

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material/NavigationRailKt$NavigationRailItem$2$1;->a(FLandroidx/compose/runtime/Composer;I)V

    .line 18
    .line 19
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 20
    return-object p1
.end method
