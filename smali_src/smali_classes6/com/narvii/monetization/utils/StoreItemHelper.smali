.class public Lcom/narvii/monetization/utils/StoreItemHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final context:Landroid/content/Context;

.field private final nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->context:Landroid/content/Context;

    .line 12
    return-void
.end method


# virtual methods
.method public getBoldNumberSpannable(I)Landroid/text/Spannable;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/util/text/TextUtils;->getBoldSpannableString(Ljava/lang/String;)Landroid/text/Spannable;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 11
    .line 12
    .line 13
    const v1, -0xe5e5e6

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 20
    move-result v1

    .line 21
    .line 22
    const/16 v2, 0x21

    .line 23
    const/4 v3, 0x0

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0, v3, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 27
    return-object p1
.end method

.method public getCoinsSpannableWithDeleteLine(I)Landroid/text/Spannable;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    if-ne p1, v1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    const v1, 0x7f120df5

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object v2, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 21
    .line 22
    .line 23
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    new-array v1, v1, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    aput-object p1, v1, v0

    .line 33
    .line 34
    .line 35
    const p1, 0x7f120de7

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    :goto_0
    new-instance v1, Landroid/text/SpannableString;

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    new-instance p1, Landroid/text/style/StrikethroughSpan;

    .line 47
    .line 48
    .line 49
    invoke-direct {p1}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    .line 53
    move-result v2

    .line 54
    .line 55
    const/16 v3, 0x21

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 59
    return-object v1
.end method

