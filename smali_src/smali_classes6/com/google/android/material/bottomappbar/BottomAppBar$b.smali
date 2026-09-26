.class Lcom/google/android/material/bottomappbar/BottomAppBar$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le3/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le3/k<",
        "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$b;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar$b;->c(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    .line 6
    return-void
.end method

.method public bridge synthetic b(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar$b;->d(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    .line 6
    return-void
.end method

.method public c(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 2
    .param p1    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$b;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->r0(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/shape/g;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 10
    move-result v1

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    .line 16
    move-result p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/g;->a0(F)V

    .line 22
    return-void
.end method

.method public d(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 3
    .param p1    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$b;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->s0(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/bottomappbar/a;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/google/android/material/bottomappbar/a;->k()F

    .line 14
    move-result v1

    .line 15
    .line 16
    cmpl-float v1, v1, v0

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$b;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->s0(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/bottomappbar/a;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomappbar/a;->q(F)V

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$b;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->r0(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/shape/g;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/google/android/material/shape/g;->invalidateSelf()V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 40
    move-result v0

    .line 41
    neg-float v0, v0

    .line 42
    const/4 v1, 0x0

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 46
    move-result v0

    .line 47
    .line 48
    iget-object v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$b;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 49
    .line 50
    .line 51
    invoke-static {v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->s0(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/bottomappbar/a;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/google/android/material/bottomappbar/a;->e()F

    .line 56
    move-result v2

    .line 57
    .line 58
    cmpl-float v2, v2, v0

    .line 59
    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    iget-object v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$b;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 63
    .line 64
    .line 65
    invoke-static {v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->s0(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/bottomappbar/a;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v0}, Lcom/google/android/material/bottomappbar/a;->l(F)V

    .line 70
    .line 71
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$b;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 72
    .line 73
    .line 74
    invoke-static {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->r0(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/shape/g;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/google/android/material/shape/g;->invalidateSelf()V

    .line 79
    .line 80
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$b;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 81
    .line 82
    .line 83
    invoke-static {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->r0(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/shape/g;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 88
    move-result v2

    .line 89
    .line 90
    if-nez v2, :cond_2

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    .line 94
    move-result v1

    .line 95
    .line 96
    .line 97
    :cond_2
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/g;->a0(F)V

    .line 98
    return-void
.end method
