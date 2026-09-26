.class Lcom/narvii/chat/input/ChatInputFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/input/ChatInputFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/input/ChatInputFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/input/ChatInputFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->F(Lcom/narvii/chat/input/ChatInputFragment;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/narvii/chat/input/ChatInputFragment;->Q(Lcom/narvii/chat/input/ChatInputFragment;Z)V

    .line 15
    return-void

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 18
    .line 19
    iget-object v1, v0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->x(Lcom/narvii/chat/input/ChatInputFragment;)Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->V(Lcom/narvii/chat/input/ChatInputFragment;)V

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputFragment;->updateViews()V

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->K(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->checkInputTypingStatus(Landroid/text/Editable;)V

    .line 47
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->B(Lcom/narvii/chat/input/ChatInputFragment;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->z(Lcom/narvii/chat/input/ChatInputFragment;)I

    .line 15
    move-result v0

    .line 16
    .line 17
    if-lt p2, v0, :cond_7

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->z(Lcom/narvii/chat/input/ChatInputFragment;)I

    .line 23
    move-result v0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lcom/narvii/chat/input/ChatInputFragment;->y(Lcom/narvii/chat/input/ChatInputFragment;)Ljava/lang/StringBuilder;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 33
    move-result v1

    .line 34
    add-int/2addr v0, v1

    .line 35
    .line 36
    if-le p2, v0, :cond_1

    .line 37
    .line 38
    goto/16 :goto_2

    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->z(Lcom/narvii/chat/input/ChatInputFragment;)I

    .line 44
    move-result v0

    .line 45
    .line 46
    sub-int v0, p2, v0

    .line 47
    .line 48
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Lcom/narvii/chat/input/ChatInputFragment;->z(Lcom/narvii/chat/input/ChatInputFragment;)I

    .line 52
    move-result v1

    .line 53
    .line 54
    if-ne p2, v1, :cond_2

    .line 55
    .line 56
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 57
    .line 58
    .line 59
    invoke-static {v1}, Lcom/narvii/chat/input/ChatInputFragment;->y(Lcom/narvii/chat/input/ChatInputFragment;)Ljava/lang/StringBuilder;

    .line 60
    move-result-object v1

    .line 61
    add-int/2addr p3, v0

    .line 62
    .line 63
    .line 64
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    add-int/2addr p4, p2

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v0, p3, p1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    goto :goto_0

    .line 75
    .line 76
    :cond_2
    if-nez p3, :cond_3

    .line 77
    .line 78
    iget-object p3, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 79
    .line 80
    .line 81
    invoke-static {p3}, Lcom/narvii/chat/input/ChatInputFragment;->y(Lcom/narvii/chat/input/ChatInputFragment;)Ljava/lang/StringBuilder;

    .line 82
    move-result-object p3

    .line 83
    .line 84
    .line 85
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    add-int/2addr p4, p2

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p2, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3, v0, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    goto :goto_0

    .line 96
    .line 97
    :cond_3
    if-nez p4, :cond_4

    .line 98
    .line 99
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 100
    .line 101
    .line 102
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->y(Lcom/narvii/chat/input/ChatInputFragment;)Ljava/lang/StringBuilder;

    .line 103
    move-result-object p1

    .line 104
    add-int/2addr p3, v0

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0, p3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 108
    goto :goto_0

    .line 109
    .line 110
    :cond_4
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 111
    .line 112
    .line 113
    invoke-static {v1}, Lcom/narvii/chat/input/ChatInputFragment;->y(Lcom/narvii/chat/input/ChatInputFragment;)Ljava/lang/StringBuilder;

    .line 114
    move-result-object v1

    .line 115
    add-int/2addr p3, v0

    .line 116
    .line 117
    .line 118
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 119
    move-result-object p1

    .line 120
    add-int/2addr p4, p2

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, p2, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 124
    move-result-object p1

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v0, p3, p1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 130
    .line 131
    .line 132
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->y(Lcom/narvii/chat/input/ChatInputFragment;)Ljava/lang/StringBuilder;

    .line 133
    move-result-object p1

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 137
    move-result p1

    .line 138
    const/4 p2, 0x0

    .line 139
    .line 140
    if-nez p1, :cond_5

    .line 141
    .line 142
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 143
    .line 144
    .line 145
    invoke-static {p1, p2}, Lcom/narvii/chat/input/ChatInputFragment;->P(Lcom/narvii/chat/input/ChatInputFragment;Z)V

    .line 146
    .line 147
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 151
    move-result-object p1

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 155
    move-result-object p1

    .line 156
    .line 157
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 158
    .line 159
    .line 160
    invoke-static {p2}, Lcom/narvii/chat/input/ChatInputFragment;->A(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 161
    move-result-object p2

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->r(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 165
    move-result-object p1

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 169
    return-void

    .line 170
    .line 171
    :cond_5
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 172
    .line 173
    .line 174
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->A(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 175
    move-result-object p1

    .line 176
    .line 177
    iget-object p3, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 178
    .line 179
    .line 180
    invoke-static {p3}, Lcom/narvii/chat/input/ChatInputFragment;->y(Lcom/narvii/chat/input/ChatInputFragment;)Ljava/lang/StringBuilder;

    .line 181
    move-result-object p3

    .line 182
    .line 183
    .line 184
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    .line 185
    move-result p3

    .line 186
    const/4 p4, 0x1

    .line 187
    .line 188
    if-le p3, p4, :cond_6

    .line 189
    .line 190
    iget-object p3, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 191
    .line 192
    .line 193
    invoke-static {p3}, Lcom/narvii/chat/input/ChatInputFragment;->y(Lcom/narvii/chat/input/ChatInputFragment;)Ljava/lang/StringBuilder;

    .line 194
    move-result-object p3

    .line 195
    .line 196
    .line 197
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    .line 198
    move-result-object p3

    .line 199
    goto :goto_1

    .line 200
    :cond_6
    const/4 p3, 0x0

    .line 201
    .line 202
    .line 203
    :goto_1
    invoke-virtual {p1, p3, p2}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->fetchMentionRelatedUserList(Ljava/lang/String;Z)V

    .line 204
    return-void

    .line 205
    .line 206
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 207
    .line 208
    .line 209
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->W(Lcom/narvii/chat/input/ChatInputFragment;)V

    .line 210
    return-void
.end method
