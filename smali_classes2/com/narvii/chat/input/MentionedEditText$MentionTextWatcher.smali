.class Lcom/narvii/chat/input/MentionedEditText$MentionTextWatcher;
.super Ljava/lang/Object;
.source "MentionedEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/input/MentionedEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MentionTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/input/MentionedEditText;


# direct methods
.method private constructor <init>(Lcom/narvii/chat/input/MentionedEditText;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/narvii/chat/input/MentionedEditText$MentionTextWatcher;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/chat/input/MentionedEditText;Lcom/narvii/chat/input/MentionedEditText$1;)V
    .locals 0

    .line 264
    invoke-direct {p0, p1}, Lcom/narvii/chat/input/MentionedEditText$MentionTextWatcher;-><init>(Lcom/narvii/chat/input/MentionedEditText;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    .line 267
    iget-object p1, p0, Lcom/narvii/chat/input/MentionedEditText$MentionTextWatcher;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    invoke-static {p1}, Lcom/narvii/chat/input/MentionedEditText;->access$100(Lcom/narvii/chat/input/MentionedEditText;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 270
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/input/MentionedEditText$MentionTextWatcher;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 271
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt p2, v0, :cond_1

    return-void

    :cond_1
    add-int v0, p2, p3

    sub-int/2addr p4, p3

    if-eq p2, v0, :cond_2

    .line 277
    iget-object p3, p0, Lcom/narvii/chat/input/MentionedEditText$MentionTextWatcher;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    invoke-static {p3}, Lcom/narvii/chat/input/MentionedEditText;->access$200(Lcom/narvii/chat/input/MentionedEditText;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    .line 278
    const-class p3, Landroid/text/style/ForegroundColorSpan;

    invoke-interface {p1, p2, v0, p3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/text/style/ForegroundColorSpan;

    .line 279
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p3, v2

    .line 280
    invoke-interface {p1, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 284
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/input/MentionedEditText$MentionTextWatcher;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    invoke-static {p1}, Lcom/narvii/chat/input/MentionedEditText;->access$200(Lcom/narvii/chat/input/MentionedEditText;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 285
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 286
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/chat/input/MentionedEditText$Range;

    .line 287
    invoke-static {p3, p2, v0}, Lcom/narvii/chat/input/MentionedEditText$Range;->access$300(Lcom/narvii/chat/input/MentionedEditText$Range;II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 288
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 292
    :cond_4
    iget v1, p3, Lcom/narvii/chat/input/MentionedEditText$Range;->from:I

    if-lt v1, v0, :cond_3

    .line 293
    invoke-static {p3, p4}, Lcom/narvii/chat/input/MentionedEditText$Range;->access$400(Lcom/narvii/chat/input/MentionedEditText$Range;I)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 300
    iget-object p3, p0, Lcom/narvii/chat/input/MentionedEditText$MentionTextWatcher;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    invoke-static {p3}, Lcom/narvii/chat/input/MentionedEditText;->access$100(Lcom/narvii/chat/input/MentionedEditText;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    if-ne p4, p3, :cond_3

    .line 303
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 304
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 305
    iget-object p3, p0, Lcom/narvii/chat/input/MentionedEditText$MentionTextWatcher;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    invoke-static {p3}, Lcom/narvii/chat/input/MentionedEditText;->access$500(Lcom/narvii/chat/input/MentionedEditText;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 306
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    iget-object p1, p0, Lcom/narvii/chat/input/MentionedEditText$MentionTextWatcher;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    invoke-static {p1, p2}, Lcom/narvii/chat/input/MentionedEditText;->access$602(Lcom/narvii/chat/input/MentionedEditText;I)I

    .line 308
    iget-object p1, p0, Lcom/narvii/chat/input/MentionedEditText$MentionTextWatcher;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    invoke-static {p1}, Lcom/narvii/chat/input/MentionedEditText;->access$700(Lcom/narvii/chat/input/MentionedEditText;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/narvii/chat/input/MentionedEditText$MentionTextWatcher;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    invoke-static {p1}, Lcom/narvii/chat/input/MentionedEditText;->access$800(Lcom/narvii/chat/input/MentionedEditText;)Lcom/narvii/chat/input/MentionedEditText$OnMentionInputListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 309
    iget-object p1, p0, Lcom/narvii/chat/input/MentionedEditText$MentionTextWatcher;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    invoke-static {p1}, Lcom/narvii/chat/input/MentionedEditText;->access$800(Lcom/narvii/chat/input/MentionedEditText;)Lcom/narvii/chat/input/MentionedEditText$OnMentionInputListener;

    move-result-object p1

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p1, p3, p2}, Lcom/narvii/chat/input/MentionedEditText$OnMentionInputListener;->onMentionCharacterInput(Ljava/lang/String;I)V

    .line 311
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/input/MentionedEditText$MentionTextWatcher;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/chat/input/MentionedEditText;->access$702(Lcom/narvii/chat/input/MentionedEditText;Z)Z

    :cond_3
    return-void
.end method
