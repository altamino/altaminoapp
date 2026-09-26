.class public interface abstract Landroidx/compose/runtime/snapshots/SnapshotContextElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/g$b;


# annotations
.annotation runtime Landroidx/compose/runtime/ExperimentalComposeApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/snapshots/SnapshotContextElement$Key;,
        Landroidx/compose/runtime/snapshots/SnapshotContextElement$DefaultImpls;
    }
.end annotation


# static fields
.field public static final Key:Landroidx/compose/runtime/snapshots/SnapshotContextElement$Key;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotContextElement$Key;->$$INSTANCE:Landroidx/compose/runtime/snapshots/SnapshotContextElement$Key;

    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotContextElement;->Key:Landroidx/compose/runtime/snapshots/SnapshotContextElement$Key;

    return-void
.end method
