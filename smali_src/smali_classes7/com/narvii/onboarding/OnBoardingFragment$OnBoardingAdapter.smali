.class Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/onboarding/OnBoardingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnBoardingAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/onboarding/OnBoardingFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/onboarding/OnBoardingFragment;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getActionBackground(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/onboarding/OnBoardingFragment;->list:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x4

    .line 16
    .line 17
    if-eq p1, v0, :cond_1

    .line 18
    .line 19
    const/16 v0, 0x8

    .line 20
    .line 21
    if-eq p1, v0, :cond_0

    .line 22
    .line 23
    .line 24
    const p1, 0x7f080a46

    .line 25
    return p1

    .line 26
    .line 27
    .line 28
    :cond_0
    const p1, 0x7f0806d9

    .line 29
    return p1

    .line 30
    .line 31
    .line 32
    :cond_1
    const p1, 0x7f0808c7

    .line 33
    return p1
.end method

.method public getActionText(I)Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, " & "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->isLast(I)Z

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    const v2, 0x7f120d51

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    .line 22
    .line 23
    .line 24
    const v3, 0x7f120402

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    iget-object v1, p0, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    iget-object v1, p0, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    .line 45
    .line 46
    iget-object v1, v1, Lcom/narvii/onboarding/OnBoardingFragment;->list:Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    check-cast v1, Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 56
    move-result v1

    .line 57
    const/4 v3, 0x2

    .line 58
    .line 59
    if-eq v1, v3, :cond_3

    .line 60
    const/4 p1, 0x4

    .line 61
    .line 62
    if-eq v1, p1, :cond_2

    .line 63
    .line 64
    const/16 p1, 0x8

    .line 65
    .line 66
    if-eq v1, p1, :cond_1

    .line 67
    .line 68
    const-string p1, ""

    .line 69
    return-object p1

    .line 70
    .line 71
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    iget-object v1, p0, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    .line 77
    .line 78
    .line 79
    const v2, 0x7f120b8f

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p1

    .line 94
    return-object p1

    .line 95
    .line 96
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    iget-object v1, p0, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    .line 102
    .line 103
    .line 104
    const v2, 0x7f120fc3

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 108
    move-result-object v1

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object p1

    .line 119
    return-object p1

    .line 120
    .line 121
    .line 122
    :cond_3
    invoke-virtual {p0, p1}, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->isLast(I)Z

    .line 123
    move-result p1

    .line 124
    .line 125
    if-eqz p1, :cond_4

    .line 126
    .line 127
    iget-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    .line 128
    .line 129
    .line 130
    const v0, 0x7f1202ba

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 134
    move-result-object p1

    .line 135
    goto :goto_1

    .line 136
    .line 137
    :cond_4
    iget-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 141
    move-result-object p1

    .line 142
    :goto_1
    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/onboarding/OnBoardingFragment;->list:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/onboarding/OnBoardingFragment;->list:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x2

    .line 16
    .line 17
    if-eq p1, v0, :cond_2

    .line 18
    const/4 v0, 0x4

    .line 19
    .line 20
    if-eq p1, v0, :cond_1

    .line 21
    .line 22
    const/16 v0, 0x8

    .line 23
    .line 24
    if-eq p1, v0, :cond_0

    .line 25
    const/4 p1, 0x0

    .line 26
    return-object p1

    .line 27
    .line 28
    :cond_0
    new-instance p1, Lcom/narvii/onboarding/RecommendedFeedsFragment;

    .line 29
    .line 30
    .line 31
    invoke-direct {p1}, Lcom/narvii/onboarding/RecommendedFeedsFragment;-><init>()V

    .line 32
    .line 33
    new-instance v0, Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 40
    return-object p1

    .line 41
    .line 42
    :cond_1
    new-instance p1, Lcom/narvii/onboarding/RecommendedUsersFragment;

    .line 43
    .line 44
    .line 45
    invoke-direct {p1}, Lcom/narvii/onboarding/RecommendedUsersFragment;-><init>()V

    .line 46
    .line 47
    new-instance v0, Landroid/os/Bundle;

    .line 48
    .line 49
    .line 50
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 54
    return-object p1

    .line 55
    .line 56
    :cond_2
    new-instance p1, Lcom/narvii/onboarding/WelcomeMessageFragment;

    .line 57
    .line 58
    .line 59
    invoke-direct {p1}, Lcom/narvii/onboarding/WelcomeMessageFragment;-><init>()V

    .line 60
    .line 61
    new-instance v0, Landroid/os/Bundle;

    .line 62
    .line 63
    .line 64
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .line 66
    iget-object v1, p0, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    .line 67
    .line 68
    const-string v2, "message"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    iget-object v1, p0, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    .line 78
    .line 79
    const-string v2, "community"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 90
    .line 91
    new-instance v0, Landroid/os/Bundle;

    .line 92
    .line 93
    .line 94
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 98
    return-object p1
.end method

.method public isLast(I)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    if-nez p1, :cond_1

    .line 11
    :goto_0
    move v1, v2

    .line 12
    goto :goto_1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->getCount()I

    .line 16
    move-result v0

    .line 17
    sub-int/2addr v0, v2

    .line 18
    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    :goto_1
    return v1
.end method

.method public showSkip(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/onboarding/OnBoardingFragment;->list:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x2

    .line 16
    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    const/4 p1, 0x1

    .line 19
    return p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return p1
.end method
