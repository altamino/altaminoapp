.class Lcom/narvii/media/MediaPickerFragment$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/MediaPickerFragment$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/media/MediaPickerFragment$5;

.field final synthetic val$pastDlg:Lcom/narvii/util/dialog/AlertDialog;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaPickerFragment$5;Lcom/narvii/util/dialog/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/MediaPickerFragment$5$1;->this$1:Lcom/narvii/media/MediaPickerFragment$5;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/media/MediaPickerFragment$5$1;->val$pastDlg:Lcom/narvii/util/dialog/AlertDialog;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/narvii/media/MediaPickerFragment$5$1;Lcom/narvii/app/NVDialog;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/media/MediaPickerFragment$5$1;->lambda$onClick$0(Lcom/narvii/app/NVDialog;Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$onClick$0(Lcom/narvii/app/NVDialog;Ljava/util/List;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment$5$1;->this$1:Lcom/narvii/media/MediaPickerFragment$5;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/narvii/media/MediaPickerFragment$5;->this$0:Lcom/narvii/media/MediaPickerFragment;

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p2, v1}, Lcom/narvii/media/MediaPickerFragment;->s(Lcom/narvii/media/MediaPickerFragment;Ljava/util/List;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 20
    return-void
.end method

.method public static safedk_MediaPickerFragment_startActivityForResult_b7c3b91dc8a174550ffac056e1f2ca9b(Lcom/narvii/media/MediaPickerFragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/media/MediaPickerFragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/media/MediaPickerFragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/media/MediaPickerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/media/MediaPickerFragment$5$1;->val$pastDlg:Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/util/dialog/AlertDialog;->getEditText()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Landroid/content/Intent;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    const-string v2, "ndc://fragment/"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-class v2, Lcom/narvii/media/YoutubeVideoPicker;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    const-string v2, "android.intent.action.VIEW"

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 49
    .line 50
    const-string v1, "url"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    .line 55
    const-string p1, "confirmUrl"

    .line 56
    const/4 v1, 0x1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    .line 61
    iget-object p1, p0, Lcom/narvii/media/MediaPickerFragment$5$1;->this$1:Lcom/narvii/media/MediaPickerFragment$5;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/narvii/media/MediaPickerFragment$5;->this$0:Lcom/narvii/media/MediaPickerFragment;

    .line 64
    .line 65
    iget-object p1, p1, Lcom/narvii/media/MediaPickerFragment;->pickCallback:Ljava/lang/String;

    .line 66
    .line 67
    const-string v1, "pickCallback"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    .line 72
    iget-object p1, p0, Lcom/narvii/media/MediaPickerFragment$5$1;->this$1:Lcom/narvii/media/MediaPickerFragment$5;

    .line 73
    .line 74
    iget-object p1, p1, Lcom/narvii/media/MediaPickerFragment$5;->this$0:Lcom/narvii/media/MediaPickerFragment;

    .line 75
    .line 76
    iget-object p1, p1, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    .line 77
    .line 78
    const-string v1, "pickCallbackParams"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 82
    .line 83
    iget-object p1, p0, Lcom/narvii/media/MediaPickerFragment$5$1;->this$1:Lcom/narvii/media/MediaPickerFragment$5;

    .line 84
    .line 85
    iget-object p1, p1, Lcom/narvii/media/MediaPickerFragment$5;->this$0:Lcom/narvii/media/MediaPickerFragment;

    .line 86
    .line 87
    iget-object p1, p1, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    .line 88
    .line 89
    if-eqz p1, :cond_0

    .line 90
    .line 91
    const-string v1, "needDuration"

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 95
    move-result p1

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    .line 100
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/MediaPickerFragment$5$1;->this$1:Lcom/narvii/media/MediaPickerFragment$5;

    .line 101
    .line 102
    iget-object p1, p1, Lcom/narvii/media/MediaPickerFragment$5;->this$0:Lcom/narvii/media/MediaPickerFragment;

    .line 103
    .line 104
    .line 105
    const v1, 0xfd05

    .line 106
    .line 107
    .line 108
    invoke-static {p1, v0, v1}, Lcom/narvii/media/MediaPickerFragment$5$1;->safedk_MediaPickerFragment_startActivityForResult_b7c3b91dc8a174550ffac056e1f2ca9b(Lcom/narvii/media/MediaPickerFragment;Landroid/content/Intent;I)V

    .line 109
    goto :goto_0

    .line 110
    .line 111
    .line 112
    :cond_1
    invoke-static {p1}, Lcom/narvii/util/YoutubeUtils;->getYoutubePlaylistIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    if-eqz v0, :cond_2

    .line 116
    .line 117
    new-instance v0, Lcom/narvii/app/NVDialog;

    .line 118
    .line 119
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment$5$1;->this$1:Lcom/narvii/media/MediaPickerFragment$5;

    .line 120
    .line 121
    iget-object v1, v1, Lcom/narvii/media/MediaPickerFragment$5;->this$0:Lcom/narvii/media/MediaPickerFragment;

    .line 122
    .line 123
    sget v2, Lcom/narvii/lib/R$style;->CustomDialogWithAnimation:I

    .line 124
    .line 125
    .line 126
    invoke-direct {v0, v1, v2}, Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 127
    .line 128
    new-instance v1, Lcom/narvii/media/YoutubePlaylistLayout;

    .line 129
    .line 130
    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment$5$1;->this$1:Lcom/narvii/media/MediaPickerFragment$5;

    .line 131
    .line 132
    iget-object v2, v2, Lcom/narvii/media/MediaPickerFragment$5;->this$0:Lcom/narvii/media/MediaPickerFragment;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 136
    move-result-object v2

    .line 137
    .line 138
    .line 139
    invoke-direct {v1, v2}, Lcom/narvii/media/YoutubePlaylistLayout;-><init>(Landroid/content/Context;)V

    .line 140
    .line 141
    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment$5$1;->this$1:Lcom/narvii/media/MediaPickerFragment$5;

    .line 142
    .line 143
    iget-object v2, v2, Lcom/narvii/media/MediaPickerFragment$5;->this$0:Lcom/narvii/media/MediaPickerFragment;

    .line 144
    .line 145
    .line 146
    invoke-static {v2}, Lcom/narvii/media/MediaPickerFragment;->o(Lcom/narvii/media/MediaPickerFragment;)I

    .line 147
    move-result v2

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, p1, v2}, Lcom/narvii/media/YoutubePlaylistLayout;->setData(Ljava/lang/String;I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 154
    .line 155
    new-instance p1, Lcom/narvii/media/c;

    .line 156
    .line 157
    .line 158
    invoke-direct {p1, p0, v0}, Lcom/narvii/media/c;-><init>(Lcom/narvii/media/MediaPickerFragment$5$1;Lcom/narvii/app/NVDialog;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, p1}, Lcom/narvii/media/YoutubePlaylistLayout;->setPlaylistPickerListener(Lcom/narvii/media/YoutubePlaylistLayout$PlaylistPickerListener;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 165
    goto :goto_0

    .line 166
    .line 167
    :cond_2
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 168
    .line 169
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment$5$1;->this$1:Lcom/narvii/media/MediaPickerFragment$5;

    .line 170
    .line 171
    iget-object v0, v0, Lcom/narvii/media/MediaPickerFragment$5;->this$0:Lcom/narvii/media/MediaPickerFragment;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 175
    move-result-object v0

    .line 176
    .line 177
    .line 178
    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 179
    .line 180
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment$5$1;->this$1:Lcom/narvii/media/MediaPickerFragment$5;

    .line 181
    .line 182
    iget-object v0, v0, Lcom/narvii/media/MediaPickerFragment$5;->this$0:Lcom/narvii/media/MediaPickerFragment;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 186
    move-result-object v0

    .line 187
    .line 188
    sget v1, Lcom/narvii/lib/R$string;->invalid_link_error:I

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 192
    move-result-object v0

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 196
    .line 197
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment$5$1;->this$1:Lcom/narvii/media/MediaPickerFragment$5;

    .line 198
    .line 199
    iget-object v0, v0, Lcom/narvii/media/MediaPickerFragment$5;->this$0:Lcom/narvii/media/MediaPickerFragment;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 203
    move-result-object v0

    .line 204
    .line 205
    .line 206
    const v1, 0x104000a

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 210
    move-result-object v0

    .line 211
    .line 212
    new-instance v1, Lcom/narvii/media/MediaPickerFragment$5$1$1;

    .line 213
    .line 214
    .line 215
    invoke-direct {v1, p0, p1}, Lcom/narvii/media/MediaPickerFragment$5$1$1;-><init>(Lcom/narvii/media/MediaPickerFragment$5$1;Lcom/narvii/widget/ACMAlertDialog;)V

    .line 216
    .line 217
    .line 218
    const v2, -0x444445

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, v0, v2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 225
    :goto_0
    return-void
.end method
