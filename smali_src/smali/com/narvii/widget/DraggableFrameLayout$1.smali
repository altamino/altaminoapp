.class public final Lcom/narvii/widget/DraggableFrameLayout$1;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/DraggableFrameLayout;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/DraggableFrameLayout;


# direct methods
.method constructor <init>(Lcom/narvii/widget/DraggableFrameLayout;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p3, "child"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 9
    move-result p1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 17
    move-result p1

    .line 18
    neg-int p1, p1

    .line 19
    .line 20
    iget-object p3, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3}, Lcom/narvii/widget/DraggableFrameLayout;->getMinViewVisibleWidth()I

    .line 24
    move-result p3

    .line 25
    add-int/2addr p1, p3

    .line 26
    .line 27
    iget-object p3, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3}, Lcom/narvii/widget/DraggableFrameLayout;->getEndMargin()I

    .line 31
    move-result p3

    .line 32
    add-int/2addr p1, p3

    .line 33
    .line 34
    .line 35
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 36
    move-result p1

    .line 37
    .line 38
    iget-object p2, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/narvii/widget/DraggableFrameLayout;->getEndMargin()I

    .line 42
    move-result p2

    .line 43
    .line 44
    .line 45
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 46
    move-result p1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 p1, 0x0

    .line 49
    .line 50
    .line 51
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 52
    move-result p1

    .line 53
    .line 54
    iget-object p2, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 58
    move-result p2

    .line 59
    .line 60
    iget-object p3, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3}, Lcom/narvii/widget/DraggableFrameLayout;->getMinViewVisibleWidth()I

    .line 64
    move-result p3

    .line 65
    sub-int/2addr p2, p3

    .line 66
    .line 67
    .line 68
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 69
    move-result p1

    .line 70
    :goto_0
    return p1
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p3, "releasedChild"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 9
    move-result p3

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    iget-object p3, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    .line 18
    move-result p3

    .line 19
    neg-int p3, p3

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/narvii/widget/DraggableFrameLayout;->getMinViewVisibleWidth()I

    .line 25
    move-result v1

    .line 26
    add-int/2addr p3, v1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/narvii/widget/DraggableFrameLayout;->getEndMargin()I

    .line 32
    move-result v1

    .line 33
    add-int/2addr p3, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move p3, v0

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 39
    move-result v1

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/narvii/widget/DraggableFrameLayout;->getEndMargin()I

    .line 47
    move-result v1

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_1
    iget-object v1, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 54
    move-result v1

    .line 55
    .line 56
    iget-object v2, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/narvii/widget/DraggableFrameLayout;->getMinViewVisibleWidth()I

    .line 60
    move-result v2

    .line 61
    sub-int/2addr v1, v2

    .line 62
    :goto_1
    const/4 v2, 0x0

    .line 63
    .line 64
    cmpg-float v3, p2, v2

    .line 65
    const/4 v4, 0x0

    .line 66
    .line 67
    .line 68
    const-string/jumbo v5, "viewDragHelper"

    .line 69
    .line 70
    if-gez v3, :cond_3

    .line 71
    .line 72
    iget-object p1, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Lcom/narvii/widget/DraggableFrameLayout;->access$getViewDragHelper$p(Lcom/narvii/widget/DraggableFrameLayout;)Landroidx/customview/widget/ViewDragHelper;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    if-nez p1, :cond_2

    .line 79
    .line 80
    .line 81
    invoke-static {v5}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    move-object v4, p1

    .line 84
    .line 85
    .line 86
    :goto_2
    invoke-virtual {v4, p3, v0}, Landroidx/customview/widget/ViewDragHelper;->P(II)Z

    .line 87
    goto :goto_6

    .line 88
    .line 89
    :cond_3
    cmpl-float p2, p2, v2

    .line 90
    .line 91
    if-lez p2, :cond_5

    .line 92
    .line 93
    iget-object p1, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    .line 94
    .line 95
    .line 96
    invoke-static {p1}, Lcom/narvii/widget/DraggableFrameLayout;->access$getViewDragHelper$p(Lcom/narvii/widget/DraggableFrameLayout;)Landroidx/customview/widget/ViewDragHelper;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    if-nez p1, :cond_4

    .line 100
    .line 101
    .line 102
    invoke-static {v5}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 103
    goto :goto_3

    .line 104
    :cond_4
    move-object v4, p1

    .line 105
    .line 106
    .line 107
    :goto_3
    invoke-virtual {v4, v1, v0}, Landroidx/customview/widget/ViewDragHelper;->P(II)Z

    .line 108
    goto :goto_6

    .line 109
    .line 110
    .line 111
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 112
    move-result p1

    .line 113
    sub-int/2addr p1, p3

    .line 114
    .line 115
    .line 116
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 117
    move-result p1

    .line 118
    .line 119
    iget-object p2, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 123
    move-result p2

    .line 124
    .line 125
    iget-object v2, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Lcom/narvii/widget/DraggableFrameLayout;->getMinViewVisibleWidth()I

    .line 129
    move-result v2

    .line 130
    sub-int/2addr p2, v2

    .line 131
    .line 132
    div-int/lit8 p2, p2, 0x2

    .line 133
    .line 134
    if-le p1, p2, :cond_7

    .line 135
    .line 136
    iget-object p1, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    .line 137
    .line 138
    .line 139
    invoke-static {p1}, Lcom/narvii/widget/DraggableFrameLayout;->access$getViewDragHelper$p(Lcom/narvii/widget/DraggableFrameLayout;)Landroidx/customview/widget/ViewDragHelper;

    .line 140
    move-result-object p1

    .line 141
    .line 142
    if-nez p1, :cond_6

    .line 143
    .line 144
    .line 145
    invoke-static {v5}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 146
    goto :goto_4

    .line 147
    :cond_6
    move-object v4, p1

    .line 148
    .line 149
    .line 150
    :goto_4
    invoke-virtual {v4, v1, v0}, Landroidx/customview/widget/ViewDragHelper;->P(II)Z

    .line 151
    goto :goto_6

    .line 152
    .line 153
    :cond_7
    iget-object p1, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    .line 154
    .line 155
    .line 156
    invoke-static {p1}, Lcom/narvii/widget/DraggableFrameLayout;->access$getViewDragHelper$p(Lcom/narvii/widget/DraggableFrameLayout;)Landroidx/customview/widget/ViewDragHelper;

    .line 157
    move-result-object p1

    .line 158
    .line 159
    if-nez p1, :cond_8

    .line 160
    .line 161
    .line 162
    invoke-static {v5}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 163
    goto :goto_5

    .line 164
    :cond_8
    move-object v4, p1

    .line 165
    .line 166
    .line 167
    :goto_5
    invoke-virtual {v4, p3, v0}, Landroidx/customview/widget/ViewDragHelper;->P(II)Z

    .line 168
    .line 169
    :goto_6
    iget-object p1, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 173
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "child"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
