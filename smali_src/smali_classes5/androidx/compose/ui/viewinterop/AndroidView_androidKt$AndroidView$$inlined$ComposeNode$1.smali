.class public final Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$$inlined$ComposeNode$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->a(Le8/l;Landroidx/compose/ui/Modifier;Le8/l;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Landroidx/compose/ui/node/LayoutNode;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComposables.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Composables.kt\nandroidx/compose/runtime/ComposablesKt$ComposeNode$1\n*L\n1#1,490:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $factory:Le8/a;


# direct methods
.method public constructor <init>(Le8/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$$inlined$ComposeNode$1;->$factory:Le8/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/node/LayoutNode;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$$inlined$ComposeNode$1;->$factory:Le8/a;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Le8/a;->invoke()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
