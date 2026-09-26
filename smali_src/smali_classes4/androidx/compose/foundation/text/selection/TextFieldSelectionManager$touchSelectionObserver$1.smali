.class public final Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/text/TextDragObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;-><init>(Landroidx/compose/foundation/text/UndoManager;)V
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
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(J)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->h()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    return-void

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)J

    .line 23
    move-result-wide v1

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v2, p1, p2}, Landroidx/compose/ui/geometry/Offset;->r(JJ)J

    .line 27
    move-result-wide p1

    .line 28
    .line 29
    .line 30
    invoke-static {v0, p1, p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->h(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;J)V

    .line 31
    .line 32
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->E()Landroidx/compose/foundation/text/TextFieldState;

    .line 36
    move-result-object p1

    .line 37
    const/4 p2, 0x0

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextFieldState;->g()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->c(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)J

    .line 51
    move-result-wide v1

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)J

    .line 55
    move-result-wide v3

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/geometry/Offset;->r(JJ)J

    .line 59
    move-result-wide v1

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->e(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/geometry/Offset;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->b(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Ljava/lang/Integer;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 76
    move-result v1

    .line 77
    :goto_0
    move v2, v1

    .line 78
    goto :goto_1

    .line 79
    .line 80
    .line 81
    :cond_1
    invoke-static {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->c(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)J

    .line 82
    move-result-wide v1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v1, v2, p2}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->g(JZ)I

    .line 86
    move-result v1

    .line 87
    goto :goto_0

    .line 88
    .line 89
    .line 90
    :goto_1
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->u()Landroidx/compose/ui/geometry/Offset;

    .line 91
    move-result-object v1

    .line 92
    .line 93
    .line 94
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset;->u()J

    .line 98
    move-result-wide v3

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v3, v4, p2}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->g(JZ)I

    .line 102
    move-result v3

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 106
    move-result-object v1

    .line 107
    const/4 v4, 0x0

    .line 108
    .line 109
    sget-object p1, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->Companion:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->g()Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 113
    move-result-object v5

    .line 114
    .line 115
    .line 116
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->j(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;IIZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V

    .line 117
    .line 118
    :cond_2
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->E()Landroidx/compose/foundation/text/TextFieldState;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    if-nez p1, :cond_3

    .line 125
    goto :goto_2

    .line 126
    .line 127
    .line 128
    :cond_3
    invoke-virtual {p1, p2}, Landroidx/compose/foundation/text/TextFieldState;->x(Z)V

    .line 129
    :goto_2
    return-void
.end method

.method public c(J)V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->w()Landroidx/compose/foundation/text/Handle;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 12
    .line 13
    sget-object v1, Landroidx/compose/foundation/text/Handle;->SelectionEnd:Landroidx/compose/foundation/text/Handle;

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->i(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/foundation/text/Handle;)V

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->J()V

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->E()Landroidx/compose/foundation/text/TextFieldState;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->g()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1, p2}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->j(J)Z

    .line 39
    move-result v0

    .line 40
    const/4 v1, 0x1

    .line 41
    .line 42
    if-ne v0, v1, :cond_1

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->E()Landroidx/compose/foundation/text/TextFieldState;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->g()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->C()Landroidx/compose/ui/text/input/OffsetMapping;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    .line 66
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 67
    move-result p1

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->f(F)I

    .line 71
    move-result p1

    .line 72
    const/4 p2, 0x2

    .line 73
    const/4 v3, 0x0

    .line 74
    const/4 v4, 0x0

    .line 75
    .line 76
    .line 77
    invoke-static {v0, p1, v4, p2, v3}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->e(Landroidx/compose/foundation/text/TextLayoutResultProxy;IZILjava/lang/Object;)I

    .line 78
    move-result p1

    .line 79
    .line 80
    .line 81
    invoke-interface {v2, p1}, Landroidx/compose/ui/text/input/OffsetMapping;->a(I)I

    .line 82
    move-result p1

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->A()Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 86
    move-result-object p2

    .line 87
    .line 88
    if-eqz p2, :cond_2

    .line 89
    .line 90
    sget-object v0, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->Companion:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;->b()I

    .line 94
    move-result v0

    .line 95
    .line 96
    .line 97
    invoke-interface {p2, v0}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->a(I)V

    .line 98
    .line 99
    .line 100
    :cond_2
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 101
    move-result-object p2

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Landroidx/compose/ui/text/input/TextFieldValue;->e()Landroidx/compose/ui/text/AnnotatedString;

    .line 105
    move-result-object p2

    .line 106
    .line 107
    .line 108
    invoke-static {p1, p1}, Landroidx/compose/ui/text/TextRangeKt;->b(II)J

    .line 109
    move-result-wide v2

    .line 110
    .line 111
    .line 112
    invoke-static {v1, p2, v2, v3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->a(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/AnnotatedString;J)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 113
    move-result-object p1

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->r()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->D()Le8/l;

    .line 120
    move-result-object p2

    .line 121
    .line 122
    .line 123
    invoke-interface {p2, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-void

    .line 125
    .line 126
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 130
    move-result-object v0

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->h()Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 135
    .line 136
    .line 137
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 138
    move-result v0

    .line 139
    .line 140
    if-nez v0, :cond_4

    .line 141
    return-void

    .line 142
    .line 143
    :cond_4
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->r()V

    .line 147
    .line 148
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->E()Landroidx/compose/foundation/text/TextFieldState;

    .line 152
    move-result-object v0

    .line 153
    .line 154
    if-eqz v0, :cond_5

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->g()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 158
    move-result-object v1

    .line 159
    .line 160
    if-eqz v1, :cond_5

    .line 161
    .line 162
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 163
    const/4 v4, 0x0

    .line 164
    const/4 v5, 0x2

    .line 165
    const/4 v6, 0x0

    .line 166
    move-wide v2, p1

    .line 167
    .line 168
    .line 169
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->h(Landroidx/compose/foundation/text/TextLayoutResultProxy;JZILjava/lang/Object;)I

    .line 170
    move-result v1

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 174
    move-result-object v3

    .line 175
    const/4 v6, 0x0

    .line 176
    .line 177
    sget-object v2, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->Companion:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->g()Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 181
    move-result-object v7

    .line 182
    move-object v2, v0

    .line 183
    move v4, v1

    .line 184
    move v5, v1

    .line 185
    .line 186
    .line 187
    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->j(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;IIZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V

    .line 188
    .line 189
    .line 190
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    move-result-object v1

    .line 192
    .line 193
    .line 194
    invoke-static {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->f(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Ljava/lang/Integer;)V

    .line 195
    .line 196
    :cond_5
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 197
    .line 198
    .line 199
    invoke-static {v0, p1, p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->g(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;J)V

    .line 200
    .line 201
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 202
    .line 203
    .line 204
    invoke-static {p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->c(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)J

    .line 205
    move-result-wide v0

    .line 206
    .line 207
    .line 208
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 209
    move-result-object p2

    .line 210
    .line 211
    .line 212
    invoke-static {p1, p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->e(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/geometry/Offset;)V

    .line 213
    .line 214
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 215
    .line 216
    sget-object p2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 220
    move-result-wide v0

    .line 221
    .line 222
    .line 223
    invoke-static {p1, v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->h(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;J)V

    .line 224
    return-void
.end method

.method public d()V
    .locals 0

    .line 1
    return-void
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->i(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/foundation/text/Handle;)V

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->e(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/geometry/Offset;)V

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->E()Landroidx/compose/foundation/text/TextFieldState;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v2, 0x1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/text/TextFieldState;->x(Z)V

    .line 25
    .line 26
    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->F()Landroidx/compose/ui/platform/TextToolbar;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Landroidx/compose/ui/platform/TextToolbar;->getStatus()Landroidx/compose/ui/platform/TextToolbarStatus;

    .line 36
    move-result-object v0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move-object v0, v1

    .line 39
    .line 40
    :goto_1
    sget-object v2, Landroidx/compose/ui/platform/TextToolbarStatus;->Hidden:Landroidx/compose/ui/platform/TextToolbarStatus;

    .line 41
    .line 42
    if-ne v0, v2, :cond_2

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->a0()V

    .line 48
    .line 49
    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->f(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Ljava/lang/Integer;)V

    .line 53
    return-void
.end method
