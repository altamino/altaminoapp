.class final Landroidx/compose/foundation/layout/WindowInsetsConnection_androidKt$imeNestedScroll$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/q<",
        "Landroidx/compose/ui/Modifier;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/ui/Modifier;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/layout/WindowInsetsConnection_androidKt$imeNestedScroll$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/WindowInsetsConnection_androidKt$imeNestedScroll$2;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/WindowInsetsConnection_androidKt$imeNestedScroll$2;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/WindowInsetsConnection_androidKt$imeNestedScroll$2;->INSTANCE:Landroidx/compose/foundation/layout/WindowInsetsConnection_androidKt$imeNestedScroll$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p3, "$this$composed"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p3, -0x160d6da8

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    sget-object p3, Landroidx/compose/foundation/layout/WindowInsetsHolder;->Companion:Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;

    .line 14
    .line 15
    const/16 v0, 0x8

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3, p2, v0}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->c(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 19
    move-result-object p3

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3}, Landroidx/compose/foundation/layout/WindowInsetsHolder;->f()Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 23
    move-result-object p3

    .line 24
    .line 25
    sget-object v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Companion:Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;->e()I

    .line 29
    move-result v0

    .line 30
    .line 31
    const/16 v1, 0x30

    .line 32
    .line 33
    .line 34
    invoke-static {p3, v0, p2, v1}, Landroidx/compose/foundation/layout/WindowInsetsConnection_androidKt;->d(Landroidx/compose/foundation/layout/AndroidWindowInsets;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 35
    move-result-object p3

    .line 36
    const/4 v0, 0x0

    .line 37
    const/4 v1, 0x2

    .line 38
    .line 39
    .line 40
    invoke-static {p1, p3, v0, v1, v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 45
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/Modifier;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 5
    .line 6
    check-cast p3, Ljava/lang/Number;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 10
    move-result p3

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/WindowInsetsConnection_androidKt$imeNestedScroll$2;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
