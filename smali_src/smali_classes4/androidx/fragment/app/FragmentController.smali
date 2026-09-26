.class public Landroidx/fragment/app/FragmentController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mHost:Landroidx/fragment/app/FragmentHostCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/fragment/app/FragmentHostCallback<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/fragment/app/FragmentHostCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentHostCallback<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 6
    return-void
.end method

.method public static b(Landroidx/fragment/app/FragmentHostCallback;)Landroidx/fragment/app/FragmentController;
    .locals 2
    .param p0    # Landroidx/fragment/app/FragmentHostCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentHostCallback<",
            "*>;)",
            "Landroidx/fragment/app/FragmentController;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/fragment/app/FragmentController;

    .line 3
    .line 4
    const-string v1, "callbacks == null"

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v1}, Landroidx/core/util/Preconditions;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    check-cast p0, Landroidx/fragment/app/FragmentHostCallback;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentController;-><init>(Landroidx/fragment/app/FragmentHostCallback;)V

    .line 14
    return-object v0
.end method


# virtual methods
.method public a(Landroidx/fragment/app/Fragment;)V
    .locals 2
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 3
    .line 4
    iget-object v1, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1, v0, v0, p1}, Landroidx/fragment/app/FragmentManager;->o(Landroidx/fragment/app/FragmentHostCallback;Landroidx/fragment/app/FragmentContainer;Landroidx/fragment/app/Fragment;)V

    .line 8
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->B()V

    .line 8
    return-void
.end method

.method public d(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->E(Landroid/view/MenuItem;)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public e()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->F()V

    .line 8
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->H()V

    .line 8
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->Q()V

    .line 8
    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->U()V

    .line 8
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->V()V

    .line 8
    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->X()V

    .line 8
    return-void
.end method

.method public k()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->e0(Z)Z

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public l()Landroidx/fragment/app/FragmentManager;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 5
    return-object v0
.end method

.method public m()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->f1()V

    .line 8
    return-void
.end method

.method public n(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->D0()Landroid/view/LayoutInflater$Factory2;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