.method public getCoinsSpannableWithIcon(I)Landroid/text/Spannable;
    .locals 6

    .line 1
    .line 2
    new-instance v0, Landroid/text/SpannableString;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v2, "  "

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    new-instance p1, Landroid/text/style/StyleSpan;

    .line 25
    const/4 v1, 0x1

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x0

    .line 34
    .line 35
    const/16 v4, 0x21

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 39
    .line 40
    new-instance p1, Lcom/narvii/util/CenterAlignImageSpan;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 43
    .line 44
    .line 45
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    .line 49
    const v5, 0x7f0800b0

    .line 50
    .line 51
    .line 52
    invoke-direct {p1, v2, v5}, Lcom/narvii/util/CenterAlignImageSpan;-><init>(Landroid/content/Context;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1, v3, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 56
    return-object v0
.end method

.method public getExpiredTimeSpannable(Lcom/narvii/model/OwnershipInfo;)Landroid/text/Spannable;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/OwnershipInfo;->isExpired()Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    .line 12
    if-eqz v1, :cond_4

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/model/OwnershipInfo;->daysExpired()I

    .line 16
    move-result p1

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    new-instance p1, Landroid/text/SpannableString;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->context:Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    const v1, 0x7f120c88

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 33
    return-object p1

    .line 34
    .line 35
    :cond_1
    if-ne p1, v3, :cond_2

    .line 36
    .line 37
    new-instance p1, Landroid/text/SpannableString;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->context:Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    const v1, 0x7f120c89

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 50
    return-object p1

    .line 51
    .line 52
    :cond_2
    if-lez p1, :cond_3

    .line 53
    .line 54
    new-instance v0, Landroid/text/SpannableString;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->context:Landroid/content/Context;

    .line 57
    .line 58
    new-array v3, v3, [Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    aput-object p1, v3, v2

    .line 65
    .line 66
    .line 67
    const p1, 0x7f120c8a

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, p1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 75
    return-object v0

    .line 76
    .line 77
    :cond_3
    new-instance p1, Landroid/text/SpannableString;

    .line 78
    .line 79
    iget-object v0, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->context:Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    const v1, 0x7f120c8e

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    .line 89
    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 90
    return-object p1

    .line 91
    .line 92
    .line 93
    :cond_4
    invoke-virtual {p1}, Lcom/narvii/model/OwnershipInfo;->daysExpired()I

    .line 94
    move-result p1

    .line 95
    neg-int p1, p1

    .line 96
    .line 97
    if-nez p1, :cond_5

    .line 98
    .line 99
    new-instance p1, Landroid/text/SpannableString;

    .line 100
    .line 101
    iget-object v0, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->context:Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    const v1, 0x7f120c8b

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    .line 111
    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 112
    return-object p1

    .line 113
    .line 114
    :cond_5
    if-ne p1, v3, :cond_6

    .line 115
    .line 116
    iget-object p1, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->context:Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    const v1, 0x7f12114b

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    new-instance v1, Lcom/narvii/util/text/NVText;

    .line 126
    .line 127
    .line 128
    invoke-direct {v1, p1}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v0}, Lcom/narvii/util/text/NVText;->markAllEntries(Lcom/narvii/util/text/OnTagClickListener;)I

    .line 132
    .line 133
    new-array p1, v3, [Ljava/lang/CharSequence;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v3}, Lcom/narvii/monetization/utils/StoreItemHelper;->getBoldNumberSpannable(I)Landroid/text/Spannable;

    .line 137
    move-result-object v0

    .line 138
    .line 139
    aput-object v0, p1, v2

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, p1}, Lcom/narvii/util/text/NVText;->format([Ljava/lang/CharSequence;)V

    .line 143
    return-object v1

    .line 144
    .line 145
    :cond_6
    if-le p1, v3, :cond_7

    .line 146
    .line 147
    iget-object v1, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->context:Landroid/content/Context;

    .line 148
    .line 149
    .line 150
    const v4, 0x7f12114c

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 154
    move-result-object v1

    .line 155
    .line 156
    new-instance v4, Lcom/narvii/util/text/NVText;

    .line 157
    .line 158
    .line 159
    invoke-direct {v4, v1}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4, v0}, Lcom/narvii/util/text/NVText;->markAllEntries(Lcom/narvii/util/text/OnTagClickListener;)I

    .line 163
    .line 164
    new-array v0, v3, [Ljava/lang/CharSequence;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/utils/StoreItemHelper;->getBoldNumberSpannable(I)Landroid/text/Spannable;

    .line 168
    move-result-object p1

    .line 169
    .line 170
    aput-object p1, v0, v2

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4, v0}, Lcom/narvii/util/text/NVText;->format([Ljava/lang/CharSequence;)V

    .line 174
    return-object v4

    .line 175
    :cond_7
    return-object v0
.end method

.method public getExpiredTimeString(Lcom/narvii/model/OwnershipInfo;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/OwnershipInfo;->isExpired()Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    .line 12
    if-eqz v1, :cond_4

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/model/OwnershipInfo;->daysExpired()I

    .line 16
    move-result p1

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->context:Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    const v0, 0x7f120c88

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    :goto_0
    move-object v0, p1

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :cond_1
    if-ne p1, v3, :cond_2

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->context:Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    const v0, 0x7f120c89

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_2
    if-lez p1, :cond_3

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->context:Landroid/content/Context;

    .line 46
    .line 47
    new-array v1, v3, [Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    aput-object p1, v1, v2

    .line 54
    .line 55
    .line 56
    const p1, 0x7f120c8a

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_3
    iget-object p1, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->context:Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    const v0, 0x7f120c8e

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    goto :goto_0

    .line 72
    .line 73
    .line 74
    :cond_4
    invoke-virtual {p1}, Lcom/narvii/model/OwnershipInfo;->daysExpired()I

    .line 75
    move-result p1

    .line 76
    neg-int p1, p1

    .line 77
    .line 78
    if-nez p1, :cond_5

    .line 79
    .line 80
    iget-object p1, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->context:Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    const v0, 0x7f120c8b

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    goto :goto_1

    .line 89
    .line 90
    :cond_5
    if-ne p1, v3, :cond_6

    .line 91
    .line 92
    iget-object p1, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->context:Landroid/content/Context;

    .line 93
    .line 94
    new-array v0, v3, [Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    aput-object v1, v0, v2

    .line 101
    .line 102
    .line 103
    const v1, 0x7f12114b

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    move-result-object v0

    .line 108
    goto :goto_1

    .line 109
    .line 110
    :cond_6
    if-le p1, v3, :cond_7

    .line 111
    .line 112
    iget-object v0, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->context:Landroid/content/Context;

    .line 113
    .line 114
    new-array v1, v3, [Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    aput-object p1, v1, v2

    .line 121
    .line 122
    .line 123
    const p1, 0x7f12114c

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    move-result-object v0

    .line 128
    :cond_7
    :goto_1
    return-object v0
.end method

.method public getExpiredTimeStringColor(Lcom/narvii/model/OwnershipInfo;)I
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/model/OwnershipInfo;->isExpired()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/model/OwnershipInfo;->daysExpired()I

    .line 12
    move-result p1

    .line 13
    neg-int p1, p1

    .line 14
    .line 15
    if-ltz p1, :cond_0

    .line 16
    const/4 v0, 0x7

    .line 17
    .line 18
    if-gt p1, v0, :cond_0

    .line 19
    .line 20
    .line 21
    const p1, -0xbfc0

    .line 22
    return p1

    .line 23
    .line 24
    .line 25
    :cond_0
    const p1, -0x666667

    .line 26
    return p1
.end method

.method public getPriceExpiredTime(II)Ljava/lang/String;
    .locals 5

    .line 1
    .line 2
    if-gez p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    .line 9
    .line 10
    :cond_0
    const v0, 0x7f120f4c

    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    .line 15
    if-nez p2, :cond_1

    .line 16
    .line 17
    iget-object v4, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 18
    .line 19
    .line 20
    invoke-interface {v4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v4

    .line 22
    .line 23
    new-array v1, v1, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    aput-object p1, v1, v2

    .line 30
    .line 31
    .line 32
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    aput-object p1, v1, v3

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    .line 42
    :cond_1
    if-ne p2, v3, :cond_2

    .line 43
    .line 44
    iget-object p2, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 45
    .line 46
    .line 47
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 48
    move-result-object p2

    .line 49
    .line 50
    new-array v0, v3, [Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    aput-object p1, v0, v2

    .line 57
    .line 58
    .line 59
    const p1, 0x7f120f4b

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    return-object p1

    .line 65
    .line 66
    :cond_2
    rem-int/lit8 v4, p2, 0x1f

    .line 67
    .line 68
    if-nez v4, :cond_4

    .line 69
    .line 70
    div-int/lit8 p2, p2, 0x1f

    .line 71
    .line 72
    if-ne p2, v3, :cond_3

    .line 73
    .line 74
    iget-object p2, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 75
    .line 76
    .line 77
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 78
    move-result-object p2

    .line 79
    .line 80
    new-array v0, v3, [Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    aput-object p1, v0, v2

    .line 87
    .line 88
    .line 89
    const p1, 0x7f120f49

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    move-result-object p1

    .line 94
    return-object p1

    .line 95
    .line 96
    :cond_3
    iget-object v0, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 97
    .line 98
    .line 99
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    new-array v1, v1, [Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    aput-object p1, v1, v2

    .line 109
    .line 110
    .line 111
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    aput-object p1, v1, v3

    .line 115
    .line 116
    .line 117
    const p1, 0x7f120f4a

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    move-result-object p1

    .line 122
    return-object p1

    .line 123
    .line 124
    :cond_4
    iget-object v4, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 125
    .line 126
    .line 127
    invoke-interface {v4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 128
    move-result-object v4

    .line 129
    .line 130
    new-array v1, v1, [Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    aput-object p1, v1, v2

    .line 137
    .line 138
    .line 139
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    move-result-object p1

    .line 141
    .line 142
    aput-object p1, v1, v3

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 146
    move-result-object p1

    .line 147
    return-object p1
.end method

.method public getPriceExpiredTimeCheck(ILcom/narvii/model/IBaseProduct;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_1

    .line 4
    invoke-interface {p2}, Lcom/narvii/model/IBaseProduct;->getAvailableDurationInDays()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p2}, Lcom/narvii/model/IBaseProduct;->getAvailableDurationInDays()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/utils/StoreItemHelper;->getPriceExpiredTime(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPriceExpiredTimeCheck(ILcom/narvii/model/RestrictionInfo;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Lcom/narvii/model/RestrictionInfo;->hasAvailableDuration()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/narvii/model/RestrictionInfo;->getAvailableDurationInDays()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/utils/StoreItemHelper;->getPriceExpiredTime(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
