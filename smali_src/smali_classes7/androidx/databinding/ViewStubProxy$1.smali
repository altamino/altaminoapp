.class Landroidx/databinding/ViewStubProxy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewStubProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/databinding/ViewStubProxy;


# direct methods
.method constructor <init>(Landroidx/databinding/ViewStubProxy;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/databinding/ViewStubProxy$1;->this$0:Landroidx/databinding/ViewStubProxy;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/databinding/ViewStubProxy$1;->this$0:Landroidx/databinding/ViewStubProxy;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p2}, Landroidx/databinding/ViewStubProxy;->a(Landroidx/databinding/ViewStubProxy;Landroid/view/View;)Landroid/view/View;

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/databinding/ViewStubProxy$1;->this$0:Landroidx/databinding/ViewStubProxy;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroidx/databinding/ViewStubProxy;->c(Landroidx/databinding/ViewStubProxy;)Landroidx/databinding/ViewDataBinding;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    iget-object v1, v1, Landroidx/databinding/ViewDataBinding;->mBindingComponent:Landroidx/databinding/DataBindingComponent;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/ViewStub;->getLayoutResource()I

    .line 17
    move-result v2

    .line 18
    .line 19
    .line 20
    invoke-static {v1, p2, v2}, Landroidx/databinding/DataBindingUtil;->a(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Landroidx/databinding/ViewStubProxy;->b(Landroidx/databinding/ViewStubProxy;Landroidx/databinding/ViewDataBinding;)Landroidx/databinding/ViewDataBinding;

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/databinding/ViewStubProxy$1;->this$0:Landroidx/databinding/ViewStubProxy;

    .line 27
    const/4 v1, 0x0

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Landroidx/databinding/ViewStubProxy;->d(Landroidx/databinding/ViewStubProxy;Landroid/view/ViewStub;)Landroid/view/ViewStub;

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/databinding/ViewStubProxy$1;->this$0:Landroidx/databinding/ViewStubProxy;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Landroidx/databinding/ViewStubProxy;->e(Landroidx/databinding/ViewStubProxy;)Landroid/view/ViewStub$OnInflateListener;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Landroidx/databinding/ViewStubProxy$1;->this$0:Landroidx/databinding/ViewStubProxy;

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Landroidx/databinding/ViewStubProxy;->e(Landroidx/databinding/ViewStubProxy;)Landroid/view/ViewStub$OnInflateListener;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, p1, p2}, Landroid/view/ViewStub$OnInflateListener;->onInflate(Landroid/view/ViewStub;Landroid/view/View;)V

    .line 48
    .line 49
    iget-object p1, p0, Landroidx/databinding/ViewStubProxy$1;->this$0:Landroidx/databinding/ViewStubProxy;

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v1}, Landroidx/databinding/ViewStubProxy;->f(Landroidx/databinding/ViewStubProxy;Landroid/view/ViewStub$OnInflateListener;)Landroid/view/ViewStub$OnInflateListener;

    .line 53
    .line 54
    :cond_0
    iget-object p1, p0, Landroidx/databinding/ViewStubProxy$1;->this$0:Landroidx/databinding/ViewStubProxy;

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Landroidx/databinding/ViewStubProxy;->c(Landroidx/databinding/ViewStubProxy;)Landroidx/databinding/ViewDataBinding;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->invalidateAll()V

    .line 62
    .line 63
    iget-object p1, p0, Landroidx/databinding/ViewStubProxy$1;->this$0:Landroidx/databinding/ViewStubProxy;

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Landroidx/databinding/ViewStubProxy;->c(Landroidx/databinding/ViewStubProxy;)Landroidx/databinding/ViewDataBinding;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->forceExecuteBindings()V

    .line 71
    return-void
.end method
