.class public final Landroidx/compose/foundation/ClickableKt$combinedClickable-cJG_KMw$$inlined$debugInspectorInfo$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/ui/platform/InspectorInfo;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInspectableValue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt$debugInspectorInfo$1\n+ 2 Clickable.kt\nandroidx/compose/foundation/ClickableKt\n*L\n1#1,170:1\n227#2,9:171\n*E\n"
.end annotation


# instance fields
.field final synthetic $enabled$inlined:Z

.field final synthetic $onClick$inlined:Le8/a;

.field final synthetic $onClickLabel$inlined:Ljava/lang/String;

.field final synthetic $onDoubleClick$inlined:Le8/a;

.field final synthetic $onLongClick$inlined:Le8/a;

.field final synthetic $onLongClickLabel$inlined:Ljava/lang/String;

.field final synthetic $role$inlined:Landroidx/compose/ui/semantics/Role;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Le8/a;Le8/a;Le8/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable-cJG_KMw$$inlined$debugInspectorInfo$1;->$enabled$inlined:Z

    iput-object p2, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable-cJG_KMw$$inlined$debugInspectorInfo$1;->$onClickLabel$inlined:Ljava/lang/String;

    iput-object p3, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable-cJG_KMw$$inlined$debugInspectorInfo$1;->$role$inlined:Landroidx/compose/ui/semantics/Role;

    iput-object p4, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable-cJG_KMw$$inlined$debugInspectorInfo$1;->$onClick$inlined:Le8/a;

    iput-object p5, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable-cJG_KMw$$inlined$debugInspectorInfo$1;->$onDoubleClick$inlined:Le8/a;

    iput-object p6, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable-cJG_KMw$$inlined$debugInspectorInfo$1;->$onLongClick$inlined:Le8/a;

    iput-object p7, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable-cJG_KMw$$inlined$debugInspectorInfo$1;->$onLongClickLabel$inlined:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 3
    .param p1    # Landroidx/compose/ui/platform/InspectorInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$null"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "combinedClickable"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->b(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-boolean v1, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable-cJG_KMw$$inlined$debugInspectorInfo$1;->$enabled$inlined:Z

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    const-string v2, "enabled"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    const-string v1, "onClickLabel"

    .line 32
    .line 33
    iget-object v2, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable-cJG_KMw$$inlined$debugInspectorInfo$1;->$onClickLabel$inlined:Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    const-string v1, "role"

    .line 43
    .line 44
    iget-object v2, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable-cJG_KMw$$inlined$debugInspectorInfo$1;->$role$inlined:Landroidx/compose/ui/semantics/Role;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    const-string v1, "onClick"

    .line 54
    .line 55
    iget-object v2, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable-cJG_KMw$$inlined$debugInspectorInfo$1;->$onClick$inlined:Le8/a;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    const-string v1, "onDoubleClick"

    .line 65
    .line 66
    iget-object v2, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable-cJG_KMw$$inlined$debugInspectorInfo$1;->$onDoubleClick$inlined:Le8/a;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    const-string v1, "onLongClick"

    .line 76
    .line 77
    iget-object v2, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable-cJG_KMw$$inlined$debugInspectorInfo$1;->$onLongClick$inlined:Le8/a;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    const-string v0, "onLongClickLabel"

    .line 87
    .line 88
    iget-object v1, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable-cJG_KMw$$inlined$debugInspectorInfo$1;->$onLongClickLabel$inlined:Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/platform/InspectorInfo;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/ClickableKt$combinedClickable-cJG_KMw$$inlined$debugInspectorInfo$1;->a(Landroidx/compose/ui/platform/InspectorInfo;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
