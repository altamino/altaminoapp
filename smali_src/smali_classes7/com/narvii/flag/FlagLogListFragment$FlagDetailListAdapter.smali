.class Lcom/narvii/flag/FlagLogListFragment$FlagDetailListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/flag/FlagLogListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FlagDetailListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/flag/model/FlagLog;",
        "Lcom/narvii/flag/model/FlagLogListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field datetime:Lcom/narvii/util/DateTimeFormatter;

.field final synthetic this$0:Lcom/narvii/flag/FlagLogListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/flag/FlagLogListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/flag/FlagLogListFragment$FlagDetailListAdapter;->this$0:Lcom/narvii/flag/FlagLogListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/flag/FlagLogListFragment$FlagDetailListAdapter;->datetime:Lcom/narvii/util/DateTimeFormatter;

    .line 16
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 1
    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v0, "/flag/target-object/"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/flag/FlagLogListFragment$FlagDetailListAdapter;->this$0:Lcom/narvii/flag/FlagLogListFragment;

    .line 13
    .line 14
    const-string v1, "flag_id"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v0, "/flag-logs"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 43
    move-result-object p1

    .line 44
    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/flag/model/FlagLog;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/flag/model/FlagLog;

    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/flag/model/FlagLog;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0d0283

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/flag/model/FlagLog;

    .line 14
    .line 15
    iget-object p3, p1, Lcom/narvii/flag/model/FlagLog;->reporter:Lcom/narvii/model/User;

    .line 16
    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    .line 20
    const p3, 0x7f0a0171

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object p3

    .line 25
    .line 26
    check-cast p3, Lcom/narvii/widget/ThumbImageView;

    .line 27
    .line 28
    iget-object v0, p1, Lcom/narvii/flag/model/FlagLog;->reporter:Lcom/narvii/model/User;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    const v0, 0x7f0a09f9

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    check-cast v0, Lcom/narvii/widget/NicknameView;

    .line 45
    .line 46
    iget-object v1, p1, Lcom/narvii/flag/model/FlagLog;->reporter:Lcom/narvii/model/User;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 50
    .line 51
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    .line 56
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    :cond_0
    new-instance p3, Landroid/text/SpannableStringBuilder;

    .line 62
    .line 63
    new-instance v0, Lcom/narvii/flag/FlagTag;

    .line 64
    .line 65
    iget v1, p1, Lcom/narvii/flag/model/FlagLog;->flagType:I

    .line 66
    const/4 v2, 0x0

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, v2, v1}, Lcom/narvii/flag/FlagTag;-><init>(ZI)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lcom/narvii/flag/FlagTag;->getFlagTypeName(Landroid/content/Context;)Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    .line 80
    invoke-direct {p3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    const-string v0, " "

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 86
    .line 87
    new-instance v0, Lcom/narvii/util/text/TagSpan;

    .line 88
    .line 89
    new-instance v1, Lcom/narvii/flag/FlagTag;

    .line 90
    .line 91
    iget v3, p1, Lcom/narvii/flag/model/FlagLog;->flagType:I

    .line 92
    .line 93
    .line 94
    invoke-direct {v1, v2, v3}, Lcom/narvii/flag/FlagTag;-><init>(ZI)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 98
    move-result-object v3

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v3}, Lcom/narvii/flag/FlagTag;->getFlagTypeName(Landroid/content/Context;)Ljava/lang/String;

    .line 102
    move-result-object v1

    .line 103
    .line 104
    .line 105
    const v3, -0xcfcfd0

    .line 106
    .line 107
    .line 108
    invoke-direct {v0, v3, v1}, Lcom/narvii/util/text/TagSpan;-><init>(ILjava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 112
    move-result v1

    .line 113
    .line 114
    add-int/lit8 v1, v1, -0x1

    .line 115
    .line 116
    const/16 v3, 0x21

    .line 117
    .line 118
    .line 119
    invoke-virtual {p3, v0, v2, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 120
    .line 121
    .line 122
    const v0, 0x7f0a05cf

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    check-cast v0, Landroid/widget/TextView;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    const p3, 0x7f0a05ce

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 138
    move-result-object p3

    .line 139
    .line 140
    check-cast p3, Landroid/widget/TextView;

    .line 141
    .line 142
    iget-object v0, p0, Lcom/narvii/flag/FlagLogListFragment$FlagDetailListAdapter;->datetime:Lcom/narvii/util/DateTimeFormatter;

    .line 143
    .line 144
    iget-object v1, p1, Lcom/narvii/flag/model/FlagLog;->createdTime:Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    invoke-static {v1}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    .line 148
    move-result-object v1

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 152
    move-result-object v0

    .line 153
    .line 154
    .line 155
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    iget-object p3, p1, Lcom/narvii/flag/model/FlagLog;->message:Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 161
    move-result p3

    .line 162
    .line 163
    .line 164
    const v0, 0x7f0a05c5

    .line 165
    .line 166
    if-eqz p3, :cond_1

    .line 167
    .line 168
    .line 169
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 170
    move-result-object p1

    .line 171
    .line 172
    check-cast p1, Landroid/widget/TextView;

    .line 173
    .line 174
    const/16 p3, 0x8

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 178
    goto :goto_0

    .line 179
    .line 180
    .line 181
    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 182
    move-result-object p3

    .line 183
    .line 184
    check-cast p3, Landroid/widget/TextView;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 191
    move-result-object p3

    .line 192
    .line 193
    check-cast p3, Landroid/widget/TextView;

    .line 194
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    const-string v1, "\""

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    iget-object p1, p1, Lcom/narvii/flag/model/FlagLog;->message:Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    move-result-object p1

    .line 216
    .line 217
    .line 218
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :goto_0
    return-object p2

    .line 220
    :cond_2
    const/4 p1, 0x0

    .line 221
    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    if-eqz p5, :cond_3

    .line 3
    .line 4
    .line 5
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0a0171

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    const v1, 0x7f0a09f9

    .line 19
    .line 20
    if-ne v0, v1, :cond_3

    .line 21
    :cond_0
    move-object v0, p3

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/flag/model/FlagLog;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/narvii/flag/model/FlagLog;->reporter:Lcom/narvii/model/User;

    .line 26
    const/4 v1, 0x1

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    return v1

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-static {p0, v0}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    return v1

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-static {p0, v0}, Lcom/narvii/flag/FlagLogListFragment$FlagDetailListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 40
    .line 41
    .line 42
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 43
    move-result p1

    .line 44
    return p1
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/flag/model/FlagLogListResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/flag/model/FlagLogListResponse;

    return-object v0
.end method
