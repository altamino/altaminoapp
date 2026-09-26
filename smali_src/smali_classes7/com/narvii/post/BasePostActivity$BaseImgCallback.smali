.class public Lcom/narvii/post/BasePostActivity$BaseImgCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/post/BasePostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseImgCallback"
.end annotation


# instance fields
.field private bold:Z

.field private center:Z

.field protected final editText:Lcom/narvii/widget/EditTextIMG;

.field private italic:Z

.field private paraMarkEnd:I

.field private paraStart:I

.field private strikethrough:Z

.field private underline:Z


# direct methods
.method public constructor <init>(Lcom/narvii/widget/EditTextIMG;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->editText:Lcom/narvii/widget/EditTextIMG;

    .line 6
    return-void
.end method

.method private build(ZZZZZ)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    if-nez p2, :cond_1

    .line 5
    .line 6
    if-nez p3, :cond_1

    .line 7
    .line 8
    if-nez p4, :cond_1

    .line 9
    .line 10
    if-eqz p5, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    const-string p1, ""

    .line 14
    return-object p1

    .line 15
    .line 16
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    const/16 v1, 0x5b

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    const/16 p1, 0x42

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    :cond_2
    if-eqz p2, :cond_3

    .line 34
    .line 35
    const/16 p1, 0x49

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    :cond_3
    if-eqz p3, :cond_4

    .line 41
    .line 42
    const/16 p1, 0x43

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    :cond_4
    if-eqz p4, :cond_5

    .line 48
    .line 49
    const/16 p1, 0x55

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    :cond_5
    if-eqz p5, :cond_6

    .line 55
    .line 56
    const/16 p1, 0x53

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    :cond_6
    const/16 p1, 0x5d

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    return-object p1
.end method

.method private search()Landroid/text/Editable;
    .locals 7

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    iput v0, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->paraStart:I

    .line 4
    .line 5
    iput v0, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->paraMarkEnd:I

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    iput-boolean v1, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->bold:Z

    .line 9
    .line 10
    iput-boolean v1, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->italic:Z

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->center:Z

    .line 13
    .line 14
    iput-boolean v1, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->underline:Z

    .line 15
    .line 16
    iput-boolean v1, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->strikethrough:Z

    .line 17
    .line 18
    iget-object v2, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->editText:Lcom/narvii/widget/EditTextIMG;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    iget-object v3, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->editText:Lcom/narvii/widget/EditTextIMG;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    .line 28
    move-result v3

    .line 29
    .line 30
    :goto_0
    if-lez v3, :cond_1

    .line 31
    .line 32
    add-int/lit8 v4, v3, -0x1

    .line 33
    .line 34
    .line 35
    invoke-interface {v2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 36
    move-result v4

    .line 37
    .line 38
    const/16 v5, 0xa

    .line 39
    .line 40
    if-eq v4, v5, :cond_1

    .line 41
    .line 42
    const/16 v5, 0xd

    .line 43
    .line 44
    if-ne v4, v5, :cond_0

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_0
    add-int/lit8 v3, v3, -0x1

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_1
    :goto_1
    if-ltz v3, :cond_8

    .line 51
    .line 52
    iput v3, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->paraStart:I

    .line 53
    .line 54
    .line 55
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 56
    move-result v4

    .line 57
    .line 58
    .line 59
    invoke-interface {v2, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 60
    move-result-object v4

    .line 61
    .line 62
    .line 63
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 64
    move-result-object v4

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lcom/narvii/post/BasePostActivity;->t()Ljava/util/regex/Pattern;

    .line 68
    move-result-object v5

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 72
    move-result-object v4

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    .line 76
    move-result v5

    .line 77
    .line 78
    if-eqz v5, :cond_7

    .line 79
    const/4 v5, 0x1

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->start(I)I

    .line 83
    move-result v6

    .line 84
    .line 85
    if-nez v6, :cond_7

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->end(I)I

    .line 89
    move-result v6

    .line 90
    add-int/2addr v3, v6

    .line 91
    .line 92
    iput v3, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->paraMarkEnd:I

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 96
    move-result-object v3

    .line 97
    .line 98
    const/16 v4, 0x42

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    .line 102
    move-result v4

    .line 103
    .line 104
    if-eq v4, v0, :cond_2

    .line 105
    move v4, v5

    .line 106
    goto :goto_2

    .line 107
    :cond_2
    move v4, v1

    .line 108
    .line 109
    :goto_2
    iput-boolean v4, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->bold:Z

    .line 110
    .line 111
    const/16 v4, 0x49

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    .line 115
    move-result v4

    .line 116
    .line 117
    if-eq v4, v0, :cond_3

    .line 118
    move v4, v5

    .line 119
    goto :goto_3

    .line 120
    :cond_3
    move v4, v1

    .line 121
    .line 122
    :goto_3
    iput-boolean v4, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->italic:Z

    .line 123
    .line 124
    const/16 v4, 0x43

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    .line 128
    move-result v4

    .line 129
    .line 130
    if-eq v4, v0, :cond_4

    .line 131
    move v4, v5

    .line 132
    goto :goto_4

    .line 133
    :cond_4
    move v4, v1

    .line 134
    .line 135
    :goto_4
    iput-boolean v4, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->center:Z

    .line 136
    .line 137
    const/16 v4, 0x55

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    .line 141
    move-result v4

    .line 142
    .line 143
    if-eq v4, v0, :cond_5

    .line 144
    move v4, v5

    .line 145
    goto :goto_5

    .line 146
    :cond_5
    move v4, v1

    .line 147
    .line 148
    :goto_5
    iput-boolean v4, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->underline:Z

    .line 149
    .line 150
    const/16 v4, 0x53

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    .line 154
    move-result v3

    .line 155
    .line 156
    if-eq v3, v0, :cond_6

    .line 157
    move v1, v5

    .line 158
    .line 159
    :cond_6
    iput-boolean v1, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->strikethrough:Z

    .line 160
    goto :goto_6

    .line 161
    .line 162
    :cond_7
    iput v3, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->paraMarkEnd:I

    .line 163
    :goto_6
    return-object v2

    .line 164
    :cond_8
    const/4 v0, 0x0

    .line 165
    return-object v0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    sget v0, Lcom/narvii/lib/R$string;->post_text_bold:I

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 13
    move-result p1

    .line 14
    .line 15
    sget v2, Lcom/narvii/lib/R$string;->post_text_italic:I

    .line 16
    .line 17
    if-eq p1, v2, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 21
    move-result p1

    .line 22
    .line 23
    sget v2, Lcom/narvii/lib/R$string;->post_text_center:I

    .line 24
    .line 25
    if-eq p1, v2, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 29
    move-result p1

    .line 30
    .line 31
    sget v2, Lcom/narvii/lib/R$string;->post_text_underline:I

    .line 32
    .line 33
    if-eq p1, v2, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 37
    move-result p1

    .line 38
    .line 39
    sget v2, Lcom/narvii/lib/R$string;->post_text_strikethrough:I

    .line 40
    .line 41
    if-ne p1, v2, :cond_0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return v1

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->search()Landroid/text/Editable;

    .line 47
    move-result-object p1

    .line 48
    const/4 v2, 0x1

    .line 49
    .line 50
    if-eqz p1, :cond_9

    .line 51
    .line 52
    iget v3, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->paraStart:I

    .line 53
    .line 54
    if-ltz v3, :cond_9

    .line 55
    .line 56
    .line 57
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 58
    move-result v3

    .line 59
    .line 60
    if-ne v3, v0, :cond_2

    .line 61
    .line 62
    iget-boolean p2, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->bold:Z

    .line 63
    .line 64
    xor-int/lit8 v4, p2, 0x1

    .line 65
    .line 66
    iget-boolean v5, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->italic:Z

    .line 67
    .line 68
    iget-boolean v6, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->center:Z

    .line 69
    .line 70
    iget-boolean v7, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->underline:Z

    .line 71
    .line 72
    iget-boolean v8, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->strikethrough:Z

    .line 73
    move-object v3, p0

    .line 74
    .line 75
    .line 76
    invoke-direct/range {v3 .. v8}, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->build(ZZZZZ)Ljava/lang/String;

    .line 77
    move-result-object p2

    .line 78
    .line 79
    goto/16 :goto_1

    .line 80
    .line 81
    .line 82
    :cond_2
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 83
    move-result v0

    .line 84
    .line 85
    sget v3, Lcom/narvii/lib/R$string;->post_text_italic:I

    .line 86
    .line 87
    if-ne v0, v3, :cond_3

    .line 88
    .line 89
    iget-boolean v5, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->bold:Z

    .line 90
    .line 91
    iget-boolean p2, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->italic:Z

    .line 92
    .line 93
    xor-int/lit8 v6, p2, 0x1

    .line 94
    .line 95
    iget-boolean v7, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->center:Z

    .line 96
    .line 97
    iget-boolean v8, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->underline:Z

    .line 98
    .line 99
    iget-boolean v9, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->strikethrough:Z

    .line 100
    move-object v4, p0

    .line 101
    .line 102
    .line 103
    invoke-direct/range {v4 .. v9}, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->build(ZZZZZ)Ljava/lang/String;

    .line 104
    move-result-object p2

    .line 105
    goto :goto_1

    .line 106
    .line 107
    .line 108
    :cond_3
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 109
    move-result v0

    .line 110
    .line 111
    sget v3, Lcom/narvii/lib/R$string;->post_text_center:I

    .line 112
    .line 113
    if-ne v0, v3, :cond_4

    .line 114
    .line 115
    iget-boolean v5, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->bold:Z

    .line 116
    .line 117
    iget-boolean v6, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->italic:Z

    .line 118
    .line 119
    iget-boolean p2, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->center:Z

    .line 120
    .line 121
    xor-int/lit8 v7, p2, 0x1

    .line 122
    .line 123
    iget-boolean v8, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->underline:Z

    .line 124
    .line 125
    iget-boolean v9, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->strikethrough:Z

    .line 126
    move-object v4, p0

    .line 127
    .line 128
    .line 129
    invoke-direct/range {v4 .. v9}, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->build(ZZZZZ)Ljava/lang/String;

    .line 130
    move-result-object p2

    .line 131
    goto :goto_1

    .line 132
    .line 133
    .line 134
    :cond_4
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 135
    move-result v0

    .line 136
    .line 137
    sget v3, Lcom/narvii/lib/R$string;->post_text_underline:I

    .line 138
    .line 139
    if-ne v0, v3, :cond_5

    .line 140
    .line 141
    iget-boolean v5, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->bold:Z

    .line 142
    .line 143
    iget-boolean v6, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->italic:Z

    .line 144
    .line 145
    iget-boolean v7, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->center:Z

    .line 146
    .line 147
    iget-boolean p2, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->underline:Z

    .line 148
    .line 149
    xor-int/lit8 v8, p2, 0x1

    .line 150
    .line 151
    iget-boolean v9, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->strikethrough:Z

    .line 152
    move-object v4, p0

    .line 153
    .line 154
    .line 155
    invoke-direct/range {v4 .. v9}, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->build(ZZZZZ)Ljava/lang/String;

    .line 156
    move-result-object p2

    .line 157
    goto :goto_1

    .line 158
    .line 159
    .line 160
    :cond_5
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 161
    move-result p2

    .line 162
    .line 163
    sget v0, Lcom/narvii/lib/R$string;->post_text_strikethrough:I

    .line 164
    .line 165
    if-ne p2, v0, :cond_6

    .line 166
    .line 167
    iget-boolean v4, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->bold:Z

    .line 168
    .line 169
    iget-boolean v5, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->italic:Z

    .line 170
    .line 171
    iget-boolean v6, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->center:Z

    .line 172
    .line 173
    iget-boolean v7, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->underline:Z

    .line 174
    .line 175
    iget-boolean p2, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->strikethrough:Z

    .line 176
    .line 177
    xor-int/lit8 v8, p2, 0x1

    .line 178
    move-object v3, p0

    .line 179
    .line 180
    .line 181
    invoke-direct/range {v3 .. v8}, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->build(ZZZZZ)Ljava/lang/String;

    .line 182
    move-result-object p2

    .line 183
    goto :goto_1

    .line 184
    :cond_6
    const/4 p2, 0x0

    .line 185
    .line 186
    :goto_1
    iget-object v0, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->editText:Lcom/narvii/widget/EditTextIMG;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 190
    move-result v0

    .line 191
    .line 192
    iget-object v3, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->editText:Lcom/narvii/widget/EditTextIMG;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 196
    move-result v3

    .line 197
    .line 198
    iget v4, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->paraStart:I

    .line 199
    .line 200
    iget v5, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->paraMarkEnd:I

    .line 201
    .line 202
    .line 203
    invoke-interface {p1, v4, v5, p2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 204
    .line 205
    iget p1, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->paraStart:I

    .line 206
    .line 207
    iget v4, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->paraMarkEnd:I

    .line 208
    sub-int/2addr p1, v4

    .line 209
    .line 210
    .line 211
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 212
    move-result p2

    .line 213
    add-int/2addr p1, p2

    .line 214
    add-int/2addr v0, p1

    .line 215
    add-int/2addr v3, p1

    .line 216
    .line 217
    :try_start_0
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->editText:Lcom/narvii/widget/EditTextIMG;

    .line 218
    .line 219
    if-gez v0, :cond_7

    .line 220
    move v0, v1

    .line 221
    .line 222
    :cond_7
    if-gez v3, :cond_8

    .line 223
    goto :goto_2

    .line 224
    :cond_8
    move v1, v3

    .line 225
    .line 226
    .line 227
    :goto_2
    invoke-virtual {p1, v0, v1}, Landroid/widget/EditText;->setSelection(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :catch_0
    :cond_9
    return v2
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->editText:Lcom/narvii/widget/EditTextIMG;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    sget v0, Lcom/narvii/lib/R$string;->post_text_bold:I

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-interface {p2, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    new-instance v2, Lcom/narvii/util/ActionBarIcon;

    .line 16
    .line 17
    sget v3, Lcom/narvii/lib/R$string;->fa_bold:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    .line 24
    const v4, 0x3f19999a    # 0.6f

    .line 25
    .line 26
    .line 27
    invoke-direct {v2, p1, v3, v4, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FI)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 31
    move-result-object v0

    .line 32
    const/4 v2, 0x2

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 36
    .line 37
    sget v0, Lcom/narvii/lib/R$string;->post_text_italic:I

    .line 38
    .line 39
    .line 40
    invoke-interface {p2, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    new-instance v3, Lcom/narvii/util/ActionBarIcon;

    .line 44
    .line 45
    sget v5, Lcom/narvii/lib/R$string;->fa_italic:I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 49
    move-result-object v5

    .line 50
    .line 51
    .line 52
    invoke-direct {v3, p1, v5, v4, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FI)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 60
    .line 61
    sget v0, Lcom/narvii/lib/R$string;->post_text_center:I

    .line 62
    .line 63
    .line 64
    invoke-interface {p2, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    new-instance v3, Lcom/narvii/util/ActionBarIcon;

    .line 68
    .line 69
    sget v5, Lcom/narvii/lib/R$string;->fa_align_center:I

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 73
    move-result-object v5

    .line 74
    .line 75
    .line 76
    const v6, 0x3f23d70a    # 0.64f

    .line 77
    .line 78
    .line 79
    invoke-direct {v3, p1, v5, v6, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FI)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    .line 86
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 87
    .line 88
    sget v0, Lcom/narvii/lib/R$string;->post_text_underline:I

    .line 89
    .line 90
    .line 91
    invoke-interface {p2, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    new-instance v2, Lcom/narvii/util/ActionBarIcon;

    .line 95
    .line 96
    sget v3, Lcom/narvii/lib/R$string;->fa_underline:I

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 100
    move-result-object v3

    .line 101
    .line 102
    .line 103
    invoke-direct {v2, p1, v3, v4, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FI)V

    .line 104
    .line 105
    .line 106
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 107
    move-result-object v0

    .line 108
    const/4 v2, 0x1

    .line 109
    .line 110
    .line 111
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 112
    .line 113
    sget v0, Lcom/narvii/lib/R$string;->post_text_strikethrough:I

    .line 114
    .line 115
    .line 116
    invoke-interface {p2, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 117
    move-result-object p2

    .line 118
    .line 119
    new-instance v0, Lcom/narvii/util/ActionBarIcon;

    .line 120
    .line 121
    sget v3, Lcom/narvii/lib/R$string;->fa_strikethrough:I

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 125
    move-result-object v3

    .line 126
    .line 127
    .line 128
    invoke-direct {v0, p1, v3, v4, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FI)V

    .line 129
    .line 130
    .line 131
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 132
    move-result-object p1

    .line 133
    .line 134
    .line 135
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 136
    return v2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->search()Landroid/text/Editable;

    .line 4
    .line 5
    sget p1, Lcom/narvii/lib/R$string;->post_text_bold:I

    .line 6
    .line 7
    .line 8
    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iget v1, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->paraStart:I

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    .line 15
    if-ltz v1, :cond_0

    .line 16
    move v1, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v2

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget-boolean v1, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->bold:Z

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    sget p1, Lcom/narvii/lib/R$string;->post_text_unbold:I

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 32
    .line 33
    sget p1, Lcom/narvii/lib/R$string;->post_text_italic:I

    .line 34
    .line 35
    .line 36
    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    iget v1, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->paraStart:I

    .line 40
    .line 41
    if-ltz v1, :cond_2

    .line 42
    move v1, v3

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move v1, v2

    .line 45
    .line 46
    .line 47
    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    iget-boolean v1, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->italic:Z

    .line 51
    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    sget p1, Lcom/narvii/lib/R$string;->post_text_unitalic:I

    .line 55
    .line 56
    .line 57
    :cond_3
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 58
    .line 59
    sget p1, Lcom/narvii/lib/R$string;->post_text_center:I

    .line 60
    .line 61
    .line 62
    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    iget v1, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->paraStart:I

    .line 66
    .line 67
    if-ltz v1, :cond_4

    .line 68
    move v1, v3

    .line 69
    goto :goto_2

    .line 70
    :cond_4
    move v1, v2

    .line 71
    .line 72
    .line 73
    :goto_2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    iget-boolean v1, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->center:Z

    .line 77
    .line 78
    if-eqz v1, :cond_5

    .line 79
    .line 80
    sget p1, Lcom/narvii/lib/R$string;->post_text_uncenter:I

    .line 81
    .line 82
    .line 83
    :cond_5
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 84
    .line 85
    sget p1, Lcom/narvii/lib/R$string;->post_text_underline:I

    .line 86
    .line 87
    .line 88
    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    iget v1, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->paraStart:I

    .line 92
    .line 93
    if-ltz v1, :cond_6

    .line 94
    move v1, v3

    .line 95
    goto :goto_3

    .line 96
    :cond_6
    move v1, v2

    .line 97
    .line 98
    .line 99
    :goto_3
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    iget-boolean v1, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->underline:Z

    .line 103
    .line 104
    if-eqz v1, :cond_7

    .line 105
    .line 106
    sget p1, Lcom/narvii/lib/R$string;->post_text_ununderline:I

    .line 107
    .line 108
    .line 109
    :cond_7
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 110
    .line 111
    sget p1, Lcom/narvii/lib/R$string;->post_text_strikethrough:I

    .line 112
    .line 113
    .line 114
    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 115
    move-result-object p2

    .line 116
    .line 117
    iget v0, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->paraStart:I

    .line 118
    .line 119
    if-ltz v0, :cond_8

    .line 120
    move v2, v3

    .line 121
    .line 122
    .line 123
    :cond_8
    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 124
    move-result-object p2

    .line 125
    .line 126
    iget-boolean v0, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->strikethrough:Z

    .line 127
    .line 128
    if-eqz v0, :cond_9

    .line 129
    .line 130
    sget p1, Lcom/narvii/lib/R$string;->post_text_unstrikethrough:I

    .line 131
    .line 132
    .line 133
    :cond_9
    invoke-interface {p2, p1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 134
    return v3
.end method
