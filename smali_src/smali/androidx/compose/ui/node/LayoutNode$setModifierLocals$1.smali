.class final Landroidx/compose/ui/node/LayoutNode$setModifierLocals$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/node/LayoutNode;->r1(Landroidx/compose/ui/Modifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Landroidx/compose/ui/node/ModifierLocalProviderEntity;",
        "Landroidx/compose/ui/Modifier$Element;",
        "Landroidx/compose/ui/node/ModifierLocalProviderEntity;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLayoutNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayoutNode.kt\nandroidx/compose/ui/node/LayoutNode$setModifierLocals$1\n+ 2 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n*L\n1#1,1687:1\n135#2:1688\n*S KotlinDebug\n*F\n+ 1 LayoutNode.kt\nandroidx/compose/ui/node/LayoutNode$setModifierLocals$1\n*L\n1214#1:1688\n*E\n"
.end annotation


# instance fields
.field final synthetic $consumers:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/node/ModifierLocalConsumerEntity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/ui/node/LayoutNode;


# direct methods
.method constructor <init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/runtime/collection/MutableVector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/node/ModifierLocalConsumerEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode$setModifierLocals$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode$setModifierLocals$1;->$consumers:Landroidx/compose/runtime/collection/MutableVector;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/node/ModifierLocalProviderEntity;Landroidx/compose/ui/Modifier$Element;)Landroidx/compose/ui/node/ModifierLocalProviderEntity;
    .locals 3
    .param p1    # Landroidx/compose/ui/node/ModifierLocalProviderEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier$Element;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "lastProvider"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "mod"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    instance-of v0, p2, Landroidx/compose/ui/focus/FocusOrderModifier;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode$setModifierLocals$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    .line 17
    move-object v1, p2

    .line 18
    .line 19
    check-cast v1, Landroidx/compose/ui/focus/FocusOrderModifier;

    .line 20
    .line 21
    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode$setModifierLocals$1;->$consumers:Landroidx/compose/runtime/collection/MutableVector;

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/node/LayoutNode;->o(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/focus/FocusOrderModifier;Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/focus/FocusPropertiesModifier;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    new-instance v0, Landroidx/compose/ui/focus/FocusOrderModifierToProperties;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Landroidx/compose/ui/focus/FocusOrderModifierToProperties;-><init>(Landroidx/compose/ui/focus/FocusOrderModifier;)V

    .line 33
    .line 34
    new-instance v1, Landroidx/compose/ui/focus/FocusPropertiesModifier;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->c()Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    new-instance v2, Landroidx/compose/ui/node/LayoutNode$setModifierLocals$1$invoke$lambda-1$$inlined$debugInspectorInfo$1;

    .line 43
    .line 44
    .line 45
    invoke-direct {v2, v0}, Landroidx/compose/ui/node/LayoutNode$setModifierLocals$1$invoke$lambda-1$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/ui/focus/FocusOrderModifierToProperties;)V

    .line 46
    goto :goto_0

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Le8/l;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-direct {v1, v0, v2}, Landroidx/compose/ui/focus/FocusPropertiesModifier;-><init>(Le8/l;Le8/l;)V

    .line 54
    move-object v0, v1

    .line 55
    .line 56
    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode$setModifierLocals$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    .line 57
    .line 58
    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode$setModifierLocals$1;->$consumers:Landroidx/compose/runtime/collection/MutableVector;

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v0, p1, v2}, Landroidx/compose/ui/node/LayoutNode;->m(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/modifier/ModifierLocalConsumer;Landroidx/compose/ui/node/ModifierLocalProviderEntity;Landroidx/compose/runtime/collection/MutableVector;)V

    .line 62
    .line 63
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode$setModifierLocals$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    .line 64
    .line 65
    .line 66
    invoke-static {v1, v0, p1}, Landroidx/compose/ui/node/LayoutNode;->n(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/modifier/ModifierLocalProvider;Landroidx/compose/ui/node/ModifierLocalProviderEntity;)Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    :cond_2
    instance-of v0, p2, Landroidx/compose/ui/modifier/ModifierLocalConsumer;

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode$setModifierLocals$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    .line 74
    move-object v1, p2

    .line 75
    .line 76
    check-cast v1, Landroidx/compose/ui/modifier/ModifierLocalConsumer;

    .line 77
    .line 78
    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode$setModifierLocals$1;->$consumers:Landroidx/compose/runtime/collection/MutableVector;

    .line 79
    .line 80
    .line 81
    invoke-static {v0, v1, p1, v2}, Landroidx/compose/ui/node/LayoutNode;->m(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/modifier/ModifierLocalConsumer;Landroidx/compose/ui/node/ModifierLocalProviderEntity;Landroidx/compose/runtime/collection/MutableVector;)V

    .line 82
    .line 83
    :cond_3
    instance-of v0, p2, Landroidx/compose/ui/modifier/ModifierLocalProvider;

    .line 84
    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode$setModifierLocals$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    .line 88
    .line 89
    check-cast p2, Landroidx/compose/ui/modifier/ModifierLocalProvider;

    .line 90
    .line 91
    .line 92
    invoke-static {v0, p2, p1}, Landroidx/compose/ui/node/LayoutNode;->n(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/modifier/ModifierLocalProvider;Landroidx/compose/ui/node/ModifierLocalProviderEntity;)Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 93
    move-result-object p1

    .line 94
    :cond_4
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/ui/Modifier$Element;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNode$setModifierLocals$1;->a(Landroidx/compose/ui/node/ModifierLocalProviderEntity;Landroidx/compose/ui/Modifier$Element;)Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
