.class public final Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/profile/post/GlobalBioPostActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private text:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/user/profile/post/GlobalBioPostActivity;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/post/GlobalBioPostActivity;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$1;->this$0:Lcom/narvii/user/profile/post/GlobalBioPostActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .param p1    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$1;->this$0:Lcom/narvii/user/profile/post/GlobalBioPostActivity;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->access$getEditContent$p(Lcom/narvii/user/profile/post/GlobalBioPostActivity;)Lcom/narvii/widget/EditTextLink;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "editContent"

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 15
    move-object v0, v2

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    .line 19
    move-result v0

    .line 20
    .line 21
    iget-object v3, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$1;->this$0:Lcom/narvii/user/profile/post/GlobalBioPostActivity;

    .line 22
    .line 23
    .line 24
    invoke-static {v3}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->access$getEditContent$p(Lcom/narvii/user/profile/post/GlobalBioPostActivity;)Lcom/narvii/widget/EditTextLink;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 31
    move-object v3, v2

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    .line 35
    move-result v3

    .line 36
    .line 37
    iget-object v4, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$1;->this$0:Lcom/narvii/user/profile/post/GlobalBioPostActivity;

    .line 38
    .line 39
    .line 40
    invoke-static {v4}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->access$getInputHint$p(Lcom/narvii/user/profile/post/GlobalBioPostActivity;)Landroid/widget/TextView;

    .line 41
    move-result-object v4

    .line 42
    .line 43
    if-nez v4, :cond_2

    .line 44
    .line 45
    const-string v4, "inputHint"

    .line 46
    .line 47
    .line 48
    invoke-static {v4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 49
    move-object v4, v2

    .line 50
    .line 51
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v6, "/500"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v5

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    const/16 v4, 0x14

    .line 72
    .line 73
    const/16 v5, 0x1f4

    .line 74
    .line 75
    if-gt v3, v4, :cond_3

    .line 76
    .line 77
    if-le v0, v5, :cond_c

    .line 78
    .line 79
    :cond_3
    iget-object v3, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$1;->text:Ljava/lang/String;

    .line 80
    const/4 v4, 0x0

    .line 81
    .line 82
    if-eqz v3, :cond_4

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 86
    move-result v3

    .line 87
    goto :goto_0

    .line 88
    :cond_4
    move v3, v4

    .line 89
    .line 90
    :goto_0
    if-le v0, v5, :cond_6

    .line 91
    .line 92
    if-ge v3, v5, :cond_6

    .line 93
    .line 94
    iget-object v0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$1;->this$0:Lcom/narvii/user/profile/post/GlobalBioPostActivity;

    .line 95
    .line 96
    .line 97
    invoke-static {v0}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->access$getEditContent$p(Lcom/narvii/user/profile/post/GlobalBioPostActivity;)Lcom/narvii/widget/EditTextLink;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    if-nez v0, :cond_5

    .line 101
    .line 102
    .line 103
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 104
    move-object v0, v2

    .line 105
    .line 106
    .line 107
    :cond_5
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    const-string v3, "getText(...)"

    .line 111
    .line 112
    .line 113
    invoke-static {v0, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-interface {v0, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    iput-object v0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$1;->text:Ljava/lang/String;

    .line 124
    .line 125
    :cond_6
    iget-object v0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$1;->text:Ljava/lang/String;

    .line 126
    .line 127
    if-eqz v0, :cond_7

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 131
    move-result v0

    .line 132
    goto :goto_1

    .line 133
    :cond_7
    move v0, v4

    .line 134
    .line 135
    :goto_1
    if-eqz p1, :cond_8

    .line 136
    .line 137
    .line 138
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 139
    move-result v4

    .line 140
    .line 141
    :cond_8
    if-ge v0, v4, :cond_c

    .line 142
    .line 143
    iget-object p1, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$1;->this$0:Lcom/narvii/user/profile/post/GlobalBioPostActivity;

    .line 144
    .line 145
    .line 146
    invoke-static {p1}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->access$getEditContent$p(Lcom/narvii/user/profile/post/GlobalBioPostActivity;)Lcom/narvii/widget/EditTextLink;

    .line 147
    move-result-object p1

    .line 148
    .line 149
    if-nez p1, :cond_9

    .line 150
    .line 151
    .line 152
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 153
    move-object p1, v2

    .line 154
    .line 155
    :cond_9
    iget-object v0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$1;->text:Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    .line 160
    iget-object p1, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$1;->this$0:Lcom/narvii/user/profile/post/GlobalBioPostActivity;

    .line 161
    .line 162
    .line 163
    invoke-static {p1}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->access$getEditContent$p(Lcom/narvii/user/profile/post/GlobalBioPostActivity;)Lcom/narvii/widget/EditTextLink;

    .line 164
    move-result-object p1

    .line 165
    .line 166
    if-nez p1, :cond_a

    .line 167
    .line 168
    .line 169
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 170
    move-object p1, v2

    .line 171
    .line 172
    :cond_a
    iget-object v0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$1;->this$0:Lcom/narvii/user/profile/post/GlobalBioPostActivity;

    .line 173
    .line 174
    .line 175
    invoke-static {v0}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->access$getEditContent$p(Lcom/narvii/user/profile/post/GlobalBioPostActivity;)Lcom/narvii/widget/EditTextLink;

    .line 176
    move-result-object v0

    .line 177
    .line 178
    if-nez v0, :cond_b

    .line 179
    .line 180
    .line 181
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 182
    goto :goto_2

    .line 183
    :cond_b
    move-object v2, v0

    .line 184
    .line 185
    .line 186
    :goto_2
    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    .line 187
    move-result v0

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 191
    :cond_c
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iput-object p1, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$1;->text:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method
