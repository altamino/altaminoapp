.class public Lcom/narvii/chat/input/MentionedEditText;
.super Landroid/widget/EditText;
.source "MentionedEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/input/MentionedEditText$Range;,
        Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;,
        Lcom/narvii/chat/input/MentionedEditText$MentionTextWatcher;,
        Lcom/narvii/chat/input/MentionedEditText$OnMentionInputListener;
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

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/input/MentionedEditText;->mPatternMap:Ljava/util/Map;

    .line 61
    invoke-direct {p0}, Lcom/narvii/chat/input/MentionedEditText;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/input/MentionedEditText;->mPatternMap:Ljava/util/Map;

    .line 66
    invoke-direct {p0}, Lcom/narvii/chat/input/MentionedEditText;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/input/MentionedEditText;->mPatternMap:Ljava/util/Map;

    .line 71
    invoke-direct {p0}, Lcom/narvii/chat/input/MentionedEditText;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/chat/input/MentionedEditText;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/narvii/chat/input/MentionedEditText;->mentionEnabled:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/narvii/chat/input/MentionedEditText;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/narvii/chat/input/MentionedEditText;->mIsSelected:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/narvii/chat/input/MentionedEditText;Lcom/narvii/chat/input/MentionedEditText$Range;)Lcom/narvii/chat/input/MentionedEditText$Range;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/narvii/chat/input/MentionedEditText;->mLastSelectedRange:Lcom/narvii/chat/input/MentionedEditText$Range;

    return-object p1
.end method

