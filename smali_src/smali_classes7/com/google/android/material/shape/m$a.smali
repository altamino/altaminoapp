.class Lcom/google/android/material/shape/m$a;
.super Lcom/google/android/material/shape/m$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/shape/m;->f(Landroid/graphics/Matrix;)Lcom/google/android/material/shape/m$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/shape/m;

.field final synthetic val$operations:Ljava/util/List;

.field final synthetic val$transformCopy:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>(Lcom/google/android/material/shape/m;Ljava/util/List;Landroid/graphics/Matrix;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/shape/m$a;->this$0:Lcom/google/android/material/shape/m;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/material/shape/m$a;->val$operations:Ljava/util/List;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/material/shape/m$a;->val$transformCopy:Landroid/graphics/Matrix;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/material/shape/m$g;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Lq3/a;ILandroid/graphics/Canvas;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/material/shape/m$a;->val$operations:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/google/android/material/shape/m$g;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/material/shape/m$a;->val$transformCopy:Landroid/graphics/Matrix;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/android/material/shape/m$g;->a(Landroid/graphics/Matrix;Lq3/a;ILandroid/graphics/Canvas;)V

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method
