.class public final Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$SaveableStateProvider$1$1$invoke$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$SaveableStateProvider$1$1;->a(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEffects.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope$onDispose$1\n+ 2 SaveableStateHolder.kt\nandroidx/compose/runtime/saveable/SaveableStateHolderImpl$SaveableStateProvider$1$1\n*L\n1#1,483:1\n93#2,3:484\n*E\n"
.end annotation


# instance fields
.field final synthetic $key$inlined:Ljava/lang/Object;

.field final synthetic $registryHolder$inlined:Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$RegistryHolder;

.field final synthetic this$0:Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$RegistryHolder;Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$SaveableStateProvider$1$1$invoke$$inlined$onDispose$1;->$registryHolder$inlined:Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$RegistryHolder;

    .line 3
    .line 4
    iput-object p2, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$SaveableStateProvider$1$1$invoke$$inlined$onDispose$1;->this$0:Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$SaveableStateProvider$1$1$invoke$$inlined$onDispose$1;->$key$inlined:Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public t()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$SaveableStateProvider$1$1$invoke$$inlined$onDispose$1;->$registryHolder$inlined:Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$RegistryHolder;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$SaveableStateProvider$1$1$invoke$$inlined$onDispose$1;->this$0:Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->c(Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;)Ljava/util/Map;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$RegistryHolder;->b(Ljava/util/Map;)V

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$SaveableStateProvider$1$1$invoke$$inlined$onDispose$1;->this$0:Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->b(Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;)Ljava/util/Map;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$SaveableStateProvider$1$1$invoke$$inlined$onDispose$1;->$key$inlined:Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-void
.end method
