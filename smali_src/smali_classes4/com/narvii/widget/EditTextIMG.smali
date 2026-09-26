.class public Lcom/narvii/widget/EditTextIMG;
.super Lcom/narvii/widget/EditTextLink;
.source "SourceFile"


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
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/EditTextLink;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p2, Lcom/narvii/widget/EditTextIMG$2;

    .line 6
    .line 7
    .line 8
    invoke-direct {p2, p0}, Lcom/narvii/widget/EditTextIMG$2;-><init>(Lcom/narvii/widget/EditTextIMG;)V

    .line 9
    .line 10
    iput-object p2, p0, Lcom/narvii/widget/EditTextIMG;->actionCallback:Landroid/view/ActionMode$Callback;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/widget/EditTextIMG$3;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/widget/EditTextIMG$3;-><init>(Lcom/narvii/widget/EditTextIMG;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/widget/EditTextIMG;->gestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 18
    .line 19
    new-instance v1, Landroid/view/GestureDetector;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 23
    .line 24
    iput-object v1, p0, Lcom/narvii/widget/EditTextIMG;->gestureDetector:Landroid/view/GestureDetector;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 28
    .line 29
    new-instance p1, Lcom/narvii/widget/EditTextIMG$1;

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, p0}, Lcom/narvii/widget/EditTextIMG$1;-><init>(Lcom/narvii/widget/EditTextIMG;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 36
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/widget/EditTextIMG;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/widget/EditTextIMG;->inActionMode:Z

    return p0
.end method

.method static bridge synthetic b(Lcom/narvii/widget/EditTextIMG;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/narvii/widget/EditTextIMG;->statusBeforeTouch:J

    return-wide v0
.end method

.method static bridge synthetic c(Lcom/narvii/widget/EditTextIMG;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/widget/EditTextIMG;->inActionMode:Z

    return-void
.end method

.method static bridge synthetic d(Lcom/narvii/widget/EditTextIMG;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/narvii/widget/EditTextIMG;->prepareActionModeTime:J

    return-void
.end method

.method static bridge synthetic e(Lcom/narvii/widget/EditTextIMG;)J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/narvii/widget/EditTextIMG;->getCurrentStatus()J

    move-result-wide v0

    return-wide v0
.end method

.method private getCurrentStatus()J
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0xffff

    .line 8
    and-int/2addr v0, v1

    .line 9
    int-to-long v2, v0

    .line 10
    .line 11
    const/16 v0, 0x10

    .line 12
    shl-long/2addr v2, v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 16
    move-result v4

    .line 17
    and-int/2addr v1, v4

    .line 18
    int-to-long v4, v1

    .line 19
    .line 20
    or-long v1, v2, v4

    .line 21
    .line 22
    shl-long v0, v1, v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 26
    move-result v2

    .line 27
    int-to-long v2, v2

    .line 28
    or-long/2addr v0, v2

    .line 29
    return-wide v0
.end method


# virtual methods
.method public dismissActionMode()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/EditTextIMG;->actionModeRef:Ljava/lang/ref/WeakReference;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    move-object v0, v1

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Landroid/view/ActionMode;

    .line 14
    :goto_0
    const/4 v2, 0x0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 20
    .line 21
    iput-boolean v2, p0, Lcom/narvii/widget/EditTextIMG;->inActionMode:Z

    .line 22
    const/4 v0, 0x1

    .line 23
    return v0

    .line 24
    .line 25
    :cond_1
    iput-object v1, p0, Lcom/narvii/widget/EditTextIMG;->actionModeRef:Ljava/lang/ref/WeakReference;

    .line 26
    return v2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/widget/EditTextIMG;->dismissActionMode()Z

    .line 9
    :cond_0
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/EditTextIMG;->inActionMode:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x4

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/widget/EditTextIMG;->dismissActionMode()Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    const/4 p1, 0x1

    .line 25
    return p1

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method protected onSelectionChanged(II)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/narvii/widget/EditTextIMG;->inTouch:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    if-ne p1, p2, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 19
    move-result-wide p1

    .line 20
    .line 21
    iget-wide v0, p0, Lcom/narvii/widget/EditTextIMG;->changedTime:J

    .line 22
    sub-long/2addr p1, v0

    .line 23
    .line 24
    const-wide/16 v0, 0x64

    .line 25
    .line 26
    cmp-long p1, p1, v0

    .line 27
    .line 28
    if-lez p1, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/widget/EditTextIMG;->showActionMode()V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    .line 36
    move-result p1

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    iget-boolean p1, p0, Lcom/narvii/widget/EditTextIMG;->inTouch:Z

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/widget/EditTextIMG;->dismissActionMode()Z

    .line 46
    :cond_1
    :goto_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 7
    move-result-wide p1

    .line 8
    .line 9
    iput-wide p1, p0, Lcom/narvii/widget/EditTextIMG;->changedTime:J

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/widget/EditTextIMG;->dismissActionMode()Z

    .line 13
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    iput-boolean v1, p0, Lcom/narvii/widget/EditTextIMG;->inTouch:Z

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/widget/EditTextIMG;->getCurrentStatus()J

    .line 14
    move-result-wide v2

    .line 15
    .line 16
    iput-wide v2, p0, Lcom/narvii/widget/EditTextIMG;->statusBeforeTouch:J

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 24
    move-result v2

    .line 25
    .line 26
    if-eq v2, v1, :cond_1

    .line 27
    const/4 v1, 0x3

    .line 28
    .line 29
    if-eq v2, v1, :cond_1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 v1, 0x0

    .line 32
    .line 33
    iput-boolean v1, p0, Lcom/narvii/widget/EditTextIMG;->inTouch:Z

    .line 34
    .line 35
    :goto_1
    iget-object v1, p0, Lcom/narvii/widget/EditTextIMG;->gestureDetector:Landroid/view/GestureDetector;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 39
    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onVisibilityChanged(Landroid/view/View;I)V

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/widget/EditTextIMG;->dismissActionMode()Z

    .line 9
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/EditTextIMG;->inActionMode:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    iget-wide v2, p0, Lcom/narvii/widget/EditTextIMG;->prepareActionModeTime:J

    .line 11
    sub-long/2addr v0, v2

    .line 12
    .line 13
    const-wide/16 v2, 0x190

    .line 14
    .line 15
    cmp-long v0, v0, v2

    .line 16
    .line 17
    if-lez v0, :cond_1

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    .line 21
    :cond_1
    return-void
.end method

.method public showActionMode()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/EditTextIMG;->inActionMode:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/widget/EditTextIMG;->actionCallback:Landroid/view/ActionMode$Callback;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/widget/EditTextIMG;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 10
    :cond_0
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/EditText;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/widget/EditTextIMG;->actionModeRef:Ljava/lang/ref/WeakReference;

    .line 14
    :cond_0
    return-object p1
.end method
