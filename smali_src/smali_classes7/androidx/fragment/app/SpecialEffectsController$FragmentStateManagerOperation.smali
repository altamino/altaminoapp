.class Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;
.super Landroidx/fragment/app/SpecialEffectsController$Operation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/SpecialEffectsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FragmentStateManagerOperation"
.end annotation


# instance fields
.field private final mFragmentStateManager:Landroidx/fragment/app/FragmentStateManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/FragmentStateManager;Landroidx/core/os/CancellationSignal;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/SpecialEffectsController$Operation$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/fragment/app/FragmentStateManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/core/os/CancellationSignal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentStateManager;->k()Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2, v0, p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragmentStateManager:Landroidx/fragment/app/FragmentStateManager;

    .line 10
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->c()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragmentStateManager:Landroidx/fragment/app/FragmentStateManager;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->m()V

    .line 9
    return-void
.end method

.method l()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->g()Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->ADDING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 7
    .line 8
    const-string v2, " for Fragment "

    .line 9
    .line 10
    const-string v3, "FragmentManager"

    .line 11
    const/4 v4, 0x2

    .line 12
    .line 13
    if-ne v0, v1, :cond_3

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragmentStateManager:Landroidx/fragment/app/FragmentStateManager;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->k()Landroidx/fragment/app/Fragment;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setFocusedView(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->P0(I)Z

    .line 34
    move-result v4

    .line 35
    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    const-string v5, "requestFocus: Saved focused view "

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    .line 62
    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 74
    move-result-object v2

    .line 75
    const/4 v3, 0x0

    .line 76
    .line 77
    if-nez v2, :cond_1

    .line 78
    .line 79
    iget-object v2, p0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragmentStateManager:Landroidx/fragment/app/FragmentStateManager;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentStateManager;->b()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 86
    .line 87
    .line 88
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    .line 89
    move-result v2

    .line 90
    .line 91
    cmpl-float v2, v2, v3

    .line 92
    .line 93
    if-nez v2, :cond_2

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 97
    move-result v2

    .line 98
    .line 99
    if-nez v2, :cond_2

    .line 100
    const/4 v2, 0x4

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 104
    .line 105
    .line 106
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getPostOnViewCreatedAlpha()F

    .line 107
    move-result v0

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 111
    goto :goto_0

    .line 112
    .line 113
    .line 114
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->g()Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->REMOVING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 118
    .line 119
    if-ne v0, v1, :cond_5

    .line 120
    .line 121
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragmentStateManager:Landroidx/fragment/app/FragmentStateManager;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->k()Landroidx/fragment/app/Fragment;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 129
    move-result-object v1

    .line 130
    .line 131
    .line 132
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->P0(I)Z

    .line 133
    move-result v4

    .line 134
    .line 135
    if-eqz v4, :cond_4

    .line 136
    .line 137
    new-instance v4, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    const-string v5, "Clearing focus "

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 149
    move-result-object v5

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string v5, " on view "

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object v0

    .line 171
    .line 172
    .line 173
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 177
    :cond_5
    :goto_0
    return-void
.end method
