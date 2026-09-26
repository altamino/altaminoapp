.class final Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$onNewSize$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;-><init>(Landroid/content/Context;Landroidx/compose/foundation/OverscrollConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/ui/unit/IntSize;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$onNewSize$1;->this$0:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSizeKt;->b(J)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$onNewSize$1;->this$0:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 7
    .line 8
    .line 9
    invoke-static {v2}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->j(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)J

    .line 10
    move-result-wide v2

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Size;->f(JJ)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    xor-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$onNewSize$1;->this$0:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSizeKt;->b(J)J

    .line 22
    move-result-wide v2

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v2, v3}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->r(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;J)V

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$onNewSize$1;->this$0:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->o(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)Landroid/widget/EdgeEffect;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 37
    move-result v2

    .line 38
    .line 39
    .line 40
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 41
    move-result v3

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 45
    .line 46
    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$onNewSize$1;->this$0:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->h(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)Landroid/widget/EdgeEffect;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 54
    move-result v2

    .line 55
    .line 56
    .line 57
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 58
    move-result v3

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 62
    .line 63
    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$onNewSize$1;->this$0:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 64
    .line 65
    .line 66
    invoke-static {v1}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->k(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)Landroid/widget/EdgeEffect;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    .line 70
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 71
    move-result v2

    .line 72
    .line 73
    .line 74
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 75
    move-result v3

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 79
    .line 80
    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$onNewSize$1;->this$0:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 81
    .line 82
    .line 83
    invoke-static {v1}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->m(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)Landroid/widget/EdgeEffect;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    .line 87
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 88
    move-result v2

    .line 89
    .line 90
    .line 91
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 92
    move-result v3

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 96
    .line 97
    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$onNewSize$1;->this$0:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 98
    .line 99
    .line 100
    invoke-static {v1}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->p(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)Landroid/widget/EdgeEffect;

    .line 101
    move-result-object v1

    .line 102
    .line 103
    .line 104
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 105
    move-result v2

    .line 106
    .line 107
    .line 108
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 109
    move-result v3

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 113
    .line 114
    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$onNewSize$1;->this$0:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 115
    .line 116
    .line 117
    invoke-static {v1}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->i(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)Landroid/widget/EdgeEffect;

    .line 118
    move-result-object v1

    .line 119
    .line 120
    .line 121
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 122
    move-result v2

    .line 123
    .line 124
    .line 125
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 126
    move-result v3

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 130
    .line 131
    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$onNewSize$1;->this$0:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 132
    .line 133
    .line 134
    invoke-static {v1}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->l(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)Landroid/widget/EdgeEffect;

    .line 135
    move-result-object v1

    .line 136
    .line 137
    .line 138
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 139
    move-result v2

    .line 140
    .line 141
    .line 142
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 143
    move-result v3

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 147
    .line 148
    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$onNewSize$1;->this$0:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 149
    .line 150
    .line 151
    invoke-static {v1}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->n(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)Landroid/widget/EdgeEffect;

    .line 152
    move-result-object v1

    .line 153
    .line 154
    .line 155
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 156
    move-result v2

    .line 157
    .line 158
    .line 159
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 160
    move-result p1

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v2, p1}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 164
    .line 165
    :cond_0
    if-eqz v0, :cond_1

    .line 166
    .line 167
    iget-object p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$onNewSize$1;->this$0:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 168
    .line 169
    .line 170
    invoke-static {p1}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->q(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)V

    .line 171
    .line 172
    iget-object p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$onNewSize$1;->this$0:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 173
    .line 174
    .line 175
    invoke-static {p1}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->g(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)V

    .line 176
    :cond_1
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntSize;->j()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$onNewSize$1;->a(J)V

    .line 10
    .line 11
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 12
    return-object p1
.end method
