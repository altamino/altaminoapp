.class public interface abstract Landroidx/compose/ui/platform/ViewCompositionStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/ViewCompositionStrategy$Companion;,
        Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool;,
        Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnDetachedFromWindow;,
        Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnLifecycleDestroyed;,
        Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/platform/ViewCompositionStrategy$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/platform/ViewCompositionStrategy$Companion;->$$INSTANCE:Landroidx/compose/ui/platform/ViewCompositionStrategy$Companion;

    sput-object v0, Landroidx/compose/ui/platform/ViewCompositionStrategy;->Companion:Landroidx/compose/ui/platform/ViewCompositionStrategy$Companion;

    return-void
.end method


# virtual methods
.method public abstract a(Landroidx/compose/ui/platform/AbstractComposeView;)Le8/a;
    .param p1    # Landroidx/compose/ui/platform/AbstractComposeView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/platform/AbstractComposeView;",
            ")",
            "Le8/a<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
