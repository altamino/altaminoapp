.class public final Landroidx/compose/ui/graphics/CanvasHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final androidCanvas:Landroidx/compose/ui/graphics/AndroidCanvas;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/compose/ui/graphics/AndroidCanvas;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/compose/ui/graphics/CanvasHolder;->androidCanvas:Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 11
    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/graphics/AndroidCanvas;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/CanvasHolder;->androidCanvas:Landroidx/compose/ui/graphics/AndroidCanvas;

    return-object v0
.end method
