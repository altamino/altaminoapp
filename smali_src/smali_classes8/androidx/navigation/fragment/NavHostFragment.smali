.class public Landroidx/navigation/fragment/NavHostFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroidx/navigation/NavHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/fragment/NavHostFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavHostFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavHostFragment.kt\nandroidx/navigation/fragment/NavHostFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 NavigatorProvider.kt\nandroidx/navigation/NavigatorProviderKt\n+ 4 TypedArray.kt\nandroidx/core/content/res/TypedArrayKt\n*L\n1#1,429:1\n1#2:430\n181#3,2:431\n232#4,3:433\n232#4,3:436\n*S KotlinDebug\n*F\n+ 1 NavHostFragment.kt\nandroidx/navigation/fragment/NavHostFragment\n*L\n214#1:431,2\n296#1:433,3\n304#1:436,3\n*E\n"
.end annotation


# static fields
.field public static final Companion:Landroidx/navigation/fragment/NavHostFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEY_DEFAULT_NAV_HOST:Ljava/lang/String; = "android-support-nav:fragment:defaultHost"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_GRAPH_ID:Ljava/lang/String; = "android-support-nav:fragment:graphId"
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEY_NAV_CONTROLLER_STATE:Ljava/lang/String; = "android-support-nav:fragment:navControllerState"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_START_DESTINATION_ARGS:Ljava/lang/String; = "android-support-nav:fragment:startDestinationArgs"
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private defaultNavHost:Z

.field private graphId:I

.field private isPrimaryBeforeOnCreate:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private navHostController:Landroidx/navigation/NavHostController;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private viewParent:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/navigation/fragment/NavHostFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/fragment/NavHostFragment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Landroidx/navigation/fragment/NavHostFragment;->Companion:Landroidx/navigation/fragment/NavHostFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 4
    return-void
.end method

.method public static final synthetic f(Landroidx/navigation/fragment/NavHostFragment;)Landroidx/navigation/NavHostController;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/navigation/fragment/NavHostFragment;->navHostController:Landroidx/navigation/NavHostController;

    .line 3
    return-object p0
.end method

.method private final h()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v1, -0x1

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    sget v0, Landroidx/navigation/fragment/R$id;->nav_host_fragment_container:I

    .line 13
    :goto_0
    return v0
.end method


# virtual methods
.method protected g()Landroidx/navigation/Navigator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/fragment/FragmentNavigator$Destination;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/navigation/fragment/FragmentNavigator;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    const-string/jumbo v2, "requireContext()"

    .line 10
    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    const-string v3, "childFragmentManager"

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Landroidx/navigation/fragment/NavHostFragment;->h()I

    .line 25
    move-result v3

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v2, v3}, Landroidx/navigation/fragment/FragmentNavigator;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;I)V

    .line 29
    return-object v0
.end method

