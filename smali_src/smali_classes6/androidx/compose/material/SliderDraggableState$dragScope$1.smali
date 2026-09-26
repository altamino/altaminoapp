.class public final Landroidx/compose/material/SliderDraggableState$dragScope$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/gestures/DragScope;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SliderDraggableState;-><init>(Le8/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/material/SliderDraggableState;


# direct methods
.method constructor <init>(Landroidx/compose/material/SliderDraggableState;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/material/SliderDraggableState$dragScope$1;->this$0:Landroidx/compose/material/SliderDraggableState;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/material/SliderDraggableState$dragScope$1;->this$0:Landroidx/compose/material/SliderDraggableState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/material/SliderDraggableState;->f()Le8/l;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    return-void
.end method
