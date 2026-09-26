.class public final Landroidx/navigation/fragment/DialogFragmentNavigator;
.super Landroidx/navigation/Navigator;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/navigation/Navigator$Name;
    value = "dialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;,
        Landroidx/navigation/fragment/DialogFragmentNavigator$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/Navigator<",
        "Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDialogFragmentNavigator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DialogFragmentNavigator.kt\nandroidx/navigation/fragment/DialogFragmentNavigator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,235:1\n1741#2,3:236\n531#2,6:239\n*S KotlinDebug\n*F\n+ 1 DialogFragmentNavigator.kt\nandroidx/navigation/fragment/DialogFragmentNavigator\n*L\n50#1:236,3\n62#1:239,6\n*E\n"
.end annotation


# static fields
.field private static final Companion:Landroidx/navigation/fragment/DialogFragmentNavigator$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DialogFragmentNavigator"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fragmentManager:Landroidx/fragment/app/FragmentManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final observer:Landroidx/lifecycle/LifecycleEventObserver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final restoredTagsAwaitingAttach:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/navigation/fragment/DialogFragmentNavigator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/fragment/DialogFragmentNavigator$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Landroidx/navigation/fragment/DialogFragmentNavigator;->Companion:Landroidx/navigation/fragment/DialogFragmentNavigator$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "fragmentManager"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/navigation/Navigator;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->context:Landroid/content/Context;

    .line 16
    .line 17
    iput-object p2, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 18
    .line 19
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 23
    .line 24
    iput-object p1, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->restoredTagsAwaitingAttach:Ljava/util/Set;

    .line 25
    .line 26
    new-instance p1, Landroidx/navigation/fragment/b;

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, p0}, Landroidx/navigation/fragment/b;-><init>(Landroidx/navigation/fragment/DialogFragmentNavigator;)V

    .line 30
    .line 31
    iput-object p1, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->observer:Landroidx/lifecycle/LifecycleEventObserver;

    .line 32
    return-void
.end method

