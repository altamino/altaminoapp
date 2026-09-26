.class public final Landroidx/compose/ui/input/pointer/RequestDisallowInterceptTouchEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Landroidx/compose/ui/ExperimentalComposeUiApi;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le8/l<",
        "Ljava/lang/Boolean;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private pointerInteropFilter:Landroidx/compose/ui/input/pointer/PointerInteropFilter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/RequestDisallowInterceptTouchEvent;->pointerInteropFilter:Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->c(Z)V

    .line 9
    :goto_0
    return-void
.end method

.method public final b(Landroidx/compose/ui/input/pointer/PointerInteropFilter;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/input/pointer/PointerInteropFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/RequestDisallowInterceptTouchEvent;->pointerInteropFilter:Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Boolean;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    move-result p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/compose/ui/input/pointer/RequestDisallowInterceptTouchEvent;->a(Z)V

    .line 10
    .line 11
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 12
    return-object p1
.end method
