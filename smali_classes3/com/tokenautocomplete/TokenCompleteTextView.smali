.class public abstract Lcom/tokenautocomplete/TokenCompleteTextView;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "TokenCompleteTextView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tokenautocomplete/TokenCompleteTextView$TokenInputConnection;,
        Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;,
        Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;,
        Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;,
        Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;,
        Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;,
        Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;,
        Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/MultiAutoCompleteTextView;",
        "Landroid/widget/TextView$OnEditorActionListener;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final TAG:Ljava/lang/String; = "TokenAutoComplete"


# instance fields
.field private allowCollapse:Z

.field private allowDuplicates:Z

.field private deletionStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

.field private focusChanging:Z

.field private hiddenSpans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tokenautocomplete/TokenCompleteTextView<",
            "TT;>.TokenImageSpan;>;"
        }
    .end annotation
.end field

.field private hintVisible:Z

.field inInvalidate:Z

.field private initialized:Z

.field private lastLayout:Landroid/text/Layout;

.field private listener:Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;

.field private objects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private performBestGuess:Z

.field private prefix:Ljava/lang/String;

.field private savingState:Z

.field private selectedObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private shouldFocusNext:Z

.field private spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tokenautocomplete/TokenCompleteTextView<",
            "TT;>.TokenSpanWatcher;"
        }
    .end annotation
.end field

.field private splitChar:[C

.field private textWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tokenautocomplete/TokenCompleteTextView<",
            "TT;>.TokenTextWatcher;"
        }
    .end annotation
.end field

.field private tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

.field private tokenLimit:I