.method public static synthetic l(Landroidx/navigation/fragment/DialogFragmentNavigator;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/navigation/fragment/DialogFragmentNavigator;->q(Landroidx/navigation/fragment/DialogFragmentNavigator;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public static synthetic m(Landroidx/navigation/fragment/DialogFragmentNavigator;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/navigation/fragment/DialogFragmentNavigator;->p(Landroidx/navigation/fragment/DialogFragmentNavigator;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method private final o(Landroidx/navigation/NavBackStackEntry;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;->B()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 15
    move-result v2

    .line 16
    .line 17
    const/16 v3, 0x2e

    .line 18
    .line 19
    if-ne v2, v3, :cond_0

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    iget-object v3, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->context:Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    :cond_0
    iget-object v2, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->z0()Landroidx/fragment/app/FragmentFactory;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    iget-object v3, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->context:Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 52
    move-result-object v3

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v3, v1}, Landroidx/fragment/app/FragmentFactory;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    const-string v2, "fragmentManager.fragment\u2026ader, className\n        )"

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    const-class v3, Landroidx/fragment/app/DialogFragment;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 71
    move-result v2

    .line 72
    .line 73
    if-eqz v2, :cond_1

    .line 74
    .line 75
    check-cast v1, Landroidx/fragment/app/DialogFragment;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->d()Landroid/os/Bundle;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    iget-object v2, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->observer:Landroidx/lifecycle/LifecycleEventObserver;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v2}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    .line 92
    .line 93
    iget-object v0, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->g()Ljava/lang/String;

    .line 97
    move-result-object v2

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Landroidx/navigation/Navigator;->b()Landroidx/navigation/NavigatorState;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, p1}, Landroidx/navigation/NavigatorState;->h(Landroidx/navigation/NavBackStackEntry;)V

    .line 108
    return-void

    .line 109
    .line 110
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    const-string v1, "Dialog destination "

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;->B()Ljava/lang/String;

    .line 122
    move-result-object v0

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v0, " is not an instance of DialogFragment"

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 140
    move-result-object p1

    .line 141
    .line 142
    .line 143
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 144
    throw v0
.end method

.method private static final p(Landroidx/navigation/fragment/DialogFragmentNavigator;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string/jumbo v0, "source"

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    const-string v0, "event"

    .line 15
    .line 16
    .line 17
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    .line 20
    .line 21
    if-ne p2, v0, :cond_3

    .line 22
    .line 23
    check-cast p1, Landroidx/fragment/app/DialogFragment;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/navigation/Navigator;->b()Landroidx/navigation/NavigatorState;

    .line 27
    move-result-object p0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/navigation/NavigatorState;->b()Lkotlinx/coroutines/flow/l0;

    .line 31
    move-result-object p0

    .line 32
    .line 33
    .line 34
    invoke-interface {p0}, Lkotlinx/coroutines/flow/l0;->getValue()Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 36
    .line 37
    check-cast p0, Ljava/lang/Iterable;

    .line 38
    .line 39
    instance-of p2, p0, Ljava/util/Collection;

    .line 40
    .line 41
    if-eqz p2, :cond_0

    .line 42
    move-object p2, p0

    .line 43
    .line 44
    check-cast p2, Ljava/util/Collection;

    .line 45
    .line 46
    .line 47
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 48
    move-result p2

    .line 49
    .line 50
    if-eqz p2, :cond_0

    .line 51
    goto :goto_0

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object p0

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result p2

    .line 60
    .line 61
    if-eqz p2, :cond_2

    .line 62
    .line 63
    .line 64
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object p2

    .line 66
    .line 67
    check-cast p2, Landroidx/navigation/NavBackStackEntry;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Landroidx/navigation/NavBackStackEntry;->g()Ljava/lang/String;

    .line 71
    move-result-object p2

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    .line 78
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    move-result p2

    .line 80
    .line 81
    if-eqz p2, :cond_1

    .line 82
    .line 83
    goto/16 :goto_2

    .line 84
    .line 85
    .line 86
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 87
    .line 88
    goto/16 :goto_2

    .line 89
    .line 90
    :cond_3
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    .line 91
    .line 92
    if-ne p2, v0, :cond_8

    .line 93
    .line 94
    check-cast p1, Landroidx/fragment/app/DialogFragment;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->requireDialog()Landroid/app/Dialog;

    .line 98
    move-result-object p2

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    .line 102
    move-result p2

    .line 103
    .line 104
    if-nez p2, :cond_8

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Landroidx/navigation/Navigator;->b()Landroidx/navigation/NavigatorState;

    .line 108
    move-result-object p2

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2}, Landroidx/navigation/NavigatorState;->b()Lkotlinx/coroutines/flow/l0;

    .line 112
    move-result-object p2

    .line 113
    .line 114
    .line 115
    invoke-interface {p2}, Lkotlinx/coroutines/flow/l0;->getValue()Ljava/lang/Object;

    .line 116
    move-result-object p2

    .line 117
    .line 118
    check-cast p2, Ljava/util/List;

    .line 119
    .line 120
    .line 121
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 122
    move-result v0

    .line 123
    .line 124
    .line 125
    invoke-interface {p2, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    .line 129
    :cond_4
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 130
    move-result v1

    .line 131
    .line 132
    if-eqz v1, :cond_5

    .line 133
    .line 134
    .line 135
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 136
    move-result-object v1

    .line 137
    move-object v2, v1

    .line 138
    .line 139
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->g()Ljava/lang/String;

    .line 143
    move-result-object v2

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    .line 147
    move-result-object v3

    .line 148
    .line 149
    .line 150
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 151
    move-result v2

    .line 152
    .line 153
    if-eqz v2, :cond_4

    .line 154
    goto :goto_1

    .line 155
    :cond_5
    const/4 v1, 0x0

    .line 156
    .line 157
    :goto_1
    const-string v0, "Dialog "

    .line 158
    .line 159
    if-eqz v1, :cond_7

    .line 160
    .line 161
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 162
    .line 163
    .line 164
    invoke-static {p2}, Lkotlin/collections/t;->w0(Ljava/util/List;)Ljava/lang/Object;

    .line 165
    move-result-object p2

    .line 166
    .line 167
    .line 168
    invoke-static {p2, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 169
    move-result p2

    .line 170
    .line 171
    if-nez p2, :cond_6

    .line 172
    .line 173
    new-instance p2, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    const-string p1, " was dismissed while it was not the top of the back stack, popping all dialogs above this dismissed dialog"

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    move-result-object p1

    .line 192
    .line 193
    const-string p2, "DialogFragmentNavigator"

    .line 194
    .line 195
    .line 196
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_6
    const/4 p1, 0x0

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0, v1, p1}, Landroidx/navigation/fragment/DialogFragmentNavigator;->j(Landroidx/navigation/NavBackStackEntry;Z)V

    .line 201
    goto :goto_2

    .line 202
    .line 203
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    const-string p1, " has already been popped off of the Navigation back stack"

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    move-result-object p0

    .line 222
    .line 223
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 227
    move-result-object p0

    .line 228
    .line 229
    .line 230
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 231
    throw p1

    .line 232
    :cond_8
    :goto_2
    return-void
.end method

.method private static final q(Landroidx/navigation/fragment/DialogFragmentNavigator;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
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
    .line 8
    const-string v0, "<anonymous parameter 0>"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string p1, "childFragment"

    .line 14
    .line 15
    .line 16
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    iget-object p1, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->restoredTagsAwaitingAttach:Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/jvm/internal/v0;->a(Ljava/lang/Object;)Ljava/util/Collection;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 30
    move-result p1

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    iget-object p0, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->observer:Landroidx/lifecycle/LifecycleEventObserver;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic a()Landroidx/navigation/NavDestination;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/navigation/fragment/DialogFragmentNavigator;->n()Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public e(Ljava/util/List;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/navigation/NavOptions;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/navigation/Navigator$Extras;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/navigation/NavOptions;",
            "Landroidx/navigation/Navigator$Extras;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string p2, "entries"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p2, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->V0()Z

    .line 11
    move-result p2

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    const-string p1, "DialogFragmentNavigator"

    .line 16
    .line 17
    const-string p2, "Ignoring navigate() call: FragmentManager has already saved its state"

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-void

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result p2

    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    check-cast p2, Landroidx/navigation/NavBackStackEntry;

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, p2}, Landroidx/navigation/fragment/DialogFragmentNavigator;->o(Landroidx/navigation/NavBackStackEntry;)V

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-void
.end method

.method public f(Landroidx/navigation/NavigatorState;)V
    .locals 3
    .param p1    # Landroidx/navigation/NavigatorState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "state"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1}, Landroidx/navigation/Navigator;->f(Landroidx/navigation/NavigatorState;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/navigation/NavigatorState;->b()Lkotlinx/coroutines/flow/l0;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Lkotlinx/coroutines/flow/l0;->getValue()Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    check-cast p1, Ljava/util/List;

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 36
    .line 37
    iget-object v1, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->g()Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    check-cast v1, Landroidx/fragment/app/DialogFragment;

    .line 48
    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    iget-object v0, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->observer:Landroidx/lifecycle/LifecycleEventObserver;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_0
    iget-object v1, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->restoredTagsAwaitingAttach:Ljava/util/Set;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->g()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    .line 70
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_1
    iget-object p1, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 74
    .line 75
    new-instance v0, Landroidx/navigation/fragment/a;

    .line 76
    .line 77
    .line 78
    invoke-direct {v0, p0}, Landroidx/navigation/fragment/a;-><init>(Landroidx/navigation/fragment/DialogFragmentNavigator;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->k(Landroidx/fragment/app/FragmentOnAttachListener;)V

    .line 82
    return-void
.end method

.method public j(Landroidx/navigation/NavBackStackEntry;Z)V
    .locals 4
    .param p1    # Landroidx/navigation/NavBackStackEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "popUpTo"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->V0()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string p1, "DialogFragmentNavigator"

    .line 17
    .line 18
    const-string p2, "Ignoring popBackStack() call: FragmentManager has already saved its state"

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Landroidx/navigation/Navigator;->b()Landroidx/navigation/NavigatorState;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/navigation/NavigatorState;->b()Lkotlinx/coroutines/flow/l0;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Lkotlinx/coroutines/flow/l0;->getValue()Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    check-cast v0, Ljava/util/List;

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 40
    move-result v1

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 44
    move-result v2

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    check-cast v0, Ljava/lang/Iterable;

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lkotlin/collections/t;->G0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    move-result v1

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 71
    .line 72
    iget-object v2, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->g()Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    if-eqz v1, :cond_1

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 86
    move-result-object v2

    .line 87
    .line 88
    iget-object v3, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->observer:Landroidx/lifecycle/LifecycleEventObserver;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v3}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/LifecycleObserver;)V

    .line 92
    .line 93
    check-cast v1, Landroidx/fragment/app/DialogFragment;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 97
    goto :goto_0

    .line 98
    .line 99
    .line 100
    :cond_2
    invoke-virtual {p0}, Landroidx/navigation/Navigator;->b()Landroidx/navigation/NavigatorState;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p1, p2}, Landroidx/navigation/NavigatorState;->g(Landroidx/navigation/NavBackStackEntry;Z)V

    .line 105
    return-void
.end method

.method public n()Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;-><init>(Landroidx/navigation/Navigator;)V

    .line 6
    return-object v0
.end method
