.class final Landroidx/compose/runtime/ComposerImpl$recordInsert$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/ComposerImpl;->i1(Landroidx/compose/runtime/Anchor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/q<",
        "Landroidx/compose/runtime/Applier<",
        "*>;",
        "Landroidx/compose/runtime/SlotWriter;",
        "Landroidx/compose/runtime/RememberManager;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/ComposerImpl$recordInsert$2\n+ 2 SlotTable.kt\nandroidx/compose/runtime/SlotTable\n+ 3 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n1#1,4249:1\n162#2,4:4250\n167#2,2:4260\n166#2,4:4262\n32#3,6:4254\n*S KotlinDebug\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/ComposerImpl$recordInsert$2\n*L\n3393#1:4250,4\n3393#1:4260,2\n3393#1:4262,4\n3394#1:4254,6\n*E\n"
.end annotation


# instance fields
.field final synthetic $anchor:Landroidx/compose/runtime/Anchor;

.field final synthetic $fixups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le8/q<",
            "Landroidx/compose/runtime/Applier<",
            "*>;",
            "Landroidx/compose/runtime/SlotWriter;",
            "Landroidx/compose/runtime/RememberManager;",
            "Lw7/l0;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $insertTable:Landroidx/compose/runtime/SlotTable;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/Anchor;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/SlotTable;",
            "Landroidx/compose/runtime/Anchor;",
            "Ljava/util/List<",
            "Le8/q<",
            "Landroidx/compose/runtime/Applier<",
            "*>;",
            "Landroidx/compose/runtime/SlotWriter;",
            "Landroidx/compose/runtime/RememberManager;",
            "Lw7/l0;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl$recordInsert$2;->$insertTable:Landroidx/compose/runtime/SlotTable;

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl$recordInsert$2;->$anchor:Landroidx/compose/runtime/Anchor;

    iput-object p3, p0, Landroidx/compose/runtime/ComposerImpl$recordInsert$2;->$fixups:Ljava/util/List;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V
    .locals 5
    .param p1    # Landroidx/compose/runtime/Applier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/SlotWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/RememberManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Applier<",
            "*>;",
            "Landroidx/compose/runtime/SlotWriter;",
            "Landroidx/compose/runtime/RememberManager;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "applier"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string/jumbo v0, "slots"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "rememberManager"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$recordInsert$2;->$insertTable:Landroidx/compose/runtime/SlotTable;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl$recordInsert$2;->$fixups:Ljava/util/List;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->t()Landroidx/compose/runtime/SlotWriter;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x0

    .line 29
    .line 30
    :goto_0
    if-ge v3, v2, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v4

    .line 35
    .line 36
    check-cast v4, Le8/q;

    .line 37
    .line 38
    .line 39
    invoke-interface {v4, p1, v0, p3}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    add-int/lit8 v3, v3, 0x1

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_1

    .line 45
    .line 46
    :cond_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->F()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Landroidx/compose/runtime/SlotWriter;->D()V

    .line 53
    .line 54
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl$recordInsert$2;->$insertTable:Landroidx/compose/runtime/SlotTable;

    .line 55
    .line 56
    iget-object p3, p0, Landroidx/compose/runtime/ComposerImpl$recordInsert$2;->$anchor:Landroidx/compose/runtime/Anchor;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/Anchor;->d(Landroidx/compose/runtime/SlotTable;)I

    .line 60
    move-result p3

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, p1, p3}, Landroidx/compose/runtime/SlotWriter;->o0(Landroidx/compose/runtime/SlotTable;I)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Landroidx/compose/runtime/SlotWriter;->O()V

    .line 67
    return-void

    .line 68
    .line 69
    .line 70
    :goto_1
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->F()V

    .line 71
    throw p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/runtime/Applier;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/runtime/SlotWriter;

    .line 5
    .line 6
    check-cast p3, Landroidx/compose/runtime/RememberManager;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/runtime/ComposerImpl$recordInsert$2;->a(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V

    .line 10
    .line 11
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 12
    return-object p1
.end method
