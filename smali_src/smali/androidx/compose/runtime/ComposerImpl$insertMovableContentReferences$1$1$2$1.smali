.class final Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$2$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/ComposerImpl;->G0(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$2$1\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerImpl\n*L\n1#1,4249:1\n3039#2,4:4250\n3049#2,9:4254\n3044#2:4263\n3043#2:4264\n*S KotlinDebug\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$2$1\n*L\n2922#1:4250,4\n2923#1:4254,9\n2922#1:4263\n2922#1:4264\n*E\n"
.end annotation


# instance fields
.field final synthetic $offsetChanges:Ljava/util/List;
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

.field final synthetic $reader:Landroidx/compose/runtime/SlotReader;

.field final synthetic $to:Landroidx/compose/runtime/MovableContentStateReference;

.field final synthetic this$0:Landroidx/compose/runtime/ComposerImpl;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/ComposerImpl;Ljava/util/List;Landroidx/compose/runtime/SlotReader;Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/ComposerImpl;",
            "Ljava/util/List<",
            "Le8/q<",
            "Landroidx/compose/runtime/Applier<",
            "*>;",
            "Landroidx/compose/runtime/SlotWriter;",
            "Landroidx/compose/runtime/RememberManager;",
            "Lw7/l0;",
            ">;>;",
            "Landroidx/compose/runtime/SlotReader;",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$2$1;->this$0:Landroidx/compose/runtime/ComposerImpl;

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$2$1;->$offsetChanges:Ljava/util/List;

    iput-object p3, p0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$2$1;->$reader:Landroidx/compose/runtime/SlotReader;

    iput-object p4, p0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$2$1;->$to:Landroidx/compose/runtime/MovableContentStateReference;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$2$1;->invoke()V

    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object v0
.end method

.method public final invoke()V
    .locals 8

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$2$1;->this$0:Landroidx/compose/runtime/ComposerImpl;

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$2$1;->$offsetChanges:Ljava/util/List;

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$2$1;->$reader:Landroidx/compose/runtime/SlotReader;

    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$2$1;->$to:Landroidx/compose/runtime/MovableContentStateReference;

    .line 2
    invoke-static {v0}, Landroidx/compose/runtime/ComposerImpl;->T(Landroidx/compose/runtime/ComposerImpl;)Ljava/util/List;

    move-result-object v4

    .line 3
    :try_start_0
    invoke-static {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->d0(Landroidx/compose/runtime/ComposerImpl;Ljava/util/List;)V

    .line 4
    invoke-static {v0}, Landroidx/compose/runtime/ComposerImpl;->Y(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/SlotReader;

    move-result-object v1

    .line 5
    invoke-static {v0}, Landroidx/compose/runtime/ComposerImpl;->W(Landroidx/compose/runtime/ComposerImpl;)[I

    move-result-object v5

    const/4 v6, 0x0

    .line 6
    invoke-static {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->f0(Landroidx/compose/runtime/ComposerImpl;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->g0(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/SlotReader;)V

    .line 8
    invoke-virtual {v3}, Landroidx/compose/runtime/MovableContentStateReference;->c()Landroidx/compose/runtime/MovableContent;

    move-result-object v2

    .line 9
    invoke-virtual {v3}, Landroidx/compose/runtime/MovableContentStateReference;->e()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object v6

    .line 10
    invoke-virtual {v3}, Landroidx/compose/runtime/MovableContentStateReference;->f()Ljava/lang/Object;

    move-result-object v3

    const/4 v7, 0x1

    .line 11
    invoke-static {v0, v2, v6, v3, v7}, Landroidx/compose/runtime/ComposerImpl;->c0(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/MovableContent;Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;Ljava/lang/Object;Z)V

    .line 12
    sget-object v2, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    :try_start_2
    invoke-static {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->g0(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/SlotReader;)V

    .line 14
    invoke-static {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->f0(Landroidx/compose/runtime/ComposerImpl;[I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    invoke-static {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->d0(Landroidx/compose/runtime/ComposerImpl;Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v2

    .line 16
    :try_start_3
    invoke-static {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->g0(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/SlotReader;)V

    .line 17
    invoke-static {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->f0(Landroidx/compose/runtime/ComposerImpl;[I)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 18
    :goto_0
    invoke-static {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->d0(Landroidx/compose/runtime/ComposerImpl;Ljava/util/List;)V

    throw v1
.end method
