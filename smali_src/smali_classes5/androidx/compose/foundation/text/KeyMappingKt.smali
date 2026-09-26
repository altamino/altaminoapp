.class public final Landroidx/compose/foundation/text/KeyMappingKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final defaultKeyMapping:Landroidx/compose/foundation/text/KeyMapping;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/foundation/text/KeyMappingKt$defaultKeyMapping$1;->INSTANCE:Landroidx/compose/foundation/text/KeyMappingKt$defaultKeyMapping$1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/foundation/text/KeyMappingKt;->a(Le8/l;)Landroidx/compose/foundation/text/KeyMapping;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    new-instance v1, Landroidx/compose/foundation/text/KeyMappingKt$defaultKeyMapping$2$1;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v0}, Landroidx/compose/foundation/text/KeyMappingKt$defaultKeyMapping$2$1;-><init>(Landroidx/compose/foundation/text/KeyMapping;)V

    .line 12
    .line 13
    sput-object v1, Landroidx/compose/foundation/text/KeyMappingKt;->defaultKeyMapping:Landroidx/compose/foundation/text/KeyMapping;

    .line 14
    return-void
.end method

.method public static final a(Le8/l;)Landroidx/compose/foundation/text/KeyMapping;
    .locals 1
    .param p0    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/input/key/KeyEvent;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/compose/foundation/text/KeyMapping;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "shortcutModifier"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;-><init>(Le8/l;)V

    .line 11
    return-object v0
.end method

.method public static final b()Landroidx/compose/foundation/text/KeyMapping;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/foundation/text/KeyMappingKt;->defaultKeyMapping:Landroidx/compose/foundation/text/KeyMapping;

    return-object v0
.end method
