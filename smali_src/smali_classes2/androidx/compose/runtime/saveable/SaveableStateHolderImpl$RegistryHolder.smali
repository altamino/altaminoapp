.class public final Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$RegistryHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RegistryHolder"
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private shouldSave:Z

.field final synthetic this$0:Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "key"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$RegistryHolder;->this$0:Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    iput-object p2, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$RegistryHolder;->key:Ljava/lang/Object;

    .line 13
    const/4 v0, 0x1

    .line 14
    .line 15
    iput-boolean v0, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$RegistryHolder;->shouldSave:Z

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->c(Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;)Ljava/util/Map;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    check-cast p2, Ljava/util/Map;

    .line 26
    .line 27
    new-instance v0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$RegistryHolder$registry$1;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, p1}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$RegistryHolder$registry$1;-><init>(Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p2, v0}, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->a(Ljava/util/Map;Le8/l;)Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    iput-object p1, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$RegistryHolder;->registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 37
    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/runtime/saveable/SaveableStateRegistry;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$RegistryHolder;->registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    return-object v0
.end method

.method public final b(Ljava/util/Map;)V
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "map"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$RegistryHolder;->shouldSave:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$RegistryHolder;->registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->b()Ljava/util/Map;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$RegistryHolder;->key:Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$RegistryHolder;->key:Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_1
    :goto_0
    return-void
.end method
