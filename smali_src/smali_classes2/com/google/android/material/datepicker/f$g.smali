.class Lcom/google/android/material/datepicker/f$g;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/f;->o(Landroid/view/View;Lcom/google/android/material/datepicker/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/datepicker/f;

.field final synthetic val$monthDropSelect:Lcom/google/android/material/button/MaterialButton;

.field final synthetic val$monthsPagerAdapter:Lcom/google/android/material/datepicker/k;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/f;Lcom/google/android/material/datepicker/k;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/datepicker/f$g;->this$0:Lcom/google/android/material/datepicker/f;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/material/datepicker/f$g;->val$monthsPagerAdapter:Lcom/google/android/material/datepicker/k;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/material/datepicker/f$g;->val$monthDropSelect:Lcom/google/android/material/button/MaterialButton;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object p2, p0, Lcom/google/android/material/datepicker/f$g;->val$monthDropSelect:Lcom/google/android/material/button/MaterialButton;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 12
    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    if-gez p2, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/material/datepicker/f$g;->this$0:Lcom/google/android/material/datepicker/f;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/f;->w()Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 12
    move-result p1

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/datepicker/f$g;->this$0:Lcom/google/android/material/datepicker/f;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/f;->w()Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 23
    move-result p1

    .line 24
    .line 25
    :goto_0
    iget-object p2, p0, Lcom/google/android/material/datepicker/f$g;->this$0:Lcom/google/android/material/datepicker/f;

    .line 26
    .line 27
    iget-object p3, p0, Lcom/google/android/material/datepicker/f$g;->val$monthsPagerAdapter:Lcom/google/android/material/datepicker/k;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3, p1}, Lcom/google/android/material/datepicker/k;->h(I)Lcom/google/android/material/datepicker/Month;

    .line 31
    move-result-object p3

    .line 32
    .line 33
    .line 34
    invoke-static {p2, p3}, Lcom/google/android/material/datepicker/f;->n(Lcom/google/android/material/datepicker/f;Lcom/google/android/material/datepicker/Month;)Lcom/google/android/material/datepicker/Month;

    .line 35
    .line 36
    iget-object p2, p0, Lcom/google/android/material/datepicker/f$g;->val$monthDropSelect:Lcom/google/android/material/button/MaterialButton;

    .line 37
    .line 38
    iget-object p3, p0, Lcom/google/android/material/datepicker/f$g;->val$monthsPagerAdapter:Lcom/google/android/material/datepicker/k;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3, p1}, Lcom/google/android/material/datepicker/k;->i(I)Ljava/lang/CharSequence;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method
