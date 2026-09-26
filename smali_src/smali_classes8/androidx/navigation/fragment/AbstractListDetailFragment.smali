.class public abstract Landroidx/navigation/fragment/AbstractListDetailFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/fragment/AbstractListDetailFragment$InnerOnBackPressedCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractListDetailFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractListDetailFragment.kt\nandroidx/navigation/fragment/AbstractListDetailFragment\n+ 2 TypedArray.kt\nandroidx/core/content/res/TypedArrayKt\n+ 3 FragmentManager.kt\nandroidx/fragment/app/FragmentManagerKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,256:1\n232#2,3:257\n26#3,12:260\n65#4,4:272\n37#4:276\n53#4:277\n71#4,2:278\n*S KotlinDebug\n*F\n+ 1 AbstractListDetailFragment.kt\nandroidx/navigation/fragment/AbstractListDetailFragment\n*L\n110#1:257,3\n172#1:260,12\n179#1:272,4\n179#1:276\n179#1:277\n179#1:278,2\n*E\n"
.end annotation


# instance fields
.field private _detailPaneNavHostFragment:Landroidx/navigation/fragment/NavHostFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private graphId:I

.field private onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 4
    return-void
.end method

.method public static final synthetic f(Landroidx/navigation/fragment/AbstractListDetailFragment;)Landroidx/activity/OnBackPressedCallback;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/navigation/fragment/AbstractListDetailFragment;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    .line 3
    return-object p0
.end method


# virtual methods
.method public final g()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 7
    return-object v0
.end method

.method public h()Landroidx/navigation/fragment/NavHostFragment;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/navigation/fragment/AbstractListDetailFragment;->graphId:I

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v1, Landroidx/navigation/fragment/NavHostFragment;->Companion:Landroidx/navigation/fragment/NavHostFragment$Companion;

    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x0

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v0, v3, v2, v3}, Landroidx/navigation/fragment/NavHostFragment$Companion;->b(Landroidx/navigation/fragment/NavHostFragment$Companion;ILandroid/os/Bundle;ILjava/lang/Object;)Landroidx/navigation/fragment/NavHostFragment;

    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    .line 15
    :cond_0
    new-instance v0, Landroidx/navigation/fragment/NavHostFragment;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Landroidx/navigation/fragment/NavHostFragment;-><init>()V

    .line 19
    return-object v0
.end method

