.class public Lcom/google/android/material/textfield/TextInputLayout$e;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/TextInputLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private final layout:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0
    .param p1    # Lcom/google/android/material/textfield/TextInputLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout$e;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 6
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 12
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout$e;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    .line 19
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout$e;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout$e;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout$e;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getPlaceholderText()Ljava/lang/CharSequence;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout$e;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getCounterMaxLength()I

    .line 41
    move-result v3

    .line 42
    .line 43
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout$e;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getCounterOverflowDescription()Ljava/lang/CharSequence;

    .line 47
    move-result-object v4

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    move-result v5

    .line 52
    .line 53
    xor-int/lit8 v6, v5, 0x1

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    move-result v7

    .line 58
    const/4 v8, 0x1

    .line 59
    xor-int/2addr v7, v8

    .line 60
    .line 61
    iget-object v9, p0, Lcom/google/android/material/textfield/TextInputLayout$e;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v9}, Lcom/google/android/material/textfield/TextInputLayout;->N()Z

    .line 65
    move-result v9

    .line 66
    xor-int/2addr v9, v8

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    move-result v10

    .line 71
    xor-int/2addr v10, v8

    .line 72
    .line 73
    if-nez v10, :cond_2

    .line 74
    .line 75
    .line 76
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    move-result v11

    .line 78
    .line 79
    if-nez v11, :cond_1

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    const/4 v8, 0x0

    .line 82
    .line 83
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    .line 84
    .line 85
    .line 86
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    goto :goto_2

    .line 89
    .line 90
    :cond_3
    const-string v0, ""

    .line 91
    .line 92
    :goto_2
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout$e;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 93
    .line 94
    .line 95
    invoke-static {v7}, Lcom/google/android/material/textfield/TextInputLayout;->e(Lcom/google/android/material/textfield/TextInputLayout;)Lcom/google/android/material/textfield/l;

    .line 96
    move-result-object v7

    .line 97
    .line 98
    .line 99
    invoke-virtual {v7, p2}, Lcom/google/android/material/textfield/l;->v(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 100
    .line 101
    const-string v7, ", "

    .line 102
    .line 103
    if-eqz v6, :cond_4

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->L0(Ljava/lang/CharSequence;)V

    .line 107
    goto :goto_3

    .line 108
    .line 109
    .line 110
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 111
    move-result v11

    .line 112
    .line 113
    if-nez v11, :cond_5

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->L0(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    if-eqz v9, :cond_6

    .line 119
    .line 120
    if-eqz v2, :cond_6

    .line 121
    .line 122
    new-instance v9, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object v2

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->L0(Ljava/lang/CharSequence;)V

    .line 142
    goto :goto_3

    .line 143
    .line 144
    :cond_5
    if-eqz v2, :cond_6

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->L0(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    :cond_6
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 151
    move-result v2

    .line 152
    .line 153
    if-nez v2, :cond_9

    .line 154
    .line 155
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 156
    .line 157
    const/16 v9, 0x1a

    .line 158
    .line 159
    if-lt v2, v9, :cond_7

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->r0(Ljava/lang/CharSequence;)V

    .line 163
    goto :goto_4

    .line 164
    .line 165
    :cond_7
    if-eqz v6, :cond_8

    .line 166
    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    move-result-object v0

    .line 184
    .line 185
    .line 186
    :cond_8
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->L0(Ljava/lang/CharSequence;)V

    .line 187
    .line 188
    .line 189
    :goto_4
    invoke-virtual {p2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->H0(Z)V

    .line 190
    .line 191
    :cond_9
    if-eqz p1, :cond_a

    .line 192
    .line 193
    .line 194
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 195
    move-result p1

    .line 196
    .line 197
    if-ne p1, v3, :cond_a

    .line 198
    goto :goto_5

    .line 199
    :cond_a
    const/4 v3, -0x1

    .line 200
    .line 201
    .line 202
    :goto_5
    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->v0(I)V

    .line 203
    .line 204
    if-eqz v8, :cond_c

    .line 205
    .line 206
    if-eqz v10, :cond_b

    .line 207
    goto :goto_6

    .line 208
    :cond_b
    move-object v1, v4

    .line 209
    .line 210
    .line 211
    :goto_6
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->n0(Ljava/lang/CharSequence;)V

    .line 212
    .line 213
    :cond_c
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout$e;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 214
    .line 215
    .line 216
    invoke-static {p1}, Lcom/google/android/material/textfield/TextInputLayout;->f(Lcom/google/android/material/textfield/TextInputLayout;)Lcom/google/android/material/textfield/h;

    .line 217
    move-result-object p1

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1}, Lcom/google/android/material/textfield/h;->s()Landroid/view/View;

    .line 221
    move-result-object p1

    .line 222
    .line 223
    if-eqz p1, :cond_d

    .line 224
    .line 225
    .line 226
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->s0(Landroid/view/View;)V

    .line 227
    :cond_d
    return-void
.end method
