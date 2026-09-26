.class public abstract Lcom/tokenautocomplete/TokenCompleteTextView;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tokenautocomplete/TokenCompleteTextView$m;,
        Lcom/tokenautocomplete/TokenCompleteTextView$n;,
        Lcom/tokenautocomplete/TokenCompleteTextView$i;,
        Lcom/tokenautocomplete/TokenCompleteTextView$h;,
        Lcom/tokenautocomplete/TokenCompleteTextView$l;,
        Lcom/tokenautocomplete/TokenCompleteTextView$k;,
        Lcom/tokenautocomplete/TokenCompleteTextView$j;,
        Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;
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

.field private deletionStyle:Lcom/tokenautocomplete/TokenCompleteTextView$i;

.field private focusChanging:Z

.field private hiddenSpans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tokenautocomplete/TokenCompleteTextView<",
            "TT;>.j;>;"
        }
    .end annotation
.end field

.field private hintVisible:Z

.field inInvalidate:Z

.field private initialized:Z

.field private lastLayout:Landroid/text/Layout;

.field private listener:Lcom/tokenautocomplete/TokenCompleteTextView$l;

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

.field private spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tokenautocomplete/TokenCompleteTextView<",
            "TT;>.m;"
        }
    .end annotation
.end field

.field private splitChar:[C

.field private textWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tokenautocomplete/TokenCompleteTextView<",
            "TT;>.n;"
        }
    .end annotation
.end field

.field private tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$h;

.field private tokenLimit:I

