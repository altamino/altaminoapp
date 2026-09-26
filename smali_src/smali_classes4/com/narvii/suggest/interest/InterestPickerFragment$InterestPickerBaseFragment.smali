.class public abstract Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/suggest/interest/InterestPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "InterestPickerBaseFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment$BottomPaddingAdapter;
    }
.end annotation


# instance fields
.field protected btSkip:Landroid/widget/TextView;

.field private parentFragment:Lcom/narvii/suggest/interest/InterestPickerFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->showLast()V

    .line 4
    return-void
.end method

.method private synthetic lambda$onViewCreated$1(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->doSubmit()V

    .line 4
    return-void
.end method

.method private synthetic lambda$onViewCreated$2(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->doSkip()V

    .line 4
    return-void
.end method

.method public static synthetic t(Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->lambda$onViewCreated$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->lambda$onViewCreated$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v(Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->lambda$onViewCreated$0(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected doSkip()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "Skip"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 19
    return-void
.end method

.method protected abstract doSubmit()V
.end method

.method protected getData()Landroid/os/Bundle;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->parentFragment:Lcom/narvii/suggest/interest/InterestPickerFragment;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/suggest/interest/InterestPickerFragment;->p(Lcom/narvii/suggest/interest/InterestPickerFragment;)Landroid/os/Bundle;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    .line 11
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 15
    return-object v0
.end method

.method protected getFrameDarkBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 7
    return-object v0
.end method

.method protected getLanguageCode()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-string v0, "contentLanguage"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "content_language"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/language/ContentLanguageService;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    :cond_0
    return-object v0
.end method

.method protected getNextButtonText(II)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-eq p2, v0, :cond_1

    .line 4
    .line 5
    if-ne p1, p2, :cond_0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    const p1, 0x7f120d51

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    const p1, 0x7f120402

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method protected getTotalSteps(I)I
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    instance-of v0, p1, Lcom/narvii/suggest/interest/InterestPickerFragment;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/suggest/interest/InterestPickerFragment;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->parentFragment:Lcom/narvii/suggest/interest/InterestPickerFragment;

    .line 16
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a0079

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    const/4 v1, 0x1

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->parentFragment:Lcom/narvii/suggest/interest/InterestPickerFragment;

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-static {v2}, Lcom/narvii/suggest/interest/InterestPickerFragment;->q(Lcom/narvii/suggest/interest/InterestPickerFragment;)Z

    .line 23
    move-result v2

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    iget-object v2, p0, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->parentFragment:Lcom/narvii/suggest/interest/InterestPickerFragment;

    .line 28
    .line 29
    .line 30
    invoke-static {v2}, Lcom/narvii/suggest/interest/InterestPickerFragment;->s(Lcom/narvii/suggest/interest/InterestPickerFragment;)I

    .line 31
    move-result v2

    .line 32
    .line 33
    if-gt v2, v1, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    :cond_0
    new-instance v2, Lcom/narvii/suggest/interest/c;

    .line 39
    .line 40
    .line 41
    invoke-direct {v2, p0}, Lcom/narvii/suggest/interest/c;-><init>(Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    const p2, 0x7f0a09f3

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    move-result-object p2

    .line 52
    .line 53
    check-cast p2, Landroid/widget/TextView;

    .line 54
    const/4 v2, 0x0

    .line 55
    .line 56
    if-eqz p2, :cond_4

    .line 57
    .line 58
    iget-object v3, p0, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->parentFragment:Lcom/narvii/suggest/interest/InterestPickerFragment;

    .line 59
    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    .line 63
    invoke-static {v3}, Lcom/narvii/suggest/interest/InterestPickerFragment;->s(Lcom/narvii/suggest/interest/InterestPickerFragment;)I

    .line 64
    move-result v1

    .line 65
    .line 66
    :cond_2
    iget-object v3, p0, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->parentFragment:Lcom/narvii/suggest/interest/InterestPickerFragment;

    .line 67
    .line 68
    if-eqz v3, :cond_3

    .line 69
    .line 70
    .line 71
    invoke-static {v3}, Lcom/narvii/suggest/interest/InterestPickerFragment;->r(Lcom/narvii/suggest/interest/InterestPickerFragment;)I

    .line 72
    move-result v3

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    move v3, v2

    .line 75
    .line 76
    .line 77
    :goto_0
    invoke-virtual {p0, v3}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->getTotalSteps(I)I

    .line 78
    move-result v3

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v1, v3}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->getNextButtonText(II)Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    new-instance v1, Lcom/narvii/suggest/interest/d;

    .line 88
    .line 89
    .line 90
    invoke-direct {v1, p0}, Lcom/narvii/suggest/interest/d;-><init>(Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    .line 95
    .line 96
    :cond_4
    const p2, 0x7f0a0d20

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    check-cast p1, Landroid/widget/TextView;

    .line 103
    .line 104
    iput-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->btSkip:Landroid/widget/TextView;

    .line 105
    .line 106
    if-eqz p1, :cond_6

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->showSkip()Z

    .line 110
    move-result p2

    .line 111
    .line 112
    if-eqz p2, :cond_5

    .line 113
    move v0, v2

    .line 114
    .line 115
    .line 116
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->btSkip:Landroid/widget/TextView;

    .line 119
    .line 120
    new-instance p2, Lcom/narvii/suggest/interest/e;

    .line 121
    .line 122
    .line 123
    invoke-direct {p2, p0}, Lcom/narvii/suggest/interest/e;-><init>(Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    :cond_6
    return-void
.end method

.method protected showLast()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->parentFragment:Lcom/narvii/suggest/interest/InterestPickerFragment;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/suggest/interest/InterestPickerFragment;->showLast()V

    .line 8
    :cond_0
    return-void
.end method

.method protected showNext(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->parentFragment:Lcom/narvii/suggest/interest/InterestPickerFragment;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/suggest/interest/InterestPickerFragment;->p(Lcom/narvii/suggest/interest/InterestPickerFragment;)Landroid/os/Bundle;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->parentFragment:Lcom/narvii/suggest/interest/InterestPickerFragment;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/suggest/interest/InterestPickerFragment;->showNext()V

    .line 19
    :cond_1
    return-void
.end method

.method protected showSkip()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->parentFragment:Lcom/narvii/suggest/interest/InterestPickerFragment;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/suggest/interest/InterestPickerFragment;->o(Lcom/narvii/suggest/interest/InterestPickerFragment;)Z

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    return v0
.end method
