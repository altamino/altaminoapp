.class public final Landroidx/compose/runtime/GroupIterator$next$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/tooling/CompositionGroup;
.implements Ljava/lang/Iterable;
.implements Lf8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/GroupIterator;->c()Landroidx/compose/runtime/tooling/CompositionGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/tooling/CompositionGroup;",
        "Ljava/lang/Iterable<",
        "Landroidx/compose/runtime/tooling/CompositionGroup;",
        ">;",
        "Lf8/a;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/GroupIterator$next$1\n+ 2 SlotTable.kt\nandroidx/compose/runtime/SlotTable\n*L\n1#1,3391:1\n146#2,8:3392\n*S KotlinDebug\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/GroupIterator$next$1\n*L\n3008#1:3392,8\n*E\n"
.end annotation


# instance fields
.field final synthetic $group:I

.field final synthetic this$0:Landroidx/compose/runtime/GroupIterator;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/GroupIterator;I)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/runtime/GroupIterator$next$1;->this$0:Landroidx/compose/runtime/GroupIterator;

    .line 3
    .line 4
    iput p2, p0, Landroidx/compose/runtime/GroupIterator$next$1;->$group:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroidx/compose/runtime/tooling/CompositionGroup;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/GroupIterator$next$1;->this$0:Landroidx/compose/runtime/GroupIterator;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/runtime/GroupIterator;->a(Landroidx/compose/runtime/GroupIterator;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/runtime/GroupIterator;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/runtime/GroupIterator$next$1;->this$0:Landroidx/compose/runtime/GroupIterator;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/compose/runtime/GroupIterator;->b()Landroidx/compose/runtime/SlotTable;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    iget v2, p0, Landroidx/compose/runtime/GroupIterator$next$1;->$group:I

    .line 16
    .line 17
    add-int/lit8 v3, v2, 0x1

    .line 18
    .line 19
    iget-object v4, p0, Landroidx/compose/runtime/GroupIterator$next$1;->this$0:Landroidx/compose/runtime/GroupIterator;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4}, Landroidx/compose/runtime/GroupIterator;->b()Landroidx/compose/runtime/SlotTable;

    .line 23
    move-result-object v4

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4}, Landroidx/compose/runtime/SlotTable;->f()[I

    .line 27
    move-result-object v4

    .line 28
    .line 29
    iget v5, p0, Landroidx/compose/runtime/GroupIterator$next$1;->$group:I

    .line 30
    .line 31
    .line 32
    invoke-static {v4, v5}, Landroidx/compose/runtime/SlotTableKt;->g([II)I

    .line 33
    move-result v4

    .line 34
    add-int/2addr v2, v4

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1, v3, v2}, Landroidx/compose/runtime/GroupIterator;-><init>(Landroidx/compose/runtime/SlotTable;II)V

    .line 38
    return-object v0
.end method
