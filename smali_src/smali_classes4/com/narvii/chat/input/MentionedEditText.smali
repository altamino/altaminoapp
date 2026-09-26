.class public Lcom/narvii/chat/input/MentionedEditText;
.super Landroid/widget/EditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;,
        Lcom/narvii/chat/input/MentionedEditText$Range;,
        Lcom/narvii/chat/input/MentionedEditText$OnMentionInputListener;,
        Lcom/narvii/chat/input/MentionedEditText$MentionTextWatcher;
    }
.end annotation


# static fields
.field public static final DEFAULT_MENTION_PATTERN:Ljava/lang/String; = "@[\\u4e00-\\u9fa5\\w\\-]+"

.field public static final DEFAULT_METION_TAG:Ljava/lang/String; = "@"

.field public static final MENTION_BLOCK_END:Ljava/lang/String; = "\u202c\u202d"

.field public static final MENTION_BLOCK_START:Ljava/lang/String; = "\u200e\u200f"


# instance fields
.field private mAction:Ljava/lang/Runnable;

.field private mIsSelected:Z

.field private mLastSelectedRange:Lcom/narvii/chat/input/MentionedEditText$Range;

.field private mMentionTextColor:I

.field private mOnMentionInputListener:Lcom/narvii/chat/input/MentionedEditText$OnMentionInputListener;

.field private mPatternMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private mRangeArrayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/chat/input/MentionedEditText$Range;",
            ">;"
        }
    .end annotation
.end field

.field private mentionByLongClick:Z

.field private mentionEnabled:Z

.field private mentionStartIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/input/MentionedEditText;->mPatternMap:Ljava/util/Map;

    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/input/MentionedEditText;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/input/MentionedEditText;->mPatternMap:Ljava/util/Map;

    .line 6
    invoke-direct {p0}, Lcom/narvii/chat/input/MentionedEditText;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/input/MentionedEditText;->mPatternMap:Ljava/util/Map;

    .line 9
    invoke-direct {p0}, Lcom/narvii/chat/input/MentionedEditText;->init()V

    return-void
.end method

