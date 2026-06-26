.class Lcom/tokenautocomplete/TokenCompleteTextView$1;
.super Ljava/lang/Object;
.source "TokenCompleteTextView.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tokenautocomplete/TokenCompleteTextView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tokenautocomplete/TokenCompleteTextView;


# direct methods
.method constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$1;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 162
    iget-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$1;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {p2}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$200(Lcom/tokenautocomplete/TokenCompleteTextView;)I

    move-result p2

    const-string p3, ""

    const/4 p4, -0x1

    if-eq p2, p4, :cond_0

    iget-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$1;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {p2}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$300(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget-object p4, p0, Lcom/tokenautocomplete/TokenCompleteTextView$1;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {p4}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$200(Lcom/tokenautocomplete/TokenCompleteTextView;)I

    move-result p4

    if-ne p2, p4, :cond_0

    return-object p3

    .line 164
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/4 p4, 0x1

    if-ne p2, p4, :cond_1

    .line 165
    iget-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$1;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    const/4 p4, 0x0

    invoke-interface {p1, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {p2, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$400(Lcom/tokenautocomplete/TokenCompleteTextView;C)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 166
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$1;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->performCompletion()V

    return-object p3

    .line 172
    :cond_1
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$1;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$500(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x0

    if-ge p5, p1, :cond_4

    if-nez p5, :cond_2

    if-nez p6, :cond_2

    return-object p2

    .line 178
    :cond_2
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$1;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$500(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gt p6, p1, :cond_3

    .line 180
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$1;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$500(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p5, p6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 183
    :cond_3
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$1;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$500(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$1;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {p2}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$500(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p5, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_4
    return-object p2
.end method
