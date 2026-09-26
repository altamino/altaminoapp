.class Lcom/google/android/material/navigation/NavigationView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/navigation/NavigationView;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/navigation/NavigationView;


# direct methods
.method constructor <init>(Lcom/google/android/material/navigation/NavigationView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationView$b;->this$0:Lcom/google/android/material/navigation/NavigationView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView$b;->this$0:Lcom/google/android/material/navigation/NavigationView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/material/navigation/NavigationView;->b(Lcom/google/android/material/navigation/NavigationView;)[I

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView$b;->this$0:Lcom/google/android/material/navigation/NavigationView;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/google/android/material/navigation/NavigationView;->b(Lcom/google/android/material/navigation/NavigationView;)[I

    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x1

    .line 17
    .line 18
    aget v0, v0, v1

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    move v0, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v0, v2

    .line 25
    .line 26
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationView$b;->this$0:Lcom/google/android/material/navigation/NavigationView;

    .line 27
    .line 28
    .line 29
    invoke-static {v3}, Lcom/google/android/material/navigation/NavigationView;->c(Lcom/google/android/material/navigation/NavigationView;)Lcom/google/android/material/internal/k;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v0}, Lcom/google/android/material/internal/k;->C(Z)V

    .line 34
    .line 35
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationView$b;->this$0:Lcom/google/android/material/navigation/NavigationView;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/google/android/material/navigation/NavigationView;->k()Z

    .line 41
    move-result v0

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    move v0, v1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move v0, v2

    .line 47
    .line 48
    .line 49
    :goto_1
    invoke-virtual {v3, v0}, Lcom/google/android/material/internal/m;->setDrawTopInsetForeground(Z)V

    .line 50
    .line 51
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView$b;->this$0:Lcom/google/android/material/navigation/NavigationView;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lcom/google/android/material/internal/c;->a(Landroid/content/Context;)Landroid/app/Activity;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    if-eqz v0, :cond_5

    .line 62
    .line 63
    .line 64
    const v3, 0x1020002

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object v3

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 72
    move-result v3

    .line 73
    .line 74
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationView$b;->this$0:Lcom/google/android/material/navigation/NavigationView;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 78
    move-result v4

    .line 79
    .line 80
    if-ne v3, v4, :cond_2

    .line 81
    move v3, v1

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    move v3, v2

    .line 84
    .line 85
    .line 86
    :goto_2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarColor()I

    .line 91
    move-result v0

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 95
    move-result v0

    .line 96
    .line 97
    if-eqz v0, :cond_3

    .line 98
    move v0, v1

    .line 99
    goto :goto_3

    .line 100
    :cond_3
    move v0, v2

    .line 101
    .line 102
    :goto_3
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationView$b;->this$0:Lcom/google/android/material/navigation/NavigationView;

    .line 103
    .line 104
    if-eqz v3, :cond_4

    .line 105
    .line 106
    if-eqz v0, :cond_4

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Lcom/google/android/material/navigation/NavigationView;->j()Z

    .line 110
    move-result v0

    .line 111
    .line 112
    if-eqz v0, :cond_4

    .line 113
    goto :goto_4

    .line 114
    :cond_4
    move v1, v2

    .line 115
    .line 116
    .line 117
    :goto_4
    invoke-virtual {v4, v1}, Lcom/google/android/material/internal/m;->setDrawBottomInsetForeground(Z)V

    .line 118
    :cond_5
    return-void
.end method
