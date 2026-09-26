.class final Landroidx/compose/ui/node/LayoutNode$hasNewPositioningCallback$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/node/LayoutNode;->B0()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Landroidx/compose/ui/Modifier$Element;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLayoutNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayoutNode.kt\nandroidx/compose/ui/node/LayoutNode$hasNewPositioningCallback$1\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,1687:1\n366#2,12:1688\n*S KotlinDebug\n*F\n+ 1 LayoutNode.kt\nandroidx/compose/ui/node/LayoutNode$hasNewPositioningCallback$1\n*L\n894#1:1688,12\n*E\n"
.end annotation


# instance fields
.field final synthetic $onPositionedCallbacks:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Lw7/u<",
            "Landroidx/compose/ui/node/LayoutNodeWrapper;",
            "Landroidx/compose/ui/layout/OnGloballyPositionedModifier;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/collection/MutableVector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Lw7/u<",
            "Landroidx/compose/ui/node/LayoutNodeWrapper;",
            "Landroidx/compose/ui/layout/OnGloballyPositionedModifier;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode$hasNewPositioningCallback$1;->$onPositionedCallbacks:Landroidx/compose/runtime/collection/MutableVector;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/Modifier$Element;Z)Ljava/lang/Boolean;
    .locals 6
    .param p1    # Landroidx/compose/ui/Modifier$Element;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "mod"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-nez p2, :cond_4

    .line 8
    .line 9
    instance-of p2, p1, Landroidx/compose/ui/layout/OnGloballyPositionedModifier;

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    if-eqz p2, :cond_5

    .line 13
    .line 14
    iget-object p2, p0, Landroidx/compose/ui/node/LayoutNode$hasNewPositioningCallback$1;->$onPositionedCallbacks:Landroidx/compose/runtime/collection/MutableVector;

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    if-eqz p2, :cond_3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 21
    move-result v2

    .line 22
    .line 23
    if-lez v2, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 27
    move-result-object p2

    .line 28
    move v3, v0

    .line 29
    .line 30
    :cond_0
    aget-object v4, p2, v3

    .line 31
    move-object v5, v4

    .line 32
    .line 33
    check-cast v5, Lw7/u;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5}, Lw7/u;->d()Ljava/lang/Object;

    .line 37
    move-result-object v5

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v5}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    move-result v5

    .line 42
    .line 43
    if-eqz v5, :cond_1

    .line 44
    move-object v1, v4

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    if-lt v3, v2, :cond_0

    .line 50
    .line 51
    :cond_2
    :goto_0
    check-cast v1, Lw7/u;

    .line 52
    .line 53
    :cond_3
    if-nez v1, :cond_5

    .line 54
    :cond_4
    const/4 v0, 0x1

    .line 55
    .line 56
    .line 57
    :cond_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 58
    move-result-object p1

    .line 59
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/Modifier$Element;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Boolean;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    move-result p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNode$hasNewPositioningCallback$1;->a(Landroidx/compose/ui/Modifier$Element;Z)Ljava/lang/Boolean;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
