.class public final Landroidx/window/embedding/SplitRule$Api30Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/SplitRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api30Impl"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/window/embedding/SplitRule$Api30Impl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/window/embedding/SplitRule$Api30Impl;

    invoke-direct {v0}, Landroidx/window/embedding/SplitRule$Api30Impl;-><init>()V

    sput-object v0, Landroidx/window/embedding/SplitRule$Api30Impl;->INSTANCE:Landroidx/window/embedding/SplitRule$Api30Impl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;
    .locals 1
    .param p1    # Landroid/view/WindowMetrics;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "windowMetrics"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "windowMetrics.bounds"

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    return-object p1
.end method
