.class public final Lcom/narvii/birthday/EnterBirthdayFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/app/FragmentOnBackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;,
        Lcom/narvii/birthday/EnterBirthdayFragment$Companion;,
        Lcom/narvii/birthday/EnterBirthdayFragment$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEnterBirthdayFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnterBirthdayFragment.kt\ncom/narvii/birthday/EnterBirthdayFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,182:1\n1#2:183\n*E\n"
.end annotation


# static fields
.field public static final BIRTHDATE_ALREADY_SET:I = 0x2

.field public static final Companion:Lcom/narvii/birthday/EnterBirthdayFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PARAM_CAN_SKIP_ALL:Ljava/lang/String; = "canSkipAll"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REQUEST_CONFIRM_BIRTHDAY:I = 0xc47

.field public static final WELCOME_SKIPPED:I = 0x3


# instance fields
.field private birthdate:Ljava/util/Date;

.field private birthdayType:Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;

.field private canSkipAll:Z

.field private countryInfo:Lcom/narvii/account/mobile/CountryInfoR;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private saveBtn:Landroid/widget/Button;

.field private viewBirthday:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/birthday/EnterBirthdayFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/birthday/EnterBirthdayFragment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/birthday/EnterBirthdayFragment;->Companion:Lcom/narvii/birthday/EnterBirthdayFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/birthday/EnterBirthdayFragment;->canSkipAll:Z

    .line 7
    return-void
.end method

.method private final handleBirthdayClick()V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/birthday/EnterBirthdayFragment;->birthdate:Ljava/util/Date;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string v1, "birthdate"

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 18
    .line 19
    new-instance v1, Landroid/app/DatePickerDialog;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    new-instance v4, Lcom/narvii/birthday/i;

    .line 26
    .line 27
    .line 28
    invoke-direct {v4, p0}, Lcom/narvii/birthday/i;-><init>(Lcom/narvii/birthday/EnterBirthdayFragment;)V

    .line 29
    const/4 v2, 0x1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 33
    move-result v5

    .line 34
    const/4 v2, 0x2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 38
    move-result v6

    .line 39
    const/4 v2, 0x5

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 43
    move-result v7

    .line 44
    move-object v2, v1

    .line 45
    .line 46
    .line 47
    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    const/high16 v1, 0x60000

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 63
    move-result-wide v1

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 67
    return-void
.end method

.method private static final handleBirthdayClick$lambda$8(Lcom/narvii/birthday/EnterBirthdayFragment;Landroid/widget/DatePicker;III)V
    .locals 1

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
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 14
    const/4 p2, 0x2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 18
    const/4 p2, 0x5

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2, p4}, Ljava/util/Calendar;->set(II)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    const-string p2, "getTime(...)"

    .line 28
    .line 29
    .line 30
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    iput-object p1, p0, Lcom/narvii/birthday/EnterBirthdayFragment;->birthdate:Ljava/util/Date;

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/narvii/birthday/EnterBirthdayFragment;->updateBirthdayLabel()V

    .line 36
    return-void
.end method

.method private final handleSaveClick()V
    .locals 4

    .line 1
    .line 2
    const-class v0, Lcom/narvii/birthday/ConfirmBirthdayFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/birthday/EnterBirthdayFragment;->birthdayType:Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string v1, "birthdayType"

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 17
    move-object v1, v2

    .line 18
    .line 19
    :cond_0
    const-string v3, "param_birthday_type"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/birthday/EnterBirthdayFragment;->birthdate:Ljava/util/Date;

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    const-string v1, "birthdate"

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object v2, v1

    .line 34
    .line 35
    :goto_0
    const-string v1, "param_birthday"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 39
    .line 40
    const/16 v1, 0xc47

    .line 41
    .line 42
    .line 43
    invoke-static {p0, v0, v1}, Lcom/narvii/birthday/EnterBirthdayFragment;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 44
    return-void
.end method

