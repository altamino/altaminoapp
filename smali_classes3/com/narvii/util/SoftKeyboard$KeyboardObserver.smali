.class public Lcom/narvii/util/SoftKeyboard$KeyboardObserver;
.super Ljava/lang/Object;
.source "SoftKeyboard.java"

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

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->observer:Landroid/view/ViewTreeObserver;

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->rootView:Landroid/view/View;

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->isKeyboardShown(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->visible:I

    .line 66
    iput-object p2, p0, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->listener:Lcom/narvii/util/Callback;

    return-void
.end method

.method private isKeyboardShown(Landroid/view/View;)I
    .locals 2

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 92
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 93
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v1

    .line 95
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x6

    if-le p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->rootView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->isKeyboardShown(Landroid/view/View;)I

    move-result v0

    .line 82
    iget v1, p0, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->visible:I

    if-eq v0, v1, :cond_1

    .line 83
    iput v0, p0, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->visible:I

    .line 84
    iget-object v1, p0, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->listener:Lcom/narvii/util/Callback;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method register()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
