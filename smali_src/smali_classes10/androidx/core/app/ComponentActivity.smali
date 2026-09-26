.class public Landroidx/core/app/ComponentActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;
.implements Landroidx/core/view/KeyEventDispatcher$Component;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/ComponentActivity$ExtraData;
    }
.end annotation


# instance fields
.field private mExtraDataMap:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/core/app/ComponentActivity$ExtraData;",
            ">;",
            "Landroidx/core/app/ComponentActivity$ExtraData;",
            ">;"
        }
    .end annotation
.end field

.field private mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/core/app/ComponentActivity;->mExtraDataMap:Landroidx/collection/SimpleArrayMap;

    .line 11
    .line 12
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/core/app/ComponentActivity;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 18
    return-void
.end method

.method private static shouldSkipDump([Ljava/lang/String;)Z
    .locals 4
    .param p0    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/OptIn;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_7

    .line 4
    array-length v1, p0

    .line 5
    .line 6
    if-lez v1, :cond_7

    .line 7
    .line 8
    aget-object p0, p0, v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    const/4 v3, -0x1

    .line 18
    .line 19
    .line 20
    sparse-switch v1, :sswitch_data_0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :sswitch_0
    const-string v1, "--autofill"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result p0

    .line 28
    .line 29
    if-nez p0, :cond_0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v3, 0x4

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :sswitch_1
    const-string v1, "--contentcapture"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result p0

    .line 39
    .line 40
    if-nez p0, :cond_1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v3, 0x3

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :sswitch_2
    const-string v1, "--list-dumpables"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result p0

    .line 50
    .line 51
    if-nez p0, :cond_2

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/4 v3, 0x2

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :sswitch_3
    const-string v1, "--dump-dumpable"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result p0

    .line 61
    .line 62
    if-nez p0, :cond_3

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    move v3, v2

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :sswitch_4
    const-string v1, "--translation"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result p0

    .line 72
    .line 73
    if-nez p0, :cond_4

    .line 74
    goto :goto_0

    .line 75
    :cond_4
    move v3, v0

    .line 76
    .line 77
    .line 78
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 79
    goto :goto_1

    .line 80
    .line 81
    :pswitch_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 82
    .line 83
    const/16 v1, 0x1a

    .line 84
    .line 85
    if-lt p0, v1, :cond_5

    .line 86
    move v0, v2

    .line 87
    :cond_5
    return v0

    .line 88
    .line 89
    :pswitch_1
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 90
    .line 91
    const/16 v1, 0x1d

    .line 92
    .line 93
    if-lt p0, v1, :cond_6

    .line 94
    move v0, v2

    .line 95
    :cond_6
    return v0

    .line 96
    .line 97
    .line 98
    :pswitch_2
    invoke-static {}, Landroidx/core/os/BuildCompat;->c()Z

    .line 99
    move-result p0

    .line 100
    return p0

    .line 101
    .line 102
    :pswitch_3
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 103
    .line 104
    const/16 v1, 0x1f

    .line 105
    .line 106
    if-lt p0, v1, :cond_7

    .line 107
    move v0, v2

    .line 108
    :cond_7
    :goto_1
    return v0

    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    :sswitch_data_0
    .sparse-switch
        -0x2673d6ef -> :sswitch_4
        0x5fd0f67 -> :sswitch_3
        0x1c2b8816 -> :sswitch_2
        0x4519f64d -> :sswitch_1
        0x56b9c952 -> :sswitch_0
    .end sparse-switch

    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p1}, Landroidx/core/view/KeyEventDispatcher;->d(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-static {p0, v0, p0, p1}, Landroidx/core/view/KeyEventDispatcher;->e(Landroidx/core/view/KeyEventDispatcher$Component;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p1}, Landroidx/core/view/KeyEventDispatcher;->d(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public getExtraData(Ljava/lang/Class;)Landroidx/core/app/ComponentActivity$ExtraData;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/core/app/ComponentActivity$ExtraData;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/app/ComponentActivity;->mExtraDataMap:Landroidx/collection/SimpleArrayMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Landroidx/core/app/ComponentActivity$ExtraData;

    .line 9
    return-object p1
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/core/app/ComponentActivity;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroidx/lifecycle/ReportFragment;->e(Landroid/app/Activity;)V

    .line 7
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/app/ComponentActivity;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 3
    .line 4
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->k(Landroidx/lifecycle/Lifecycle$State;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 11
    return-void
.end method

.method public putExtraData(Landroidx/core/app/ComponentActivity$ExtraData;)V
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/app/ComponentActivity;->mExtraDataMap:Landroidx/collection/SimpleArrayMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    return-void
.end method

.method protected final shouldDumpInternalState([Ljava/lang/String;)Z
    .locals 0
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/core/app/ComponentActivity;->shouldSkipDump([Ljava/lang/String;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    xor-int/lit8 p1, p1, 0x1

    .line 7
    return p1
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method
