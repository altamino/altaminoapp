.class public Lcom/narvii/util/SoftKeyboard$KeyboardObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/SoftKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyboardObserver"
.end annotation


# instance fields
.field listener:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field observer:Landroid/view/ViewTreeObserver;

.field rootView:Landroid/view/View;

.field visible:I


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->observer:Landroid/view/ViewTreeObserver;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->rootView:Landroid/view/View;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1}, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->isKeyboardShown(Landroid/view/View;)I

    .line 23
    move-result p1

    .line 24
    .line 25
    iput p1, p0, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->visible:I

    .line 26
    .line 27
    iput-object p2, p0, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->listener:Lcom/narvii/util/Callback;

    .line 28
    return-void
.end method

.method private isKeyboardShown(Landroid/view/View;)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 p1, -0x1

    .line 8
    return p1

    .line 9
    .line 10
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 20
    move-result p1

    .line 21
    .line 22
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 23
    sub-int/2addr p1, v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 27
    move-result v0

    .line 28
    .line 29
    div-int/lit8 v0, v0, 0x6

    .line 30
    .line 31
    if-le p1, v0, :cond_1

    .line 32
    const/4 p1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    :goto_0
    return p1
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->observer:Landroid/view/ViewTreeObserver;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->observer:Landroid/view/ViewTreeObserver;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 14
    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->rootView:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->isKeyboardShown(Landroid/view/View;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget v1, p0, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->visible:I

    .line 9
    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    iput v0, p0, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->visible:I

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->listener:Lcom/narvii/util/Callback;

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    if-ne v0, v2, :cond_0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-interface {v1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 27
    :cond_1
    return-void
.end method

.method register()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->observer:Landroid/view/ViewTreeObserver;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 6
    return-void
.end method