.field private tokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array p1, p1, [C

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->splitChar:[C

    .line 2
    sget-object p1, Lcom/tokenautocomplete/TokenCompleteTextView$i;->_Parent:Lcom/tokenautocomplete/TokenCompleteTextView$i;

    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->deletionStyle:Lcom/tokenautocomplete/TokenCompleteTextView$i;

    .line 3
    sget-object p1, Lcom/tokenautocomplete/TokenCompleteTextView$h;->None:Lcom/tokenautocomplete/TokenCompleteTextView$h;

    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$h;

    const-string p1, ""

    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowDuplicates:Z

    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->focusChanging:Z

    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->initialized:Z

    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->performBestGuess:Z

    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->savingState:Z

    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->shouldFocusNext:Z

    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenLimit:I

    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->inInvalidate:Z

    .line 4
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

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array p1, p1, [C

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->splitChar:[C

    .line 6
    sget-object p1, Lcom/tokenautocomplete/TokenCompleteTextView$i;->_Parent:Lcom/tokenautocomplete/TokenCompleteTextView$i;

    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->deletionStyle:Lcom/tokenautocomplete/TokenCompleteTextView$i;

    .line 7
    sget-object p1, Lcom/tokenautocomplete/TokenCompleteTextView$h;->None:Lcom/tokenautocomplete/TokenCompleteTextView$h;

    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$h;

    const-string p1, ""

    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowDuplicates:Z

    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->focusChanging:Z

    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->initialized:Z

    iput-boolean p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->performBestGuess:Z

    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->savingState:Z

    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->shouldFocusNext:Z

    iput-boolean p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    const/4 p2, -0x1

    iput p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenLimit:I

    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->inInvalidate:Z

    .line 8
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

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    new-array p1, p1, [C

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->splitChar:[C

    .line 10
    sget-object p1, Lcom/tokenautocomplete/TokenCompleteTextView$i;->_Parent:Lcom/tokenautocomplete/TokenCompleteTextView$i;

    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->deletionStyle:Lcom/tokenautocomplete/TokenCompleteTextView$i;

    .line 11
    sget-object p1, Lcom/tokenautocomplete/TokenCompleteTextView$h;->None:Lcom/tokenautocomplete/TokenCompleteTextView$h;

    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$h;

    const-string p1, ""

    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowDuplicates:Z

    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->focusChanging:Z

    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->initialized:Z

    iput-boolean p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->performBestGuess:Z

    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->savingState:Z

    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->shouldFocusNext:Z

    iput-boolean p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    const/4 p2, -0x1

    iput p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenLimit:I

    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->inInvalidate:Z

    .line 12
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->init()V

    return-void

    nop

    :array_0
    .array-data 2
        0x2cs
        0x3bs
    .end array-data
.end method

.method static bridge synthetic a(Lcom/tokenautocomplete/TokenCompleteTextView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowDuplicates:Z

    return p0
.end method

.method private api16Invalidate()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->initialized:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->inInvalidate:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->inInvalidate:Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowRadius()F

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDx()F

    .line 19
    move-result v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDy()F

    .line 23
    move-result v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowColor()I

    .line 27
    move-result v3

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 31
    const/4 v0, 0x0

    .line 32
    .line 33
    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->inInvalidate:Z

    .line 34
    :cond_0
    return-void
.end method

.method static bridge synthetic b(Lcom/tokenautocomplete/TokenCompleteTextView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->focusChanging:Z

    return p0
.end method

.method private buildSpannableForText(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->splitChar:[C

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    aget-char v0, v0, v1

    .line 6
    .line 7
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, p1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 36
    return-object v1
.end method

.method static bridge synthetic c(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenSpans:Ljava/util/List;

    return-object p0
.end method

.method private clearSelections()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$h;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/tokenautocomplete/TokenCompleteTextView$h;->b()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    return-void

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 22
    move-result v1

    .line 23
    .line 24
    const-class v2, Lcom/tokenautocomplete/TokenCompleteTextView$j;

    .line 25
    const/4 v3, 0x0

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, [Lcom/tokenautocomplete/TokenCompleteTextView$j;

    .line 32
    array-length v1, v0

    .line 33
    move v2, v3

    .line 34
    .line 35
    :goto_0
    if-ge v2, v1, :cond_2

    .line 36
    .line 37
    aget-object v4, v0, v2

    .line 38
    .line 39
    iget-object v4, v4, Lcom/tokenautocomplete/e;->view:Landroid/view/View;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v3}, Landroid/view/View;->setSelected(Z)V

    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->invalidate()V

    .line 49
    :cond_3
    :goto_1
    return-void
.end method

.method static bridge synthetic d(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$l;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method private deleteSelectedObject(Z)Z
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$h;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/tokenautocomplete/TokenCompleteTextView$h;->b()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    return p1

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 21
    move-result v1

    .line 22
    .line 23
    const-class v2, Lcom/tokenautocomplete/TokenCompleteTextView$j;

    .line 24
    const/4 v3, 0x0

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    check-cast v0, [Lcom/tokenautocomplete/TokenCompleteTextView$j;

    .line 31
    array-length v1, v0

    .line 32
    .line 33
    :goto_0
    if-ge v3, v1, :cond_2

    .line 34
    .line 35
    aget-object v2, v0, v3

    .line 36
    .line 37
    iget-object v4, v2, Lcom/tokenautocomplete/e;->view:Landroid/view/View;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4}, Landroid/view/View;->isSelected()Z

    .line 41
    move-result v4

    .line 42
    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, v2}, Lcom/tokenautocomplete/TokenCompleteTextView;->removeSpan(Lcom/tokenautocomplete/TokenCompleteTextView$j;)V

    .line 47
    const/4 p1, 0x1

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    :goto_1
    return p1
.end method

.method static bridge synthetic e(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->objects:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/tokenautocomplete/TokenCompleteTextView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->savingState:Z

    return p0
.end method

.method static bridge synthetic h(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$m;

    return-object p0
.end method

.method private handleDone()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->performCompletion()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    const-string v1, "input_method"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 24
    return-void
.end method

.method static bridge synthetic i(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$h;

    return-object p0
.end method

.method private init()V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->initialized:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    new-instance v0, Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->objects:Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 24
    .line 25
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$m;

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView$m;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/c;)V

    .line 30
    .line 31
    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$m;

    .line 32
    .line 33
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$n;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView$n;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/d;)V

    .line 37
    .line 38
    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->textWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$n;

    .line 39
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenSpans:Ljava/util/List;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->addListeners()V

    .line 49
    const/4 v0, 0x0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    .line 59
    move-result v1

    .line 60
    .line 61
    const/high16 v2, 0x90000

    .line 62
    or-int/2addr v1, v2

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 72
    const/4 v1, 0x1

    .line 73
    .line 74
    new-array v2, v1, [Landroid/text/InputFilter;

    .line 75
    .line 76
    new-instance v3, Lcom/tokenautocomplete/TokenCompleteTextView$a;

    .line 77
    .line 78
    .line 79
    invoke-direct {v3, p0}, Lcom/tokenautocomplete/TokenCompleteTextView$a;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    .line 80
    .line 81
    aput-object v3, v2, v0

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 85
    .line 86
    sget-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$i;->Clear:Lcom/tokenautocomplete/TokenCompleteTextView$i;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->setDeletionStyle(Lcom/tokenautocomplete/TokenCompleteTextView$i;)V

    .line 90
    .line 91
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->initialized:Z

    .line 92
    return-void
.end method

.method private insertSpan(Lcom/tokenautocomplete/TokenCompleteTextView$j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tokenautocomplete/TokenCompleteTextView<",
            "TT;>.j;)V"
        }
    .end annotation

    .line 20
    invoke-virtual {p1}, Lcom/tokenautocomplete/TokenCompleteTextView$j;->b()Ljava/lang/Object;

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

    .line 19
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

    .line 1
    invoke-direct {p0, p2}, Lcom/tokenautocomplete/TokenCompleteTextView;->buildSpannableForText(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 2
    invoke-virtual {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->buildSpanForObject(Ljava/lang/Object;)Lcom/tokenautocomplete/TokenCompleteTextView$j;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenSpans:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenSpans:Ljava/util/List;

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$m;

    .line 6
    invoke-virtual {p1, v1, v0, v3, v3}, Lcom/tokenautocomplete/TokenCompleteTextView$m;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 7
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->updateCountSpan()V

    goto :goto_2

    .line 8
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-boolean v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    if-eqz v4, :cond_3

    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 10
    invoke-interface {v1, v2, p2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->currentCompletionText()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 12
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 13
    invoke-static {v1, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    .line 14
    :cond_4
    invoke-interface {v1, v2, p2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 15
    :goto_1
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    add-int/2addr p2, v2

    add-int/lit8 p2, p2, -0x1

    const/16 v4, 0x21

    invoke-interface {v1, v0, v2, p2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result p2

    if-nez p2, :cond_5

    iget-boolean p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    if-eqz p2, :cond_5

    invoke-virtual {p0, v3}, Lcom/tokenautocomplete/TokenCompleteTextView;->performCollapse(Z)V

    :cond_5
    iget-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->objects:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$m;

    .line 18
    invoke-virtual {p1, v1, v0, v3, v3}, Lcom/tokenautocomplete/TokenCompleteTextView$m;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    :cond_6
    :goto_2
    return-void
.end method

.method private isSplitChar(C)Z
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->splitChar:[C

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    .line 7
    :goto_0
    if-ge v3, v1, :cond_1

    .line 8
    .line 9
    aget-char v4, v0, v3

    .line 10
    .line 11
    if-ne p1, v4, :cond_0

    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    .line 15
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    return v2
.end method

.method static bridge synthetic j(Lcom/tokenautocomplete/TokenCompleteTextView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenLimit:I

    return p0
.end method

.method static bridge synthetic k(Lcom/tokenautocomplete/TokenCompleteTextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->clearSelections()V

    return-void
.end method

.method static bridge synthetic l(Lcom/tokenautocomplete/TokenCompleteTextView;Z)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->deleteSelectedObject(Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic m(Lcom/tokenautocomplete/TokenCompleteTextView;Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tokenautocomplete/TokenCompleteTextView;->insertSpan(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static bridge synthetic n(Lcom/tokenautocomplete/TokenCompleteTextView;C)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->isSplitChar(C)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic o(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/TokenCompleteTextView$j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->removeSpan(Lcom/tokenautocomplete/TokenCompleteTextView$j;)V

    return-void
.end method

.method static bridge synthetic p(Lcom/tokenautocomplete/TokenCompleteTextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->updateCountSpan()V

    return-void
.end method

.method static bridge synthetic q(Lcom/tokenautocomplete/TokenCompleteTextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->updateHint()V

    return-void
.end method

.method private removeSpan(Lcom/tokenautocomplete/TokenCompleteTextView$j;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tokenautocomplete/TokenCompleteTextView<",
            "TT;>.j;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 11
    move-result v1

    .line 12
    .line 13
    const-class v2, Lcom/tokenautocomplete/TokenCompleteTextView$m;

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, [Lcom/tokenautocomplete/TokenCompleteTextView$m;

    .line 21
    array-length v1, v1

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$m;

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 29
    move-result v2

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 33
    move-result v3

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/tokenautocomplete/TokenCompleteTextView$m;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 40
    move-result v1

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 44
    move-result p1

    .line 45
    .line 46
    add-int/lit8 p1, p1, 0x1

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v1, p1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 50
    .line 51
    iget-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 57
    move-result p1

    .line 58
    .line 59
    if-nez p1, :cond_2

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->updateCountSpan()V

    .line 63
    :cond_2
    return-void
.end method

.method private updateCountSpan()V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 8
    move-result v1

    .line 9
    .line 10
    const-class v2, Lcom/tokenautocomplete/b;

    .line 11
    const/4 v3, 0x0

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    check-cast v1, [Lcom/tokenautocomplete/b;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenSpans:Ljava/util/List;

    .line 20
    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 23
    move-result v2

    .line 24
    array-length v4, v1

    .line 25
    .line 26
    :goto_0
    if-ge v3, v4, :cond_1

    .line 27
    .line 28
    aget-object v5, v1, v3

    .line 29
    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 34
    move-result v6

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 38
    move-result v7

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v6, v7}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 42
    .line 43
    .line 44
    invoke-interface {v0, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_0
    iget-object v6, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenSpans:Ljava/util/List;

    .line 48
    .line 49
    .line 50
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 51
    move-result v6

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v6}, Lcom/tokenautocomplete/b;->b(I)V

    .line 55
    .line 56
    .line 57
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 58
    move-result v6

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 62
    move-result v7

    .line 63
    .line 64
    const/16 v8, 0x21

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, v5, v6, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 68
    .line 69
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    return-void
.end method

.method private updateHint()V
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    if-eqz v0, :cond_6

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto/16 :goto_1

    .line 15
    .line 16
    :cond_0
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 20
    move-result v2

    .line 21
    .line 22
    if-lez v2, :cond_6

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 26
    move-result v2

    .line 27
    .line 28
    const-class v3, Lcom/tokenautocomplete/HintSpan;

    .line 29
    const/4 v4, 0x0

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v4, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    check-cast v2, [Lcom/tokenautocomplete/HintSpan;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 41
    move-result v3

    .line 42
    array-length v5, v2

    .line 43
    .line 44
    if-lez v5, :cond_1

    .line 45
    .line 46
    aget-object v2, v2, v4

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 50
    move-result v5

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 54
    move-result v6

    .line 55
    sub-int/2addr v5, v6

    .line 56
    add-int/2addr v3, v5

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 v2, 0x0

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 62
    move-result v5

    .line 63
    .line 64
    if-ne v5, v3, :cond_4

    .line 65
    const/4 v3, 0x1

    .line 66
    .line 67
    iput-boolean v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    .line 68
    .line 69
    if-eqz v2, :cond_2

    .line 70
    return-void

    .line 71
    .line 72
    .line 73
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 74
    move-result-object v2

    .line 75
    .line 76
    if-eqz v2, :cond_3

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Landroid/graphics/Typeface;->getStyle()I

    .line 80
    move-result v4

    .line 81
    :cond_3
    move v7, v4

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/widget/TextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    .line 85
    move-result-object v10

    .line 86
    .line 87
    new-instance v2, Lcom/tokenautocomplete/HintSpan;

    .line 88
    const/4 v6, 0x0

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    .line 92
    move-result v3

    .line 93
    float-to-int v8, v3

    .line 94
    move-object v5, v2

    .line 95
    move-object v9, v10

    .line 96
    .line 97
    .line 98
    invoke-direct/range {v5 .. v10}, Lcom/tokenautocomplete/HintSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 99
    .line 100
    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 104
    move-result v3

    .line 105
    .line 106
    .line 107
    invoke-interface {v0, v3, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 108
    .line 109
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 113
    move-result v1

    .line 114
    .line 115
    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 119
    move-result v3

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    .line 123
    move-result-object v4

    .line 124
    .line 125
    .line 126
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 127
    move-result v4

    .line 128
    add-int/2addr v3, v4

    .line 129
    .line 130
    const/16 v4, 0x21

    .line 131
    .line 132
    .line 133
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 134
    .line 135
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 139
    move-result v0

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 143
    goto :goto_1

    .line 144
    .line 145
    :cond_4
    if-nez v2, :cond_5

    .line 146
    return-void

    .line 147
    .line 148
    .line 149
    :cond_5
    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 150
    move-result v1

    .line 151
    .line 152
    .line 153
    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 154
    move-result v3

    .line 155
    .line 156
    .line 157
    invoke-interface {v0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 158
    .line 159
    const-string v2, ""

    .line 160
    .line 161
    .line 162
    invoke-interface {v0, v1, v3, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 163
    .line 164
    iput-boolean v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    .line 165
    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method protected addListeners()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$m;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 12
    move-result v2

    .line 13
    .line 14
    const/16 v3, 0x12

    .line 15
    const/4 v4, 0x0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1, v4, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->textWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$n;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 24
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

    .line 2
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

    .line 1
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/tokenautocomplete/TokenCompleteTextView$c;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Ljava/lang/Object;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public allowCollapse(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    return-void
.end method

.method public allowDuplicates(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowDuplicates:Z

    return-void
.end method

.method protected buildSpanForObject(Ljava/lang/Object;)Lcom/tokenautocomplete/TokenCompleteTextView$j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/tokenautocomplete/TokenCompleteTextView<",
            "TT;>.j;"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->getViewForObject(Ljava/lang/Object;)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    new-instance v1, Lcom/tokenautocomplete/TokenCompleteTextView$j;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->maxTextWidth()F

    .line 14
    move-result v2

    .line 15
    float-to-int v2, v2

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, p0, v0, p1, v2}, Lcom/tokenautocomplete/TokenCompleteTextView$j;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Landroid/view/View;Ljava/lang/Object;I)V

    .line 19
    return-object v1
.end method

.method public clear()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$e;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/tokenautocomplete/TokenCompleteTextView$e;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 9
    return-void
.end method

.method protected convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    .line 2
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->selectedObject:Ljava/lang/Object;

    .line 3
    .line 4
    sget-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$g;->$SwitchMap$com$tokenautocomplete$TokenCompleteTextView$TokenDeleteStyle:[I

    .line 5
    .line 6
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->deletionStyle:Lcom/tokenautocomplete/TokenCompleteTextView$i;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    move-result v1

    .line 11
    .line 12
    aget v0, v0, v1

    .line 13
    const/4 v1, 0x1

    .line 14
    .line 15
    const-string v2, ""

    .line 16
    .line 17
    if-eq v0, v1, :cond_3

    .line 18
    const/4 v1, 0x2

    .line 19
    .line 20
    if-eq v0, v1, :cond_2

    .line 21
    const/4 v1, 0x3

    .line 22
    .line 23
    if-eq v0, v1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    .line 30
    :cond_0
    if-eqz p1, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    :cond_1
    return-object v2

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->currentCompletionText()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
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

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v0, ""

    .line 7
    return-object v0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 15
    move-result v1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .line 18
    .line 19
    .line 20
    invoke-interface {v2, v0, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    .line 21
    move-result v2

    .line 22
    .line 23
    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 27
    move-result v3

    .line 28
    .line 29
    if-ge v2, v3, :cond_1

    .line 30
    .line 31
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 35
    move-result v2

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-static {v0, v2, v1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    if-ltz v1, :cond_2

    .line 12
    .line 13
    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-interface {v3, v0, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    .line 20
    move-result v0

    .line 21
    .line 22
    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 26
    move-result v3

    .line 27
    .line 28
    if-ge v0, v3, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 34
    move-result v0

    .line 35
    :cond_1
    sub-int/2addr v1, v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getThreshold()I

    .line 39
    move-result v0

    .line 40
    const/4 v3, 0x1

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 44
    move-result v0

    .line 45
    .line 46
    if-lt v1, v0, :cond_2

    .line 47
    move v2, v3

    .line 48
    :cond_2
    :goto_0
    return v2
.end method

.method public extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 1
    .param p1    # Landroid/view/inputmethod/ExtractedTextRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/inputmethod/ExtractedText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    .line 4
    move-result p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p1

    .line 6
    :catch_0
    move-exception p1

    .line 7
    .line 8
    const-string p2, "TokenAutoComplete"

    .line 9
    .line 10
    const-string v0, "extractText hit IndexOutOfBoundsException. This may be normal."

    .line 11
    .line 12
    .line 13
    invoke-static {p2, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    const/4 p1, 0x0

    .line 15
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

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getObjects()Ljava/util/List;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 18
    .line 19
    const-string v3, "TokenAutoComplete"

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    instance-of v4, v2, Ljava/io/Serializable;

    .line 28
    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    check-cast v2, Ljava/io/Serializable;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    const-string v5, "Unable to save \'"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v2, "\'"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    .line 60
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 65
    move-result v1

    .line 66
    .line 67
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->objects:Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 71
    move-result v2

    .line 72
    .line 73
    if-eq v1, v2, :cond_2

    .line 74
    .line 75
    const-string v1, "You should make your objects Serializable or override\ngetSerializableObjects and convertSerializableArrayToObjectArray"

    .line 76
    .line 77
    .line 78
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
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
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->api16Invalidate()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->invalidate()V

    .line 7
    return-void
.end method

.method protected maxTextWidth()F
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    int-to-float v0, v0

    .line 16
    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .param p1    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$k;

    .line 3
    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, v1, v2}, Lcom/tokenautocomplete/TokenCompleteTextView$k;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Landroid/view/inputmethod/InputConnection;Z)V

    .line 11
    .line 12
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 13
    .line 14
    .line 15
    const v2, -0x40000001    # -1.9999999f

    .line 16
    and-int/2addr v1, v2

    .line 17
    .line 18
    const/high16 v2, 0x10000000

    .line 19
    or-int/2addr v1, v2

    .line 20
    .line 21
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 22
    return-object v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x6

    .line 2
    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->handleDone()V

    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    return p1
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->performCompletion()V

    .line 9
    .line 10
    :cond_0
    iget-boolean p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->performCollapse(Z)V

    .line 16
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const/16 v0, 0x17

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0x3d

    .line 9
    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    const/16 v0, 0x42

    .line 13
    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    const/16 v0, 0x43

    .line 17
    .line 18
    if-eq p1, v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-direct {p0, v2}, Lcom/tokenautocomplete/TokenCompleteTextView;->deleteSelectedObject(Z)Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-nez v0, :cond_4

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->shouldFocusNext:Z

    .line 35
    goto :goto_1

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 39
    move-result p1

    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    goto :goto_1

    .line 43
    :cond_3
    move v1, v2

    .line 44
    :cond_4
    :goto_1
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    iget-boolean p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->shouldFocusNext:Z

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    const/4 p2, 0x0

    .line 10
    .line 11
    iput-boolean p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->shouldFocusNext:Z

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->handleDone()V

    .line 15
    :cond_0
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/MultiAutoCompleteTextView;->onLayout(ZIIII)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    .line 10
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8
    return-void

    .line 9
    .line 10
    :cond_0
    check-cast p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-super {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 18
    .line 19
    iget-object v0, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->prefix:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    iget-object v0, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->prefix:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->updateHint()V

    .line 30
    .line 31
    iget-boolean v0, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->allowCollapse:Z

    .line 32
    .line 33
    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    .line 34
    .line 35
    iget-boolean v0, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->allowDuplicates:Z

    .line 36
    .line 37
    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowDuplicates:Z

    .line 38
    .line 39
    iget-boolean v0, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->performBestGuess:Z

    .line 40
    .line 41
    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->performBestGuess:Z

    .line 42
    .line 43
    iget-object v0, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$h;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$h;

    .line 46
    .line 47
    iget-object v0, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->tokenDeleteStyle:Lcom/tokenautocomplete/TokenCompleteTextView$i;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->deletionStyle:Lcom/tokenautocomplete/TokenCompleteTextView$i;

    .line 50
    .line 51
    iget-object v0, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->splitChar:[C

    .line 52
    .line 53
    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->splitChar:[C

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->addListeners()V

    .line 57
    .line 58
    iget-object p1, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->baseObjects:Ljava/util/ArrayList;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->convertSerializableArrayToObjectArray(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    move-result v0

    .line 71
    .line 72
    if-eqz v0, :cond_1

    .line 73
    .line 74
    .line 75
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->addObject(Ljava/lang/Object;)V

    .line 80
    goto :goto_0

    .line 81
    .line 82
    .line 83
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 84
    move-result p1

    .line 85
    .line 86
    if-nez p1, :cond_2

    .line 87
    .line 88
    iget-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    .line 89
    .line 90
    if-eqz p1, :cond_2

    .line 91
    .line 92
    new-instance p1, Lcom/tokenautocomplete/TokenCompleteTextView$f;

    .line 93
    .line 94
    .line 95
    invoke-direct {p1, p0}, Lcom/tokenautocomplete/TokenCompleteTextView$f;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 99
    :cond_2
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getSerializableObjects()Ljava/util/ArrayList;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->removeListeners()V

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->savingState:Z

    .line 11
    .line 12
    .line 13
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->savingState:Z

    .line 18
    .line 19
    new-instance v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v1}, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 23
    .line 24
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v1, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->prefix:Ljava/lang/String;

    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    .line 29
    .line 30
    iput-boolean v1, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->allowCollapse:Z

    .line 31
    .line 32
    iget-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowDuplicates:Z

    .line 33
    .line 34
    iput-boolean v1, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->allowDuplicates:Z

    .line 35
    .line 36
    iget-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->performBestGuess:Z

    .line 37
    .line 38
    iput-boolean v1, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->performBestGuess:Z

    .line 39
    .line 40
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$h;

    .line 41
    .line 42
    iput-object v1, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$h;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->deletionStyle:Lcom/tokenautocomplete/TokenCompleteTextView$i;

    .line 45
    .line 46
    iput-object v1, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->tokenDeleteStyle:Lcom/tokenautocomplete/TokenCompleteTextView$i;

    .line 47
    .line 48
    iput-object v0, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->baseObjects:Ljava/util/ArrayList;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->splitChar:[C

    .line 51
    .line 52
    iput-object v0, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->splitChar:[C

    .line 53
    return-object v2
.end method

.method protected onSelectionChanged(II)V
    .locals 5

    .line 1
    .line 2
    iget-boolean p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    move p1, v0

    .line 7
    .line 8
    :cond_0
    iget-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$h;

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/tokenautocomplete/TokenCompleteTextView$h;->b()Z

    .line 14
    move-result p2

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->clearSelections()V

    .line 26
    .line 27
    :cond_1
    iget-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz p2, :cond_3

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 33
    move-result p2

    .line 34
    .line 35
    if-lt p1, p2, :cond_2

    .line 36
    .line 37
    iget-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 41
    move-result p2

    .line 42
    .line 43
    if-ge p1, p2, :cond_3

    .line 44
    .line 45
    :cond_2
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 49
    move-result p1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 53
    goto :goto_2

    .line 54
    .line 55
    .line 56
    :cond_3
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    if-eqz p2, :cond_6

    .line 60
    .line 61
    const-class v1, Lcom/tokenautocomplete/TokenCompleteTextView$j;

    .line 62
    .line 63
    .line 64
    invoke-interface {p2, p1, p1, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    check-cast v1, [Lcom/tokenautocomplete/TokenCompleteTextView$j;

    .line 68
    array-length v2, v1

    .line 69
    .line 70
    :goto_0
    if-ge v0, v2, :cond_6

    .line 71
    .line 72
    aget-object v3, v1, v0

    .line 73
    .line 74
    .line 75
    invoke-interface {p2, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 76
    move-result v4

    .line 77
    .line 78
    if-gt p1, v4, :cond_5

    .line 79
    .line 80
    .line 81
    invoke-interface {p2, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 82
    move-result v3

    .line 83
    .line 84
    if-ge v3, p1, :cond_5

    .line 85
    .line 86
    .line 87
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 88
    move-result p1

    .line 89
    .line 90
    if-ne v4, p1, :cond_4

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 94
    goto :goto_1

    .line 95
    .line 96
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 100
    :goto_1
    return-void

    .line 101
    .line 102
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 103
    goto :goto_0

    .line 104
    .line 105
    .line 106
    :cond_6
    invoke-super {p0, p1, p1}, Landroid/widget/MultiAutoCompleteTextView;->onSelectionChanged(II)V

    .line 107
    :goto_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$h;

    .line 11
    .line 12
    sget-object v3, Lcom/tokenautocomplete/TokenCompleteTextView$h;->None:Lcom/tokenautocomplete/TokenCompleteTextView$h;

    .line 13
    const/4 v4, 0x0

    .line 14
    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 19
    move-result v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v2, v4

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 25
    move-result v5

    .line 26
    .line 27
    if-eqz v5, :cond_2

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    .line 32
    .line 33
    if-eqz v5, :cond_2

    .line 34
    const/4 v5, 0x1

    .line 35
    .line 36
    if-ne v0, v5, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 40
    move-result v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 44
    move-result v6

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0, v6}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    .line 48
    move-result v0

    .line 49
    const/4 v6, -0x1

    .line 50
    .line 51
    if-eq v0, v6, :cond_2

    .line 52
    .line 53
    const-class v6, Lcom/tokenautocomplete/TokenCompleteTextView$j;

    .line 54
    .line 55
    .line 56
    invoke-interface {v1, v0, v0, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    check-cast v0, [Lcom/tokenautocomplete/TokenCompleteTextView$j;

    .line 60
    array-length v1, v0

    .line 61
    .line 62
    if-lez v1, :cond_1

    .line 63
    .line 64
    aget-object v0, v0, v4

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/tokenautocomplete/TokenCompleteTextView$j;->c()V

    .line 68
    move v2, v5

    .line 69
    goto :goto_1

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->clearSelections()V

    .line 73
    .line 74
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 75
    .line 76
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$h;

    .line 77
    .line 78
    if-eq v0, v3, :cond_3

    .line 79
    .line 80
    .line 81
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 82
    move-result v2

    .line 83
    :cond_3
    return v2
.end method

.method public performBestGuess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->performBestGuess:Z

    return-void
.end method

.method public performCollapse(Z)V
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->focusChanging:Z

    .line 4
    .line 5
    const-class v1, Lcom/tokenautocomplete/b;

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    if-nez p1, :cond_2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    if-eqz p1, :cond_6

    .line 15
    .line 16
    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    .line 17
    .line 18
    if-eqz v3, :cond_6

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    .line 22
    move-result v3

    .line 23
    .line 24
    const-class v4, Lcom/tokenautocomplete/TokenCompleteTextView$j;

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, v2, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 28
    move-result-object v5

    .line 29
    .line 30
    check-cast v5, [Lcom/tokenautocomplete/TokenCompleteTextView$j;

    .line 31
    .line 32
    iget-object v6, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->objects:Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 36
    move-result v6

    .line 37
    array-length v7, v5

    .line 38
    sub-int/2addr v6, v7

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, v2, v3, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    check-cast v1, [Lcom/tokenautocomplete/b;

    .line 45
    .line 46
    if-lez v6, :cond_6

    .line 47
    array-length v1, v1

    .line 48
    .line 49
    if-nez v1, :cond_6

    .line 50
    add-int/2addr v3, v0

    .line 51
    .line 52
    new-instance v1, Lcom/tokenautocomplete/b;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 56
    move-result-object v10

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 60
    move-result v11

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    .line 64
    move-result v7

    .line 65
    float-to-int v12, v7

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->maxTextWidth()F

    .line 69
    move-result v7

    .line 70
    float-to-int v13, v7

    .line 71
    move-object v8, v1

    .line 72
    move v9, v6

    .line 73
    .line 74
    .line 75
    invoke-direct/range {v8 .. v13}, Lcom/tokenautocomplete/b;-><init>(ILandroid/content/Context;III)V

    .line 76
    .line 77
    iget-object v7, v1, Lcom/tokenautocomplete/b;->text:Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    invoke-interface {p1, v3, v7}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 81
    .line 82
    iget-object v7, v1, Lcom/tokenautocomplete/b;->text:Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 86
    move-result v7

    .line 87
    add-int/2addr v7, v3

    .line 88
    .line 89
    iget-object v8, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v8}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    .line 93
    move-result-object v8

    .line 94
    .line 95
    .line 96
    invoke-static {p1, v2, v7, v8}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    .line 97
    move-result v7

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->maxTextWidth()F

    .line 101
    move-result v8

    .line 102
    .line 103
    cmpl-float v7, v7, v8

    .line 104
    .line 105
    if-lez v7, :cond_1

    .line 106
    .line 107
    iget-object v7, v1, Lcom/tokenautocomplete/b;->text:Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 111
    move-result v7

    .line 112
    add-int/2addr v7, v3

    .line 113
    .line 114
    .line 115
    invoke-interface {p1, v3, v7}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 116
    array-length v3, v5

    .line 117
    .line 118
    if-lez v3, :cond_0

    .line 119
    array-length v3, v5

    .line 120
    sub-int/2addr v3, v0

    .line 121
    .line 122
    aget-object v3, v5, v3

    .line 123
    .line 124
    .line 125
    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 126
    move-result v3

    .line 127
    add-int/2addr v6, v0

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v6}, Lcom/tokenautocomplete/b;->b(I)V

    .line 131
    goto :goto_0

    .line 132
    .line 133
    :cond_0
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 137
    move-result v0

    .line 138
    move v3, v0

    .line 139
    .line 140
    :goto_0
    iget-object v0, v1, Lcom/tokenautocomplete/b;->text:Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    invoke-interface {p1, v3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 144
    .line 145
    :cond_1
    iget-object v0, v1, Lcom/tokenautocomplete/b;->text:Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 149
    move-result v0

    .line 150
    add-int/2addr v0, v3

    .line 151
    .line 152
    const/16 v5, 0x21

    .line 153
    .line 154
    .line 155
    invoke-interface {p1, v1, v3, v0, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 156
    .line 157
    new-instance v0, Ljava/util/ArrayList;

    .line 158
    .line 159
    iget-object v1, v1, Lcom/tokenautocomplete/b;->text:Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 163
    move-result v1

    .line 164
    add-int/2addr v3, v1

    .line 165
    .line 166
    .line 167
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 168
    move-result v1

    .line 169
    .line 170
    .line 171
    invoke-interface {p1, v3, v1, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 172
    move-result-object p1

    .line 173
    .line 174
    check-cast p1, [Lcom/tokenautocomplete/TokenCompleteTextView$j;

    .line 175
    .line 176
    .line 177
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 178
    move-result-object p1

    .line 179
    .line 180
    .line 181
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 182
    .line 183
    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenSpans:Ljava/util/List;

    .line 184
    .line 185
    .line 186
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 187
    move-result-object p1

    .line 188
    .line 189
    .line 190
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 191
    move-result v0

    .line 192
    .line 193
    if-eqz v0, :cond_6

    .line 194
    .line 195
    .line 196
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 197
    move-result-object v0

    .line 198
    .line 199
    check-cast v0, Lcom/tokenautocomplete/TokenCompleteTextView$j;

    .line 200
    .line 201
    .line 202
    invoke-direct {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->removeSpan(Lcom/tokenautocomplete/TokenCompleteTextView$j;)V

    .line 203
    goto :goto_1

    .line 204
    .line 205
    .line 206
    :cond_2
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 207
    move-result-object p1

    .line 208
    .line 209
    if-eqz p1, :cond_6

    .line 210
    .line 211
    .line 212
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 213
    move-result v0

    .line 214
    .line 215
    .line 216
    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 217
    move-result-object v0

    .line 218
    .line 219
    check-cast v0, [Lcom/tokenautocomplete/b;

    .line 220
    array-length v1, v0

    .line 221
    move v3, v2

    .line 222
    .line 223
    :goto_2
    if-ge v3, v1, :cond_3

    .line 224
    .line 225
    aget-object v4, v0, v3

    .line 226
    .line 227
    .line 228
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 229
    move-result v5

    .line 230
    .line 231
    .line 232
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 233
    move-result v6

    .line 234
    .line 235
    .line 236
    invoke-interface {p1, v5, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 237
    .line 238
    .line 239
    invoke-interface {p1, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 240
    .line 241
    add-int/lit8 v3, v3, 0x1

    .line 242
    goto :goto_2

    .line 243
    .line 244
    :cond_3
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenSpans:Ljava/util/List;

    .line 245
    .line 246
    .line 247
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 248
    move-result-object v0

    .line 249
    .line 250
    .line 251
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 252
    move-result v1

    .line 253
    .line 254
    if-eqz v1, :cond_4

    .line 255
    .line 256
    .line 257
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 258
    move-result-object v1

    .line 259
    .line 260
    check-cast v1, Lcom/tokenautocomplete/TokenCompleteTextView$j;

    .line 261
    .line 262
    .line 263
    invoke-direct {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->insertSpan(Lcom/tokenautocomplete/TokenCompleteTextView$j;)V

    .line 264
    goto :goto_3

    .line 265
    .line 266
    :cond_4
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenSpans:Ljava/util/List;

    .line 267
    .line 268
    .line 269
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 270
    .line 271
    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z

    .line 272
    .line 273
    if-eqz v0, :cond_5

    .line 274
    .line 275
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 279
    move-result v0

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 283
    goto :goto_4

    .line 284
    .line 285
    :cond_5
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$b;

    .line 286
    .line 287
    .line 288
    invoke-direct {v0, p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView$b;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Landroid/text/Editable;)V

    .line 289
    .line 290
    const-wide/16 v3, 0xa

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0, v0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 294
    .line 295
    .line 296
    :goto_4
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 297
    move-result-object v0

    .line 298
    .line 299
    .line 300
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 301
    move-result-object v1

    .line 302
    .line 303
    .line 304
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 305
    move-result v1

    .line 306
    .line 307
    const-class v3, Lcom/tokenautocomplete/TokenCompleteTextView$m;

    .line 308
    .line 309
    .line 310
    invoke-interface {v0, v2, v1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 311
    move-result-object v0

    .line 312
    .line 313
    check-cast v0, [Lcom/tokenautocomplete/TokenCompleteTextView$m;

    .line 314
    array-length v0, v0

    .line 315
    .line 316
    if-nez v0, :cond_6

    .line 317
    .line 318
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$m;

    .line 319
    .line 320
    .line 321
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 322
    move-result v1

    .line 323
    .line 324
    const/16 v3, 0x12

    .line 325
    .line 326
    .line 327
    invoke-interface {p1, v0, v2, v1, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 328
    .line 329
    :cond_6
    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->focusChanging:Z

    .line 330
    return-void
.end method

.method public performCompletion()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getListSelection()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->enoughToFilter()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 21
    move-result v0

    .line 22
    .line 23
    if-lez v0, :cond_0

    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->performBestGuess:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x0

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->currentCompletionText()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->defaultObject(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 53
    goto :goto_1

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->performCompletion()V

    .line 57
    :goto_1
    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 6
    move-result p4

    .line 7
    .line 8
    if-ge p2, p4, :cond_0

    .line 9
    .line 10
    iget-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 14
    move-result p2

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getFilter()Landroid/widget/Filter;

    .line 18
    move-result-object p4

    .line 19
    .line 20
    if-eqz p4, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p4, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 28
    :cond_1
    return-void
.end method

.method protected removeListeners()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    move-result v1

    .line 11
    .line 12
    const-class v2, Lcom/tokenautocomplete/TokenCompleteTextView$m;

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    check-cast v1, [Lcom/tokenautocomplete/TokenCompleteTextView$m;

    .line 20
    array-length v2, v1

    .line 21
    .line 22
    :goto_0
    if-ge v3, v2, :cond_0

    .line 23
    .line 24
    aget-object v4, v1, v3

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 28
    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->textWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$n;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 36
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

    .line 1
    .line 2
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$d;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView$d;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 9
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->clearComposingText()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->selectedObject:Ljava/lang/Object;

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-string v1, ""

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-direct {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->buildSpannableForText(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->selectedObject:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->buildSpanForObject(Ljava/lang/Object;)Lcom/tokenautocomplete/TokenCompleteTextView$j;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 38
    move-result v3

    .line 39
    .line 40
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .line 41
    .line 42
    .line 43
    invoke-interface {v4, v2, v3}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    .line 44
    move-result v4

    .line 45
    .line 46
    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 50
    move-result v5

    .line 51
    .line 52
    if-ge v4, v5, :cond_1

    .line 53
    .line 54
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 58
    move-result v4

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-static {v2, v4, v3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    .line 62
    move-result-object v5

    .line 63
    .line 64
    if-eqz v2, :cond_4

    .line 65
    .line 66
    if-nez v0, :cond_2

    .line 67
    .line 68
    .line 69
    invoke-interface {v2, v4, v3, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 70
    goto :goto_0

    .line 71
    .line 72
    :cond_2
    iget-boolean v6, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowDuplicates:Z

    .line 73
    .line 74
    if-nez v6, :cond_3

    .line 75
    .line 76
    iget-object v6, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->objects:Ljava/util/ArrayList;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/tokenautocomplete/TokenCompleteTextView$j;->b()Ljava/lang/Object;

    .line 80
    move-result-object v7

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 84
    move-result v6

    .line 85
    .line 86
    if-eqz v6, :cond_3

    .line 87
    .line 88
    .line 89
    invoke-interface {v2, v4, v3, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 90
    goto :goto_0

    .line 91
    .line 92
    .line 93
    :cond_3
    invoke-static {v2, v4, v3, v5}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v2, v4, v3, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 100
    move-result p1

    .line 101
    add-int/2addr p1, v4

    .line 102
    .line 103
    add-int/lit8 p1, p1, -0x1

    .line 104
    .line 105
    const/16 v1, 0x21

    .line 106
    .line 107
    .line 108
    invoke-interface {v2, v0, v4, p1, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 109
    :cond_4
    :goto_0
    return-void
.end method

.method public setDeletionStyle(Lcom/tokenautocomplete/TokenCompleteTextView$i;)V
    .locals 0

    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->deletionStyle:Lcom/tokenautocomplete/TokenCompleteTextView$i;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, ""

    .line 3
    .line 4
    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 15
    .line 16
    :cond_0
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->updateHint()V

    .line 20
    return-void
.end method

.method public setSplitChar(C)V
    .locals 4

    const/16 v0, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [C

    const/16 v3, 0xa7

    aput-char v3, v0, v2

    aput-char p1, v0, v1

    .line 4
    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->setSplitChar([C)V

    goto :goto_0

    :cond_0
    new-array v0, v1, [C

    aput-char p1, v0, v2

    .line 5
    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->setSplitChar([C)V

    :goto_0
    return-void
.end method

.method public setSplitChar([C)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    aget-char v1, p1, v0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [C

    .line 2
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

    :cond_1
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->splitChar:[C

    .line 3
    new-instance v0, Lcom/tokenautocomplete/a;

    invoke-direct {v0, p1}, Lcom/tokenautocomplete/a;-><init>([C)V

    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    return-void
.end method

.method public setTokenClickStyle(Lcom/tokenautocomplete/TokenCompleteTextView$h;)V
    .locals 0

    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenClickStyle:Lcom/tokenautocomplete/TokenCompleteTextView$h;

    return-void
.end method

.method public setTokenLimit(I)V
    .locals 0

    iput p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenLimit:I

    return-void
.end method

.method public setTokenListener(Lcom/tokenautocomplete/TokenCompleteTextView$l;)V
    .locals 0

    return-void
.end method

.method public setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .line 6
    return-void
.end method
