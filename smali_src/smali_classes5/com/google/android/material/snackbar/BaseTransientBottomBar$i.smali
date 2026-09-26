.class Lcom/google/android/material/snackbar/BaseTransientBottomBar$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$i;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$i;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;

    .line 5
    .line 6
    if-eqz v1, :cond_3

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->a(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$i;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)I

    .line 19
    move-result v0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$i;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->i(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)I

    .line 25
    move-result v1

    .line 26
    sub-int/2addr v0, v1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$i;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    .line 34
    move-result v1

    .line 35
    float-to-int v1, v1

    .line 36
    add-int/2addr v0, v1

    .line 37
    .line 38
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$i;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->j(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)I

    .line 42
    move-result v1

    .line 43
    .line 44
    if-lt v0, v1, :cond_1

    .line 45
    return-void

    .line 46
    .line 47
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$i;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 56
    .line 57
    if-nez v2, :cond_2

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    const-string v1, "Unable to apply gesture inset because layout params are not MarginLayoutParams"

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void

    .line 68
    .line 69
    :cond_2
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 70
    .line 71
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 72
    .line 73
    iget-object v3, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$i;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 74
    .line 75
    .line 76
    invoke-static {v3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->j(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)I

    .line 77
    move-result v3

    .line 78
    sub-int/2addr v3, v0

    .line 79
    add-int/2addr v2, v3

    .line 80
    .line 81
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 82
    .line 83
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$i;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 84
    .line 85
    iget-object v0, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 89
    :cond_3
    :goto_0
    return-void
.end method
