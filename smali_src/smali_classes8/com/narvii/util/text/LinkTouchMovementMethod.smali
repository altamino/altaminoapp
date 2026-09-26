.class public Lcom/narvii/util/text/LinkTouchMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "SourceFile"


# static fields
.field private static instance:Lcom/narvii/util/text/LinkTouchMovementMethod;

.field private static instance2:Lcom/narvii/util/text/LinkTouchMovementMethod;


# instance fields
.field private keepSelectionAtBeginning:Z

.field private mPressedSpan:Lcom/narvii/util/text/TouchableSpan;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/util/text/LinkTouchMovementMethod;->keepSelectionAtBeginning:Z

    .line 7
    return-void
.end method

.method public static getInstance()Lcom/narvii/util/text/LinkTouchMovementMethod;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/text/LinkTouchMovementMethod;->instance:Lcom/narvii/util/text/LinkTouchMovementMethod;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/util/text/LinkTouchMovementMethod;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Lcom/narvii/util/text/LinkTouchMovementMethod;-><init>()V

    .line 10
    .line 11
    sput-object v0, Lcom/narvii/util/text/LinkTouchMovementMethod;->instance:Lcom/narvii/util/text/LinkTouchMovementMethod;

    .line 12
    .line 13
    :cond_0
    sget-object v0, Lcom/narvii/util/text/LinkTouchMovementMethod;->instance:Lcom/narvii/util/text/LinkTouchMovementMethod;

    .line 14
    return-object v0
.end method

.method public static getInstanceIgnoreScroll()Lcom/narvii/util/text/LinkTouchMovementMethod;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/text/LinkTouchMovementMethod;->instance2:Lcom/narvii/util/text/LinkTouchMovementMethod;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/util/text/LinkTouchMovementMethod;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Lcom/narvii/util/text/LinkTouchMovementMethod;-><init>()V

    .line 10
    .line 11
    sput-object v0, Lcom/narvii/util/text/LinkTouchMovementMethod;->instance2:Lcom/narvii/util/text/LinkTouchMovementMethod;

    .line 12
    const/4 v1, 0x1

    .line 13
    .line 14
    iput-boolean v1, v0, Lcom/narvii/util/text/LinkTouchMovementMethod;->keepSelectionAtBeginning:Z

    .line 15
    .line 16
    :cond_0
    sget-object v0, Lcom/narvii/util/text/LinkTouchMovementMethod;->instance2:Lcom/narvii/util/text/LinkTouchMovementMethod;

    .line 17
    return-object v0
.end method

