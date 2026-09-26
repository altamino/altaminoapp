.class public Lcom/narvii/webview/NVWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/NestedScrollingChild;


# instance fields
.field private mChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/narvii/webview/NVWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lcom/narvii/webview/NVWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0}, Lcom/narvii/webview/NVWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private init()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/webview/NVWebView;->mChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 8
    const/4 v0, 0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/narvii/webview/NVWebView;->setNestedScrollingEnabled(Z)V

    .line 12
    return-void
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/webview/NVWebView;->mChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/webview/NVWebView;->mChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/webview/NVWebView;->mChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/webview/NVWebView;->mChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move-object v5, p5

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/webview/NVWebView;->mChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->hasNestedScrollingParent()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/webview/NVWebView;->mChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/webview/NVWebView;->mChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/webview/NVWebView;->mChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 6
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/webview/NVWebView;->mChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->startNestedScroll(I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/webview/NVWebView;->mChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->stopNestedScroll()V

    .line 6
    return-void
.end method
