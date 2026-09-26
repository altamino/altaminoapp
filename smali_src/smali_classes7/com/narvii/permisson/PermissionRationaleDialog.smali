.class public Lcom/narvii/permisson/PermissionRationaleDialog;
.super Lcom/narvii/widget/ACMAlertDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/permisson/PermissionRationaleDialog$Builder;
    }
.end annotation


# static fields
.field public static final ACTION_ALLOW:I = 0x1

.field public static isShowing:Z


# instance fields
.field private callback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private cancelCallback:Lcom/narvii/util/Callback;

.field private context:Landroid/content/Context;

.field public deniedInfo:Ljava/lang/String;

.field deniedPermissionHint:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public rations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tvMessage:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->rations:Ljava/util/HashMap;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->deniedPermissionHint:Ljava/util/List;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->context:Landroid/content/Context;

    .line 20
    .line 21
    sget p1, Lcom/narvii/lib/R$id;->message:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    check-cast p1, Landroid/widget/TextView;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->tvMessage:Landroid/widget/TextView;

    .line 30
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/permisson/PermissionRationaleDialog;)Lcom/narvii/util/Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->callback:Lcom/narvii/util/Callback;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/permisson/PermissionRationaleDialog;)Lcom/narvii/util/Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->cancelCallback:Lcom/narvii/util/Callback;

    return-object p0
.end method

