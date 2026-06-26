.class Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;
.super Ljava/lang/Object;
.source "TokenCompleteTextView.java"

# interfaces
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tokenautocomplete/TokenCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TokenSpanWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tokenautocomplete/TokenCompleteTextView;


# direct methods
.method private constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V
    .locals 0

    .line 1110
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/TokenCompleteTextView$1;)V
    .locals 0

    .line 1110
    invoke-direct {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0

    .line 1115
    instance-of p1, p2, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$1400(Lcom/tokenautocomplete/TokenCompleteTextView;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$1500(Lcom/tokenautocomplete/TokenCompleteTextView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1116
    check-cast p2, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 1117
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$300(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->getToken()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1119
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$1600(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1120
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$1600(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;

    move-result-object p1

    invoke-virtual {p2}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->getToken()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;->onTokenAdded(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .locals 0

    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0

    .line 1127
    instance-of p1, p2, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$1400(Lcom/tokenautocomplete/TokenCompleteTextView;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$1500(Lcom/tokenautocomplete/TokenCompleteTextView;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1128
    check-cast p2, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 1129
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$300(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->getToken()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1130
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$300(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->getToken()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1133
    :cond_0
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$1600(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1134
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$1600(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;

    move-result-object p1

    invoke-virtual {p2}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->getToken()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;->onTokenRemoved(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
