.class Lcom/google/android/material/datepicker/g$d;
.super Lcom/google/android/material/datepicker/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/g;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/datepicker/l<",
        "TS;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/datepicker/g;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/g;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/datepicker/g$d;->this$0:Lcom/google/android/material/datepicker/g;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/material/datepicker/l;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/material/datepicker/g$d;->this$0:Lcom/google/android/material/datepicker/g;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/material/datepicker/g;->h(Lcom/google/android/material/datepicker/g;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/material/datepicker/g$d;->this$0:Lcom/google/android/material/datepicker/g;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/material/datepicker/g;->j(Lcom/google/android/material/datepicker/g;)Landroid/widget/Button;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/material/datepicker/g$d;->this$0:Lcom/google/android/material/datepicker/g;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/android/material/datepicker/g;->i(Lcom/google/android/material/datepicker/g;)Lcom/google/android/material/datepicker/DateSelector;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->L()Z

    .line 21
    move-result v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 25
    return-void
.end method
