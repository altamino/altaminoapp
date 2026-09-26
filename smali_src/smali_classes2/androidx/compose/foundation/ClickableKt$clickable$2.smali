.class final Landroidx/compose/foundation/ClickableKt$clickable$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/ClickableKt;->d(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Le8/a;)Landroidx/compose/ui/Modifier;
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
    value = "SMAP\nClickable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Clickable.kt\nandroidx/compose/foundation/ClickableKt$clickable$2\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,506:1\n76#2:507\n25#3:508\n1057#4,6:509\n*S KotlinDebug\n*F\n+ 1 Clickable.kt\nandroidx/compose/foundation/ClickableKt$clickable$2\n*L\n93#1:507\n94#1:508\n94#1:509,6\n*E\n"
.end annotation


# instance fields
.field final synthetic $enabled:Z

.field final synthetic $onClick:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onClickLabel:Ljava/lang/String;

.field final synthetic $role:Landroidx/compose/ui/semantics/Role;


# direct methods
.method constructor <init>(ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Le8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/semantics/Role;",
            "Le8/a<",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroidx/compose/foundation/ClickableKt$clickable$2;->$enabled:Z

    iput-object p2, p0, Landroidx/compose/foundation/ClickableKt$clickable$2;->$onClickLabel:Ljava/lang/String;

    iput-object p3, p0, Landroidx/compose/foundation/ClickableKt$clickable$2;->$role:Landroidx/compose/ui/semantics/Role;

    iput-object p4, p0, Landroidx/compose/foundation/ClickableKt$clickable$2;->$onClick:Le8/a;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 7
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
    const p1, -0x2d10e1f7

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroidx/compose/foundation/IndicationKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    move-object v2, p1

    .line 23
    .line 24
    check-cast v2, Landroidx/compose/foundation/Indication;

    .line 25
    .line 26
    .line 27
    const p1, -0x1d58f75c

    .line 28
    .line 29
    .line 30
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 40
    move-result-object p3

    .line 41
    .line 42
    if-ne p1, p3, :cond_0

    .line 43
    .line 44
    .line 45
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 53
    move-object v1, p1

    .line 54
    .line 55
    check-cast v1, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 56
    .line 57
    iget-boolean v3, p0, Landroidx/compose/foundation/ClickableKt$clickable$2;->$enabled:Z

    .line 58
    .line 59
    iget-object v4, p0, Landroidx/compose/foundation/ClickableKt$clickable$2;->$onClickLabel:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v5, p0, Landroidx/compose/foundation/ClickableKt$clickable$2;->$role:Landroidx/compose/ui/semantics/Role;

    .line 62
    .line 63
    iget-object v6, p0, Landroidx/compose/foundation/ClickableKt$clickable$2;->$onClick:Le8/a;

    .line 64
    .line 65
    .line 66
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/ClickableKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Le8/a;)Landroidx/compose/ui/Modifier;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    .line 70
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 71
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
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/ClickableKt$clickable$2;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
