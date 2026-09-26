.class public final Landroidx/compose/foundation/text/KeyMapping_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final platformDefaultKeyMapping:Landroidx/compose/foundation/text/KeyMapping;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/foundation/text/KeyMappingKt;->b()Landroidx/compose/foundation/text/KeyMapping;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sput-object v0, Landroidx/compose/foundation/text/KeyMapping_androidKt;->platformDefaultKeyMapping:Landroidx/compose/foundation/text/KeyMapping;

    .line 7
    return-void
.end method

.method public static final a()Landroidx/compose/foundation/text/KeyMapping;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/foundation/text/KeyMapping_androidKt;->platformDefaultKeyMapping:Landroidx/compose/foundation/text/KeyMapping;

    return-object v0
.end method
