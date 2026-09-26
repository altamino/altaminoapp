.class public Landroidx/databinding/ViewStubProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContainingBinding:Landroidx/databinding/ViewDataBinding;

.field private mOnInflateListener:Landroid/view/ViewStub$OnInflateListener;

.field private mProxyListener:Landroid/view/ViewStub$OnInflateListener;

.field private mRoot:Landroid/view/View;

.field private mViewDataBinding:Landroidx/databinding/ViewDataBinding;

.field private mViewStub:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>(Landroid/view/ViewStub;)V
    .locals 1
    .param p1    # Landroid/view/ViewStub;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/databinding/ViewStubProxy$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Landroidx/databinding/ViewStubProxy$1;-><init>(Landroidx/databinding/ViewStubProxy;)V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/databinding/ViewStubProxy;->mProxyListener:Landroid/view/ViewStub$OnInflateListener;

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/databinding/ViewStubProxy;->mViewStub:Landroid/view/ViewStub;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    .line 16
    return-void
.end method

.method static synthetic a(Landroidx/databinding/ViewStubProxy;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/databinding/ViewStubProxy;->mRoot:Landroid/view/View;

    .line 3
    return-object p1
.end method

.method static synthetic b(Landroidx/databinding/ViewStubProxy;Landroidx/databinding/ViewDataBinding;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/databinding/ViewStubProxy;->mViewDataBinding:Landroidx/databinding/ViewDataBinding;

    .line 3
    return-object p1
.end method

.method static synthetic c(Landroidx/databinding/ViewStubProxy;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/databinding/ViewStubProxy;->mContainingBinding:Landroidx/databinding/ViewDataBinding;

    .line 3
    return-object p0
.end method

.method static synthetic d(Landroidx/databinding/ViewStubProxy;Landroid/view/ViewStub;)Landroid/view/ViewStub;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/databinding/ViewStubProxy;->mViewStub:Landroid/view/ViewStub;

    .line 3
    return-object p1
.end method

.method static synthetic e(Landroidx/databinding/ViewStubProxy;)Landroid/view/ViewStub$OnInflateListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/databinding/ViewStubProxy;->mOnInflateListener:Landroid/view/ViewStub$OnInflateListener;

    .line 3
    return-object p0
.end method

.method static synthetic f(Landroidx/databinding/ViewStubProxy;Landroid/view/ViewStub$OnInflateListener;)Landroid/view/ViewStub$OnInflateListener;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/databinding/ViewStubProxy;->mOnInflateListener:Landroid/view/ViewStub$OnInflateListener;

    .line 3
    return-object p1
.end method