.method private final initBirthday(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "getTime(...)"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/birthday/EnterBirthdayFragment;->birthdate:Ljava/util/Date;

    .line 16
    .line 17
    .line 18
    const v0, 0x7f0a01d2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    const-string v0, "findViewById(...)"

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    check-cast p1, Landroid/widget/TextView;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/narvii/birthday/EnterBirthdayFragment;->viewBirthday:Landroid/widget/TextView;

    .line 32
    const/4 v0, 0x0

    .line 33
    .line 34
    const-string/jumbo v1, "viewBirthday"

    .line 35
    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 40
    move-object p1, v0

    .line 41
    .line 42
    :cond_0
    new-instance v2, Lcom/narvii/birthday/h;

    .line 43
    .line 44
    .line 45
    invoke-direct {v2, p0}, Lcom/narvii/birthday/h;-><init>(Lcom/narvii/birthday/EnterBirthdayFragment;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/birthday/EnterBirthdayFragment;->viewBirthday:Landroid/widget/TextView;

    .line 51
    .line 52
    if-nez p1, :cond_1

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 56
    move-object p1, v0

    .line 57
    .line 58
    .line 59
    :cond_1
    const v2, 0x7f121078

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 63
    .line 64
    iget-object p1, p0, Lcom/narvii/birthday/EnterBirthdayFragment;->viewBirthday:Landroid/widget/TextView;

    .line 65
    .line 66
    if-nez p1, :cond_2

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    move-object v0, p1

    .line 72
    .line 73
    .line 74
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    const v1, 0x7f060134

    .line 79
    .line 80
    .line 81
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 82
    move-result p1

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    return-void
.end method

.method private static final initBirthday$lambda$5(Lcom/narvii/birthday/EnterBirthdayFragment;Landroid/view/View;)V
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
    invoke-direct {p0}, Lcom/narvii/birthday/EnterBirthdayFragment;->handleBirthdayClick()V

    .line 9
    return-void
.end method

.method private final initCountry()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->getCountryList()Ljava/util/List;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v2

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    check-cast v2, Lcom/narvii/account/mobile/CountryInfoR;

    .line 25
    .line 26
    iget-object v3, v2, Lcom/narvii/account/mobile/CountryInfoR;->isoCode:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 30
    move-result-object v4

    .line 31
    const/4 v5, 0x1

    .line 32
    .line 33
    .line 34
    invoke-static {v3, v4, v5}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 35
    move-result v3

    .line 36
    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    iput-object v2, p0, Lcom/narvii/birthday/EnterBirthdayFragment;->countryInfo:Lcom/narvii/account/mobile/CountryInfoR;

    .line 40
    :cond_1
    return-void
.end method

.method private final initView(Landroid/view/View;)V
    .locals 7

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
    iget-object v1, p0, Lcom/narvii/birthday/EnterBirthdayFragment;->birthdayType:Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;

    .line 12
    .line 13
    const-string v2, "birthdayType"

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 20
    move-object v1, v3

    .line 21
    .line 22
    :cond_0
    sget-object v4, Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;->WELCOME:Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;

    .line 23
    .line 24
    const/16 v5, 0x8

    .line 25
    const/4 v6, 0x0

    .line 26
    .line 27
    if-ne v1, v4, :cond_1

    .line 28
    move v1, v5

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v1, v6

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    .line 35
    new-instance v1, Lcom/narvii/birthday/j;

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, p0}, Lcom/narvii/birthday/j;-><init>(Lcom/narvii/birthday/EnterBirthdayFragment;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    .line 43
    iget-object v0, p0, Lcom/narvii/birthday/EnterBirthdayFragment;->birthdayType:Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;

    .line 44
    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 49
    move-object v0, v3

    .line 50
    .line 51
    :cond_2
    sget-object v1, Lcom/narvii/birthday/EnterBirthdayFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 55
    move-result v0

    .line 56
    .line 57
    aget v0, v1, v0

    .line 58
    const/4 v1, 0x1

    .line 59
    .line 60
    const-string v2, "getString(...)"

    .line 61
    .line 62
    if-eq v0, v1, :cond_6

    .line 63
    const/4 v1, 0x2

    .line 64
    .line 65
    if-eq v0, v1, :cond_4

    .line 66
    const/4 v1, 0x3

    .line 67
    .line 68
    if-eq v0, v1, :cond_3

    .line 69
    .line 70
    const-string v0, ""

    .line 71
    goto :goto_1

    .line 72
    .line 73
    .line 74
    :cond_3
    const v0, 0x7f12005e

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    .line 81
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    goto :goto_1

    .line 83
    .line 84
    .line 85
    :cond_4
    const v0, 0x7f121298

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    .line 92
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const v1, 0x7f0a0d1c

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    move-result-object v1

    .line 100
    .line 101
    check-cast v1, Landroid/widget/TextView;

    .line 102
    .line 103
    iget-boolean v2, p0, Lcom/narvii/birthday/EnterBirthdayFragment;->canSkipAll:Z

    .line 104
    .line 105
    if-eqz v2, :cond_5

    .line 106
    move v5, v6

    .line 107
    .line 108
    .line 109
    :cond_5
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    new-instance v2, Lcom/narvii/birthday/k;

    .line 112
    .line 113
    .line 114
    invoke-direct {v2, p0}, Lcom/narvii/birthday/k;-><init>(Lcom/narvii/birthday/EnterBirthdayFragment;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    goto :goto_1

    .line 119
    .line 120
    .line 121
    :cond_6
    const v0, 0x7f1211c4

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    .line 128
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const v1, 0x7f0a0421

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    move-result-object v1

    .line 136
    .line 137
    check-cast v1, Landroid/widget/TextView;

    .line 138
    .line 139
    .line 140
    const v2, 0x7f1201b3

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 144
    move-result-object v2

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    :goto_1
    const v1, 0x7f0a0e9e

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 154
    move-result-object v1

    .line 155
    .line 156
    check-cast v1, Landroid/widget/TextView;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    const v0, 0x7f0a0c63

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 166
    move-result-object p1

    .line 167
    .line 168
    const-string v0, "findViewById(...)"

    .line 169
    .line 170
    .line 171
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .line 173
    check-cast p1, Landroid/widget/Button;

    .line 174
    .line 175
    iput-object p1, p0, Lcom/narvii/birthday/EnterBirthdayFragment;->saveBtn:Landroid/widget/Button;

    .line 176
    .line 177
    const-string v0, "saveBtn"

    .line 178
    .line 179
    if-nez p1, :cond_7

    .line 180
    .line 181
    .line 182
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 183
    move-object p1, v3

    .line 184
    .line 185
    :cond_7
    new-instance v1, Lcom/narvii/birthday/l;

    .line 186
    .line 187
    .line 188
    invoke-direct {v1, p0}, Lcom/narvii/birthday/l;-><init>(Lcom/narvii/birthday/EnterBirthdayFragment;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    .line 193
    iget-object p1, p0, Lcom/narvii/birthday/EnterBirthdayFragment;->saveBtn:Landroid/widget/Button;

    .line 194
    .line 195
    if-nez p1, :cond_8

    .line 196
    .line 197
    .line 198
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 199
    goto :goto_2

    .line 200
    :cond_8
    move-object v3, p1

    .line 201
    .line 202
    .line 203
    :goto_2
    invoke-virtual {v3, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 204
    return-void
.end method

.method private static final initView$lambda$1$lambda$0(Lcom/narvii/birthday/EnterBirthdayFragment;Landroid/view/View;)V
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

.method private static final initView$lambda$3$lambda$2(Lcom/narvii/birthday/EnterBirthdayFragment;Landroid/view/View;)V
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

.method private static final initView$lambda$4(Lcom/narvii/birthday/EnterBirthdayFragment;Landroid/view/View;)V
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
    invoke-direct {p0}, Lcom/narvii/birthday/EnterBirthdayFragment;->handleSaveClick()V

    .line 9
    return-void
.end method

.method public static synthetic n(Lcom/narvii/birthday/EnterBirthdayFragment;Landroid/widget/DatePicker;III)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/birthday/EnterBirthdayFragment;->handleBirthdayClick$lambda$8(Lcom/narvii/birthday/EnterBirthdayFragment;Landroid/widget/DatePicker;III)V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/birthday/EnterBirthdayFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/birthday/EnterBirthdayFragment;->initView$lambda$4(Lcom/narvii/birthday/EnterBirthdayFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lcom/narvii/birthday/EnterBirthdayFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/birthday/EnterBirthdayFragment;->initView$lambda$1$lambda$0(Lcom/narvii/birthday/EnterBirthdayFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcom/narvii/birthday/EnterBirthdayFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/birthday/EnterBirthdayFragment;->initView$lambda$3$lambda$2(Lcom/narvii/birthday/EnterBirthdayFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcom/narvii/birthday/EnterBirthdayFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/birthday/EnterBirthdayFragment;->initBirthday$lambda$5(Lcom/narvii/birthday/EnterBirthdayFragment;Landroid/view/View;)V

    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private final updateBirthdayLabel()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/birthday/EnterBirthdayFragment;->birthdate:Ljava/util/Date;

    .line 3
    .line 4
    const-string v1, "birthdate"

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
    .line 14
    :cond_0
    invoke-static {v0}, Lcom/narvii/util/DateUtils;->isToday(Ljava/util/Date;)Z

    .line 15
    move-result v0

    .line 16
    const/4 v3, 0x1

    .line 17
    .line 18
    const-string/jumbo v4, "viewBirthday"

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/birthday/EnterBirthdayFragment;->viewBirthday:Landroid/widget/TextView;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-static {v4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 28
    move-object v0, v2

    .line 29
    .line 30
    .line 31
    :cond_1
    const v5, 0x7f121078

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 35
    .line 36
    .line 37
    const v0, 0x7f060134

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_2
    iget-object v0, p0, Lcom/narvii/birthday/EnterBirthdayFragment;->viewBirthday:Landroid/widget/TextView;

    .line 41
    .line 42
    if-nez v0, :cond_3

    .line 43
    .line 44
    .line 45
    invoke-static {v4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 46
    move-object v0, v2

    .line 47
    .line 48
    .line 49
    :cond_3
    invoke-static {v3}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    .line 50
    move-result-object v5

    .line 51
    .line 52
    iget-object v6, p0, Lcom/narvii/birthday/EnterBirthdayFragment;->birthdate:Ljava/util/Date;

    .line 53
    .line 54
    if-nez v6, :cond_4

    .line 55
    .line 56
    .line 57
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 58
    move-object v6, v2

    .line 59
    .line 60
    .line 61
    :cond_4
    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 62
    move-result-object v5

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    const v0, 0x7f0604b1

    .line 69
    .line 70
    :goto_0
    iget-object v5, p0, Lcom/narvii/birthday/EnterBirthdayFragment;->viewBirthday:Landroid/widget/TextView;

    .line 71
    .line 72
    if-nez v5, :cond_5

    .line 73
    .line 74
    .line 75
    invoke-static {v4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 76
    move-object v5, v2

    .line 77
    .line 78
    .line 79
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 80
    move-result-object v4

    .line 81
    .line 82
    .line 83
    invoke-static {v4, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 84
    move-result v0

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    .line 89
    iget-object v0, p0, Lcom/narvii/birthday/EnterBirthdayFragment;->saveBtn:Landroid/widget/Button;

    .line 90
    .line 91
    if-nez v0, :cond_6

    .line 92
    .line 93
    const-string v0, "saveBtn"

    .line 94
    .line 95
    .line 96
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 97
    move-object v0, v2

    .line 98
    .line 99
    :cond_6
    iget-object v4, p0, Lcom/narvii/birthday/EnterBirthdayFragment;->birthdate:Ljava/util/Date;

    .line 100
    .line 101
    if-nez v4, :cond_7

    .line 102
    .line 103
    .line 104
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 105
    goto :goto_1

    .line 106
    :cond_7
    move-object v2, v4

    .line 107
    .line 108
    .line 109
    :goto_1
    invoke-static {v2}, Lcom/narvii/util/DateUtils;->isToday(Ljava/util/Date;)Z

    .line 110
    move-result v1

    .line 111
    xor-int/2addr v1, v3

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 115
    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "EnterBirthday"

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

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 1
    .param p1    # Lcom/narvii/app/NVActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/birthday/EnterBirthdayFragment;->birthdayType:Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const-string p1, "birthdayType"

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 10
    const/4 p1, 0x0

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;->WELCOME:Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;

    .line 13
    .line 14
    if-ne p1, v0, :cond_1

    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    :goto_0
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
    const p3, 0x7f0d02cc

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
    :cond_0
    const-string p2, "canSkipAll"

    .line 26
    const/4 v0, 0x1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p2, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 30
    move-result p2

    .line 31
    .line 32
    iput-boolean p2, p0, Lcom/narvii/birthday/EnterBirthdayFragment;->canSkipAll:Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    const-string v0, "param_birthday_type"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 50
    move-result-object p2

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 p2, 0x0

    .line 53
    .line 54
    :goto_0
    const-string v0, "null cannot be cast to non-null type com.narvii.birthday.EnterBirthdayFragment.BirthdayType"

    .line 55
    .line 56
    .line 57
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    check-cast p2, Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;

    .line 60
    .line 61
    iput-object p2, p0, Lcom/narvii/birthday/EnterBirthdayFragment;->birthdayType:Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, p1}, Lcom/narvii/birthday/EnterBirthdayFragment;->initView(Landroid/view/View;)V

    .line 65
    .line 66
    .line 67
    invoke-direct {p0}, Lcom/narvii/birthday/EnterBirthdayFragment;->initCountry()V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, p1}, Lcom/narvii/birthday/EnterBirthdayFragment;->initBirthday(Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->hideBottomAdsView()V

    .line 74
    return-void
.end method
