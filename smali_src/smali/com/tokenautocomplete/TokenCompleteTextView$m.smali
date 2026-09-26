.class Lcom/tokenautocomplete/TokenCompleteTextView$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tokenautocomplete/TokenCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "m"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tokenautocomplete/TokenCompleteTextView;


# direct methods
.method private constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$m;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView$m;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0

    .line 1
    .line 2
    instance-of p1, p2, Lcom/tokenautocomplete/TokenCompleteTextView$j;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$m;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->g(Lcom/tokenautocomplete/TokenCompleteTextView;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$m;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->b(Lcom/tokenautocomplete/TokenCompleteTextView;)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    check-cast p2, Lcom/tokenautocomplete/TokenCompleteTextView$j;

    .line 23
    .line 24
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$m;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->e(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/ArrayList;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/tokenautocomplete/TokenCompleteTextView$j;->b()Ljava/lang/Object;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$m;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->d(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$l;

    .line 41
    :cond_0
    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .locals 0

    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0

    .line 1
    .line 2
    instance-of p1, p2, Lcom/tokenautocomplete/TokenCompleteTextView$j;

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$m;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->g(Lcom/tokenautocomplete/TokenCompleteTextView;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$m;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->b(Lcom/tokenautocomplete/TokenCompleteTextView;)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    check-cast p2, Lcom/tokenautocomplete/TokenCompleteTextView$j;

    .line 23
    .line 24
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$m;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->e(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/ArrayList;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/tokenautocomplete/TokenCompleteTextView$j;->b()Ljava/lang/Object;

    .line 32
    move-result-object p3

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 36
    move-result p1

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$m;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->e(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/ArrayList;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/tokenautocomplete/TokenCompleteTextView$j;->b()Ljava/lang/Object;

    .line 48
    move-result-object p2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 52
    .line 53
    :cond_0
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$m;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->d(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$l;

    .line 57
    :cond_1
    return-void
.end method
