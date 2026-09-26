.class public final Lcom/narvii/chat/setting/widget/WaitListAcceptView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final binding:Lcom/narvii/amino/databinding/WaitListAcceptViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isRequesting:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x1

    .line 3
    invoke-static {p1, p0, v0}, Lcom/narvii/amino/databinding/WaitListAcceptViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/WaitListAcceptViewBinding;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/setting/widget/WaitListAcceptView;->binding:Lcom/narvii/amino/databinding/WaitListAcceptViewBinding;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    .line 6
    invoke-static {p1, p0, p2}, Lcom/narvii/amino/databinding/WaitListAcceptViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/WaitListAcceptViewBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/setting/widget/WaitListAcceptView;->binding:Lcom/narvii/amino/databinding/WaitListAcceptViewBinding;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    .line 9
    invoke-static {p1, p0, p2}, Lcom/narvii/amino/databinding/WaitListAcceptViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/WaitListAcceptViewBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/setting/widget/WaitListAcceptView;->binding:Lcom/narvii/amino/databinding/WaitListAcceptViewBinding;

    return-void
.end method


# virtual methods
.method public final isRequesting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/chat/setting/widget/WaitListAcceptView;->isRequesting:Z

    return v0
.end method

.method public final setRequesting(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/chat/setting/widget/WaitListAcceptView;->isRequesting:Z

    return-void
.end method

.method public final updateState(ZZZ)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/setting/widget/WaitListAcceptView;->binding:Lcom/narvii/amino/databinding/WaitListAcceptViewBinding;

    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/narvii/chat/setting/widget/WaitListAcceptView;->isRequesting:Z

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x4

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, v0, Lcom/narvii/amino/databinding/WaitListAcceptViewBinding;->accept:Landroid/widget/TextView;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    iget-object p1, v0, Lcom/narvii/amino/databinding/WaitListAcceptViewBinding;->cancel:Landroid/widget/TextView;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    iget-object p1, v0, Lcom/narvii/amino/databinding/WaitListAcceptViewBinding;->progress:Lcom/narvii/widget/SpinningView;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    if-eqz p2, :cond_1

    .line 27
    .line 28
    iget-object p1, v0, Lcom/narvii/amino/databinding/WaitListAcceptViewBinding;->accept:Landroid/widget/TextView;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    iget-object p1, v0, Lcom/narvii/amino/databinding/WaitListAcceptViewBinding;->cancel:Landroid/widget/TextView;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    iget-object p1, v0, Lcom/narvii/amino/databinding/WaitListAcceptViewBinding;->progress:Lcom/narvii/widget/SpinningView;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_1
    if-eqz p3, :cond_2

    .line 45
    .line 46
    iget-object p1, v0, Lcom/narvii/amino/databinding/WaitListAcceptViewBinding;->accept:Landroid/widget/TextView;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    iget-object p1, v0, Lcom/narvii/amino/databinding/WaitListAcceptViewBinding;->cancel:Landroid/widget/TextView;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    iget-object p1, v0, Lcom/narvii/amino/databinding/WaitListAcceptViewBinding;->progress:Lcom/narvii/widget/SpinningView;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_2
    iget-object p1, v0, Lcom/narvii/amino/databinding/WaitListAcceptViewBinding;->accept:Landroid/widget/TextView;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    iget-object p1, v0, Lcom/narvii/amino/databinding/WaitListAcceptViewBinding;->cancel:Landroid/widget/TextView;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    iget-object p1, v0, Lcom/narvii/amino/databinding/WaitListAcceptViewBinding;->progress:Lcom/narvii/widget/SpinningView;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 76
    :goto_0
    return-void
.end method
