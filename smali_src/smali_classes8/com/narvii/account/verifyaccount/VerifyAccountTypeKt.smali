.class public final Lcom/narvii/account/verifyaccount/VerifyAccountTypeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final getIntValue(Lcom/narvii/account/verifyaccount/IdentityType;)I
    .locals 1
    .param p0    # Lcom/narvii/account/verifyaccount/IdentityType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    instance-of v0, p0, Lcom/narvii/account/verifyaccount/PhoneIdentity;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 10
    :cond_0
    instance-of p0, p0, Lcom/narvii/account/verifyaccount/EmailIdentity;

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    :goto_0
    return p0

    :cond_1
    new-instance p0, Lw7/s;

    invoke-direct {p0}, Lw7/s;-><init>()V

    throw p0
.end method

.method public static final getIntValue(Lcom/narvii/account/verifyaccount/VerifyAccountType;)I
    .locals 1
    .param p0    # Lcom/narvii/account/verifyaccount/VerifyAccountType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Lcom/narvii/account/verifyaccount/ResetPassVerifyAccount;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p0, Lcom/narvii/account/verifyaccount/ForgotPassVerifyAccount;

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    .line 3
    :cond_1
    instance-of v0, p0, Lcom/narvii/account/verifyaccount/ChangePassVerifyAccount;

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    goto :goto_0

    .line 4
    :cond_2
    instance-of v0, p0, Lcom/narvii/account/verifyaccount/SignupVerifyAccount;

    if-eqz v0, :cond_3

    const/4 p0, 0x4

    goto :goto_0

    .line 5
    :cond_3
    instance-of v0, p0, Lcom/narvii/account/verifyaccount/AddIdentityVerifyAccount;

    if-eqz v0, :cond_4

    const/4 p0, 0x5

    goto :goto_0

    .line 6
    :cond_4
    instance-of v0, p0, Lcom/narvii/account/verifyaccount/UpdateIdentityVerifyAccount;

    if-eqz v0, :cond_5

    const/4 p0, 0x6

    goto :goto_0

    .line 7
    :cond_5
    instance-of v0, p0, Lcom/narvii/account/verifyaccount/VerifyNewIdentityVerifyAccount;

    if-eqz v0, :cond_6

    const/4 p0, 0x7

    goto :goto_0

    .line 8
    :cond_6
    instance-of p0, p0, Lcom/narvii/account/verifyaccount/DeleteAccountVerifyAccount;

    if-eqz p0, :cond_7

    const/16 p0, 0x8

    :goto_0
    return p0

    :cond_7
    new-instance p0, Lw7/s;

    invoke-direct {p0}, Lw7/s;-><init>()V

    throw p0
.end method

.method public static final getNextBtnTitle(Lcom/narvii/account/verifyaccount/VerifyAccountType;)I
    .locals 1
    .param p0    # Lcom/narvii/account/verifyaccount/VerifyAccountType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    instance-of v0, p0, Lcom/narvii/account/verifyaccount/SignupVerifyAccount;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    const p0, 0x7f120d51

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    instance-of p0, p0, Lcom/narvii/account/verifyaccount/ChangePassVerifyAccount;

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    .line 20
    const p0, 0x7f12002c

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_1
    const p0, 0x7f120063

    .line 25
    :goto_0
    return p0
.end method

