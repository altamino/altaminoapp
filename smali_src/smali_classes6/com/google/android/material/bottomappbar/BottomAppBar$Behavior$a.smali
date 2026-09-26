.class Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$a;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    .line 2
    iget-object p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$a;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->j(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)Ljava/lang/ref/WeakReference;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 13
    .line 14
    if-eqz p2, :cond_3

    .line 15
    .line 16
    instance-of p3, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 17
    .line 18
    if-nez p3, :cond_0

    .line 19
    .line 20
    goto/16 :goto_1

    .line 21
    :cond_0
    move-object p3, p1

    .line 22
    .line 23
    check-cast p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 24
    .line 25
    iget-object p4, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$a;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 26
    .line 27
    .line 28
    invoke-static {p4}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->k(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)Landroid/graphics/Rect;

    .line 29
    move-result-object p4

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, p4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->j(Landroid/graphics/Rect;)V

    .line 33
    .line 34
    iget-object p4, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$a;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 35
    .line 36
    .line 37
    invoke-static {p4}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->k(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)Landroid/graphics/Rect;

    .line 38
    move-result-object p4

    .line 39
    .line 40
    .line 41
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    .line 42
    move-result p4

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p4}, Lcom/google/android/material/bottomappbar/BottomAppBar;->R0(I)Z

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getShapeAppearanceModel()Lcom/google/android/material/shape/k;

    .line 49
    move-result-object p5

    .line 50
    .line 51
    .line 52
    invoke-virtual {p5}, Lcom/google/android/material/shape/k;->r()Lcom/google/android/material/shape/c;

    .line 53
    move-result-object p5

    .line 54
    .line 55
    new-instance p6, Landroid/graphics/RectF;

    .line 56
    .line 57
    iget-object p7, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$a;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 58
    .line 59
    .line 60
    invoke-static {p7}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->k(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)Landroid/graphics/Rect;

    .line 61
    move-result-object p7

    .line 62
    .line 63
    .line 64
    invoke-direct {p6, p7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {p5, p6}, Lcom/google/android/material/shape/c;->a(Landroid/graphics/RectF;)F

    .line 68
    move-result p5

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, p5}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setFabCornerSize(F)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 78
    .line 79
    iget-object p5, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$a;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 80
    .line 81
    .line 82
    invoke-static {p5}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->l(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)I

    .line 83
    move-result p5

    .line 84
    .line 85
    if-nez p5, :cond_2

    .line 86
    .line 87
    .line 88
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 89
    move-result p5

    .line 90
    sub-int/2addr p5, p4

    .line 91
    .line 92
    div-int/lit8 p5, p5, 0x2

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 96
    move-result-object p4

    .line 97
    .line 98
    sget p6, Ld3/d;->mtrl_bottomappbar_fab_bottom_margin:I

    .line 99
    .line 100
    .line 101
    invoke-virtual {p4, p6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 102
    move-result p4

    .line 103
    sub-int/2addr p4, p5

    .line 104
    .line 105
    .line 106
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->k0(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    .line 107
    move-result p5

    .line 108
    add-int/2addr p5, p4

    .line 109
    .line 110
    iput p5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 111
    .line 112
    .line 113
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->l0(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    .line 114
    move-result p4

    .line 115
    .line 116
    iput p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 117
    .line 118
    .line 119
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->m0(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    .line 120
    move-result p4

    .line 121
    .line 122
    iput p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 123
    .line 124
    .line 125
    invoke-static {p3}, Lcom/google/android/material/internal/u;->g(Landroid/view/View;)Z

    .line 126
    move-result p3

    .line 127
    .line 128
    if-eqz p3, :cond_1

    .line 129
    .line 130
    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 131
    .line 132
    .line 133
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->o0(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    .line 134
    move-result p2

    .line 135
    add-int/2addr p3, p2

    .line 136
    .line 137
    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 138
    goto :goto_0

    .line 139
    .line 140
    :cond_1
    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 141
    .line 142
    .line 143
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->o0(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    .line 144
    move-result p2

    .line 145
    add-int/2addr p3, p2

    .line 146
    .line 147
    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 148
    :cond_2
    :goto_0
    return-void

    .line 149
    .line 150
    .line 151
    :cond_3
    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 152
    return-void
.end method