.field private tokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lcom/tokenautocomplete/TokenCompleteTextView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 197
    invoke-direct {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array p1, p1, [C

    .line 81
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->splitChar:[C

    .line 89
    sget-object p1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->_Parent:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->deletionStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    .line 90
    sget-object p1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->None:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    const-string p1, ""

    .line 91
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    const/4 p1, 0x0

    .line 92
    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowDuplicates:Z

    .line 95
    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->focusChanging:Z

    .line 96
    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->initialized:Z

    .line 97
    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->performBestGuess:Z

    .line 98
    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->savingState:Z

    .line 99
    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->shouldFocusNext:Z

    .line 100
    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    const/4 v0, -0x1

    .line 102
    iput v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenLimit:I

    .line 399
    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->inInvalidate:Z

    .line 198
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->init()V

    return-void

    nop

    :array_0
    .array-data 2
        0x2cs
        0x3bs
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 202
    invoke-direct {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array p1, p1, [C

    .line 81
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->splitChar:[C

    .line 89
    sget-object p1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->_Parent:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->deletionStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    .line 90
    sget-object p1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->None:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    const-string p1, ""

    .line 91
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    const/4 p1, 0x0

    .line 92
    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    const/4 p2, 0x0

    .line 93
    iput-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    const/4 p2, 0x1

    .line 94
    iput-boolean p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowDuplicates:Z

    .line 95
    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->focusChanging:Z

    .line 96
    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->initialized:Z

    .line 97
    iput-boolean p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->performBestGuess:Z

    .line 98
    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->savingState:Z

    .line 99
    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->shouldFocusNext:Z

    .line 100
    iput-boolean p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    const/4 p2, -0x1

    .line 102
    iput p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenLimit:I

    .line 399
    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->inInvalidate:Z

    .line 203
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->init()V

    return-void

    nop

    :array_0
    .array-data 2
        0x2cs
        0x3bs
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 207
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    new-array p1, p1, [C

    .line 81
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->splitChar:[C

    .line 89
    sget-object p1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->_Parent:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->deletionStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    .line 90
    sget-object p1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->None:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    const-string p1, ""

    .line 91
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    const/4 p1, 0x0

    .line 92
    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    const/4 p2, 0x0

    .line 93
    iput-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    const/4 p2, 0x1

    .line 94
    iput-boolean p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowDuplicates:Z

    .line 95
    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->focusChanging:Z

    .line 96
    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->initialized:Z

    .line 97
    iput-boolean p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->performBestGuess:Z

    .line 98
    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->savingState:Z

    .line 99
    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->shouldFocusNext:Z

    .line 100
    iput-boolean p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    const/4 p2, -0x1

    .line 102
    iput p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenLimit:I

    .line 399
    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->inInvalidate:Z

    .line 208
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->init()V

    return-void

    nop

    :array_0
    .array-data 2
        0x2cs
        0x3bs
    .end array-data
.end method

.method static synthetic access$1000(Lcom/tokenautocomplete/TokenCompleteTextView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->updateCountSpan()V

    return-void
.end method

.method static synthetic access$1100(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->removeSpan(Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/tokenautocomplete/TokenCompleteTextView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->clearSelections()V

    return-void
.end method

.method static synthetic access$1400(Lcom/tokenautocomplete/TokenCompleteTextView;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->savingState:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/tokenautocomplete/TokenCompleteTextView;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->focusChanging:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->listener:Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/tokenautocomplete/TokenCompleteTextView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->updateHint()V

    return-void
.end method

.method static synthetic access$1800(Lcom/tokenautocomplete/TokenCompleteTextView;Z)Z
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->deleteSelectedObject(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/tokenautocomplete/TokenCompleteTextView;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenLimit:I

    return p0
.end method

.method static synthetic access$300(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/ArrayList;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->objects:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tokenautocomplete/TokenCompleteTextView;C)Z
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->isSplitChar(C)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tokenautocomplete/TokenCompleteTextView;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowDuplicates:Z

    return p0
.end method

.method static synthetic access$700(Lcom/tokenautocomplete/TokenCompleteTextView;Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/tokenautocomplete/TokenCompleteTextView;->insertSpan(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$800(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/List;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenSpans:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    return-object p0
.end method

.method private api16Invalidate()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 403
    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->initialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->inInvalidate:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 404
    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->inInvalidate:Z

    .line 405
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getShadowRadius()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getShadowDx()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getShadowDy()F

    move-result v2

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getShadowColor()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/MultiAutoCompleteTextView;->setShadowLayer(FFFI)V

    const/4 v0, 0x0

    .line 406
    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->inInvalidate:Z

    :cond_0
    return-void
.end method

.method private buildSpannableForText(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 3

    .line 743
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->splitChar:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    .line 744
    new-instance v1, Landroid/text/SpannableStringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v0, p1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method private clearSelections()V
    .locals 5

    .line 1047
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->isSelectable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1049
    :cond_0
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1052
    :cond_1
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    const-class v2, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 1053
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    .line 1054
    iget-object v4, v4, Lcom/tokenautocomplete/ViewSpan;->view:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1056
    :cond_2
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->invalidate()V

    :cond_3
    :goto_1
    return-void
.end method

.method private deleteSelectedObject(Z)Z
    .locals 5

    .line 506
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 507
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    return p1

    .line 510
    :cond_0
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    const-class v2, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 511
    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v2, v0, v3

    .line 512
    iget-object v4, v2, Lcom/tokenautocomplete/ViewSpan;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 513
    invoke-direct {p0, v2}, Lcom/tokenautocomplete/TokenCompleteTextView;->removeSpan(Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;)V

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p1
.end method

.method private handleDone()V
    .locals 3

    .line 467
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->performCompletion()V

    .line 470
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 472
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private init()V
    .locals 4

    .line 133
    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->initialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 136
    :cond_0
    new-instance v0, Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;

    invoke-direct {v0}, Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->objects:Ljava/util/ArrayList;

    .line 138
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    .line 140
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/TokenCompleteTextView$1;)V

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    .line 141
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;

    invoke-direct {v0, p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/TokenCompleteTextView$1;)V

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->textWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenSpans:Ljava/util/List;

    .line 145
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->addListeners()V

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->setTextIsSelectable(Z)V

    .line 148
    invoke-virtual {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->setLongClickable(Z)V

    .line 151
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getInputType()I

    move-result v1

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setInputType(I)V

    .line 152
    invoke-virtual {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->setHorizontallyScrolling(Z)V

    .line 155
    invoke-virtual {p0, p0}, Landroid/widget/MultiAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    .line 158
    new-instance v3, Lcom/tokenautocomplete/TokenCompleteTextView$1;

    invoke-direct {v3, p0}, Lcom/tokenautocomplete/TokenCompleteTextView$1;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    aput-object v3, v2, v0

    invoke-virtual {p0, v2}, Landroid/widget/MultiAutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 192
    sget-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->Clear:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->setDeletionStyle(Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;)V

    .line 193
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->initialized:Z

    return-void
.end method

.method private insertSpan(Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tokenautocomplete/TokenCompleteTextView<",
            "TT;>.TokenImageSpan;)V"
        }
    .end annotation

    .line 962
    invoke-virtual {p1}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->getToken()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->insertSpan(Ljava/lang/Object;)V

    return-void
.end method

.method private insertSpan(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 958
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->insertSpan(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private insertSpan(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 915
    invoke-direct {p0, p2}, Lcom/tokenautocomplete/TokenCompleteTextView;->buildSpannableForText(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 916
    invoke-virtual {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->buildSpanForObject(Ljava/lang/Object;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    move-result-object v0

    .line 918
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 922
    :cond_0
    iget-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenSpans:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 949
    :cond_1
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenSpans:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 951
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    invoke-virtual {p1, v1, v0, v3, v3}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 952
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->updateCountSpan()V

    goto :goto_2

    .line 923
    :cond_2
    :goto_0
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    .line 925
    iget-boolean v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    if-eqz v4, :cond_3

    .line 927
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 928
    invoke-interface {v1, v2, p2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1

    .line 930
    :cond_3
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->currentCompletionText()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 931
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 934
    invoke-static {v1, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    .line 936
    :cond_4
    invoke-interface {v1, v2, p2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 938
    :goto_1
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    add-int/2addr p2, v2

    add-int/lit8 p2, p2, -0x1

    const/16 v4, 0x21

    invoke-interface {v1, v0, v2, p2, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 941
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->isFocused()Z

    move-result p2

    if-nez p2, :cond_5

    iget-boolean p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    if-eqz p2, :cond_5

    invoke-virtual {p0, v3}, Lcom/tokenautocomplete/TokenCompleteTextView;->performCollapse(Z)V

    .line 945
    :cond_5
    iget-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->objects:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 946
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    invoke-virtual {p1, v1, v0, v3, v3}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    :cond_6
    :goto_2
    return-void
.end method

.method private isSplitChar(C)Z
    .locals 5

    .line 318
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->splitChar:[C

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-char v4, v0, v3

    if-ne p1, v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private removeSpan(Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tokenautocomplete/TokenCompleteTextView<",
            "TT;>.TokenImageSpan;)V"
        }
    .end annotation

    .line 891
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 895
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    const-class v3, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    .line 896
    array-length v1, v1

    if-nez v1, :cond_1

    .line 897
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    invoke-interface {v0, p1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v0, p1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 901
    :cond_1
    invoke-interface {v0, p1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, p1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-interface {v0, v1, p1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 903
    iget-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->isFocused()Z

    move-result p1

    if-nez p1, :cond_2

    .line 904
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->updateCountSpan()V

    :cond_2
    return-void
.end method

.method private updateCountSpan()V
    .locals 9

    .line 869
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 870
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    const-class v2, Lcom/tokenautocomplete/CountSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/tokenautocomplete/CountSpan;

    .line 871
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenSpans:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 872
    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v1, v3

    if-nez v2, :cond_0

    .line 875
    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v6, v7}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 876
    invoke-interface {v0, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_1

    .line 880
    :cond_0
    iget-object v6, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenSpans:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/tokenautocomplete/CountSpan;->setCount(I)V

    .line 881
    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    const/16 v8, 0x21

    invoke-interface {v0, v5, v6, v7, v8}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateHint()V
    .locals 11

    .line 993
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 994
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v0, :cond_6

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 1000
    :cond_0
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 1001
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    const-class v3, Lcom/tokenautocomplete/HintSpan;

    const/4 v4, 0x0

    invoke-interface {v0, v4, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/tokenautocomplete/HintSpan;

    const/4 v3, 0x0

    .line 1003
    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 1004
    array-length v6, v2

    if-lez v6, :cond_1

    .line 1005
    aget-object v3, v2, v4

    .line 1006
    invoke-interface {v0, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v0, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    sub-int/2addr v2, v6

    add-int/2addr v5, v2

    .line 1009
    :cond_1
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    if-ne v2, v5, :cond_4

    const/4 v2, 0x1

    .line 1010
    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    if-eqz v3, :cond_2

    return-void

    .line 1017
    :cond_2
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1020
    invoke-virtual {v2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v4

    move v7, v4

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    .line 1022
    :goto_0
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v10

    .line 1024
    new-instance v2, Lcom/tokenautocomplete/HintSpan;

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getTextSize()F

    move-result v3

    float-to-int v8, v3

    move-object v5, v2

    move-object v9, v10

    invoke-direct/range {v5 .. v10}, Lcom/tokenautocomplete/HintSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 1025
    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {v0, v3, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1026
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v3, v4

    const/16 v4, 0x21

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 1027
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->setSelection(I)V

    goto :goto_1

    :cond_4
    if-nez v3, :cond_5

    return-void

    .line 1035
    :cond_5
    invoke-interface {v0, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 1036
    invoke-interface {v0, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 1038
    invoke-interface {v0, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    const-string v3, ""

    .line 1039
    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1041
    iput-boolean v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method protected addListeners()V
    .locals 5

    .line 108
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    const/4 v2, 0x0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 111
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->textWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;

    invoke-virtual {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public addObject(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, ""

    .line 821
    invoke-virtual {p0, p1, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->addObject(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public addObject(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 803
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/tokenautocomplete/TokenCompleteTextView$3;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Ljava/lang/Object;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public allowCollapse(Z)V
    .locals 0

    .line 354
    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    return-void
.end method

.method public allowDuplicates(Z)V
    .locals 0

    .line 334
    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowDuplicates:Z

    return-void
.end method

.method protected buildSpanForObject(Ljava/lang/Object;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/tokenautocomplete/TokenCompleteTextView<",
            "TT;>.TokenImageSpan;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 751
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->getViewForObject(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 752
    new-instance v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->maxTextWidth()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Landroid/view/View;Ljava/lang/Object;I)V

    return-object v1
.end method

.method public clear()V
    .locals 1

    .line 973
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$5;

    invoke-direct {v0, p0}, Lcom/tokenautocomplete/TokenCompleteTextView$5;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    invoke-virtual {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 3

    .line 722
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->selectedObject:Ljava/lang/Object;

    .line 725
    sget-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$7;->$SwitchMap$com$tokenautocomplete$TokenCompleteTextView$TokenDeleteStyle:[I

    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->deletionStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, ""

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 734
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 731
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    return-object v2

    .line 729
    :cond_2
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->currentCompletionText()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v2
.end method

.method protected convertSerializableArrayToObjectArray(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/io/Serializable;",
            ">;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    return-object p1
.end method

.method protected currentCompletionText()Ljava/lang/String;
    .locals 4

    .line 384
    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 386
    :cond_0
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 387
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getSelectionEnd()I

    move-result v1

    .line 388
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v2, v0, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 389
    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 390
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 392
    :cond_1
    invoke-static {v0, v2, v1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract defaultObject(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public enoughToFilter()Z
    .locals 4

    .line 422
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 424
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getSelectionEnd()I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_2

    .line 425
    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v3, :cond_0

    goto :goto_0

    .line 429
    :cond_0
    invoke-interface {v3, v0, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 430
    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 431
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_1
    sub-int/2addr v1, v0

    .line 435
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getThreshold()I

    move-result v0

    const/4 v3, 0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-lt v1, v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2
.end method

.method public extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 1

    .line 789
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string p2, "TokenAutoComplete"

    const-string v0, "extractText hit IndexOutOfBoundsException. This may be normal."

    .line 791
    invoke-static {p2, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return p1
.end method

.method public getObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->objects:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getSerializableObjects()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .line 1209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1210
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getObjects()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "TokenAutoComplete"

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1211
    instance-of v4, v2, Ljava/io/Serializable;

    if-eqz v4, :cond_0

    .line 1212
    check-cast v2, Ljava/io/Serializable;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1214
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to save \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1217
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    const-string v1, "You should make your objects Serializable or override\ngetSerializableObjects and convertSerializableArrayToObjectArray"

    .line 1220
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method protected abstract getViewForObject(Ljava/lang/Object;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method public invalidate()V
    .locals 2

    .line 413
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 414
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->api16Invalidate()V

    .line 417
    :cond_0
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->invalidate()V

    return-void
.end method

.method protected maxTextWidth()F
    .locals 2

    .line 396
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3

    .line 455
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenInputConnection;

    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenInputConnection;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Landroid/view/inputmethod/InputConnection;Z)V

    .line 456
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v2, -0x40000001    # -1.9999999f

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 457
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    return-object v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 525
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->handleDone()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 710
    invoke-super {p0, p1, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-nez p1, :cond_0

    .line 713
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->performCompletion()V

    .line 716
    :cond_0
    iget-boolean p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->performCollapse(Z)V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/16 v0, 0x17

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    const/16 v0, 0x43

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 498
    :cond_0
    invoke-direct {p0, v2}, Lcom/tokenautocomplete/TokenCompleteTextView;->deleteSelectedObject(Z)Z

    move-result v0

    goto :goto_1

    .line 492
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 493
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->shouldFocusNext:Z

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    .line 502
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_2
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 477
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    .line 478
    iget-boolean p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->shouldFocusNext:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 479
    iput-boolean p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->shouldFocusNext:Z

    .line 480
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->handleDone()V

    :cond_0
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 609
    invoke-super/range {p0 .. p5}, Landroid/widget/MultiAutoCompleteTextView;->onLayout(ZIIII)V

    .line 610
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1258
    instance-of v0, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;

    if-nez v0, :cond_0

    .line 1259
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1263
    :cond_0
    check-cast p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;

    .line 1264
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1266
    iget-object v0, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->prefix:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1267
    iget-object v0, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->prefix:Ljava/lang/String;

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    .line 1268
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->updateHint()V

    .line 1269
    iget-boolean v0, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->allowCollapse:Z

    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    .line 1270
    iget-boolean v0, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->allowDuplicates:Z

    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowDuplicates:Z

    .line 1271
    iget-boolean v0, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->performBestGuess:Z

    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->performBestGuess:Z

    .line 1272
    iget-object v0, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    .line 1273
    iget-object v0, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->tokenDeleteStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->deletionStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    .line 1274
    iget-object v0, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->splitChar:[C

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->splitChar:[C

    .line 1276
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->addListeners()V

    .line 1277
    iget-object p1, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->baseObjects:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->convertSerializableArrayToObjectArray(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1278
    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->addObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 1282
    :cond_1
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->isFocused()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    if-eqz p1, :cond_2

    .line 1283
    new-instance p1, Lcom/tokenautocomplete/TokenCompleteTextView$6;

    invoke-direct {p1, p0}, Lcom/tokenautocomplete/TokenCompleteTextView$6;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    invoke-virtual {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1233
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getSerializableObjects()Ljava/util/ArrayList;

    move-result-object v0

    .line 1235
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->removeListeners()V

    const/4 v1, 0x1

    .line 1239
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->savingState:Z

    .line 1240
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const/4 v2, 0x0

    .line 1241
    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->savingState:Z

    .line 1242
    new-instance v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;

    invoke-direct {v2, v1}, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1244
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    iput-object v1, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->prefix:Ljava/lang/String;

    .line 1245
    iget-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    iput-boolean v1, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->allowCollapse:Z

    .line 1246
    iget-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowDuplicates:Z

    iput-boolean v1, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->allowDuplicates:Z

    .line 1247
    iget-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->performBestGuess:Z

    iput-boolean v1, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->performBestGuess:Z

    .line 1248
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    iput-object v1, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    .line 1249
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->deletionStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    iput-object v1, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->tokenDeleteStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    .line 1250
    iput-object v0, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->baseObjects:Ljava/util/ArrayList;

    .line 1251
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->splitChar:[C

    iput-object v0, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->splitChar:[C

    return-object v2
.end method

.method protected onSelectionChanged(II)V
    .locals 5

    .line 567
    iget-boolean p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 574
    :cond_0
    iget-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->isSelectable()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 575
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 577
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->clearSelections()V

    .line 582
    :cond_1
    iget-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lt p1, p2, :cond_2

    iget-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 584
    :cond_2
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setSelection(I)V

    goto :goto_2

    .line 586
    :cond_3
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 589
    const-class v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    invoke-interface {p2, p1, p1, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 590
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_6

    aget-object v3, v1, v0

    .line 591
    invoke-interface {p2, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    if-gt p1, v4, :cond_5

    .line 592
    invoke-interface {p2, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    if-ge v3, p1, :cond_5

    .line 593
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p1

    if-ne v4, p1, :cond_4

    .line 594
    invoke-virtual {p0, v4}, Landroid/widget/MultiAutoCompleteTextView;->setSelection(I)V

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 596
    invoke-virtual {p0, v4}, Landroid/widget/MultiAutoCompleteTextView;->setSelection(I)V

    :goto_1
    return-void

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 603
    :cond_6
    invoke-super {p0, p1, p1}, Landroid/widget/MultiAutoCompleteTextView;->onSelectionChanged(II)V

    :goto_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 533
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 534
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 537
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    sget-object v3, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->None:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    .line 538
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 541
    :goto_0
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->isFocused()Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    if-eqz v3, :cond_2

    if-ne v0, v5, :cond_2

    .line 543
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v0, v3}, Landroid/widget/MultiAutoCompleteTextView;->getOffsetForPosition(FF)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 546
    const-class v3, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    invoke-interface {v1, v0, v0, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 548
    array-length v1, v0

    if-lez v1, :cond_1

    .line 549
    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->onClick()V

    const/4 v2, 0x1

    goto :goto_1

    .line 553
    :cond_1
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->clearSelections()V

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 558
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    sget-object v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->None:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    if-eq v0, v1, :cond_3

    .line 559
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_3
    return v2
.end method

.method public performBestGuess(Z)V
    .locals 0

    .line 345
    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->performBestGuess:Z

    return-void
.end method

.method public performCollapse(Z)V
    .locals 12

    const/4 v0, 0x1

    .line 621
    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->focusChanging:Z

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 623
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 624
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    if-eqz v2, :cond_6

    .line 626
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v2

    .line 627
    const-class v3, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    invoke-interface {p1, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 628
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->objects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    array-length v5, v3

    sub-int/2addr v4, v5

    .line 631
    const-class v5, Lcom/tokenautocomplete/CountSpan;

    invoke-interface {p1, v1, v2, v5}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/tokenautocomplete/CountSpan;

    if-lez v4, :cond_6

    .line 633
    array-length v5, v5

    if-nez v5, :cond_6

    add-int/2addr v2, v0

    .line 635
    new-instance v5, Lcom/tokenautocomplete/CountSpan;

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getCurrentTextColor()I

    move-result v9

    .line 636
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getTextSize()F

    move-result v6

    float-to-int v10, v6

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->maxTextWidth()F

    move-result v6

    float-to-int v11, v6

    move-object v6, v5

    move v7, v4

    invoke-direct/range {v6 .. v11}, Lcom/tokenautocomplete/CountSpan;-><init>(ILandroid/content/Context;III)V

    .line 637
    iget-object v6, v5, Lcom/tokenautocomplete/CountSpan;->text:Ljava/lang/String;

    invoke-interface {p1, v2, v6}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 639
    iget-object v6, v5, Lcom/tokenautocomplete/CountSpan;->text:Ljava/lang/String;

    .line 640
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    iget-object v7, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    invoke-virtual {v7}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    .line 639
    invoke-static {p1, v1, v6, v7}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v6

    .line 642
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->maxTextWidth()F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 643
    iget-object v6, v5, Lcom/tokenautocomplete/CountSpan;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    invoke-interface {p1, v2, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 645
    array-length v2, v3

    if-lez v2, :cond_0

    .line 646
    array-length v2, v3

    sub-int/2addr v2, v0

    aget-object v2, v3, v2

    .line 647
    invoke-interface {p1, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v4, v0

    .line 648
    invoke-virtual {v5, v4}, Lcom/tokenautocomplete/CountSpan;->setCount(I)V

    goto :goto_0

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    move v2, v0

    .line 653
    :goto_0
    iget-object v0, v5, Lcom/tokenautocomplete/CountSpan;->text:Ljava/lang/String;

    invoke-interface {p1, v2, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 656
    :cond_1
    iget-object v0, v5, Lcom/tokenautocomplete/CountSpan;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    const/16 v3, 0x21

    invoke-interface {p1, v5, v2, v0, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 661
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, v5, Lcom/tokenautocomplete/CountSpan;->text:Ljava/lang/String;

    .line 662
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    const-class v4, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    invoke-interface {p1, v2, v3, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 661
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenSpans:Ljava/util/List;

    .line 663
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenSpans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 664
    invoke-direct {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->removeSpan(Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;)V

    goto :goto_1

    .line 670
    :cond_2
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 672
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const-class v2, Lcom/tokenautocomplete/CountSpan;

    invoke-interface {p1, v1, v0, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tokenautocomplete/CountSpan;

    .line 673
    array-length v2, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 674
    invoke-interface {p1, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p1, v5, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 675
    invoke-interface {p1, v4}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 679
    :cond_3
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenSpans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 680
    invoke-direct {p0, v2}, Lcom/tokenautocomplete/TokenCompleteTextView;->insertSpan(Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;)V

    goto :goto_3

    .line 682
    :cond_4
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenSpans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 684
    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    if-eqz v0, :cond_5

    .line 685
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->setSelection(I)V

    goto :goto_4

    .line 689
    :cond_5
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$2;

    invoke-direct {v0, p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView$2;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Landroid/text/Editable;)V

    const-wide/16 v2, 0xa

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/MultiAutoCompleteTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 697
    :goto_4
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const-class v3, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    .line 698
    array-length v0, v0

    if-nez v0, :cond_6

    .line 700
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    const/16 v3, 0x12

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 705
    :cond_6
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->focusChanging:Z

    return-void
.end method

.method public performCompletion()V
    .locals 2

    .line 440
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getListSelection()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->performBestGuess:Z

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 445
    :cond_0
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->currentCompletionText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->defaultObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 447
    :goto_0
    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 449
    :cond_1
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->performCompletion()V

    :goto_1
    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 214
    iget-object p4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    if-ge p2, p4, :cond_0

    .line 215
    iget-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    .line 217
    :cond_0
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getFilter()Landroid/widget/Filter;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 219
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p4, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    :cond_1
    return-void
.end method

.method protected removeListeners()V
    .locals 5

    .line 119
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 121
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    const-class v2, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    .line 122
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 123
    invoke-interface {v0, v4}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->textWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;

    invoke-virtual {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    return-void
.end method

.method public removeObject(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 831
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$4;

    invoke-direct {v0, p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView$4;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 8

    .line 757
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->clearComposingText()V

    .line 760
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->selectedObject:Ljava/lang/Object;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 762
    :cond_0
    invoke-direct {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->buildSpannableForText(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 763
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->selectedObject:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->buildSpanForObject(Ljava/lang/Object;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    move-result-object v0

    .line 765
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 766
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getSelectionEnd()I

    move-result v3

    .line 767
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v4, v2, v3}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 768
    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 769
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 771
    :cond_1
    invoke-static {v2, v4, v3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_4

    if-nez v0, :cond_2

    .line 775
    invoke-interface {v2, v4, v3, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 776
    :cond_2
    iget-boolean v6, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowDuplicates:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->getToken()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 777
    invoke-interface {v2, v4, v3, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 779
    :cond_3
    invoke-static {v2, v4, v3, v5}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 780
    invoke-interface {v2, v4, v3, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 781
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    add-int/2addr p1, v4

    add-int/lit8 p1, p1, -0x1

    const/16 v1, 0x21

    invoke-interface {v2, v0, v4, p1, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setDeletionStyle(Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->deletionStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    .line 266
    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    .line 267
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 269
    invoke-interface {v0, v1, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 271
    :cond_0
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    .line 273
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->updateHint()V

    return-void
.end method

.method public setSplitChar(C)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x20

    if-ne p1, v2, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [C

    const/16 v3, 0xa7

    aput-char v3, v2, v0

    aput-char p1, v2, v1

    .line 307
    invoke-virtual {p0, v2}, Lcom/tokenautocomplete/TokenCompleteTextView;->setSplitChar([C)V

    goto :goto_0

    :cond_0
    new-array v1, v1, [C

    aput-char p1, v1, v0

    .line 308
    invoke-virtual {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->setSplitChar([C)V

    :goto_0
    return-void
.end method

.method public setSplitChar([C)V
    .locals 4

    const/4 v0, 0x0

    .line 292
    aget-char v1, p1, v0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [C

    .line 293
    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    aget-char v2, p1, v3

    goto :goto_0

    :cond_0
    const/16 v2, 0xa7

    :goto_0
    aput-char v2, v1, v0

    aget-char p1, p1, v0

    aput-char p1, v1, v3

    move-object p1, v1

    .line 295
    :cond_1
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->splitChar:[C

    .line 297
    new-instance v0, Lcom/tokenautocomplete/CharacterTokenizer;

    invoke-direct {v0, p1}, Lcom/tokenautocomplete/CharacterTokenizer;-><init>([C)V

    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    return-void
.end method

.method public setTokenClickStyle(Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    return-void
.end method

.method public setTokenLimit(I)V
    .locals 0

    .line 363
    iput p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenLimit:I

    return-void
.end method

.method public setTokenListener(Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->listener:Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;

    return-void
.end method

.method public setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V
    .locals 0

    .line 226
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 227
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    return-void
.end method