.method public static final getNvFragmentPageName(Lcom/narvii/account/verifyaccount/VerifyAccountType;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/narvii/account/verifyaccount/VerifyAccountType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    instance-of v0, p0, Lcom/narvii/account/verifyaccount/ResetPassVerifyAccount;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string p0, "ResetPassVerifyAccount"

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    instance-of v0, p0, Lcom/narvii/account/verifyaccount/ForgotPassVerifyAccount;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const-string p0, "ForgotPassVerifyAccount"

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_1
    instance-of v0, p0, Lcom/narvii/account/verifyaccount/ChangePassVerifyAccount;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    const-string p0, "ChangePassVerifyAccount"

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_2
    instance-of v0, p0, Lcom/narvii/account/verifyaccount/SignupVerifyAccount;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    const-string p0, "SignUpCreatePassword"

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_3
    instance-of v0, p0, Lcom/narvii/account/verifyaccount/AddIdentityVerifyAccount;

    .line 36
    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    const-string p0, "AddIdentityVerifyAccount"

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_4
    instance-of v0, p0, Lcom/narvii/account/verifyaccount/UpdateIdentityVerifyAccount;

    .line 43
    .line 44
    if-eqz v0, :cond_5

    .line 45
    .line 46
    const-string p0, "UpdateIdentityVerifyAccount"

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_5
    instance-of v0, p0, Lcom/narvii/account/verifyaccount/VerifyNewIdentityVerifyAccount;

    .line 50
    .line 51
    if-eqz v0, :cond_6

    .line 52
    .line 53
    const-string p0, "VerifyNewIdentityVerifyAccount"

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_6
    instance-of p0, p0, Lcom/narvii/account/verifyaccount/DeleteAccountVerifyAccount;

    .line 57
    .line 58
    if-eqz p0, :cond_7

    .line 59
    .line 60
    const-string p0, "DeleteAccountVerifyAccount"

    .line 61
    :goto_0
    return-object p0

    .line 62
    .line 63
    :cond_7
    new-instance p0, Lw7/s;

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Lw7/s;-><init>()V

    .line 67
    throw p0
.end method

.method public static final getPageTitle(Lcom/narvii/account/verifyaccount/VerifyAccountType;)I
    .locals 2
    .param p0    # Lcom/narvii/account/verifyaccount/VerifyAccountType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    instance-of v0, p0, Lcom/narvii/account/verifyaccount/ResetPassVerifyAccount;

    .line 8
    .line 9
    .line 10
    const v1, 0x7f121009

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_0
    instance-of v0, p0, Lcom/narvii/account/verifyaccount/ForgotPassVerifyAccount;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :cond_1
    instance-of v0, p0, Lcom/narvii/account/verifyaccount/ChangePassVerifyAccount;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    .line 27
    const v1, 0x7f12002c

    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :cond_2
    instance-of v0, p0, Lcom/narvii/account/verifyaccount/SignupVerifyAccount;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    .line 36
    const v1, 0x7f12005e

    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :cond_3
    instance-of v0, p0, Lcom/narvii/account/verifyaccount/AddIdentityVerifyAccount;

    .line 41
    .line 42
    if-eqz v0, :cond_6

    .line 43
    .line 44
    check-cast p0, Lcom/narvii/account/verifyaccount/AddIdentityVerifyAccount;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/narvii/account/verifyaccount/AddIdentityVerifyAccount;->getIdentity()Lcom/narvii/account/verifyaccount/IdentityType;

    .line 48
    move-result-object p0

    .line 49
    .line 50
    instance-of v0, p0, Lcom/narvii/account/verifyaccount/PhoneIdentity;

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    .line 55
    const v1, 0x7f120085

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_4
    instance-of p0, p0, Lcom/narvii/account/verifyaccount/EmailIdentity;

    .line 59
    .line 60
    if-eqz p0, :cond_5

    .line 61
    .line 62
    .line 63
    const v1, 0x7f120080

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_5
    new-instance p0, Lw7/s;

    .line 67
    .line 68
    .line 69
    invoke-direct {p0}, Lw7/s;-><init>()V

    .line 70
    throw p0

    .line 71
    .line 72
    :cond_6
    instance-of v0, p0, Lcom/narvii/account/verifyaccount/UpdateIdentityVerifyAccount;

    .line 73
    .line 74
    if-eqz v0, :cond_9

    .line 75
    .line 76
    check-cast p0, Lcom/narvii/account/verifyaccount/UpdateIdentityVerifyAccount;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/narvii/account/verifyaccount/UpdateIdentityVerifyAccount;->getIdentity()Lcom/narvii/account/verifyaccount/IdentityType;

    .line 80
    move-result-object p0

    .line 81
    .line 82
    instance-of v0, p0, Lcom/narvii/account/verifyaccount/PhoneIdentity;

    .line 83
    .line 84
    if-eqz v0, :cond_7

    .line 85
    .line 86
    .line 87
    const v1, 0x7f121217

    .line 88
    goto :goto_0

    .line 89
    .line 90
    :cond_7
    instance-of p0, p0, Lcom/narvii/account/verifyaccount/EmailIdentity;

    .line 91
    .line 92
    if-eqz p0, :cond_8

    .line 93
    .line 94
    .line 95
    const v1, 0x7f121214

    .line 96
    goto :goto_0

    .line 97
    .line 98
    :cond_8
    new-instance p0, Lw7/s;

    .line 99
    .line 100
    .line 101
    invoke-direct {p0}, Lw7/s;-><init>()V

    .line 102
    throw p0

    .line 103
    .line 104
    :cond_9
    instance-of v0, p0, Lcom/narvii/account/verifyaccount/VerifyNewIdentityVerifyAccount;

    .line 105
    .line 106
    if-eqz v0, :cond_c

    .line 107
    .line 108
    check-cast p0, Lcom/narvii/account/verifyaccount/VerifyNewIdentityVerifyAccount;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/narvii/account/verifyaccount/VerifyNewIdentityVerifyAccount;->getIdentity()Lcom/narvii/account/verifyaccount/IdentityType;

    .line 112
    move-result-object p0

    .line 113
    .line 114
    instance-of v0, p0, Lcom/narvii/account/verifyaccount/PhoneIdentity;

    .line 115
    .line 116
    if-eqz v0, :cond_a

    .line 117
    .line 118
    .line 119
    const v1, 0x7f121258

    .line 120
    goto :goto_0

    .line 121
    .line 122
    :cond_a
    instance-of p0, p0, Lcom/narvii/account/verifyaccount/EmailIdentity;

    .line 123
    .line 124
    if-eqz p0, :cond_b

    .line 125
    .line 126
    .line 127
    const v1, 0x7f121255

    .line 128
    goto :goto_0

    .line 129
    .line 130
    :cond_b
    new-instance p0, Lw7/s;

    .line 131
    .line 132
    .line 133
    invoke-direct {p0}, Lw7/s;-><init>()V

    .line 134
    throw p0

    .line 135
    .line 136
    :cond_c
    instance-of p0, p0, Lcom/narvii/account/verifyaccount/DeleteAccountVerifyAccount;

    .line 137
    .line 138
    if-eqz p0, :cond_d

    .line 139
    .line 140
    .line 141
    const v1, 0x7f120032

    .line 142
    :goto_0
    return v1

    .line 143
    .line 144
    :cond_d
    new-instance p0, Lw7/s;

    .line 145
    .line 146
    .line 147
    invoke-direct {p0}, Lw7/s;-><init>()V

    .line 148
    throw p0
.end method

.method public static final identityType(I)Lcom/narvii/account/verifyaccount/IdentityType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    const/4 v0, 0x2

    .line 5
    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    sget-object p0, Lcom/narvii/account/verifyaccount/EmailIdentity;->INSTANCE:Lcom/narvii/account/verifyaccount/EmailIdentity;

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string v0, "Not expected case"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    throw p0

    .line 18
    .line 19
    :cond_1
    sget-object p0, Lcom/narvii/account/verifyaccount/PhoneIdentity;->INSTANCE:Lcom/narvii/account/verifyaccount/PhoneIdentity;

    .line 20
    :goto_0
    return-object p0
.end method

.method public static final verifyAccountType(II)Lcom/narvii/account/verifyaccount/VerifyAccountType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 6
    .line 7
    const-string p1, "Not expected case"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    throw p0

    .line 12
    .line 13
    :pswitch_0
    sget-object p0, Lcom/narvii/account/verifyaccount/DeleteAccountVerifyAccount;->INSTANCE:Lcom/narvii/account/verifyaccount/DeleteAccountVerifyAccount;

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :pswitch_1
    new-instance p0, Lcom/narvii/account/verifyaccount/VerifyNewIdentityVerifyAccount;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/narvii/account/verifyaccount/VerifyAccountTypeKt;->identityType(I)Lcom/narvii/account/verifyaccount/IdentityType;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/narvii/account/verifyaccount/VerifyNewIdentityVerifyAccount;-><init>(Lcom/narvii/account/verifyaccount/IdentityType;)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :pswitch_2
    new-instance p0, Lcom/narvii/account/verifyaccount/UpdateIdentityVerifyAccount;

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/narvii/account/verifyaccount/VerifyAccountTypeKt;->identityType(I)Lcom/narvii/account/verifyaccount/IdentityType;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1}, Lcom/narvii/account/verifyaccount/UpdateIdentityVerifyAccount;-><init>(Lcom/narvii/account/verifyaccount/IdentityType;)V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :pswitch_3
    new-instance p0, Lcom/narvii/account/verifyaccount/AddIdentityVerifyAccount;

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lcom/narvii/account/verifyaccount/VerifyAccountTypeKt;->identityType(I)Lcom/narvii/account/verifyaccount/IdentityType;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, p1}, Lcom/narvii/account/verifyaccount/AddIdentityVerifyAccount;-><init>(Lcom/narvii/account/verifyaccount/IdentityType;)V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :pswitch_4
    sget-object p0, Lcom/narvii/account/verifyaccount/SignupVerifyAccount;->INSTANCE:Lcom/narvii/account/verifyaccount/SignupVerifyAccount;

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :pswitch_5
    sget-object p0, Lcom/narvii/account/verifyaccount/ChangePassVerifyAccount;->INSTANCE:Lcom/narvii/account/verifyaccount/ChangePassVerifyAccount;

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :pswitch_6
    sget-object p0, Lcom/narvii/account/verifyaccount/ForgotPassVerifyAccount;->INSTANCE:Lcom/narvii/account/verifyaccount/ForgotPassVerifyAccount;

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :pswitch_7
    sget-object p0, Lcom/narvii/account/verifyaccount/ResetPassVerifyAccount;->INSTANCE:Lcom/narvii/account/verifyaccount/ResetPassVerifyAccount;

    .line 56
    :goto_0
    return-object p0

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic verifyAccountType$default(IIILjava/lang/Object;)Lcom/narvii/account/verifyaccount/VerifyAccountType;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p2, p2, 0x2

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p0, p1}, Lcom/narvii/account/verifyaccount/VerifyAccountTypeKt;->verifyAccountType(II)Lcom/narvii/account/verifyaccount/VerifyAccountType;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
