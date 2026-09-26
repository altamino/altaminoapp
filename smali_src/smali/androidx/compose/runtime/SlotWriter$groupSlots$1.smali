.class public final Landroidx/compose/runtime/SlotWriter$groupSlots$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lf8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/SlotWriter;->d0()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Object;",
        ">;",
        "Lf8/a;"
    }
.end annotation


# instance fields
.field final synthetic $end:I

.field private current:I

.field final synthetic this$0:Landroidx/compose/runtime/SlotWriter;


# direct methods
.method constructor <init>(IILandroidx/compose/runtime/SlotWriter;)V
    .locals 0

    .line 1
    .line 2
    iput p2, p0, Landroidx/compose/runtime/SlotWriter$groupSlots$1;->$end:I

    .line 3
    .line 4
    iput-object p3, p0, Landroidx/compose/runtime/SlotWriter$groupSlots$1;->this$0:Landroidx/compose/runtime/SlotWriter;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    iput p1, p0, Landroidx/compose/runtime/SlotWriter$groupSlots$1;->current:I

    .line 10
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/SlotWriter$groupSlots$1;->current:I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter$groupSlots$1;->$end:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter$groupSlots$1;->hasNext()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter$groupSlots$1;->this$0:Landroidx/compose/runtime/SlotWriter;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroidx/compose/runtime/SlotWriter;->k(Landroidx/compose/runtime/SlotWriter;)[Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter$groupSlots$1;->this$0:Landroidx/compose/runtime/SlotWriter;

    .line 15
    .line 16
    iget v2, p0, Landroidx/compose/runtime/SlotWriter$groupSlots$1;->current:I

    .line 17
    .line 18
    add-int/lit8 v3, v2, 0x1

    .line 19
    .line 20
    iput v3, p0, Landroidx/compose/runtime/SlotWriter$groupSlots$1;->current:I

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v2}, Landroidx/compose/runtime/SlotWriter;->d(Landroidx/compose/runtime/SlotWriter;I)I

    .line 24
    move-result v1

    .line 25
    .line 26
    aget-object v0, v0, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
