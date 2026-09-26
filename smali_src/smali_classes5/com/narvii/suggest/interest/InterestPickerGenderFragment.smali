.class public Lcom/narvii/suggest/interest/InterestPickerGenderFragment;
.super Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private genderTV:Landroid/widget/TextView;

.field private selectedGender:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/suggest/interest/InterestPickerGenderFragment;->selectedGender:I

    .line 7
    return-void
.end method

.method private handleGenderPickerClick()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/suggest/interest/GenderListDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    new-instance v2, Lcom/narvii/suggest/interest/g;

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, p0}, Lcom/narvii/suggest/interest/g;-><init>(Lcom/narvii/suggest/interest/InterestPickerGenderFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lcom/narvii/suggest/interest/GenderListDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/util/Callback;)V

    .line 15
    .line 16
    iget v1, p0, Lcom/narvii/suggest/interest/InterestPickerGenderFragment;->selectedGender:I

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v2, v0, Lcom/narvii/suggest/interest/GenderListDialog;->genderList:Ljava/util/List;

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 28
    move-result v1

    .line 29
    .line 30
    if-lez v1, :cond_0

    .line 31
    .line 32
    new-instance v2, Lcom/narvii/suggest/interest/h;

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, v1}, Lcom/narvii/suggest/interest/h;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 42
    return-void
.end method

.method private synthetic lambda$doSubmit$0(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->btSkip:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    :cond_0
    return-void
.end method

.method private synthetic lambda$handleGenderPickerClick$1(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    move-result p1

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/suggest/interest/InterestPickerGenderFragment;->selectedGender:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerGenderFragment;->updateGender()V

    .line 10
    return-void
.end method

.method private static synthetic lambda$handleGenderPickerClick$2(ILandroid/content/DialogInterface;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lcom/narvii/widget/ListDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/widget/ListDialog;->getListView()Landroid/widget/ListView;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setSelection(I)V

    .line 10
    return-void
.end method

.method private updateGender()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerGenderFragment;->genderTV:Landroid/widget/TextView;

    .line 3
    .line 4
    const-string v1, ""

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    iget v0, p0, Lcom/narvii/suggest/interest/InterestPickerGenderFragment;->selectedGender:I

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    const/4 v1, 0x2

    .line 14
    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/16 v1, 0xff

    .line 18
    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerGenderFragment;->genderTV:Landroid/widget/TextView;

    .line 23
    .line 24
    .line 25
    const v1, 0x7f120d74

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerGenderFragment;->genderTV:Landroid/widget/TextView;

    .line 32
    .line 33
    .line 34
    const v1, 0x7f120765

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_2
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerGenderFragment;->genderTV:Landroid/widget/TextView;

    .line 41
    .line 42
    .line 43
    const v1, 0x7f120bdf

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 47
    :goto_0
    return-void
.end method

.method public static synthetic w(Lcom/narvii/suggest/interest/InterestPickerGenderFragment;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/suggest/interest/InterestPickerGenderFragment;->lambda$handleGenderPickerClick$1(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic x(Lcom/narvii/suggest/interest/InterestPickerGenderFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/suggest/interest/InterestPickerGenderFragment;->lambda$doSubmit$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic y(ILandroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/suggest/interest/InterestPickerGenderFragment;->lambda$handleGenderPickerClick$2(ILandroid/content/DialogInterface;)V

    return-void
.end method

.method static bridge synthetic z(Lcom/narvii/suggest/interest/InterestPickerGenderFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/suggest/interest/InterestPickerGenderFragment;->selectedGender:I

    return p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected doSubmit()V
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/suggest/interest/InterestPickerGenderFragment;->selectedGender:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    const v1, 0x7f120e9a

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 20
    .line 21
    .line 22
    const v1, 0x104000a

    .line 23
    const/4 v2, 0x0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 30
    return-void

    .line 31
    .line 32
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v1, 0x0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 44
    .line 45
    new-instance v1, Lcom/narvii/suggest/interest/InterestPickerGenderFragment$1;

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, p0}, Lcom/narvii/suggest/interest/InterestPickerGenderFragment$1;-><init>(Lcom/narvii/suggest/interest/InterestPickerGenderFragment;)V

    .line 49
    .line 50
    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 51
    .line 52
    new-instance v1, Lcom/narvii/suggest/interest/f;

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, p0}, Lcom/narvii/suggest/interest/f;-><init>(Lcom/narvii/suggest/interest/InterestPickerGenderFragment;)V

    .line 56
    .line 57
    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->failureListener:Lcom/narvii/util/Callback;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 61
    .line 62
    iget v1, p0, Lcom/narvii/suggest/interest/InterestPickerGenderFragment;->selectedGender:I

    .line 63
    const/4 v2, 0x1

    .line 64
    .line 65
    if-eq v1, v2, :cond_2

    .line 66
    const/4 v2, 0x2

    .line 67
    .line 68
    if-eq v1, v2, :cond_1

    .line 69
    .line 70
    const-string v1, "nonBinary"

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_1
    const-string v1, "female"

    .line 74
    goto :goto_0

    .line 75
    .line 76
    :cond_2
    const-string v1, "male"

    .line 77
    .line 78
    :goto_0
    sget-object v2, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 79
    .line 80
    .line 81
    invoke-static {p0, v2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 82
    move-result-object v2

    .line 83
    .line 84
    const-string v3, "Next"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v3}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 88
    move-result-object v2

    .line 89
    .line 90
    const-string v3, "gender"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v3, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 98
    .line 99
    .line 100
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 101
    move-result-object v1

    .line 102
    .line 103
    const-string v2, "/persona/profile/basic"

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 107
    move-result-object v2

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 111
    move-result-object v2

    .line 112
    .line 113
    iget v4, p0, Lcom/narvii/suggest/interest/InterestPickerGenderFragment;->selectedGender:I

    .line 114
    .line 115
    .line 116
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    move-result-object v4

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 121
    .line 122
    const-string v2, "api"

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    move-result-object v2

    .line 127
    .line 128
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 132
    move-result-object v1

    .line 133
    .line 134
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 138
    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "gender_picker"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a060e

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerGenderFragment;->handleGenderPickerClick()V

    .line 13
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d03a4

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
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
    invoke-super {p0, p1, p2}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a060e

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Landroid/widget/TextView;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerGenderFragment;->genderTV:Landroid/widget/TextView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    const p2, 0x7f0a0e9e

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    check-cast p1, Landroid/widget/TextView;

    .line 27
    .line 28
    .line 29
    const p2, 0x7f121298

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerGenderFragment;->updateGender()V

    .line 36
    return-void
.end method
