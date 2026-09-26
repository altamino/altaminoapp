.class public final Lcom/narvii/birthday/AccountDeletedFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/app/FragmentOnBackListener;


# instance fields
.field private birthdayType:Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    return-void
.end method

.method private final logout()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/account/LogoutHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/account/LogoutHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v1, Lcom/narvii/birthday/c;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/narvii/birthday/c;-><init>(Lcom/narvii/birthday/AccountDeletedFragment;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/account/LogoutHelper;->logout(Lcom/narvii/util/Callback;)V

    .line 14
    return-void
.end method

.method private static final logout$lambda$5(Lcom/narvii/birthday/AccountDeletedFragment;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/birthday/a;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/narvii/birthday/a;-><init>(Lcom/narvii/birthday/AccountDeletedFragment;)V

    .line 11
    .line 12
    const-wide/16 v0, 0x1f4

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 16
    return-void
.end method

.method private static final logout$lambda$5$lambda$4(Lcom/narvii/birthday/AccountDeletedFragment;)V
    .locals 4

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    const-class v3, Lcom/narvii/master/MasterActivity;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .line 24
    const-string v2, "disallowOnBoarding"

    .line 25
    const/4 v3, 0x1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    const v2, 0x10008000

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    invoke-static {p0, v1}, Lcom/narvii/birthday/AccountDeletedFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 38
    .line 39
    .line 40
    const p0, 0x7f010037

    .line 41
    .line 42
    .line 43
    const v1, 0x7f010038

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 50
    :cond_0
    return-void
.end method

.method public static synthetic n(Lcom/narvii/birthday/AccountDeletedFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/birthday/AccountDeletedFragment;->onViewCreated$lambda$1(Lcom/narvii/birthday/AccountDeletedFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/birthday/AccountDeletedFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/birthday/AccountDeletedFragment;->logout$lambda$5(Lcom/narvii/birthday/AccountDeletedFragment;Ljava/lang/Boolean;)V

    return-void
.end method

.method private static final onViewCreated$lambda$1(Lcom/narvii/birthday/AccountDeletedFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/birthday/AccountDeletedFragment;->logout()V

    .line 9
    return-void
.end method

.method public static synthetic p(Lcom/narvii/birthday/AccountDeletedFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/birthday/AccountDeletedFragment;->logout$lambda$5$lambda$4(Lcom/narvii/birthday/AccountDeletedFragment;)V

    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0
    .param p1    # Lcom/narvii/app/NVActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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
    const-string p3, "inflater"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p3, 0x7f0d029f

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
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
    const-string v0, "view"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/app/ActionBar;->hide()V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 27
    move-result-object p2

    .line 28
    const/4 v0, 0x0

    .line 29
    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    const-string v1, "param_birthday_type"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 42
    move-result-object p2

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move-object p2, v0

    .line 45
    .line 46
    :goto_0
    const-string v1, "null cannot be cast to non-null type com.narvii.birthday.EnterBirthdayFragment.BirthdayType"

    .line 47
    .line 48
    .line 49
    invoke-static {p2, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    check-cast p2, Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;

    .line 52
    .line 53
    iput-object p2, p0, Lcom/narvii/birthday/AccountDeletedFragment;->birthdayType:Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;

    .line 54
    .line 55
    .line 56
    const p2, 0x7f0a0079

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    move-result-object p2

    .line 61
    .line 62
    check-cast p2, Landroid/widget/ImageView;

    .line 63
    .line 64
    const/16 v1, 0x8

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    .line 69
    iget-object p2, p0, Lcom/narvii/birthday/AccountDeletedFragment;->birthdayType:Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;

    .line 70
    .line 71
    if-nez p2, :cond_2

    .line 72
    .line 73
    const-string p2, "birthdayType"

    .line 74
    .line 75
    .line 76
    invoke-static {p2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    move-object v0, p2

    .line 79
    .line 80
    :goto_1
    sget-object p2, Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;->LIVE:Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;

    .line 81
    .line 82
    if-ne v0, p2, :cond_3

    .line 83
    .line 84
    .line 85
    const p2, 0x7f0a0e9e

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    move-result-object p2

    .line 90
    .line 91
    check-cast p2, Landroid/widget/TextView;

    .line 92
    .line 93
    .line 94
    const v0, 0x7f1211c4

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    const p2, 0x7f0a0421

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    move-result-object p2

    .line 109
    .line 110
    check-cast p2, Landroid/widget/TextView;

    .line 111
    .line 112
    .line 113
    const v0, 0x7f1201b2

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    .line 122
    .line 123
    :cond_3
    const p2, 0x7f0a0a43

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 127
    move-result-object p1

    .line 128
    .line 129
    check-cast p1, Landroid/widget/Button;

    .line 130
    .line 131
    new-instance p2, Lcom/narvii/birthday/b;

    .line 132
    .line 133
    .line 134
    invoke-direct {p2, p0}, Lcom/narvii/birthday/b;-><init>(Lcom/narvii/birthday/AccountDeletedFragment;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->hideBottomAdsView()V

    .line 141
    return-void
.end method
