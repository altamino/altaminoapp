.class public final Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;->d(Ljava/lang/String;Le8/a;)Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $key:Ljava/lang/String;

.field final synthetic $valueProvider:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;Ljava/lang/String;Le8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;",
            "Ljava/lang/String;",
            "Le8/a<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;->this$0:Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;

    .line 3
    .line 4
    iput-object p2, p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;->$key:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;->$valueProvider:Le8/a;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;->this$0:Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;->e(Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;)Ljava/util/Map;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;->$key:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Ljava/util/List;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;->$valueProvider:Le8/a;

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 22
    .line 23
    :cond_0
    if-eqz v0, :cond_1

    .line 24
    move-object v1, v0

    .line 25
    .line 26
    check-cast v1, Ljava/util/Collection;

    .line 27
    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 30
    move-result v1

    .line 31
    .line 32
    xor-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;->this$0:Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;->e(Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;)Ljava/util/Map;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    iget-object v2, p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;->$key:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_1
    return-void
.end method