.method protected i(Landroidx/navigation/NavController;)V
    .locals 5
    .param p1    # Landroidx/navigation/NavController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    const-string v0, "navController"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/navigation/NavController;->F()Landroidx/navigation/NavigatorProvider;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    new-instance v1, Landroidx/navigation/fragment/DialogFragmentNavigator;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    const-string/jumbo v3, "requireContext()"

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    const-string v4, "childFragmentManager"

    .line 28
    .line 29
    .line 30
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2, v3}, Landroidx/navigation/fragment/DialogFragmentNavigator;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->b(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/navigation/NavController;->F()Landroidx/navigation/NavigatorProvider;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->g()Landroidx/navigation/Navigator;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroidx/navigation/NavigatorProvider;->b(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    .line 48
    return-void
.end method

.method protected j(Landroidx/navigation/NavHostController;)V
    .locals 1
    .param p1    # Landroidx/navigation/NavHostController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    const-string v0, "navHostController"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroidx/navigation/fragment/NavHostFragment;->i(Landroidx/navigation/NavController;)V

    .line 9
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    .line 8
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 9
    .line 10
    iget-boolean p1, p0, Landroidx/navigation/fragment/NavHostFragment;->defaultNavHost:Z

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->B(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 28
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    const-string/jumbo v1, "requireContext()"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v1, Landroidx/navigation/NavHostController;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v0}, Landroidx/navigation/NavHostController;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    iput-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->navHostController:Landroidx/navigation/NavHostController;

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p0}, Landroidx/navigation/NavHostController;->e0(Landroidx/lifecycle/LifecycleOwner;)V

    .line 24
    .line 25
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    instance-of v1, v0, Landroidx/activity/OnBackPressedDispatcherOwner;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    iget-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->navHostController:Landroidx/navigation/NavHostController;

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 37
    .line 38
    check-cast v0, Landroidx/activity/OnBackPressedDispatcherOwner;

    .line 39
    .line 40
    .line 41
    invoke-interface {v0}, Landroidx/activity/OnBackPressedDispatcherOwner;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    const-string v2, "context as OnBackPressed\u2026).onBackPressedDispatcher"

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Landroidx/navigation/NavHostController;->f0(Landroidx/activity/OnBackPressedDispatcher;)V

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    const-string v1, "context.baseContext"

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    goto :goto_0

    .line 64
    .line 65
    :cond_1
    :goto_1
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->navHostController:Landroidx/navigation/NavHostController;

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 69
    .line 70
    iget-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->isPrimaryBeforeOnCreate:Ljava/lang/Boolean;

    .line 71
    const/4 v2, 0x1

    .line 72
    const/4 v3, 0x0

    .line 73
    .line 74
    if-eqz v1, :cond_3

    .line 75
    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 80
    move-result v1

    .line 81
    .line 82
    if-eqz v1, :cond_3

    .line 83
    move v1, v2

    .line 84
    goto :goto_2

    .line 85
    .line 86
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 87
    .line 88
    .line 89
    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Boolean"

    .line 90
    .line 91
    .line 92
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 93
    throw p1

    .line 94
    :cond_3
    move v1, v3

    .line 95
    .line 96
    .line 97
    :goto_2
    invoke-virtual {v0, v1}, Landroidx/navigation/NavHostController;->r(Z)V

    .line 98
    const/4 v0, 0x0

    .line 99
    .line 100
    iput-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->isPrimaryBeforeOnCreate:Ljava/lang/Boolean;

    .line 101
    .line 102
    iget-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->navHostController:Landroidx/navigation/NavHostController;

    .line 103
    .line 104
    .line 105
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 109
    move-result-object v4

    .line 110
    .line 111
    .line 112
    const-string/jumbo v5, "viewModelStore"

    .line 113
    .line 114
    .line 115
    invoke-static {v4, v5}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v4}, Landroidx/navigation/NavHostController;->g0(Landroidx/lifecycle/ViewModelStore;)V

    .line 119
    .line 120
    iget-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->navHostController:Landroidx/navigation/NavHostController;

    .line 121
    .line 122
    .line 123
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v1}, Landroidx/navigation/fragment/NavHostFragment;->j(Landroidx/navigation/NavHostController;)V

    .line 127
    .line 128
    const-string v1, "android-support-nav:fragment:graphId"

    .line 129
    .line 130
    if-eqz p1, :cond_5

    .line 131
    .line 132
    const-string v4, "android-support-nav:fragment:navControllerState"

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 136
    move-result-object v4

    .line 137
    .line 138
    const-string v5, "android-support-nav:fragment:defaultHost"

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v5, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 142
    move-result v5

    .line 143
    .line 144
    if-eqz v5, :cond_4

    .line 145
    .line 146
    iput-boolean v2, p0, Landroidx/navigation/fragment/NavHostFragment;->defaultNavHost:Z

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 150
    move-result-object v2

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 154
    move-result-object v2

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, p0}, Landroidx/fragment/app/FragmentTransaction;->B(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 158
    move-result-object v2

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 162
    .line 163
    .line 164
    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 165
    move-result v2

    .line 166
    .line 167
    iput v2, p0, Landroidx/navigation/fragment/NavHostFragment;->graphId:I

    .line 168
    goto :goto_3

    .line 169
    :cond_5
    move-object v4, v0

    .line 170
    .line 171
    :goto_3
    if-eqz v4, :cond_6

    .line 172
    .line 173
    iget-object v2, p0, Landroidx/navigation/fragment/NavHostFragment;->navHostController:Landroidx/navigation/NavHostController;

    .line 174
    .line 175
    .line 176
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v4}, Landroidx/navigation/NavController;->Y(Landroid/os/Bundle;)V

    .line 180
    .line 181
    :cond_6
    iget v2, p0, Landroidx/navigation/fragment/NavHostFragment;->graphId:I

    .line 182
    .line 183
    if-eqz v2, :cond_7

    .line 184
    .line 185
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->navHostController:Landroidx/navigation/NavHostController;

    .line 186
    .line 187
    .line 188
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 189
    .line 190
    iget v1, p0, Landroidx/navigation/fragment/NavHostFragment;->graphId:I

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v1}, Landroidx/navigation/NavController;->b0(I)V

    .line 194
    goto :goto_4

    .line 195
    .line 196
    .line 197
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 198
    move-result-object v2

    .line 199
    .line 200
    if-eqz v2, :cond_8

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 204
    move-result v3

    .line 205
    .line 206
    :cond_8
    if-eqz v2, :cond_9

    .line 207
    .line 208
    const-string v0, "android-support-nav:fragment:startDestinationArgs"

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 212
    move-result-object v0

    .line 213
    .line 214
    :cond_9
    if-eqz v3, :cond_a

    .line 215
    .line 216
    iget-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->navHostController:Landroidx/navigation/NavHostController;

    .line 217
    .line 218
    .line 219
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, v3, v0}, Landroidx/navigation/NavController;->c0(ILandroid/os/Bundle;)V

    .line 223
    .line 224
    .line 225
    :cond_a
    :goto_4
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 226
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
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
    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    new-instance p2, Landroidx/fragment/app/FragmentContainerView;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    const-string p3, "inflater.context"

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p2, p1}, Landroidx/fragment/app/FragmentContainerView;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Landroidx/navigation/fragment/NavHostFragment;->h()I

    .line 23
    move-result p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    .line 27
    return-object p2
