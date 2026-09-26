.class Lcom/google/android/material/floatingactionbutton/FloatingActionButton$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$c;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(IIII)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$c;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->shadowPadding:Landroid/graphics/Rect;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$c;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)I

    .line 13
    move-result v1

    .line 14
    add-int/2addr p1, v1

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$c;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)I

    .line 20
    move-result v1

    .line 21
    add-int/2addr p2, v1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$c;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)I

    .line 27
    move-result v1

    .line 28
    add-int/2addr p3, v1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$c;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)I

    .line 34
    move-result v1

    .line 35
    add-int/2addr p4, v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 39
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$c;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V

    .line 8
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$c;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 3
    .line 4
    iget-boolean v0, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->compatPadding:Z

    .line 5
    return v0
.end method
