.class final Landroidx/compose/ui/draw/DrawModifierKt$drawWithCache$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/draw/DrawModifierKt;->b(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDrawModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DrawModifier.kt\nandroidx/compose/ui/draw/DrawModifierKt$drawWithCache$2\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,280:1\n25#2:281\n1057#3,6:282\n*S KotlinDebug\n*F\n+ 1 DrawModifier.kt\nandroidx/compose/ui/draw/DrawModifierKt$drawWithCache$2\n*L\n143#1:281\n143#1:282,6\n*E\n"
.end annotation


# instance fields
.field final synthetic $onBuildDrawCache:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/ui/draw/CacheDrawScope;",
            "Landroidx/compose/ui/draw/DrawResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Le8/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/draw/CacheDrawScope;",
            "Landroidx/compose/ui/draw/DrawResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/draw/DrawModifierKt$drawWithCache$2;->$onBuildDrawCache:Le8/l;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

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
    const p3, -0x64b4c6fb

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    .line 14
    const p3, -0x1d58f75c

    .line 15
    .line 16
    .line 17
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 21
    move-result-object p3

    .line 22
    .line 23
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-ne p3, v0, :cond_0

    .line 30
    .line 31
    new-instance p3, Landroidx/compose/ui/draw/CacheDrawScope;

    .line 32
    .line 33
    .line 34
    invoke-direct {p3}, Landroidx/compose/ui/draw/CacheDrawScope;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 41
    .line 42
    check-cast p3, Landroidx/compose/ui/draw/CacheDrawScope;

    .line 43
    .line 44
    new-instance v0, Landroidx/compose/ui/draw/DrawContentCacheModifier;

    .line 45
    .line 46
    iget-object v1, p0, Landroidx/compose/ui/draw/DrawModifierKt$drawWithCache$2;->$onBuildDrawCache:Le8/l;

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, p3, v1}, Landroidx/compose/ui/draw/DrawContentCacheModifier;-><init>(Landroidx/compose/ui/draw/CacheDrawScope;Le8/l;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p1, v0}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 57
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
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/draw/DrawModifierKt$drawWithCache$2;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
