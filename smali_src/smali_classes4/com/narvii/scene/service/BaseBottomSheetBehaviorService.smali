.class public abstract Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Lcom/github/mmin18/widget/FlexLayout;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final bottomSheetCallback$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private bottomState:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private rootView:Landroid/view/ViewGroup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->ctx:Lcom/narvii/app/NVContext;

    .line 11
    .line 12
    new-instance p1, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2;-><init>(Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->bottomSheetCallback$delegate:Lw7/m;

    .line 22
    return-void
.end method

.method public static synthetic a(Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->show$lambda$1(Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;)V

    return-void
.end method

.method private static final show$lambda$1(Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const/4 v0, 0x3

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->updateBottomSheet(I)V

    .line 11
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->updateBottomSheet(I)V

    .line 5
    return-void
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->ctx:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Landroid/app/Activity;

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    :goto_0
    return-object v0
.end method

.method protected final getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Lcom/github/mmin18/widget/FlexLayout;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-object v0
.end method

.method protected final getBottomSheetCallback()Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->bottomSheetCallback$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;

    .line 9
    return-object v0
.end method

.method protected final getBottomState()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->bottomState:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method protected final getRootView()Landroid/view/ViewGroup;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->rootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final init()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->rootView:Landroid/view/ViewGroup;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->getActivity()Landroid/app/Activity;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    return-void

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    if-eqz v1, :cond_6

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :cond_2
    sget v2, Lcom/narvii/mediaeditor/R$id;->decor_drawer_layout:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    check-cast v2, Landroid/view/ViewGroup;

    .line 35
    .line 36
    if-nez v2, :cond_3

    .line 37
    .line 38
    .line 39
    const v2, 0x1020002

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v1

    .line 44
    move-object v2, v1

    .line 45
    .line 46
    check-cast v2, Landroid/view/ViewGroup;

    .line 47
    .line 48
    :cond_3
    if-eqz v2, :cond_6

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v2}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->initRootView(Landroid/view/ViewGroup;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->initFragment()Lcom/narvii/app/NVFragment;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    iget-object v2, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->ctx:Lcom/narvii/app/NVContext;

    .line 58
    .line 59
    instance-of v3, v2, Lcom/narvii/app/NVFragment;

    .line 60
    .line 61
    if-eqz v3, :cond_4

    .line 62
    .line 63
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    sget v2, Lcom/narvii/mediaeditor/R$id;->bottom_sheet_container:I

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->u(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 81
    goto :goto_0

    .line 82
    .line 83
    :cond_4
    instance-of v0, v2, Lcom/narvii/app/NVActivity;

    .line 84
    .line 85
    if-eqz v0, :cond_5

    .line 86
    .line 87
    check-cast v2, Lcom/narvii/app/NVActivity;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    sget v2, Lcom/narvii/mediaeditor/R$id;->bottom_sheet_container:I

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->u(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 105
    .line 106
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->rootView:Landroid/view/ViewGroup;

    .line 107
    .line 108
    .line 109
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 110
    .line 111
    sget v1, Lcom/narvii/mediaeditor/R$id;->behavior_layout:I

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    .line 118
    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    iput-object v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 122
    .line 123
    .line 124
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 125
    const/4 v1, 0x0

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->V(I)V

    .line 129
    .line 130
    iget-object v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 131
    .line 132
    .line 133
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 134
    const/4 v1, 0x4

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Z(I)V

    .line 138
    .line 139
    iget-object v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 140
    .line 141
    .line 142
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->getBottomSheetCallback()Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;

    .line 146
    move-result-object v1

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;)V

    .line 150
    :cond_6
    :goto_1
    return-void
.end method

.method public abstract initBottomLayout()I
.end method

.method public abstract initFragment()Lcom/narvii/app/NVFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public initRootView(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "parent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->ctx:Lcom/narvii/app/NVContext;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->initBottomLayout()I

    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    check-cast v0, Landroid/view/ViewGroup;

    .line 32
    const/4 v1, 0x0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->onBottomLayoutCreated(Landroid/view/View;)V

    .line 39
    .line 40
    iput-object v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->rootView:Landroid/view/ViewGroup;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 44
    return-void
.end method

.method public final isShowing()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->bottomState:Ljava/lang/Integer;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x3

    .line 11
    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 16
    :goto_1
    return v0
.end method

.method public onBottomLayoutCreated(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onCollapsed()V
    .locals 0

    return-void
.end method

.method protected final setBehavior(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 0
    .param p1    # Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Lcom/github/mmin18/widget/FlexLayout;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-void
.end method

.method protected final setBottomState(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->bottomState:Ljava/lang/Integer;

    return-void
.end method

.method protected final setRootView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->rootView:Landroid/view/ViewGroup;

    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->rootView:Landroid/view/ViewGroup;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->init()V

    .line 8
    const/4 v0, 0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->updateRootView(Z)V

    .line 12
    .line 13
    new-instance v0, Lcom/narvii/scene/service/a;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/narvii/scene/service/a;-><init>(Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;)V

    .line 17
    .line 18
    const-wide/16 v1, 0x64

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->showContent()V

    .line 26
    :goto_0
    return-void
.end method

.method public showContent()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->updateRootView(Z)V

    .line 5
    const/4 v0, 0x3

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->updateBottomSheet(I)V

    .line 9
    return-void
.end method

.method protected final updateBottomSheet(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Z(I)V

    .line 8
    :cond_0
    return-void
.end method

.method protected final updateRootView(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->rootView:Landroid/view/ViewGroup;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    const/4 p1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 21
    move-result p1

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    const/16 p1, 0x8

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    :cond_1
    :goto_0
    return-void
.end method
