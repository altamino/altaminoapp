.class Landroidx/appcompat/app/AppCompatDelegateImpl$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;->T()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;


# virtual methods
.method public a(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$4;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->N0(Landroidx/core/view/WindowInsetsCompat;Landroid/graphics/Rect;)I

    .line 7
    move-result v0

    .line 8
    .line 9
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 10
    return-void
.end method
