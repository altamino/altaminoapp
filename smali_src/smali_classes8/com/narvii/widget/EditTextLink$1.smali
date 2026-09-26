.class Lcom/narvii/widget/EditTextLink$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/EditTextLink;->showPasteDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/EditTextLink;

.field final synthetic val$edit:Landroid/widget/EditText;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/widget/EditTextLink;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/EditTextLink$1;->this$0:Lcom/narvii/widget/EditTextLink;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/widget/EditTextLink$1;->val$edit:Landroid/widget/EditText;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/widget/EditTextLink$1;->val$url:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/EditTextLink$1;->val$edit:Landroid/widget/EditText;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    const-string/jumbo p2, "|"

    .line 18
    .line 19
    const-string v0, ""

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    const-string v1, "]"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    const-string v2, "["

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/widget/EditTextLink$1;->val$url:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    move-result v3

    .line 42
    .line 43
    if-nez v3, :cond_0

    .line 44
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    iget-object p1, p0, Lcom/narvii/widget/EditTextLink$1;->val$url:Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/EditTextLink$1;->this$0:Lcom/narvii/widget/EditTextLink;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    .line 75
    move-result p1

    .line 76
    .line 77
    iget-object p2, p0, Lcom/narvii/widget/EditTextLink$1;->this$0:Lcom/narvii/widget/EditTextLink;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 81
    move-result p2

    .line 82
    .line 83
    const-string v1, " "

    .line 84
    .line 85
    if-eqz p1, :cond_2

    .line 86
    .line 87
    if-lez p1, :cond_1

    .line 88
    .line 89
    iget-object v2, p0, Lcom/narvii/widget/EditTextLink$1;->this$0:Lcom/narvii/widget/EditTextLink;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 93
    move-result-object v2

    .line 94
    .line 95
    add-int/lit8 v3, p1, -0x1

    .line 96
    .line 97
    .line 98
    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 99
    move-result v2

    .line 100
    .line 101
    .line 102
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 103
    move-result v2

    .line 104
    .line 105
    if-eqz v2, :cond_1

    .line 106
    goto :goto_0

    .line 107
    .line 108
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    :cond_2
    :goto_0
    if-ltz p2, :cond_3

    .line 124
    .line 125
    iget-object v2, p0, Lcom/narvii/widget/EditTextLink$1;->this$0:Lcom/narvii/widget/EditTextLink;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 129
    move-result-object v2

    .line 130
    .line 131
    .line 132
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 133
    move-result v2

    .line 134
    .line 135
    add-int/lit8 v2, v2, -0x1

    .line 136
    .line 137
    if-ge p2, v2, :cond_3

    .line 138
    .line 139
    iget-object v2, p0, Lcom/narvii/widget/EditTextLink$1;->this$0:Lcom/narvii/widget/EditTextLink;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 143
    move-result-object v2

    .line 144
    .line 145
    .line 146
    invoke-interface {v2, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 147
    move-result v2

    .line 148
    .line 149
    .line 150
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 151
    move-result v2

    .line 152
    .line 153
    if-eqz v2, :cond_3

    .line 154
    goto :goto_1

    .line 155
    .line 156
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object v0

    .line 170
    .line 171
    :goto_1
    if-ltz p1, :cond_6

    .line 172
    .line 173
    if-gez p2, :cond_4

    .line 174
    goto :goto_2

    .line 175
    .line 176
    :cond_4
    if-ne p1, p2, :cond_5

    .line 177
    .line 178
    iget-object p2, p0, Lcom/narvii/widget/EditTextLink$1;->this$0:Lcom/narvii/widget/EditTextLink;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 182
    move-result-object p2

    .line 183
    .line 184
    .line 185
    invoke-interface {p2, p1, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 186
    goto :goto_3

    .line 187
    .line 188
    :cond_5
    iget-object v1, p0, Lcom/narvii/widget/EditTextLink$1;->this$0:Lcom/narvii/widget/EditTextLink;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 192
    move-result-object v1

    .line 193
    .line 194
    .line 195
    invoke-interface {v1, p1, p2, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 196
    goto :goto_3

    .line 197
    .line 198
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/narvii/widget/EditTextLink$1;->this$0:Lcom/narvii/widget/EditTextLink;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 202
    move-result-object p1

    .line 203
    .line 204
    .line 205
    invoke-interface {p1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 206
    :goto_3
    return-void
.end method