.method private getPressedSpan(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcom/narvii/util/text/TouchableSpan;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 4
    move-result v0

    .line 5
    float-to-int v0, v0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 9
    move-result p3

    .line 10
    float-to-int p3, p3

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    .line 14
    move-result v1

    .line 15
    sub-int/2addr v0, v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    .line 19
    move-result v1

    .line 20
    sub-int/2addr p3, v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 24
    move-result v1

    .line 25
    add-int/2addr v0, v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 29
    move-result v1

    .line 30
    add-int/2addr p3, v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForVertical(I)I

    .line 38
    move-result p3

    .line 39
    int-to-float v0, v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p3, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    .line 43
    move-result p1

    .line 44
    .line 45
    .line 46
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 47
    move-result p3

    .line 48
    .line 49
    const/16 v0, 0xa

    .line 50
    .line 51
    if-lt p1, p3, :cond_0

    .line 52
    move p3, v0

    .line 53
    goto :goto_0

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-interface {p2, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 57
    move-result p3

    .line 58
    :goto_0
    const/4 v1, 0x0

    .line 59
    .line 60
    if-eq p3, v0, :cond_2

    .line 61
    .line 62
    const/16 v0, 0xd

    .line 63
    .line 64
    if-ne p3, v0, :cond_1

    .line 65
    goto :goto_1

    .line 66
    .line 67
    :cond_1
    const-class p3, Lcom/narvii/util/text/TouchableSpan;

    .line 68
    .line 69
    .line 70
    invoke-interface {p2, p1, p1, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    check-cast p1, [Lcom/narvii/util/text/TouchableSpan;

    .line 74
    array-length p2, p1

    .line 75
    .line 76
    if-lez p2, :cond_2

    .line 77
    const/4 p2, 0x0

    .line 78
    .line 79
    aget-object v1, p1, p2

    .line 80
    :cond_2
    :goto_1
    return-object v1
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getPressedSpan(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcom/narvii/util/text/TouchableSpan;

    .line 12
    move-result-object p3

    .line 13
    .line 14
    iput-object p3, p0, Lcom/narvii/util/text/LinkTouchMovementMethod;->mPressedSpan:Lcom/narvii/util/text/TouchableSpan;

    .line 15
    .line 16
    if-eqz p3, :cond_4

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3, v1}, Lcom/narvii/util/text/TouchableSpan;->setPressed(Z)V

    .line 20
    .line 21
    iget-boolean p3, p0, Lcom/narvii/util/text/LinkTouchMovementMethod;->keepSelectionAtBeginning:Z

    .line 22
    .line 23
    if-eqz p3, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-static {p2, v2, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    iget-object p3, p0, Lcom/narvii/util/text/LinkTouchMovementMethod;->mPressedSpan:Lcom/narvii/util/text/TouchableSpan;

    .line 30
    .line 31
    .line 32
    invoke-interface {p2, p3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 33
    move-result p3

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/util/text/LinkTouchMovementMethod;->mPressedSpan:Lcom/narvii/util/text/TouchableSpan;

    .line 36
    .line 37
    .line 38
    invoke-interface {p2, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 39
    move-result v0

    .line 40
    .line 41
    .line 42
    invoke-static {p2, p3, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 43
    .line 44
    :goto_0
    instance-of p2, p1, Lcom/narvii/util/text/TextViewFixTouchConsume;

    .line 45
    .line 46
    if-eqz p2, :cond_4

    .line 47
    .line 48
    check-cast p1, Lcom/narvii/util/text/TextViewFixTouchConsume;

    .line 49
    .line 50
    iput-boolean v1, p1, Lcom/narvii/util/text/TextViewFixTouchConsume;->hit:Z

    .line 51
    goto :goto_1

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    .line 55
    move-result v0

    .line 56
    const/4 v3, 0x2

    .line 57
    const/4 v4, 0x0

    .line 58
    .line 59
    if-ne v0, v3, :cond_2

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getPressedSpan(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcom/narvii/util/text/TouchableSpan;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    iget-object p3, p0, Lcom/narvii/util/text/LinkTouchMovementMethod;->mPressedSpan:Lcom/narvii/util/text/TouchableSpan;

    .line 66
    .line 67
    if-eqz p3, :cond_4

    .line 68
    .line 69
    if-eq p1, p3, :cond_4

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3, v2}, Lcom/narvii/util/text/TouchableSpan;->setPressed(Z)V

    .line 73
    .line 74
    iput-object v4, p0, Lcom/narvii/util/text/LinkTouchMovementMethod;->mPressedSpan:Lcom/narvii/util/text/TouchableSpan;

    .line 75
    .line 76
    .line 77
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 78
    goto :goto_1

    .line 79
    .line 80
    :cond_2
    iget-object v0, p0, Lcom/narvii/util/text/LinkTouchMovementMethod;->mPressedSpan:Lcom/narvii/util/text/TouchableSpan;

    .line 81
    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v2}, Lcom/narvii/util/text/TouchableSpan;->setPressed(Z)V

    .line 86
    .line 87
    .line 88
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    .line 89
    .line 90
    :cond_3
    iput-object v4, p0, Lcom/narvii/util/text/LinkTouchMovementMethod;->mPressedSpan:Lcom/narvii/util/text/TouchableSpan;

    .line 91
    .line 92
    .line 93
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 94
    :cond_4
    :goto_1
    return v1
.end method
