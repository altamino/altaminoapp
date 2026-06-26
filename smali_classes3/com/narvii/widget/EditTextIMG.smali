.class public Lcom/narvii/widget/EditTextIMG;
.super Lcom/narvii/widget/EditTextLink;
.source "EditTextIMG.java"


# instance fields
.field private final actionCallback:Landroid/view/ActionMode$Callback;

.field private actionModeRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ActionMode;",
            ">;"
        }
    .end annotation
.end field

.field private changedTime:J

.field private gestureDetector:Landroid/view/GestureDetector;

.field private final gestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field public imgMode:Landroid/view/ActionMode$Callback;

.field private inActionMode:Z

.field private inTouch:Z

.field private prepareActionModeTime:J

.field private statusBeforeTouch:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/EditTextLink;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    new-instance p2, Lcom/narvii/widget/EditTextIMG$2;

    invoke-direct {p2, p0}, Lcom/narvii/widget/EditTextIMG$2;-><init>(Lcom/narvii/widget/EditTextIMG;)V

    iput-object p2, p0, Lcom/narvii/widget/EditTextIMG;->actionCallback:Landroid/view/ActionMode$Callback;

    .line 115
    new-instance p2, Lcom/narvii/widget/EditTextIMG$3;

    invoke-direct {p2, p0}, Lcom/narvii/widget/EditTextIMG$3;-><init>(Lcom/narvii/widget/EditTextIMG;)V

    iput-object p2, p0, Lcom/narvii/widget/EditTextIMG;->gestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 31
    new-instance p2, Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/narvii/widget/EditTextIMG;->gestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/narvii/widget/EditTextIMG;->gestureDetector:Landroid/view/GestureDetector;

    .line 32
    iget-object p1, p0, Lcom/narvii/widget/EditTextIMG;->actionCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 33
    new-instance p1, Lcom/narvii/widget/EditTextIMG$1;

    invoke-direct {p1, p0}, Lcom/narvii/widget/EditTextIMG$1;-><init>(Lcom/narvii/widget/EditTextIMG;)V

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/widget/EditTextIMG;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/narvii/widget/EditTextIMG;->inActionMode:Z

    return p0
.end method

.method static synthetic access$002(Lcom/narvii/widget/EditTextIMG;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/narvii/widget/EditTextIMG;->inActionMode:Z

    return p1
.end method

.method static synthetic access$102(Lcom/narvii/widget/EditTextIMG;J)J
    .locals 0

    .line 19
    iput-wide p1, p0, Lcom/narvii/widget/EditTextIMG;->prepareActionModeTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/narvii/widget/EditTextIMG;)J
    .locals 2

    .line 19
    invoke-direct {p0}, Lcom/narvii/widget/EditTextIMG;->getCurrentStatus()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/narvii/widget/EditTextIMG;)J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/narvii/widget/EditTextIMG;->statusBeforeTouch:J

    return-wide v0
.end method

.method private getCurrentStatus()J
    .locals 6

    .line 222
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-long v2, v0

    const/16 v0, 0x10

    shl-long/2addr v2, v0

    .line 223
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v4

    and-int/2addr v1, v4

    int-to-long v4, v1

    or-long/2addr v2, v4

    shl-long v0, v2, v0

    .line 224
    invoke-virtual {p0}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public dismissActionMode()Z
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/narvii/widget/EditTextIMG;->actionModeRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ActionMode;

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 62
    iput-boolean v2, p0, Lcom/narvii/widget/EditTextIMG;->inActionMode:Z

    const/4 v0, 0x1

    return v0

    .line 65
    :cond_1
    iput-object v1, p0, Lcom/narvii/widget/EditTextIMG;->actionModeRef:Ljava/lang/ref/WeakReference;

    return v2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 188
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-nez p1, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/narvii/widget/EditTextIMG;->dismissActionMode()Z

    :cond_0
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 176
    iget-boolean v0, p0, Lcom/narvii/widget/EditTextIMG;->inActionMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/narvii/widget/EditTextIMG;->dismissActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 182
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onSelectionChanged(II)V
    .locals 3

    .line 157
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    .line 158
    invoke-virtual {p0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/widget/EditTextIMG;->inTouch:Z

    if-nez v0, :cond_0

    if-ne p1, p2, :cond_0

    .line 159
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/narvii/widget/EditTextIMG;->changedTime:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x64

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/narvii/widget/EditTextIMG;->showActionMode()V

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->isFocusable()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/narvii/widget/EditTextIMG;->inTouch:Z

    if-eqz p1, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/narvii/widget/EditTextIMG;->dismissActionMode()Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 169
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 170
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/narvii/widget/EditTextIMG;->changedTime:J

    .line 171
    invoke-virtual {p0}, Lcom/narvii/widget/EditTextIMG;->dismissActionMode()Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    iput-boolean v1, p0, Lcom/narvii/widget/EditTextIMG;->inTouch:Z

    .line 207
    invoke-direct {p0}, Lcom/narvii/widget/EditTextIMG;->getCurrentStatus()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/narvii/widget/EditTextIMG;->statusBeforeTouch:J

    .line 210
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_1

    const/4 v1, 0x3

    if-eq v2, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 214
    iput-boolean v1, p0, Lcom/narvii/widget/EditTextIMG;->inTouch:Z

    .line 217
    :goto_1
    iget-object v1, p0, Lcom/narvii/widget/EditTextIMG;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 196
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onVisibilityChanged(Landroid/view/View;I)V

    if-eqz p2, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/narvii/widget/EditTextIMG;->dismissActionMode()Z

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    .line 71
    iget-boolean v0, p0, Lcom/narvii/widget/EditTextIMG;->inActionMode:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/narvii/widget/EditTextIMG;->prepareActionModeTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x190

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 72
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    :cond_1
    return-void
.end method

.method public showActionMode()V
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/narvii/widget/EditTextIMG;->inActionMode:Z

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/narvii/widget/EditTextIMG;->actionCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, v0}, Lcom/narvii/widget/EditTextIMG;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    :cond_0
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 44
    invoke-super {p0, p1}, Landroid/widget/EditText;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/narvii/widget/EditTextIMG;->actionModeRef:Ljava/lang/ref/WeakReference;

    :cond_0
    return-object p1
.end method
