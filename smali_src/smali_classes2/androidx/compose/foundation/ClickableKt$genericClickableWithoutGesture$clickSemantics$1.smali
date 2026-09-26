.class final Landroidx/compose/foundation/ClickableKt$genericClickableWithoutGesture$clickSemantics$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/ClickableKt;->h(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/semantics/Role;Ljava/lang/String;Le8/a;Ljava/lang/String;ZLe8/a;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
        "Lw7/l0;",
        ">;"
    }
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

.field final synthetic $onLongClick:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onLongClickLabel:Ljava/lang/String;

.field final synthetic $role:Landroidx/compose/ui/semantics/Role;


# direct methods
.method constructor <init>(Landroidx/compose/ui/semantics/Role;Ljava/lang/String;Le8/a;Ljava/lang/String;ZLe8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/semantics/Role;",
            "Ljava/lang/String;",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Le8/a<",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/ClickableKt$genericClickableWithoutGesture$clickSemantics$1;->$role:Landroidx/compose/ui/semantics/Role;

    iput-object p2, p0, Landroidx/compose/foundation/ClickableKt$genericClickableWithoutGesture$clickSemantics$1;->$onClickLabel:Ljava/lang/String;

    iput-object p3, p0, Landroidx/compose/foundation/ClickableKt$genericClickableWithoutGesture$clickSemantics$1;->$onLongClick:Le8/a;

    iput-object p4, p0, Landroidx/compose/foundation/ClickableKt$genericClickableWithoutGesture$clickSemantics$1;->$onLongClickLabel:Ljava/lang/String;

    iput-boolean p5, p0, Landroidx/compose/foundation/ClickableKt$genericClickableWithoutGesture$clickSemantics$1;->$enabled:Z

    iput-object p6, p0, Landroidx/compose/foundation/ClickableKt$genericClickableWithoutGesture$clickSemantics$1;->$onClick:Le8/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 3
    .param p1    # Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$semantics"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/ClickableKt$genericClickableWithoutGesture$clickSemantics$1;->$role:Landroidx/compose/ui/semantics/Role;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/Role;->m()I

    .line 13
    move-result v0

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->Q(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/ClickableKt$genericClickableWithoutGesture$clickSemantics$1;->$onClickLabel:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v1, Landroidx/compose/foundation/ClickableKt$genericClickableWithoutGesture$clickSemantics$1$1;

    .line 21
    .line 22
    iget-object v2, p0, Landroidx/compose/foundation/ClickableKt$genericClickableWithoutGesture$clickSemantics$1;->$onClick:Le8/a;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v2}, Landroidx/compose/foundation/ClickableKt$genericClickableWithoutGesture$clickSemantics$1$1;-><init>(Le8/a;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->q(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Le8/a;)V

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/compose/foundation/ClickableKt$genericClickableWithoutGesture$clickSemantics$1;->$onLongClick:Le8/a;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v1, p0, Landroidx/compose/foundation/ClickableKt$genericClickableWithoutGesture$clickSemantics$1;->$onLongClickLabel:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v2, Landroidx/compose/foundation/ClickableKt$genericClickableWithoutGesture$clickSemantics$1$2;

    .line 37
    .line 38
    .line 39
    invoke-direct {v2, v0}, Landroidx/compose/foundation/ClickableKt$genericClickableWithoutGesture$clickSemantics$1$2;-><init>(Le8/a;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->s(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Le8/a;)V

    .line 43
    .line 44
    :cond_1
    iget-boolean v0, p0, Landroidx/compose/foundation/ClickableKt$genericClickableWithoutGesture$clickSemantics$1;->$enabled:Z

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->h(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    .line 50
    :cond_2
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/ClickableKt$genericClickableWithoutGesture$clickSemantics$1;->a(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