.method static synthetic access$200(Lcom/narvii/chat/input/MentionedEditText;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/narvii/chat/input/MentionedEditText;->mRangeArrayList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/chat/input/MentionedEditText;)Ljava/util/Map;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/narvii/chat/input/MentionedEditText;->mPatternMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$602(Lcom/narvii/chat/input/MentionedEditText;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/narvii/chat/input/MentionedEditText;->mentionStartIndex:I

    return p1
.end method

.method static synthetic access$700(Lcom/narvii/chat/input/MentionedEditText;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/narvii/chat/input/MentionedEditText;->mentionByLongClick:Z

    return p0
.end method

.method static synthetic access$702(Lcom/narvii/chat/input/MentionedEditText;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/narvii/chat/input/MentionedEditText;->mentionByLongClick:Z

    return p1
.end method

.method static synthetic access$800(Lcom/narvii/chat/input/MentionedEditText;)Lcom/narvii/chat/input/MentionedEditText$OnMentionInputListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/narvii/chat/input/MentionedEditText;->mOnMentionInputListener:Lcom/narvii/chat/input/MentionedEditText$OnMentionInputListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/narvii/chat/input/MentionedEditText;II)Lcom/narvii/chat/input/MentionedEditText$Range;
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/input/MentionedEditText;->getRangeOfClosestMentionString(II)Lcom/narvii/chat/input/MentionedEditText$Range;

    move-result-object p0

    return-object p0
.end method

.method private filterInvalidRange()V
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/narvii/chat/input/MentionedEditText;->mRangeArrayList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 254
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 255
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 256
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/input/MentionedEditText$Range;

    .line 257
    iget v2, v1, Lcom/narvii/chat/input/MentionedEditText$Range;->from:I

    if-ltz v2, :cond_2

    iget v1, v1, Lcom/narvii/chat/input/MentionedEditText$Range;->to:I

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 258
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private getRangeOfClosestMentionString(II)Lcom/narvii/chat/input/MentionedEditText$Range;
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/narvii/chat/input/MentionedEditText;->mRangeArrayList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 228
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/input/MentionedEditText;->filterInvalidRange()V

    .line 229
    iget-object v0, p0, Lcom/narvii/chat/input/MentionedEditText;->mRangeArrayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/input/MentionedEditText$Range;

    .line 230
    invoke-virtual {v2, p1, p2}, Lcom/narvii/chat/input/MentionedEditText$Range;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method private getRangeOfNearbyMentionString(II)Lcom/narvii/chat/input/MentionedEditText$Range;
    .locals 4

    .line 238
    iget-object v0, p0, Lcom/narvii/chat/input/MentionedEditText;->mRangeArrayList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 241
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/input/MentionedEditText;->filterInvalidRange()V

    .line 242
    iget-object v0, p0, Lcom/narvii/chat/input/MentionedEditText;->mRangeArrayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/input/MentionedEditText$Range;

    .line 243
    invoke-virtual {v2, p1, p2}, Lcom/narvii/chat/input/MentionedEditText$Range;->isWrappedBy(II)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method private init()V
    .locals 2

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/narvii/chat/input/MentionedEditText;->mRangeArrayList:Ljava/util/List;

    const-string v0, "@"

    const-string v1, "@[\\u4e00-\\u9fa5\\w\\-]+"

    .line 182
    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/input/MentionedEditText;->setPattern(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "#1F5CF9"

    .line 183
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/chat/input/MentionedEditText;->mMentionTextColor:I

    .line 184
    new-instance v0, Lcom/narvii/chat/input/MentionedEditText$MentionTextWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/narvii/chat/input/MentionedEditText$MentionTextWatcher;-><init>(Lcom/narvii/chat/input/MentionedEditText;Lcom/narvii/chat/input/MentionedEditText$1;)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method static synthetic lambda$mentionUser$0(Lcom/narvii/chat/input/MentionedEditText$Range;Lcom/narvii/chat/input/MentionedEditText$Range;)I
    .locals 0

    .line 205
    iget p0, p0, Lcom/narvii/chat/input/MentionedEditText$Range;->from:I

    iget p1, p1, Lcom/narvii/chat/input/MentionedEditText$Range;->from:I

    sub-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public addPattern(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/narvii/chat/input/MentionedEditText;->mPatternMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clear()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/narvii/chat/input/MentionedEditText;->mRangeArrayList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 219
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    const-string v0, ""

    .line 221
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

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

    .line 213
    invoke-direct {p0}, Lcom/narvii/chat/input/MentionedEditText;->filterInvalidRange()V

    .line 214
    iget-object v0, p0, Lcom/narvii/chat/input/MentionedEditText;->mRangeArrayList:Ljava/util/List;

    return-object v0
.end method

.method public markLongClickMention()V
    .locals 1

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lcom/narvii/chat/input/MentionedEditText;->mentionByLongClick:Z

    return-void
.end method

.method public mentionUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 188
    iget v0, p0, Lcom/narvii/chat/input/MentionedEditText;->mentionStartIndex:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/narvii/chat/input/MentionedEditText;->mentionUser(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public mentionUser(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    .line 192
    iget-boolean v0, p0, Lcom/narvii/chat/input/MentionedEditText;->mentionEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    .line 196
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    if-eqz p4, :cond_1

    .line 198
    :try_start_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 199
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    add-int/2addr p4, v1

    invoke-interface {v0, v1, p4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 201
    :cond_1
    invoke-interface {v0, v1, p2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 202
    new-instance p4, Landroid/text/style/ForegroundColorSpan;

    iget v1, p0, Lcom/narvii/chat/input/MentionedEditText;->mMentionTextColor:I

    invoke-direct {p4, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v1, 0x21

    invoke-interface {v0, p4, p3, v2, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    const-string p4, " \u200c"

    .line 203
    invoke-interface {v0, v2, p4}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 204
    iget-object p4, p0, Lcom/narvii/chat/input/MentionedEditText;->mRangeArrayList:Ljava/util/List;

    new-instance v0, Lcom/narvii/chat/input/MentionedEditText$Range;

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v0, p1, p2, p3, v2}, Lcom/narvii/chat/input/MentionedEditText$Range;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object p1, p0, Lcom/narvii/chat/input/MentionedEditText;->mRangeArrayList:Ljava/util/List;

    sget-object p2, Lcom/narvii/chat/input/-$$Lambda$MentionedEditText$aq_3cAvzOTua7Suoae-S1EToh5w;->INSTANCE:Lcom/narvii/chat/input/-$$Lambda$MentionedEditText$aq_3cAvzOTua7Suoae-S1EToh5w;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 207
    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AT_MENTION"

    invoke-static {p2, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 76
    new-instance v0, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1, p0}, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;-><init>(Lcom/narvii/chat/input/MentionedEditText;Landroid/view/inputmethod/InputConnection;ZLcom/narvii/chat/input/MentionedEditText;)V

    return-object v0
.end method

.method protected onSelectionChanged(II)V
    .locals 2

    .line 96
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    .line 98
    iget-object v0, p0, Lcom/narvii/chat/input/MentionedEditText;->mLastSelectedRange:Lcom/narvii/chat/input/MentionedEditText$Range;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/narvii/chat/input/MentionedEditText$Range;->isEqual(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/input/MentionedEditText;->filterInvalidRange()V

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/input/MentionedEditText;->getRangeOfClosestMentionString(II)Lcom/narvii/chat/input/MentionedEditText$Range;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 106
    iget v0, v0, Lcom/narvii/chat/input/MentionedEditText$Range;->to:I

    if-ne v0, p2, :cond_1

    .line 107
    iput-boolean v1, p0, Lcom/narvii/chat/input/MentionedEditText;->mIsSelected:Z

    .line 110
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/input/MentionedEditText;->getRangeOfNearbyMentionString(II)Lcom/narvii/chat/input/MentionedEditText$Range;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-ne p1, p2, :cond_3

    .line 118
    invoke-virtual {v0, p1}, Lcom/narvii/chat/input/MentionedEditText$Range;->getAnchorPosition(I)I

    move-result p1

    .line 119
    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result p2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 121
    :cond_3
    iget v1, v0, Lcom/narvii/chat/input/MentionedEditText$Range;->to:I

    if-ge p2, v1, :cond_4

    .line 122
    invoke-virtual {p0, p1, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 124
    :cond_4
    iget v0, v0, Lcom/narvii/chat/input/MentionedEditText$Range;->from:I

    if-le p1, v0, :cond_5

    .line 125
    invoke-virtual {p0, v0, p2}, Landroid/widget/EditText;->setSelection(II)V

    :cond_5
    :goto_0
    return-void
.end method

.method public setMentionEnabled(Z)V
    .locals 0

    .line 150
    iput-boolean p1, p0, Lcom/narvii/chat/input/MentionedEditText;->mentionEnabled:Z

    if-nez p1, :cond_0

    .line 152
    iget-object p1, p0, Lcom/narvii/chat/input/MentionedEditText;->mRangeArrayList:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 153
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public setMentionTextColor(I)V
    .locals 0

    .line 168
    iput p1, p0, Lcom/narvii/chat/input/MentionedEditText;->mMentionTextColor:I

    return-void
.end method

.method public setOnMentionInputListener(Lcom/narvii/chat/input/MentionedEditText$OnMentionInputListener;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/narvii/chat/input/MentionedEditText;->mOnMentionInputListener:Lcom/narvii/chat/input/MentionedEditText$OnMentionInputListener;

    return-void
.end method

.method public setPattern(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/narvii/chat/input/MentionedEditText;->mPatternMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/input/MentionedEditText;->addPattern(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 81
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 83
    iget-object p1, p0, Lcom/narvii/chat/input/MentionedEditText;->mAction:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    .line 84
    new-instance p1, Lcom/narvii/chat/input/MentionedEditText$1;

    invoke-direct {p1, p0}, Lcom/narvii/chat/input/MentionedEditText$1;-><init>(Lcom/narvii/chat/input/MentionedEditText;)V

    iput-object p1, p0, Lcom/narvii/chat/input/MentionedEditText;->mAction:Ljava/lang/Runnable;

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/input/MentionedEditText;->mAction:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
