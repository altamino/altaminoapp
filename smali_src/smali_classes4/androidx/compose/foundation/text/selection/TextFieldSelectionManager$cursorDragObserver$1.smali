.class public final Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cursorDragObserver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/text/TextDragObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->n()Landroidx/compose/foundation/text/TextDragObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cursorDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cursorDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 3
    .line 4
    sget-object p2, Landroidx/compose/foundation/text/Handle;->Cursor:Landroidx/compose/foundation/text/Handle;

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->i(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/foundation/text/Handle;)V

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cursorDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 10
    const/4 p2, 0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->z(Z)J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->a(J)J

    .line 18
    move-result-wide v0

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->e(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/geometry/Offset;)V

    .line 26
    return-void
.end method

.method public b(J)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cursorDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)J

    .line 6
    move-result-wide v1

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2, p1, p2}, Landroidx/compose/ui/geometry/Offset;->r(JJ)J

    .line 10
    move-result-wide p1

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p1, p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->h(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;J)V

    .line 14
    .line 15
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cursorDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->E()Landroidx/compose/foundation/text/TextFieldState;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextFieldState;->g()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->i()Landroidx/compose/ui/text/TextLayoutResult;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    iget-object p2, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cursorDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 36
    .line 37
    .line 38
    invoke-static {p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->c(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)J

    .line 39
    move-result-wide v0

    .line 40
    .line 41
    .line 42
    invoke-static {p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)J

    .line 43
    move-result-wide v2

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->r(JJ)J

    .line 47
    move-result-wide v0

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-static {p2, v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->e(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/geometry/Offset;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->u()Landroidx/compose/ui/geometry/Offset;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset;->u()J

    .line 65
    move-result-wide v0

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/text/TextLayoutResult;->w(J)I

    .line 69
    move-result p1

    .line 70
    .line 71
    .line 72
    invoke-static {p1, p1}, Landroidx/compose/ui/text/TextRangeKt;->b(II)J

    .line 73
    move-result-wide v0

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 81
    move-result-wide v2

    .line 82
    .line 83
    .line 84
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/text/TextRange;->g(JJ)Z

    .line 85
    move-result p1

    .line 86
    .line 87
    if-eqz p1, :cond_0

    .line 88
    return-void

    .line 89
    .line 90
    .line 91
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->A()Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    if-eqz p1, :cond_1

    .line 95
    .line 96
    sget-object v2, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->Companion:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;->b()I

    .line 100
    move-result v2

    .line 101
    .line 102
    .line 103
    invoke-interface {p1, v2}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->a(I)V

    .line 104
    .line 105
    .line 106
    :cond_1
    invoke-virtual {p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->D()Le8/l;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 111
    move-result-object v2

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/TextFieldValue;->e()Landroidx/compose/ui/text/AnnotatedString;

    .line 115
    move-result-object v2

    .line 116
    .line 117
    .line 118
    invoke-static {p2, v2, v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->a(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/AnnotatedString;J)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 119
    move-result-object p2

    .line 120
    .line 121
    .line 122
    invoke-interface {p1, p2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_2
    return-void
.end method

.method public c(J)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cursorDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 3
    const/4 p2, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->z(Z)J

    .line 7
    move-result-wide v0

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->a(J)J

    .line 11
    move-result-wide v0

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->g(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;J)V

    .line 15
    .line 16
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cursorDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->c(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)J

    .line 20
    move-result-wide v0

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->e(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/geometry/Offset;)V

    .line 28
    .line 29
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cursorDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 30
    .line 31
    sget-object p2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 35
    move-result-wide v0

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->h(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;J)V

    .line 39
    .line 40
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cursorDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 41
    .line 42
    sget-object p2, Landroidx/compose/foundation/text/Handle;->Cursor:Landroidx/compose/foundation/text/Handle;

    .line 43
    .line 44
    .line 45
    invoke-static {p1, p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->i(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/foundation/text/Handle;)V

    .line 46
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cursorDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->i(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/foundation/text/Handle;)V

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cursorDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->e(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/geometry/Offset;)V

    .line 12
    return-void
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cursorDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->i(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/foundation/text/Handle;)V

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cursorDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->e(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/geometry/Offset;)V

    .line 12
    return-void
.end method
