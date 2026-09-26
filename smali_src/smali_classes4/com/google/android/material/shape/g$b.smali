.class Lcom/google/android/material/shape/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/shape/k$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/shape/g;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/shape/g;

.field final synthetic val$strokeInsetLength:F


# direct methods
.method constructor <init>(Lcom/google/android/material/shape/g;F)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/shape/g$b;->this$0:Lcom/google/android/material/shape/g;

    .line 3
    .line 4
    iput p2, p0, Lcom/google/android/material/shape/g$b;->val$strokeInsetLength:F

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/c;
    .locals 2
    .param p1    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Lcom/google/android/material/shape/i;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    new-instance v0, Lcom/google/android/material/shape/b;

    .line 8
    .line 9
    iget v1, p0, Lcom/google/android/material/shape/g$b;->val$strokeInsetLength:F

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, p1}, Lcom/google/android/material/shape/b;-><init>(FLcom/google/android/material/shape/c;)V

    .line 13
    move-object p1, v0

    .line 14
    :goto_0
    return-object p1
.end method
