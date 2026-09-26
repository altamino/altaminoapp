.class public final Lcom/narvii/birthday/ConfirmBirthdayFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/birthday/ConfirmBirthdayFragment$WhenMappings;
    }
.end annotation


# instance fields
.field private birthdate:Ljava/util/Date;

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

.method public static final synthetic access$getBirthdate$p(Lcom/narvii/birthday/ConfirmBirthdayFragment;)Ljava/util/Date;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/birthday/ConfirmBirthdayFragment;->birthdate:Ljava/util/Date;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$goToAccountDeleted(Lcom/narvii/birthday/ConfirmBirthdayFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/birthday/ConfirmBirthdayFragment;->goToAccountDeleted()V

    .line 4
    return-void
.end method

.method private final confirmBirthday()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 20
    .line 21
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 22
    .line 23
    const-string/jumbo v2, "yyyy-MM-dd"

    .line 24
    .line 25
    .line 26
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 31
    .line 32
    iget-object v2, p0, Lcom/narvii/birthday/ConfirmBirthdayFragment;->birthdate:Ljava/util/Date;

    .line 33
    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    const-string v2, "birthdate"

    .line 37
    .line 38
    .line 39
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 40
    const/4 v2, 0x0

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    const-string v3, "/persona/profile/birthday"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 62
    move-result-object v2

    .line 63
    .line 64
    const-string v3, "birthday"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    const-string v2, "api"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    move-result-object v2

    .line 75
    .line 76
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    new-instance v3, Lcom/narvii/birthday/ConfirmBirthdayFragment$confirmBirthday$1;

    .line 83
    .line 84
    const-class v4, Lcom/narvii/model/api/BasicProfileResponse;

    .line 85
    .line 86
    .line 87
    invoke-direct {v3, p0, v0, v4}, Lcom/narvii/birthday/ConfirmBirthdayFragment$confirmBirthday$1;-><init>(Lcom/narvii/birthday/ConfirmBirthdayFragment;Lcom/narvii/util/dialog/ProgressDialog;Ljava/lang/Class;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 91
    return-void
.end method

.method private final goToAccountDeleted()V
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/narvii/birthday/AccountDeletedFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/birthday/ConfirmBirthdayFragment;->birthdayType:Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string v1, "birthdayType"

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    :cond_0
    const-string v2, "param_birthday_type"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v0}, Lcom/narvii/birthday/ConfirmBirthdayFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 25
    return-void
.end method

.method private final handleConfirmClick()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/birthday/ConfirmBirthdayFragment;->birthdayType:Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;

    .line 3
    .line 4
    const-string v1, "birthdayType"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    move-object v0, v2

    .line 12
    .line 13
    :cond_0
    sget-object v3, Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;->LIVE:Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;

    .line 14
    .line 15
    if-eq v0, v3, :cond_5

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/birthday/ConfirmBirthdayFragment;->birthdayType:Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 23
    move-object v0, v2

    .line 24
    .line 25
    :cond_1
    sget-object v3, Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;->WELCOME:Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;

    .line 26
    .line 27
    if-eq v0, v3, :cond_5

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/birthday/ConfirmBirthdayFragment;->birthdayType:Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 35
    move-object v0, v2

    .line 36
    .line 37
    :cond_2
    sget-object v1, Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;->GLOBAL_PROFILE:Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;

    .line 38
    .line 39
    if-ne v0, v1, :cond_3

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_3
    new-instance v0, Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 46
    .line 47
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 48
    .line 49
    const-string/jumbo v3, "yyyy-MM-dd"

    .line 50
    .line 51
    .line 52
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 53
    move-result-object v4

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 57
    .line 58
    iget-object v3, p0, Lcom/narvii/birthday/ConfirmBirthdayFragment;->birthdate:Ljava/util/Date;

    .line 59
    .line 60
    if-nez v3, :cond_4

    .line 61
    .line 62
    const-string v3, "birthdate"

    .line 63
    .line 64
    .line 65
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 66
    goto :goto_0

    .line 67
    :cond_4
    move-object v2, v3

    .line 68
    .line 69
    .line 70
    :goto_0
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    const-string v2, "param_birthday"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    .line 78
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 79
    const/4 v1, -0x1

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 86
    goto :goto_2

    .line 87
    .line 88
    .line 89
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/narvii/birthday/ConfirmBirthdayFragment;->confirmBirthday()V

    .line 90
    :goto_2
    return-void
.end method

.method private final initView(Landroid/view/View;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0079

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Landroid/widget/ImageView;

    .line 10
    .line 11
    new-instance v1, Lcom/narvii/birthday/d;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/narvii/birthday/d;-><init>(Lcom/narvii/birthday/ConfirmBirthdayFragment;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/birthday/ConfirmBirthdayFragment;->birthdayType:Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    const-string v0, "birthdayType"

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 28
    move-object v0, v1

    .line 29
    .line 30
    :cond_0
    sget-object v2, Lcom/narvii/birthday/ConfirmBirthdayFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 34
    move-result v0

    .line 35
    .line 36
    aget v0, v2, v0

    .line 37
    const/4 v2, 0x1

    .line 38
    .line 39
    const-string v3, "getString(...)"

    .line 40
    .line 41
    if-eq v0, v2, :cond_3

    .line 42
    const/4 v4, 0x2

    .line 43
    .line 44
    if-eq v0, v4, :cond_2

    .line 45
    const/4 v4, 0x3

    .line 46
    .line 47
    if-eq v0, v4, :cond_1

    .line 48
    .line 49
    const-string v0, ""

    .line 50
    goto :goto_0

    .line 51
    .line 52
    .line 53
    :cond_1
    const v0, 0x7f12005e

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_2
    const v0, 0x7f121298

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const v3, 0x7f0a0d1c

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    move-result-object v3

    .line 79
    .line 80
    check-cast v3, Landroid/widget/TextView;

    .line 81
    const/4 v4, 0x0

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    new-instance v4, Lcom/narvii/birthday/e;

    .line 87
    .line 88
    .line 89
    invoke-direct {v4, p0}, Lcom/narvii/birthday/e;-><init>(Lcom/narvii/birthday/ConfirmBirthdayFragment;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    goto :goto_0

    .line 94
    .line 95
    .line 96
    :cond_3
    const v0, 0x7f1211c4

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    .line 103
    invoke-static {v0, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :goto_0
    const v3, 0x7f0a0e9e

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    move-result-object v3

    .line 111
    .line 112
    check-cast v3, Landroid/widget/TextView;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    const v0, 0x7f0a01d2

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    move-result-object v0

    .line 123
    .line 124
    check-cast v0, Landroid/widget/TextView;

    .line 125
    .line 126
    .line 127
    invoke-static {v2}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    .line 128
    move-result-object v2

    .line 129
    .line 130
    iget-object v3, p0, Lcom/narvii/birthday/ConfirmBirthdayFragment;->birthdate:Ljava/util/Date;

    .line 131
    .line 132
    const-string v4, "birthdate"

    .line 133
    .line 134
    if-nez v3, :cond_4

    .line 135
    .line 136
    .line 137
    invoke-static {v4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 138
    move-object v3, v1

    .line 139
    .line 140
    .line 141
    :cond_4
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 142
    move-result-object v2

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    const v0, 0x7f0a00ba

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 152
    move-result-object v0

    .line 153
    .line 154
    check-cast v0, Landroid/widget/TextView;

    .line 155
    .line 156
    iget-object v2, p0, Lcom/narvii/birthday/ConfirmBirthdayFragment;->birthdate:Ljava/util/Date;

    .line 157
    .line 158
    if-nez v2, :cond_5

    .line 159
    .line 160
    .line 161
    invoke-static {v4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 162
    goto :goto_1

    .line 163
    :cond_5
    move-object v1, v2

    .line 164
    .line 165
    .line 166
    :goto_1
    invoke-static {v1}, Lcom/narvii/util/DateUtils;->ageFromBirthDate(Ljava/util/Date;)I

    .line 167
    move-result v1

    .line 168
    .line 169
    .line 170
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 171
    move-result-object v1

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    .line 176
    .line 177
    const v0, 0x7f0a038d

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 181
    move-result-object v0

    .line 182
    .line 183
    check-cast v0, Landroid/widget/Button;

    .line 184
    .line 185
    new-instance v1, Lcom/narvii/birthday/f;

    .line 186
    .line 187
    .line 188
    invoke-direct {v1, p0}, Lcom/narvii/birthday/f;-><init>(Lcom/narvii/birthday/ConfirmBirthdayFragment;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    .line 193
    .line 194
    const v0, 0x7f0a0277

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 198
    move-result-object p1

    .line 199
    .line 200
    check-cast p1, Landroid/widget/Button;

    .line 201
    .line 202
    new-instance v0, Lcom/narvii/birthday/g;

    .line 203
    .line 204
    .line 205
    invoke-direct {v0, p0}, Lcom/narvii/birthday/g;-><init>(Lcom/narvii/birthday/ConfirmBirthdayFragment;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    return-void
.end method

.method private static final initView$lambda$0(Lcom/narvii/birthday/ConfirmBirthdayFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string/jumbo p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 15
    :cond_0
    return-void
.end method

.method private static final initView$lambda$2$lambda$1(Lcom/narvii/birthday/ConfirmBirthdayFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string/jumbo p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 p1, 0x3

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 13
    return-void
.end method

.method private static final initView$lambda$3(Lcom/narvii/birthday/ConfirmBirthdayFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string/jumbo p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/birthday/ConfirmBirthdayFragment;->handleConfirmClick()V

    .line 9
    return-void
.end method

.method private static final initView$lambda$4(Lcom/narvii/birthday/ConfirmBirthdayFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string/jumbo p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 9
    return-void
.end method

.method public static synthetic n(Lcom/narvii/birthday/ConfirmBirthdayFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/birthday/ConfirmBirthdayFragment;->initView$lambda$0(Lcom/narvii/birthday/ConfirmBirthdayFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/birthday/ConfirmBirthdayFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/birthday/ConfirmBirthdayFragment;->initView$lambda$2$lambda$1(Lcom/narvii/birthday/ConfirmBirthdayFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lcom/narvii/birthday/ConfirmBirthdayFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/birthday/ConfirmBirthdayFragment;->initView$lambda$4(Lcom/narvii/birthday/ConfirmBirthdayFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcom/narvii/birthday/ConfirmBirthdayFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/birthday/ConfirmBirthdayFragment;->initView$lambda$3(Lcom/narvii/birthday/ConfirmBirthdayFragment;Landroid/view/View;)V

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
.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ConfirmBirthday"

    return-object v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    .line 5
    const/16 v0, 0xc47

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2, p3}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 16
    :cond_0
    return-void
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
    const p3, 0x7f0d02bf

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
    const-string/jumbo v0, "view"

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
    iput-object p2, p0, Lcom/narvii/birthday/ConfirmBirthdayFragment;->birthdayType:Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    if-eqz p2, :cond_2

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 63
    move-result-object p2

    .line 64
    .line 65
    if-eqz p2, :cond_2

    .line 66
    .line 67
    const-string v0, "param_birthday"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    :cond_2
    const-string p2, "null cannot be cast to non-null type java.util.Date"

    .line 74
    .line 75
    .line 76
    invoke-static {v0, p2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    check-cast v0, Ljava/util/Date;

    .line 79
    .line 80
    iput-object v0, p0, Lcom/narvii/birthday/ConfirmBirthdayFragment;->birthdate:Ljava/util/Date;

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, p1}, Lcom/narvii/birthday/ConfirmBirthdayFragment;->initView(Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->hideBottomAdsView()V

    .line 87
    return-void
.end method
