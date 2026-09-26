.class Lcom/google/android/material/datepicker/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/t;->h(I)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/datepicker/t;

.field final synthetic val$year:I


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/t;I)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/datepicker/t$a;->this$0:Lcom/google/android/material/datepicker/t;

    .line 3
    .line 4
    iput p2, p0, Lcom/google/android/material/datepicker/t$a;->val$year:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget p1, p0, Lcom/google/android/material/datepicker/t$a;->val$year:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/material/datepicker/t$a;->this$0:Lcom/google/android/material/datepicker/t;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/android/material/datepicker/t;->g(Lcom/google/android/material/datepicker/t;)Lcom/google/android/material/datepicker/f;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/f;->s()Lcom/google/android/material/datepicker/Month;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget v0, v0, Lcom/google/android/material/datepicker/Month;->month:I

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Lcom/google/android/material/datepicker/Month;->c(II)Lcom/google/android/material/datepicker/Month;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/material/datepicker/t$a;->this$0:Lcom/google/android/material/datepicker/t;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/material/datepicker/t;->g(Lcom/google/android/material/datepicker/t;)Lcom/google/android/material/datepicker/f;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/f;->q()Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/CalendarConstraints;->h(Lcom/google/android/material/datepicker/Month;)Lcom/google/android/material/datepicker/Month;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/android/material/datepicker/t$a;->this$0:Lcom/google/android/material/datepicker/t;

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/google/android/material/datepicker/t;->g(Lcom/google/android/material/datepicker/t;)Lcom/google/android/material/datepicker/f;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/f;->z(Lcom/google/android/material/datepicker/Month;)V

    .line 42
    .line 43
    iget-object p1, p0, Lcom/google/android/material/datepicker/t$a;->this$0:Lcom/google/android/material/datepicker/t;

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lcom/google/android/material/datepicker/t;->g(Lcom/google/android/material/datepicker/t;)Lcom/google/android/material/datepicker/f;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    sget-object v0, Lcom/google/android/material/datepicker/f$k;->DAY:Lcom/google/android/material/datepicker/f$k;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/f;->A(Lcom/google/android/material/datepicker/f$k;)V

    .line 53
    return-void
.end method
