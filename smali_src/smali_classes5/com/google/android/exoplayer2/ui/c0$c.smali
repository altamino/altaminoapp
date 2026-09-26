.class final Lcom/google/android/exoplayer2/ui/c0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/d3$d;
.implements Lcom/google/android/exoplayer2/ui/b1$a;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/ui/c0;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ui/c0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/c0;Lcom/google/android/exoplayer2/ui/c0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/c0$c;-><init>(Lcom/google/android/exoplayer2/ui/c0;)V

    return-void
.end method


# virtual methods
.method public synthetic B(Lcom/google/android/exoplayer2/n2;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/f3;->k(Lcom/google/android/exoplayer2/d3$d;Lcom/google/android/exoplayer2/n2;)V

    return-void
.end method

.method public synthetic E(Lcom/google/android/exoplayer2/z2;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/f3;->r(Lcom/google/android/exoplayer2/d3$d;Lcom/google/android/exoplayer2/z2;)V

    return-void
.end method

.method public synthetic F(Lcom/google/android/exoplayer2/z2;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/f3;->q(Lcom/google/android/exoplayer2/d3$d;Lcom/google/android/exoplayer2/z2;)V

    return-void
.end method

.method public synthetic H(Lcom/google/android/exoplayer2/d3$b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/f3;->a(Lcom/google/android/exoplayer2/d3$d;Lcom/google/android/exoplayer2/d3$b;)V

    return-void
.end method

.method public synthetic J(Lcom/google/android/exoplayer2/o;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/f3;->d(Lcom/google/android/exoplayer2/d3$d;Lcom/google/android/exoplayer2/o;)V

    return-void
.end method

.method public synthetic M(Lcom/google/android/exoplayer2/trackselection/z;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/f3;->C(Lcom/google/android/exoplayer2/d3$d;Lcom/google/android/exoplayer2/trackselection/z;)V

    return-void
.end method

.method public synthetic N(Lcom/google/android/exoplayer2/e4;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/f3;->D(Lcom/google/android/exoplayer2/d3$d;Lcom/google/android/exoplayer2/e4;)V

    return-void
.end method

.method public P(Lcom/google/android/exoplayer2/d3;Lcom/google/android/exoplayer2/d3$c;)V
    .locals 2

    .line 1
    const/4 p1, 0x4

    .line 2
    const/4 v0, 0x5

    .line 3
    .line 4
    .line 5
    filled-new-array {p1, v0}, [I

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/d3$c;->b([I)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/c0;->x(Lcom/google/android/exoplayer2/ui/c0;)V

    .line 18
    :cond_0
    const/4 v1, 0x7

    .line 19
    .line 20
    .line 21
    filled-new-array {p1, v0, v1}, [I

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/d3$c;->b([I)Z

    .line 26
    move-result p1

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/c0;->F(Lcom/google/android/exoplayer2/ui/c0;)V

    .line 34
    .line 35
    :cond_1
    const/16 p1, 0x8

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/d3$c;->a(I)Z

    .line 39
    move-result p1

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/c0;->N(Lcom/google/android/exoplayer2/ui/c0;)V

    .line 47
    .line 48
    :cond_2
    const/16 p1, 0x9

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/d3$c;->a(I)Z

    .line 52
    move-result p1

    .line 53
    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/c0;->O(Lcom/google/android/exoplayer2/ui/c0;)V

    .line 60
    .line 61
    :cond_3
    new-array p1, v1, [I

    .line 62
    .line 63
    .line 64
    fill-array-data p1, :array_0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/d3$c;->b([I)Z

    .line 68
    move-result p1

    .line 69
    .line 70
    if-eqz p1, :cond_4

    .line 71
    .line 72
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/c0;->P(Lcom/google/android/exoplayer2/ui/c0;)V

    .line 76
    .line 77
    :cond_4
    const/16 p1, 0xb

    .line 78
    const/4 v0, 0x0

    .line 79
    .line 80
    .line 81
    filled-new-array {p1, v0}, [I

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/d3$c;->b([I)Z

    .line 86
    move-result p1

    .line 87
    .line 88
    if-eqz p1, :cond_5

    .line 89
    .line 90
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 91
    .line 92
    .line 93
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/c0;->Q(Lcom/google/android/exoplayer2/ui/c0;)V

    .line 94
    .line 95
    :cond_5
    const/16 p1, 0xc

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/d3$c;->a(I)Z

    .line 99
    move-result p1

    .line 100
    .line 101
    if-eqz p1, :cond_6

    .line 102
    .line 103
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 104
    .line 105
    .line 106
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/c0;->R(Lcom/google/android/exoplayer2/ui/c0;)V

    .line 107
    :cond_6
    const/4 p1, 0x2

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/d3$c;->a(I)Z

    .line 111
    move-result p1

    .line 112
    .line 113
    if-eqz p1, :cond_7

    .line 114
    .line 115
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 116
    .line 117
    .line 118
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/c0;->d(Lcom/google/android/exoplayer2/ui/c0;)V

    .line 119
    :cond_7
    return-void

    .line 120
    nop

    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    :array_0
    .array-data 4
        0x8
        0x9
        0xb
        0x0
        0x10
        0x11
        0xd
    .end array-data
.end method

.method public synthetic R(Lcom/google/android/exoplayer2/i2;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/f3;->j(Lcom/google/android/exoplayer2/d3$d;Lcom/google/android/exoplayer2/i2;I)V

    return-void
.end method

.method public j(Lcom/google/android/exoplayer2/ui/b1;JZ)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/c0;->e(Lcom/google/android/exoplayer2/ui/c0;Z)Z

    .line 7
    .line 8
    if-nez p4, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/c0;->j(Lcom/google/android/exoplayer2/ui/c0;)Lcom/google/android/exoplayer2/d3;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/c0;->j(Lcom/google/android/exoplayer2/ui/c0;)Lcom/google/android/exoplayer2/d3;

    .line 22
    move-result-object p4

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p4, p2, p3}, Lcom/google/android/exoplayer2/ui/c0;->k(Lcom/google/android/exoplayer2/ui/c0;Lcom/google/android/exoplayer2/d3;J)V

    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/c0;->i(Lcom/google/android/exoplayer2/ui/c0;)Lcom/google/android/exoplayer2/ui/v0;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/v0;->W()V

    .line 35
    return-void
.end method

.method public synthetic k(Lcom/google/android/exoplayer2/video/a0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/f3;->E(Lcom/google/android/exoplayer2/d3$d;Lcom/google/android/exoplayer2/video/a0;)V

    return-void
.end method

.method public synthetic n(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/f3;->l(Lcom/google/android/exoplayer2/d3$d;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public synthetic o(Lcom/google/android/exoplayer2/c3;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/f3;->n(Lcom/google/android/exoplayer2/d3$d;Lcom/google/android/exoplayer2/c3;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/c0;->j(Lcom/google/android/exoplayer2/ui/c0;)Lcom/google/android/exoplayer2/d3;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/c0;->i(Lcom/google/android/exoplayer2/ui/c0;)Lcom/google/android/exoplayer2/ui/v0;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/v0;->W()V

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/c0;->m(Lcom/google/android/exoplayer2/ui/c0;)Landroid/view/View;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    if-ne v1, p1, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d3;->t()V

    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/c0;->n(Lcom/google/android/exoplayer2/ui/c0;)Landroid/view/View;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    if-ne v1, p1, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d3;->o()V

    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/c0;->o(Lcom/google/android/exoplayer2/ui/c0;)Landroid/view/View;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    if-ne v1, p1, :cond_3

    .line 53
    .line 54
    .line 55
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d3;->getPlaybackState()I

    .line 56
    move-result p1

    .line 57
    const/4 v1, 0x4

    .line 58
    .line 59
    if-eq p1, v1, :cond_b

    .line 60
    .line 61
    .line 62
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d3;->m()V

    .line 63
    .line 64
    goto/16 :goto_0

    .line 65
    .line 66
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/c0;->p(Lcom/google/android/exoplayer2/ui/c0;)Landroid/view/View;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    if-ne v1, p1, :cond_4

    .line 73
    .line 74
    .line 75
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d3;->y()V

    .line 76
    .line 77
    goto/16 :goto_0

    .line 78
    .line 79
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 80
    .line 81
    .line 82
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/c0;->q(Lcom/google/android/exoplayer2/ui/c0;)Landroid/view/View;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    if-ne v1, p1, :cond_5

    .line 86
    .line 87
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 88
    .line 89
    .line 90
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/c0;->r(Lcom/google/android/exoplayer2/ui/c0;Lcom/google/android/exoplayer2/d3;)V

    .line 91
    .line 92
    goto/16 :goto_0

    .line 93
    .line 94
    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 95
    .line 96
    .line 97
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/c0;->s(Lcom/google/android/exoplayer2/ui/c0;)Landroid/widget/ImageView;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    if-ne v1, p1, :cond_6

    .line 101
    .line 102
    .line 103
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d3;->getRepeatMode()I

    .line 104
    move-result p1

    .line 105
    .line 106
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 107
    .line 108
    .line 109
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/c0;->t(Lcom/google/android/exoplayer2/ui/c0;)I

    .line 110
    move-result v1

    .line 111
    .line 112
    .line 113
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/f0;->a(II)I

    .line 114
    move-result p1

    .line 115
    .line 116
    .line 117
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/d3;->setRepeatMode(I)V

    .line 118
    .line 119
    goto/16 :goto_0

    .line 120
    .line 121
    :cond_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 122
    .line 123
    .line 124
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/c0;->u(Lcom/google/android/exoplayer2/ui/c0;)Landroid/widget/ImageView;

    .line 125
    move-result-object v1

    .line 126
    .line 127
    if-ne v1, p1, :cond_7

    .line 128
    .line 129
    .line 130
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d3;->getShuffleModeEnabled()Z

    .line 131
    move-result p1

    .line 132
    .line 133
    xor-int/lit8 p1, p1, 0x1

    .line 134
    .line 135
    .line 136
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/d3;->setShuffleModeEnabled(Z)V

    .line 137
    .line 138
    goto/16 :goto_0

    .line 139
    .line 140
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 141
    .line 142
    .line 143
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/c0;->v(Lcom/google/android/exoplayer2/ui/c0;)Landroid/view/View;

    .line 144
    move-result-object v0

    .line 145
    .line 146
    if-ne v0, p1, :cond_8

    .line 147
    .line 148
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 149
    .line 150
    .line 151
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/c0;->i(Lcom/google/android/exoplayer2/ui/c0;)Lcom/google/android/exoplayer2/ui/v0;

    .line 152
    move-result-object p1

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/v0;->V()V

    .line 156
    .line 157
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 158
    .line 159
    .line 160
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/c0;->w(Lcom/google/android/exoplayer2/ui/c0;)Lcom/google/android/exoplayer2/ui/c0$h;

    .line 161
    move-result-object v0

    .line 162
    .line 163
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 164
    .line 165
    .line 166
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/c0;->v(Lcom/google/android/exoplayer2/ui/c0;)Landroid/view/View;

    .line 167
    move-result-object v1

    .line 168
    .line 169
    .line 170
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/ui/c0;->y(Lcom/google/android/exoplayer2/ui/c0;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    .line 171
    goto :goto_0

    .line 172
    .line 173
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 174
    .line 175
    .line 176
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/c0;->z(Lcom/google/android/exoplayer2/ui/c0;)Landroid/view/View;

    .line 177
    move-result-object v0

    .line 178
    .line 179
    if-ne v0, p1, :cond_9

    .line 180
    .line 181
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 182
    .line 183
    .line 184
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/c0;->i(Lcom/google/android/exoplayer2/ui/c0;)Lcom/google/android/exoplayer2/ui/v0;

    .line 185
    move-result-object p1

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/v0;->V()V

    .line 189
    .line 190
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 191
    .line 192
    .line 193
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/c0;->A(Lcom/google/android/exoplayer2/ui/c0;)Lcom/google/android/exoplayer2/ui/c0$e;

    .line 194
    move-result-object v0

    .line 195
    .line 196
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 197
    .line 198
    .line 199
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/c0;->z(Lcom/google/android/exoplayer2/ui/c0;)Landroid/view/View;

    .line 200
    move-result-object v1

    .line 201
    .line 202
    .line 203
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/ui/c0;->y(Lcom/google/android/exoplayer2/ui/c0;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    .line 204
    goto :goto_0

    .line 205
    .line 206
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 207
    .line 208
    .line 209
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/c0;->B(Lcom/google/android/exoplayer2/ui/c0;)Landroid/view/View;

    .line 210
    move-result-object v0

    .line 211
    .line 212
    if-ne v0, p1, :cond_a

    .line 213
    .line 214
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 215
    .line 216
    .line 217
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/c0;->i(Lcom/google/android/exoplayer2/ui/c0;)Lcom/google/android/exoplayer2/ui/v0;

    .line 218
    move-result-object p1

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/v0;->V()V

    .line 222
    .line 223
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 224
    .line 225
    .line 226
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/c0;->C(Lcom/google/android/exoplayer2/ui/c0;)Lcom/google/android/exoplayer2/ui/c0$b;

    .line 227
    move-result-object v0

    .line 228
    .line 229
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 230
    .line 231
    .line 232
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/c0;->B(Lcom/google/android/exoplayer2/ui/c0;)Landroid/view/View;

    .line 233
    move-result-object v1

    .line 234
    .line 235
    .line 236
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/ui/c0;->y(Lcom/google/android/exoplayer2/ui/c0;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    .line 237
    goto :goto_0

    .line 238
    .line 239
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 240
    .line 241
    .line 242
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/c0;->D(Lcom/google/android/exoplayer2/ui/c0;)Landroid/widget/ImageView;

    .line 243
    move-result-object v0

    .line 244
    .line 245
    if-ne v0, p1, :cond_b

    .line 246
    .line 247
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 248
    .line 249
    .line 250
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/c0;->i(Lcom/google/android/exoplayer2/ui/c0;)Lcom/google/android/exoplayer2/ui/v0;

    .line 251
    move-result-object p1

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/v0;->V()V

    .line 255
    .line 256
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 257
    .line 258
    .line 259
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/c0;->E(Lcom/google/android/exoplayer2/ui/c0;)Lcom/google/android/exoplayer2/ui/c0$j;

    .line 260
    move-result-object v0

    .line 261
    .line 262
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 263
    .line 264
    .line 265
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/c0;->D(Lcom/google/android/exoplayer2/ui/c0;)Landroid/widget/ImageView;

    .line 266
    move-result-object v1

    .line 267
    .line 268
    .line 269
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/ui/c0;->y(Lcom/google/android/exoplayer2/ui/c0;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    .line 270
    :cond_b
    :goto_0
    return-void
.end method

.method public synthetic onCues(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/f3;->c(Lcom/google/android/exoplayer2/d3$d;Ljava/util/List;)V

    return-void
.end method

.method public synthetic onDeviceVolumeChanged(IZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/f3;->e(Lcom/google/android/exoplayer2/d3$d;IZ)V

    return-void
.end method

.method public onDismiss()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/c0;->l(Lcom/google/android/exoplayer2/ui/c0;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/c0;->i(Lcom/google/android/exoplayer2/ui/c0;)Lcom/google/android/exoplayer2/ui/v0;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/v0;->W()V

    .line 18
    :cond_0
    return-void
.end method

.method public synthetic onIsLoadingChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/f3;->g(Lcom/google/android/exoplayer2/d3$d;Z)V

    return-void
.end method

.method public synthetic onIsPlayingChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/f3;->h(Lcom/google/android/exoplayer2/d3$d;Z)V

    return-void
.end method

.method public synthetic onLoadingChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/f3;->i(Lcom/google/android/exoplayer2/d3$d;Z)V

    return-void
.end method

.method public synthetic onPlayWhenReadyChanged(ZI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/f3;->m(Lcom/google/android/exoplayer2/d3$d;ZI)V

    return-void
.end method

.method public synthetic onPlaybackStateChanged(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/f3;->o(Lcom/google/android/exoplayer2/d3$d;I)V

    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/f3;->p(Lcom/google/android/exoplayer2/d3$d;I)V

    return-void
.end method

.method public synthetic onPlayerStateChanged(ZI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/f3;->s(Lcom/google/android/exoplayer2/d3$d;ZI)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/f3;->t(Lcom/google/android/exoplayer2/d3$d;I)V

    return-void
.end method

.method public synthetic onRenderedFirstFrame()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/f3;->v(Lcom/google/android/exoplayer2/d3$d;)V

    return-void
.end method

.method public synthetic onRepeatModeChanged(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/f3;->w(Lcom/google/android/exoplayer2/d3$d;I)V

    return-void
.end method

.method public synthetic onSeekProcessed()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/f3;->x(Lcom/google/android/exoplayer2/d3$d;)V

    return-void
.end method

.method public synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/f3;->y(Lcom/google/android/exoplayer2/d3$d;Z)V

    return-void
.end method

.method public synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/f3;->z(Lcom/google/android/exoplayer2/d3$d;Z)V

    return-void
.end method

.method public synthetic onSurfaceSizeChanged(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/f3;->A(Lcom/google/android/exoplayer2/d3$d;II)V

    return-void
.end method

.method public synthetic onVolumeChanged(F)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/f3;->F(Lcom/google/android/exoplayer2/d3$d;F)V

    return-void
.end method

.method public q(Lcom/google/android/exoplayer2/ui/b1;J)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/c0;->f(Lcom/google/android/exoplayer2/ui/c0;)Landroid/widget/TextView;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/c0;->f(Lcom/google/android/exoplayer2/ui/c0;)Landroid/widget/TextView;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/c0;->g(Lcom/google/android/exoplayer2/ui/c0;)Ljava/lang/StringBuilder;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/c0;->h(Lcom/google/android/exoplayer2/ui/c0;)Ljava/util/Formatter;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1, p2, p3}, Lcom/google/android/exoplayer2/util/o0;->b0(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    :cond_0
    return-void
.end method

.method public r(Lcom/google/android/exoplayer2/ui/b1;J)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/c0;->e(Lcom/google/android/exoplayer2/ui/c0;Z)Z

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/c0;->f(Lcom/google/android/exoplayer2/ui/c0;)Landroid/widget/TextView;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/c0;->f(Lcom/google/android/exoplayer2/ui/c0;)Landroid/widget/TextView;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/c0;->g(Lcom/google/android/exoplayer2/ui/c0;)Ljava/lang/StringBuilder;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/c0;->h(Lcom/google/android/exoplayer2/ui/c0;)Ljava/util/Formatter;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1, p2, p3}, Lcom/google/android/exoplayer2/util/o0;->b0(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c0$c;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/c0;->i(Lcom/google/android/exoplayer2/ui/c0;)Lcom/google/android/exoplayer2/ui/v0;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/v0;->V()V

    .line 49
    return-void
.end method

.method public synthetic x(Lcom/google/android/exoplayer2/text/f;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/f3;->b(Lcom/google/android/exoplayer2/d3$d;Lcom/google/android/exoplayer2/text/f;)V

    return-void
.end method

.method public synthetic y(Lcom/google/android/exoplayer2/d3$e;Lcom/google/android/exoplayer2/d3$e;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/f3;->u(Lcom/google/android/exoplayer2/d3$d;Lcom/google/android/exoplayer2/d3$e;Lcom/google/android/exoplayer2/d3$e;I)V

    return-void
.end method

.method public synthetic z(Lcom/google/android/exoplayer2/z3;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/f3;->B(Lcom/google/android/exoplayer2/d3$d;Lcom/google/android/exoplayer2/z3;I)V

    return-void
.end method