.method public static synthetic a(Lcom/narvii/chat/input/MentionedEditText$Range;Lcom/narvii/chat/input/MentionedEditText$Range;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/input/MentionedEditText;->lambda$mentionUser$0(Lcom/narvii/chat/input/MentionedEditText$Range;Lcom/narvii/chat/input/MentionedEditText$Range;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic b(Lcom/narvii/chat/input/MentionedEditText;)Lcom/narvii/chat/input/MentionedEditText$OnMentionInputListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/input/MentionedEditText;->mOnMentionInputListener:Lcom/narvii/chat/input/MentionedEditText$OnMentionInputListener;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/chat/input/MentionedEditText;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/input/MentionedEditText;->mPatternMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/narvii/chat/input/MentionedEditText;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/input/MentionedEditText;->mRangeArrayList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/narvii/chat/input/MentionedEditText;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/chat/input/MentionedEditText;->mentionByLongClick:Z

    return p0
.end method

.method static bridge synthetic f(Lcom/narvii/chat/input/MentionedEditText;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/chat/input/MentionedEditText;->mentionEnabled:Z

    return p0
.end method

.method private filterInvalidRange()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/MentionedEditText;->mRangeArrayList:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Lcom/narvii/chat/input/MentionedEditText$Range;

    .line 22
    .line 23
    iget v2, v1, Lcom/narvii/chat/input/MentionedEditText$Range;->from:I

    .line 24
    .line 25
    if-ltz v2, :cond_2

    .line 26
    .line 27
    iget v1, v1, Lcom/narvii/chat/input/MentionedEditText$Range;->to:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    .line 31
    move-result v2

    .line 32
    .line 33
    if-le v1, v2, :cond_1

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    return-void
.end method

.method static bridge synthetic g(Lcom/narvii/chat/input/MentionedEditText;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/input/MentionedEditText;->mIsSelected:Z

    return-void
.end method

.method private getRangeOfClosestMentionString(II)Lcom/narvii/chat/input/MentionedEditText$Range;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/MentionedEditText;->mRangeArrayList:Ljava/util/List;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/input/MentionedEditText;->filterInvalidRange()V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/chat/input/MentionedEditText;->mRangeArrayList:Ljava/util/List;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v2

    .line 20
    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    check-cast v2, Lcom/narvii/chat/input/MentionedEditText$Range;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1, p2}, Lcom/narvii/chat/input/MentionedEditText$Range;->contains(II)Z

    .line 31
    move-result v3

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    return-object v2

    .line 35
    :cond_2
    return-object v1
.end method

.method private getRangeOfNearbyMentionString(II)Lcom/narvii/chat/input/MentionedEditText$Range;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/MentionedEditText;->mRangeArrayList:Ljava/util/List;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/input/MentionedEditText;->filterInvalidRange()V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/chat/input/MentionedEditText;->mRangeArrayList:Ljava/util/List;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v2

    .line 20
    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    check-cast v2, Lcom/narvii/chat/input/MentionedEditText$Range;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1, p2}, Lcom/narvii/chat/input/MentionedEditText$Range;->isWrappedBy(II)Z

    .line 31
    move-result v3

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    return-object v2

    .line 35
    :cond_2
    return-object v1
.end method

.method static bridge synthetic h(Lcom/narvii/chat/input/MentionedEditText;Lcom/narvii/chat/input/MentionedEditText$Range;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/chat/input/MentionedEditText;->mLastSelectedRange:Lcom/narvii/chat/input/MentionedEditText$Range;

    return-void
.end method

.method static bridge synthetic i(Lcom/narvii/chat/input/MentionedEditText;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/input/MentionedEditText;->mentionByLongClick:Z

    return-void
.end method

.method private init()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    const/4 v1, 0x5

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    .line 8
    iput-object v0, p0, Lcom/narvii/chat/input/MentionedEditText;->mRangeArrayList:Ljava/util/List;

    .line 9
    .line 10
    const-string v0, "@"

    .line 11
    .line 12
    const-string v1, "@[\\u4e00-\\u9fa5\\w\\-]+"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/input/MentionedEditText;->setPattern(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "#1F5CF9"

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 21
    move-result v0

    .line 22
    .line 23
    iput v0, p0, Lcom/narvii/chat/input/MentionedEditText;->mMentionTextColor:I

    .line 24
    .line 25
    new-instance v0, Lcom/narvii/chat/input/MentionedEditText$MentionTextWatcher;

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p0, v1}, Lcom/narvii/chat/input/MentionedEditText$MentionTextWatcher;-><init>(Lcom/narvii/chat/input/MentionedEditText;Lcom/narvii/chat/input/l;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 33
    return-void
.end method

.method static bridge synthetic j(Lcom/narvii/chat/input/MentionedEditText;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/chat/input/MentionedEditText;->mentionStartIndex:I

    return-void
.end method

.method static bridge synthetic k(Lcom/narvii/chat/input/MentionedEditText;II)Lcom/narvii/chat/input/MentionedEditText$Range;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/input/MentionedEditText;->getRangeOfClosestMentionString(II)Lcom/narvii/chat/input/MentionedEditText$Range;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$mentionUser$0(Lcom/narvii/chat/input/MentionedEditText$Range;Lcom/narvii/chat/input/MentionedEditText$Range;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/chat/input/MentionedEditText$Range;->from:I

    .line 3
    .line 4
    iget p1, p1, Lcom/narvii/chat/input/MentionedEditText$Range;->from:I

    .line 5
    sub-int/2addr p0, p1

    .line 6
    return p0
.end method


# virtual methods
.method public addPattern(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/MentionedEditText;->mPatternMap:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/MentionedEditText;->mRangeArrayList:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    .line 9
    :cond_0
    const-string v0, ""

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    return-void
.end method

.method public getMentionedRangeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/chat/input/MentionedEditText$Range;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/input/MentionedEditText;->filterInvalidRange()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/input/MentionedEditText;->mRangeArrayList:Ljava/util/List;

    .line 6
    return-object v0
.end method

.method public markLongClickMention()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/chat/input/MentionedEditText;->mentionByLongClick:Z

    return-void
.end method

.method public mentionUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/narvii/chat/input/MentionedEditText;->mentionStartIndex:I

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/narvii/chat/input/MentionedEditText;->mentionUser(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public mentionUser(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Lcom/narvii/chat/input/MentionedEditText;->mentionEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    if-eqz p4, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 5
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    add-int/2addr p4, v1

    invoke-interface {v0, v1, p4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-interface {v0, v1, p2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 7
    new-instance p4, Landroid/text/style/ForegroundColorSpan;

    iget v1, p0, Lcom/narvii/chat/input/MentionedEditText;->mMentionTextColor:I

    invoke-direct {p4, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v1, 0x21

    invoke-interface {v0, p4, p3, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    const-string p4, " \u200c"

    .line 8
    invoke-interface {v0, v2, p4}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    iget-object p4, p0, Lcom/narvii/chat/input/MentionedEditText;->mRangeArrayList:Ljava/util/List;

    .line 9
    new-instance v0, Lcom/narvii/chat/input/MentionedEditText$Range;

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v0, p1, p2, p3, v2}, Lcom/narvii/chat/input/MentionedEditText$Range;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/narvii/chat/input/MentionedEditText;->mRangeArrayList:Ljava/util/List;

    .line 10
    new-instance p2, Lcom/narvii/chat/input/k;

    invoke-direct {p2}, Lcom/narvii/chat/input/k;-><init>()V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string p2, "AT_MENTION"

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;

    .line 3
    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    .line 6
    move-result-object p1

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, p1, v1, p0}, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;-><init>(Lcom/narvii/chat/input/MentionedEditText;Landroid/view/inputmethod/InputConnection;ZLcom/narvii/chat/input/MentionedEditText;)V

    .line 11
    return-object v0
.end method

.method protected onSelectionChanged(II)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/input/MentionedEditText;->mLastSelectedRange:Lcom/narvii/chat/input/MentionedEditText$Range;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/narvii/chat/input/MentionedEditText$Range;->isEqual(II)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    return-void

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/input/MentionedEditText;->filterInvalidRange()V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/input/MentionedEditText;->getRangeOfClosestMentionString(II)Lcom/narvii/chat/input/MentionedEditText$Range;

    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget v0, v0, Lcom/narvii/chat/input/MentionedEditText$Range;->to:I

    .line 27
    .line 28
    if-ne v0, p2, :cond_1

    .line 29
    .line 30
    iput-boolean v1, p0, Lcom/narvii/chat/input/MentionedEditText;->mIsSelected:Z

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/input/MentionedEditText;->getRangeOfNearbyMentionString(II)Lcom/narvii/chat/input/MentionedEditText$Range;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    return-void

    .line 38
    .line 39
    :cond_2
    if-ne p1, p2, :cond_3

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lcom/narvii/chat/input/MentionedEditText$Range;->getAnchorPosition(I)I

    .line 43
    move-result p1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    .line 47
    move-result p2

    .line 48
    .line 49
    .line 50
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 51
    move-result p1

    .line 52
    .line 53
    .line 54
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 55
    move-result p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_3
    iget v1, v0, Lcom/narvii/chat/input/MentionedEditText$Range;->to:I

    .line 62
    .line 63
    if-ge p2, v1, :cond_4

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 67
    .line 68
    :cond_4
    iget v0, v0, Lcom/narvii/chat/input/MentionedEditText$Range;->from:I

    .line 69
    .line 70
    if-le p1, v0, :cond_5

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0, p2}, Landroid/widget/EditText;->setSelection(II)V

    .line 74
    :cond_5
    :goto_0
    return-void
.end method

.method public setMentionEnabled(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/chat/input/MentionedEditText;->mentionEnabled:Z

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/chat/input/MentionedEditText;->mRangeArrayList:Ljava/util/List;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 12
    :cond_0
    return-void
.end method

.method public setMentionTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/chat/input/MentionedEditText;->mMentionTextColor:I

    return-void
.end method

.method public setOnMentionInputListener(Lcom/narvii/chat/input/MentionedEditText$OnMentionInputListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/input/MentionedEditText;->mOnMentionInputListener:Lcom/narvii/chat/input/MentionedEditText$OnMentionInputListener;

    return-void
.end method

.method public setPattern(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/MentionedEditText;->mPatternMap:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/input/MentionedEditText;->addPattern(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/chat/input/MentionedEditText;->mAction:Ljava/lang/Runnable;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/chat/input/MentionedEditText$1;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/narvii/chat/input/MentionedEditText$1;-><init>(Lcom/narvii/chat/input/MentionedEditText;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/chat/input/MentionedEditText;->mAction:Ljava/lang/Runnable;

    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/input/MentionedEditText;->mAction:Ljava/lang/Runnable;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 20
    return-void
.end method
