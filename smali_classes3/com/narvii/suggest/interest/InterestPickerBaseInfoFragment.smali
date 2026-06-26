.class public Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;
.super Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;
.source "InterestPickerBaseInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final GENDER_TYPE_FEMALE:I = 0x2

.field public static final GENDER_TYPE_MALE:I = 0x1

.field public static final GENDER_TYPE_OTHER:I = 0xff

.field public static final GENDER_TYPE_UNKNOWN:I = 0x0

.field private static final MIN_AGE:I = 0xd

.field private static final SELECT_AGE_EMPTY:Ljava/lang/String; = " "

.field private static final SELECT_AGE_EMPTY_MOCK_AGE:I = 0xb

.field private static final SELECT_AGE_LESS_THAN_13:Ljava/lang/String; = "\u200e<13"

.field private static final SELECT_AGE_LESS_THAN_13_MOCK_AGE:I = 0xc

.field public static final SUGGEST_INTEREST_AGE:Ljava/lang/String; = "suggest_age"


# instance fields
.field private btGenderFemale:Landroid/view/View;

.field private btGenderMale:Landroid/view/View;

.field private btGenderNonBinary:Landroid/view/View;

.field private btNext:Landroid/widget/Button;

.field private selectedAge:I

.field private selectedGender:I

.field private tvAge:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->selectedAge:I

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->selectedGender:I

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->selectedAge:I

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->selectedGender:I

    return p0
.end method

.method private updateAge()V
    .locals 2

    .line 184
    iget v0, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->selectedAge:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->tvAge:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0xd

    if-ge v0, v1, :cond_1

    .line 187
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->tvAge:Landroid/widget/TextView;

    const-string v1, "\u200e<13"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->tvAge:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updateButton()V
    .locals 0

    return-void
.end method