.end method

.method public onDestroyView()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->viewParent:Landroid/view/View;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroidx/navigation/Navigation;->b(Landroid/view/View;)Landroidx/navigation/NavController;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    iget-object v3, p0, Landroidx/navigation/fragment/NavHostFragment;->navHostController:Landroidx/navigation/NavHostController;

    .line 15
    .line 16
    if-ne v2, v3, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Landroidx/navigation/Navigation;->e(Landroid/view/View;Landroidx/navigation/NavController;)V

    .line 20
    .line 21
    :cond_0
    iput-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->viewParent:Landroid/view/View;

    .line 22
    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2
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
    move-result-object p3

    .line 20
    .line 21
    const-string v0, "context.obtainStyledAttr\u2026yleable.NavHost\n        )"

    .line 22
    .line 23
    .line 24
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    sget v0, Landroidx/navigation/R$styleable;->NavHost_navGraph:I

    .line 27
    const/4 v1, 0x0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iput v0, p0, Landroidx/navigation/fragment/NavHostFragment;->graphId:I

    .line 36
    .line 37
    :cond_0
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    .line 42
    sget-object p3, Landroidx/navigation/fragment/R$styleable;->NavHostFragment:[I

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    const-string p2, "context.obtainStyledAttr\u2026tyleable.NavHostFragment)"

    .line 49
    .line 50
    .line 51
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    sget p2, Landroidx/navigation/fragment/R$styleable;->NavHostFragment_defaultNavHost:I

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 57
    move-result p2

    .line 58
    .line 59
    if-eqz p2, :cond_1

    .line 60
    const/4 p2, 0x1

    .line 61
    .line 62
    iput-boolean p2, p0, Landroidx/navigation/fragment/NavHostFragment;->defaultNavHost:Z

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    return-void
.end method

.method public onPrimaryNavigationFragmentChanged(Z)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->navHostController:Landroidx/navigation/NavHostController;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroidx/navigation/NavHostController;->r(Z)V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iput-object p1, p0, Landroidx/navigation/fragment/NavHostFragment;->isPrimaryBeforeOnCreate:Ljava/lang/Boolean;

    .line 17
    :cond_1
    :goto_0
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
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->navHostController:Landroidx/navigation/NavHostController;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/navigation/NavController;->a0()Landroid/os/Bundle;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const-string v1, "android-support-nav:fragment:navControllerState"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 26
    .line 27
    :cond_0
    iget-boolean v0, p0, Landroidx/navigation/fragment/NavHostFragment;->defaultNavHost:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const-string v0, "android-support-nav:fragment:defaultHost"

    .line 32
    const/4 v1, 0x1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    .line 37
    :cond_1
    iget v0, p0, Landroidx/navigation/fragment/NavHostFragment;->graphId:I

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    const-string v1, "android-support-nav:fragment:graphId"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 45
    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

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
    instance-of p2, p1, Landroid/view/ViewGroup;

    .line 12
    .line 13
    if-eqz p2, :cond_2

    .line 14
    .line 15
    iget-object p2, p0, Landroidx/navigation/fragment/NavHostFragment;->navHostController:Landroidx/navigation/NavHostController;

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2}, Landroidx/navigation/Navigation;->e(Landroid/view/View;Landroidx/navigation/NavController;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    check-cast p1, Landroid/view/View;

    .line 33
    .line 34
    iput-object p1, p0, Landroidx/navigation/fragment/NavHostFragment;->viewParent:Landroid/view/View;

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 41
    move-result p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getId()I

    .line 45
    move-result p2

    .line 46
    .line 47
    if-ne p1, p2, :cond_1

    .line 48
    .line 49
    iget-object p1, p0, Landroidx/navigation/fragment/NavHostFragment;->viewParent:Landroid/view/View;

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 53
    .line 54
    iget-object p2, p0, Landroidx/navigation/fragment/NavHostFragment;->navHostController:Landroidx/navigation/NavHostController;

    .line 55
    .line 56
    .line 57
    invoke-static {p1, p2}, Landroidx/navigation/Navigation;->e(Landroid/view/View;Landroidx/navigation/NavController;)V

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 61
    .line 62
    .line 63
    const-string/jumbo p2, "null cannot be cast to non-null type android.view.View"

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 67
    throw p1

    .line 68
    :cond_1
    :goto_0
    return-void

    .line 69
    .line 70
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    const-string v0, "created host view "

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string p1, " is not a ViewGroup"

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    .line 99
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 100
    throw p2
.end method