.method public static builder(Landroid/content/Context;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    return-object v0
.end method

.method static bridge synthetic c(Lcom/narvii/permisson/PermissionRationaleDialog;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/narvii/permisson/PermissionRationaleDialog;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->callback:Lcom/narvii/util/Callback;

    return-void
.end method

.method static bridge synthetic e(Lcom/narvii/permisson/PermissionRationaleDialog;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->cancelCallback:Lcom/narvii/util/Callback;

    return-void
.end method


# virtual methods
.method public addPermissionDeniedHint(I)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->context:Landroid/content/Context;

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->deniedPermissionHint:Ljava/util/List;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addPermissionDeniedHint(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->deniedPermissionHint:Ljava/util/List;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPermissionRationale(II)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->context:Landroid/content/Context;

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->context:Landroid/content/Context;

    .line 4
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->rations:Ljava/util/HashMap;

    .line 6
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public addPermissionRationale(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->rations:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public dismiss()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 4
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    sput-boolean v0, Lcom/narvii/permisson/PermissionRationaleDialog;->isShowing:Z

    .line 7
    return-void
.end method

.method public parepageDialog()V
    .locals 8

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$string;->allow_amino_permission:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/widget/ACMAlertDialog;->title:Landroid/widget/TextView;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    sget v2, Lcom/narvii/lib/R$color;->dialog_option_blue:I

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 17
    move-result v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/widget/ACMAlertDialog;->title:Landroid/widget/TextView;

    .line 23
    .line 24
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 28
    .line 29
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->rations:Ljava/util/HashMap;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v2

    .line 47
    const/4 v3, 0x1

    .line 48
    .line 49
    const-string v4, "\n"

    .line 50
    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    check-cast v2, Ljava/util/Map$Entry;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 61
    move-result v5

    .line 62
    .line 63
    .line 64
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 65
    move-result-object v6

    .line 66
    .line 67
    check-cast v6, Ljava/lang/CharSequence;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 71
    .line 72
    new-instance v6, Landroid/text/style/StyleSpan;

    .line 73
    .line 74
    .line 75
    invoke-direct {v6, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 79
    move-result v3

    .line 80
    .line 81
    const/16 v7, 0x21

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v6, v5, v3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 91
    move-result v3

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 95
    .line 96
    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    .line 97
    .line 98
    .line 99
    const v6, 0x3ecccccd    # 0.4f

    .line 100
    .line 101
    .line 102
    invoke-direct {v5, v6}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 106
    move-result v6

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v5, v3, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 110
    .line 111
    .line 112
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 113
    move-result-object v2

    .line 114
    .line 115
    check-cast v2, Ljava/lang/CharSequence;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 125
    goto :goto_0

    .line 126
    .line 127
    :cond_0
    iget-object v1, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->deniedPermissionHint:Ljava/util/List;

    .line 128
    .line 129
    .line 130
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 131
    move-result v1

    .line 132
    .line 133
    if-lez v1, :cond_3

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 137
    const/4 v1, 0x0

    .line 138
    .line 139
    const-string v2, ""

    .line 140
    move v4, v1

    .line 141
    .line 142
    :goto_1
    iget-object v5, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->deniedPermissionHint:Ljava/util/List;

    .line 143
    .line 144
    .line 145
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 146
    move-result v5

    .line 147
    .line 148
    if-ge v4, v5, :cond_2

    .line 149
    .line 150
    iget-object v5, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->deniedPermissionHint:Ljava/util/List;

    .line 151
    .line 152
    .line 153
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 154
    move-result-object v5

    .line 155
    .line 156
    check-cast v5, Ljava/lang/String;

    .line 157
    .line 158
    iget-object v6, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->deniedPermissionHint:Ljava/util/List;

    .line 159
    .line 160
    .line 161
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 162
    move-result v6

    .line 163
    sub-int/2addr v6, v3

    .line 164
    .line 165
    if-ne v4, v6, :cond_1

    .line 166
    .line 167
    new-instance v6, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    move-result-object v2

    .line 181
    goto :goto_2

    .line 182
    .line 183
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    iget-object v2, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->context:Landroid/content/Context;

    .line 195
    .line 196
    sget v5, Lcom/narvii/lib/R$string;->and:I

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 200
    move-result-object v2

    .line 201
    .line 202
    .line 203
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    move-result-object v2

    .line 208
    .line 209
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 210
    goto :goto_1

    .line 211
    .line 212
    :cond_2
    iget-object v4, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->context:Landroid/content/Context;

    .line 213
    .line 214
    sget v5, Lcom/narvii/lib/R$string;->denied_hint:I

    .line 215
    .line 216
    new-array v3, v3, [Ljava/lang/Object;

    .line 217
    .line 218
    aput-object v2, v3, v1

    .line 219
    .line 220
    .line 221
    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 222
    move-result-object v1

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 226
    .line 227
    :cond_3
    sget v1, Lcom/narvii/lib/R$id;->alert_dialog_message:I

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 231
    move-result-object v1

    .line 232
    .line 233
    check-cast v1, Landroid/widget/TextView;

    .line 234
    .line 235
    .line 236
    const v2, 0x800003

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    .line 244
    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->deniedPermissionHint:Ljava/util/List;

    .line 245
    .line 246
    .line 247
    const v1, -0x777778

    .line 248
    .line 249
    if-eqz v0, :cond_5

    .line 250
    .line 251
    .line 252
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 253
    move-result v0

    .line 254
    .line 255
    if-nez v0, :cond_4

    .line 256
    goto :goto_3

    .line 257
    .line 258
    :cond_4
    sget v0, Lcom/narvii/lib/R$string;->not_now:I

    .line 259
    .line 260
    new-instance v2, Lcom/narvii/permisson/PermissionRationaleDialog$3;

    .line 261
    .line 262
    .line 263
    invoke-direct {v2, p0}, Lcom/narvii/permisson/PermissionRationaleDialog$3;-><init>(Lcom/narvii/permisson/PermissionRationaleDialog;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0, v0, v2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 267
    .line 268
    sget v0, Lcom/narvii/lib/R$string;->app_setttings:I

    .line 269
    .line 270
    new-instance v1, Lcom/narvii/permisson/PermissionRationaleDialog$4;

    .line 271
    .line 272
    .line 273
    invoke-direct {v1, p0}, Lcom/narvii/permisson/PermissionRationaleDialog$4;-><init>(Lcom/narvii/permisson/PermissionRationaleDialog;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 277
    goto :goto_4

    .line 278
    .line 279
    :cond_5
    :goto_3
    sget v0, Lcom/narvii/lib/R$string;->deny:I

    .line 280
    .line 281
    new-instance v2, Lcom/narvii/permisson/PermissionRationaleDialog$1;

    .line 282
    .line 283
    .line 284
    invoke-direct {v2, p0}, Lcom/narvii/permisson/PermissionRationaleDialog$1;-><init>(Lcom/narvii/permisson/PermissionRationaleDialog;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0, v0, v2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 288
    .line 289
    sget v0, Lcom/narvii/lib/R$string;->allow:I

    .line 290
    .line 291
    new-instance v1, Lcom/narvii/permisson/PermissionRationaleDialog$2;

    .line 292
    .line 293
    .line 294
    invoke-direct {v1, p0}, Lcom/narvii/permisson/PermissionRationaleDialog$2;-><init>(Lcom/narvii/permisson/PermissionRationaleDialog;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p0, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 298
    :goto_4
    return-void
.end method

.method public setDeniedInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->deniedInfo:Ljava/lang/String;

    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    sput-boolean v0, Lcom/narvii/permisson/PermissionRationaleDialog;->isShowing:Z

    .line 7
    return-void
.end method
