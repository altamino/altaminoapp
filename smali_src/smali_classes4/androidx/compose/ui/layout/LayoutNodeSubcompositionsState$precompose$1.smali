.class public final Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->t(Ljava/lang/Object;Le8/p;)Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSubcomposeLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubcomposeLayout.kt\nandroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$1\n+ 2 LayoutNode.kt\nandroidx/compose/ui/node/LayoutNode\n+ 3 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,766:1\n1127#2,2:767\n1129#2,2:770\n523#3:769\n*S KotlinDebug\n*F\n+ 1 SubcomposeLayout.kt\nandroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$1\n*L\n669#1:767,2\n669#1:770,2\n670#1:769\n*E\n"
.end annotation


# instance fields
.field final synthetic $slotId:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;


# direct methods
.method constructor <init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 3
    .line 4
    iput-object p2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$1;->$slotId:Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->b(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Ljava/util/Map;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$1;->$slotId:Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->z0()Landroidx/compose/runtime/collection/MutableVector;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 26
    move-result v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    return v0
.end method

.method public b(IJ)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->b(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Ljava/util/Map;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$1;->$slotId:Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->K0()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->z0()Landroidx/compose/runtime/collection/MutableVector;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 30
    move-result v1

    .line 31
    .line 32
    if-ltz p1, :cond_1

    .line 33
    .line 34
    if-ge p1, v1, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->i()Z

    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x1

    .line 40
    xor-int/2addr v1, v2

    .line 41
    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->e(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Landroidx/compose/ui/node/LayoutNode;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-static {v1, v2}, Landroidx/compose/ui/node/LayoutNode;->x(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->z0()Landroidx/compose/runtime/collection/MutableVector;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    aget-object p1, v0, p1

    .line 66
    .line 67
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    .line 68
    .line 69
    .line 70
    invoke-interface {v2, p1, p2, p3}, Landroidx/compose/ui/node/Owner;->e(Landroidx/compose/ui/node/LayoutNode;J)V

    .line 71
    const/4 p1, 0x0

    .line 72
    .line 73
    .line 74
    invoke-static {v1, p1}, Landroidx/compose/ui/node/LayoutNode;->x(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 78
    .line 79
    const-string p2, "Failed requirement."

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 83
    move-result-object p2

    .line 84
    .line 85
    .line 86
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 87
    throw p1

    .line 88
    .line 89
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 90
    .line 91
    new-instance p3, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    const-string v0, "Index ("

    .line 97
    .line 98
    .line 99
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string p1, ") is out of bound of [0, "

    .line 105
    .line 106
    .line 107
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const/16 p1, 0x29

    .line 113
    .line 114
    .line 115
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    .line 122
    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 123
    throw p2

    .line 124
    :cond_2
    :goto_0
    return-void
.end method

.method public t()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->q()V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->b(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Ljava/util/Map;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$1;->$slotId:Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->c(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)I

    .line 27
    move-result v1

    .line 28
    .line 29
    const-string v2, "Check failed."

    .line 30
    .line 31
    if-lez v1, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->e(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Landroidx/compose/ui/node/LayoutNode;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->W()Ljava/util/List;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 45
    move-result v0

    .line 46
    .line 47
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->e(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Landroidx/compose/ui/node/LayoutNode;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->W()Ljava/util/List;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    .line 58
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 59
    move-result v1

    .line 60
    .line 61
    iget-object v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 62
    .line 63
    .line 64
    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->c(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)I

    .line 65
    move-result v3

    .line 66
    sub-int/2addr v1, v3

    .line 67
    .line 68
    if-lt v0, v1, :cond_0

    .line 69
    .line 70
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 71
    .line 72
    .line 73
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->d(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)I

    .line 74
    move-result v2

    .line 75
    const/4 v3, 0x1

    .line 76
    add-int/2addr v2, v3

    .line 77
    .line 78
    .line 79
    invoke-static {v1, v2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->j(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;I)V

    .line 80
    .line 81
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 82
    .line 83
    .line 84
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->c(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)I

    .line 85
    move-result v2

    .line 86
    .line 87
    add-int/lit8 v2, v2, -0x1

    .line 88
    .line 89
    .line 90
    invoke-static {v1, v2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->i(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;I)V

    .line 91
    .line 92
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 93
    .line 94
    .line 95
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->e(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Landroidx/compose/ui/node/LayoutNode;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->W()Ljava/util/List;

    .line 100
    move-result-object v1

    .line 101
    .line 102
    .line 103
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 104
    move-result v1

    .line 105
    .line 106
    iget-object v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 107
    .line 108
    .line 109
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->c(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)I

    .line 110
    move-result v2

    .line 111
    sub-int/2addr v1, v2

    .line 112
    .line 113
    iget-object v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 114
    .line 115
    .line 116
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->d(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)I

    .line 117
    move-result v2

    .line 118
    sub-int/2addr v1, v2

    .line 119
    .line 120
    iget-object v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 121
    .line 122
    .line 123
    invoke-static {v2, v0, v1, v3}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->g(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;III)V

    .line 124
    .line 125
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->n(I)V

    .line 129
    goto :goto_0

    .line 130
    .line 131
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 135
    move-result-object v1

    .line 136
    .line 137
    .line 138
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 139
    throw v0

    .line 140
    .line 141
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 145
    move-result-object v1

    .line 146
    .line 147
    .line 148
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 149
    throw v0

    .line 150
    :cond_2
    :goto_0
    return-void
.end method