.method private updateGender()V
    .locals 8

    .line 194
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->btGenderMale:Landroid/view/View;

    const v1, 0x7f0904c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v2, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->selectedGender:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const v2, 0x7f08039b

    goto :goto_0

    :cond_0
    const v2, 0x7f08039a

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->btGenderMale:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v2, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->selectedGender:I

    const v4, 0x3f333333    # 0.7f

    const/high16 v5, 0x3f800000    # 1.0f

    if-eq v2, v3, :cond_2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const v2, 0x3f333333    # 0.7f

    goto :goto_2

    :cond_2
    :goto_1
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 196
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->btGenderMale:Landroid/view/View;

    const v2, 0x7f0904c8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v6, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->selectedGender:I

    const/4 v7, -0x1

    if-ne v6, v3, :cond_3

    const v3, -0xee082f

    goto :goto_3

    :cond_3
    const/4 v3, -0x1

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->btGenderFemale:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v3, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->selectedGender:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_4

    const v3, 0x7f080399

    goto :goto_4

    :cond_4
    const v3, 0x7f080398

    :goto_4
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 199
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->btGenderFemale:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v3, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->selectedGender:I

    if-eq v3, v6, :cond_6

    if-nez v3, :cond_5

    goto :goto_5

    :cond_5
    const v3, 0x3f333333    # 0.7f

    goto :goto_6

    :cond_6
    :goto_5
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_6
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 200
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->btGenderFemale:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v3, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->selectedGender:I

    if-ne v3, v6, :cond_7

    const v3, -0xb70f

    goto :goto_7

    :cond_7
    const/4 v3, -0x1

    :goto_7
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->btGenderNonBinary:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v3, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->selectedGender:I

    const/16 v6, 0xff

    if-ne v3, v6, :cond_8

    const v3, 0x7f08039d

    goto :goto_8

    :cond_8
    const v3, 0x7f08039c

    :goto_8
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 203
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->btGenderNonBinary:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->selectedGender:I

    if-eq v1, v6, :cond_9

    if-nez v1, :cond_a

    :cond_9
    const/high16 v4, 0x3f800000    # 1.0f

    :cond_a
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 204
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->btGenderNonBinary:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->selectedGender:I

    if-ne v1, v6, :cond_b

    const/16 v7, -0x4700

    :cond_b
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected doSubmit()V
    .locals 6

    .line 120
    iget v0, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->selectedGender:I

    const/4 v1, 0x0

    const v2, 0x104000a

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->selectedAge:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v3, 0xd

    if-ge v0, v3, :cond_1

    .line 133
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f0790

    .line 134
    invoke-virtual {v0, v3}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 135
    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 136
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void

    .line 140
    :cond_1
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 141
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 142
    new-instance v1, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment$1;

    invoke-direct {v1, p0}, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment$1;-><init>(Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;)V

    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 153
    new-instance v1, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment$2;

    invoke-direct {v1, p0}, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment$2;-><init>(Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;)V

    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->failureListener:Lcom/narvii/util/Callback;

    .line 162
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 165
    iget v1, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->selectedGender:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const-string v1, "nonBinary"

    goto :goto_0

    :cond_2
    const-string v1, "female"

    goto :goto_0

    :cond_3
    const-string v1, "male"

    .line 173
    :goto_0
    sget-object v2, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    const-string v3, "Next"

    invoke-virtual {v2, v3}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    const-string v3, "gender"

    invoke-virtual {v2, v3, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    iget v2, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->selectedAge:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "age"

    invoke-virtual {v1, v4, v2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 175
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/persona/profile/basic"

    .line 176
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    iget v5, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->selectedAge:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    iget v4, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->selectedGender:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v2, "api"

    .line 178
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 179
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v2, v1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void

    .line 121
    :cond_4
    :goto_1
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 122
    iget v3, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->selectedGender:I

    if-nez v3, :cond_5

    const v3, 0x7f0f0d6d

    .line 123
    invoke-virtual {v0, v3}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    goto :goto_2

    :cond_5
    const v3, 0x7f0f0d6c

    .line 125
    invoke-virtual {v0, v3}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 127
    :goto_2
    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 128
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "GenderAge"

    return-object v0
.end method

.method public synthetic lambda$null$0$InterestPickerBaseInfoFragment(Ljava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 p1, -0x1

    .line 77
    iput p1, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->selectedAge:I

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->selectedAge:I

    .line 82
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->updateAge()V

    .line 83
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->updateButton()V

    return-void
.end method

.method public synthetic lambda$onViewCreated$1$InterestPickerBaseInfoFragment(Landroid/view/View;)V
    .locals 3

    .line 64
    new-instance p1, Lcom/narvii/suggest/interest/NumberPickerDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/suggest/interest/NumberPickerDialog;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xb

    const/16 v1, 0x64

    .line 66
    invoke-virtual {p1, v0, v1}, Lcom/narvii/suggest/interest/NumberPickerDialog;->setValueRange(II)V

    const/16 v1, 0xc

    const-string v2, "\u200e<13"

    .line 67
    invoke-virtual {p1, v1, v2}, Lcom/narvii/suggest/interest/NumberPickerDialog;->addSpecialValues(ILjava/lang/String;)V

    const-string v1, " "

    .line 68
    invoke-virtual {p1, v0, v1}, Lcom/narvii/suggest/interest/NumberPickerDialog;->addSpecialValues(ILjava/lang/String;)V

    .line 69
    iget v1, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->selectedAge:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 70
    invoke-virtual {p1, v0}, Lcom/narvii/suggest/interest/NumberPickerDialog;->setValue(I)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p1, v1}, Lcom/narvii/suggest/interest/NumberPickerDialog;->setValue(I)V

    .line 74
    :goto_0
    new-instance v0, Lcom/narvii/suggest/interest/-$$Lambda$InterestPickerBaseInfoFragment$kabDjzIE6xN8SPCxc3P8VjbALg0;

    invoke-direct {v0, p0}, Lcom/narvii/suggest/interest/-$$Lambda$InterestPickerBaseInfoFragment$kabDjzIE6xN8SPCxc3P8VjbALg0;-><init>(Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/suggest/interest/NumberPickerDialog;->setDoneListener(Lcom/narvii/util/Callback;)V

    .line 85
    invoke-virtual {p1}, Lcom/narvii/suggest/interest/NumberPickerDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0xff

    .line 225
    iput p1, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->selectedGender:I

    .line 226
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->updateGender()V

    .line 227
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->updateButton()V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    .line 215
    iput p1, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->selectedGender:I

    .line 216
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->updateGender()V

    .line 217
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->updateButton()V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x2

    .line 220
    iput p1, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->selectedGender:I

    .line 221
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->updateGender()V

    .line 222
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->updateButton()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0905b5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0367

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 58
    invoke-super {p0, p1, p2}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f09075d

    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->btNext:Landroid/widget/Button;

    const p2, 0x7f0905b8

    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->tvAge:Landroid/widget/TextView;

    .line 63
    iget-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->tvAge:Landroid/widget/TextView;

    new-instance v0, Lcom/narvii/suggest/interest/-$$Lambda$InterestPickerBaseInfoFragment$bBZInnLnWDduMYgFuWBwbOSCcI8;

    invoke-direct {v0, p0}, Lcom/narvii/suggest/interest/-$$Lambda$InterestPickerBaseInfoFragment$bBZInnLnWDduMYgFuWBwbOSCcI8;-><init>(Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->updateAge()V

    const p2, 0x7f0905b6

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->btGenderMale:Landroid/view/View;

    const p2, 0x7f0905b5

    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->btGenderFemale:Landroid/view/View;

    const p2, 0x7f0905b7

    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->btGenderNonBinary:Landroid/view/View;

    .line 95
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->btGenderMale:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->btGenderMale:Landroid/view/View;

    const p2, 0x7f0904c8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0f0b1b

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 97
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->btGenderFemale:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->btGenderFemale:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0f06b9

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 99
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->btGenderNonBinary:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->btGenderNonBinary:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f0f0c47

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 102
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->updateGender()V

    .line 104
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->updateButton()V

    return-void
.end method