.method public abstract i(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public j(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string/jumbo p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p2, "inflater"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    const-string p2, "android-support-nav:fragment:graphId"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 13
    move-result p2

    .line 14
    .line 15
    iput p2, p0, Landroidx/navigation/fragment/AbstractListDetailFragment;->graphId:I

    .line 16
    .line 17
    :cond_0
    new-instance p2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-direct {p2, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    sget v0, Landroidx/navigation/fragment/R$id;->sliding_pane_layout:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/fragment/AbstractListDetailFragment;->i(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 33
    move-result-object p3

    .line 34
    .line 35
    .line 36
    invoke-static {p3, p2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    move-result v0

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-static {v0, p2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    move-result v0

    .line 48
    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 53
    .line 54
    :cond_1
    new-instance p3, Landroidx/fragment/app/FragmentContainerView;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    const-string v1, "inflater.context"

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p3, v0}, Landroidx/fragment/app/FragmentContainerView;-><init>(Landroid/content/Context;)V

    .line 67
    .line 68
    sget v0, Landroidx/navigation/fragment/R$id;->sliding_pane_detail_container:I

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3, v0}, Landroid/view/View;->setId(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    sget v1, Landroidx/navigation/fragment/R$dimen;->sliding_pane_detail_pane_width:I

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 85
    move-result p1

    .line 86
    .line 87
    new-instance v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 88
    const/4 v2, -0x1

    .line 89
    .line 90
    .line 91
    invoke-direct {v1, p1, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>(II)V

    .line 92
    .line 93
    const/high16 p1, 0x3f800000    # 1.0f

    .line 94
    .line 95
    iput p1, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, p3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->l0(I)Landroidx/fragment/app/Fragment;

    .line 106
    move-result-object p1

    .line 107
    const/4 p3, 0x1

    .line 108
    .line 109
    if-eqz p1, :cond_2

    .line 110
    .line 111
    check-cast p1, Landroidx/navigation/fragment/NavHostFragment;

    .line 112
    goto :goto_0

    .line 113
    .line 114
    .line 115
    :cond_2
    invoke-virtual {p0}, Landroidx/navigation/fragment/AbstractListDetailFragment;->h()Landroidx/navigation/fragment/NavHostFragment;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 120
    move-result-object v1

    .line 121
    .line 122
    const-string v2, "childFragmentManager"

    .line 123
    .line 124
    .line 125
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 129
    move-result-object v1

    .line 130
    .line 131
    const-string v2, "beginTransaction()"

    .line 132
    .line 133
    .line 134
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, p3}, Landroidx/fragment/app/FragmentTransaction;->C(Z)Landroidx/fragment/app/FragmentTransaction;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 144
    .line 145
    :goto_0
    iput-object p1, p0, Landroidx/navigation/fragment/AbstractListDetailFragment;->_detailPaneNavHostFragment:Landroidx/navigation/fragment/NavHostFragment;

    .line 146
    .line 147
    new-instance p1, Landroidx/navigation/fragment/AbstractListDetailFragment$InnerOnBackPressedCallback;

    .line 148
    .line 149
    .line 150
    invoke-direct {p1, p2}, Landroidx/navigation/fragment/AbstractListDetailFragment$InnerOnBackPressedCallback;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V

    .line 151
    .line 152
    iput-object p1, p0, Landroidx/navigation/fragment/AbstractListDetailFragment;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    .line 153
    .line 154
    .line 155
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->X(Landroid/view/View;)Z

    .line 156
    move-result p1

    .line 157
    .line 158
    if-eqz p1, :cond_4

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2}, Landroid/view/View;->isLayoutRequested()Z

    .line 162
    move-result p1

    .line 163
    .line 164
    if-nez p1, :cond_4

    .line 165
    .line 166
    .line 167
    invoke-static {p0}, Landroidx/navigation/fragment/AbstractListDetailFragment;->f(Landroidx/navigation/fragment/AbstractListDetailFragment;)Landroidx/activity/OnBackPressedCallback;

    .line 168
    move-result-object p1

    .line 169
    .line 170
    .line 171
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->n()Z

    .line 175
    move-result v0

    .line 176
    .line 177
    if-eqz v0, :cond_3

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->m()Z

    .line 181
    move-result v0

    .line 182
    .line 183
    if-eqz v0, :cond_3

    .line 184
    goto :goto_1

    .line 185
    :cond_3
    const/4 p3, 0x0

    .line 186
    .line 187
    .line 188
    :goto_1
    invoke-virtual {p1, p3}, Landroidx/activity/OnBackPressedCallback;->i(Z)V

    .line 189
    goto :goto_2

    .line 190
    .line 191
    :cond_4
    new-instance p1, Landroidx/navigation/fragment/AbstractListDetailFragment$onCreateView$$inlined$doOnLayout$1;

    .line 192
    .line 193
    .line 194
    invoke-direct {p1, p0, p2}, Landroidx/navigation/fragment/AbstractListDetailFragment$onCreateView$$inlined$doOnLayout$1;-><init>(Landroidx/navigation/fragment/AbstractListDetailFragment;Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p2, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 198
    .line 199
    .line 200
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 201
    move-result-object p1

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 205
    move-result-object p1

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 209
    move-result-object p3

    .line 210
    .line 211
    iget-object v0, p0, Landroidx/navigation/fragment/AbstractListDetailFragment;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    .line 212
    .line 213
    .line 214
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1, p3, v0}, Landroidx/activity/OnBackPressedDispatcher;->b(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 218
    return-object p2
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "attrs"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 14
    .line 15
    sget-object p3, Landroidx/navigation/R$styleable;->NavHost:[I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    const-string p2, "context.obtainStyledAttr\u2026yleable.NavHost\n        )"

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    sget p2, Landroidx/navigation/R$styleable;->NavHost_navGraph:I

    .line 27
    const/4 p3, 0x0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 31
    move-result p2

    .line 32
    .line 33
    if-eqz p2, :cond_0

    .line 34
    .line 35
    iput p2, p0, Landroidx/navigation/fragment/AbstractListDetailFragment;->graphId:I

    .line 36
    .line 37
    :cond_0
    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "outState"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 10
    .line 11
    iget v0, p0, Landroidx/navigation/fragment/AbstractListDetailFragment;->graphId:I

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v1, "android-support-nav:fragment:graphId"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 19
    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "view"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/navigation/fragment/AbstractListDetailFragment;->g()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    const-string v0, "listPaneView"

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Landroidx/navigation/fragment/AbstractListDetailFragment;->j(Landroid/view/View;Landroid/os/Bundle;)V

    .line 27
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/navigation/fragment/AbstractListDetailFragment;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/navigation/fragment/AbstractListDetailFragment;->g()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->n()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/navigation/fragment/AbstractListDetailFragment;->g()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->m()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    const/4 v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/activity/OnBackPressedCallback;->i(Z)V

    .line 35
    return-void
.end method
