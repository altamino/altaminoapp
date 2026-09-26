.class Lcom/google/android/material/floatingactionbutton/FloatingActionButton$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/floatingactionbutton/d$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/material/floatingactionbutton/d$j;"
    }
.end annotation


# instance fields
.field private final listener:Le3/k;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le3/k<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Le3/k;)V
    .locals 0
    .param p1    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le3/k<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$d;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$d;->listener:Le3/k;

    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$d;->listener:Le3/k;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$d;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Le3/k;->a(Landroid/view/View;)V

    .line 8
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$d;->listener:Le3/k;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$d;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Le3/k;->b(Landroid/view/View;)V

    .line 8
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$d;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$d;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$d;->listener:Le3/k;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$d;->listener:Le3/k;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$d;->listener:Le3/k;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method
