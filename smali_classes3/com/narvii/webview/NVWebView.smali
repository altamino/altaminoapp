.class public Lcom/narvii/webview/NVWebView;
.super Landroid/webkit/WebView;
.source "NVWebView.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingChild;


# instance fields
.field private mChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0}, Lcom/narvii/webview/NVWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0}, Lcom/narvii/webview/NVWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0}, Lcom/narvii/webview/NVWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private init()V
    .locals 1

    .line 45
    new-instance v0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    invoke-direct {v0, p0}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/narvii/webview/NVWebView;->mChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    const/4 v0, 0x1

    .line 46
    invoke-virtual {p0, v0}, Lcom/narvii/webview/NVWebView;->setNestedScrollingEnabled(Z)V

    return-void
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/narvii/webview/NVWebView;->mChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/narvii/webview/NVWebView;->mChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/narvii/webview/NVWebView;->mChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .line 84
    iget-object v0, p0, Lcom/narvii/webview/NVWebView;->mChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    return p1
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/narvii/webview/NVWebView;->mChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    invoke-virtual {v0}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/narvii/webview/NVWebView;->mChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    invoke-virtual {v0}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/narvii/webview/NVWebView;->mChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 52
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/narvii/webview/NVWebView;->mChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/narvii/webview/NVWebView;->mChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/narvii/webview/NVWebView;->mChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    invoke-virtual {v0}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method
