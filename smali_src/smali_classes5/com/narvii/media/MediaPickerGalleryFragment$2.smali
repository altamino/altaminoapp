.class Lcom/narvii/media/MediaPickerGalleryFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/MediaPickerGalleryFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/MediaPickerGalleryFragment;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaPickerGalleryFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/media/MediaPickerGalleryFragment;->getCurrentMediaItem()Lcom/narvii/media/MediaSelectItem;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_6

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    .line 11
    .line 12
    const-string v1, "single"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    .line 22
    .line 23
    .line 24
    invoke-static {v0, p1}, Lcom/narvii/media/MediaPickerGalleryFragment;->q(Lcom/narvii/media/MediaPickerGalleryFragment;Lcom/narvii/media/MediaSelectItem;)Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    return-void

    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/narvii/media/MediaPickerGalleryFragment;->o(Lcom/narvii/media/MediaPickerGalleryFragment;Z)V

    .line 34
    .line 35
    new-instance v0, Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 39
    .line 40
    const-string v1, "mediaItem"

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    .line 49
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    .line 50
    const/4 v1, -0x1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 59
    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    :cond_1
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/narvii/media/MediaPickerGalleryFragment;->selectedItemList:Ljava/util/List;

    .line 65
    .line 66
    .line 67
    invoke-interface {p1}, Lcom/narvii/media/MediaSelectItem;->getUniqueKey()Ljava/lang/Object;

    .line 68
    move-result-object v2

    .line 69
    .line 70
    .line 71
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 72
    move-result v0

    .line 73
    const/4 v2, 0x0

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/narvii/media/MediaPickerGalleryFragment;->selectedItemList:Ljava/util/List;

    .line 80
    .line 81
    .line 82
    invoke-interface {p1}, Lcom/narvii/media/MediaSelectItem;->getUniqueKey()Ljava/lang/Object;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    .line 86
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 87
    .line 88
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    .line 89
    .line 90
    .line 91
    invoke-static {p1, v2}, Lcom/narvii/media/MediaPickerGalleryFragment;->o(Lcom/narvii/media/MediaPickerGalleryFragment;Z)V

    .line 92
    goto :goto_1

    .line 93
    .line 94
    :cond_2
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    .line 95
    .line 96
    .line 97
    invoke-static {v0, p1}, Lcom/narvii/media/MediaPickerGalleryFragment;->q(Lcom/narvii/media/MediaPickerGalleryFragment;Lcom/narvii/media/MediaSelectItem;)Z

    .line 98
    move-result v0

    .line 99
    .line 100
    if-nez v0, :cond_3

    .line 101
    return-void

    .line 102
    .line 103
    :cond_3
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    .line 104
    .line 105
    .line 106
    invoke-static {v0}, Lcom/narvii/media/MediaPickerGalleryFragment;->n(Lcom/narvii/media/MediaPickerGalleryFragment;)I

    .line 107
    move-result v0

    .line 108
    .line 109
    if-lez v0, :cond_5

    .line 110
    .line 111
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    .line 112
    .line 113
    iget-object v0, v0, Lcom/narvii/media/MediaPickerGalleryFragment;->selectedItemList:Ljava/util/List;

    .line 114
    .line 115
    .line 116
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 117
    move-result v0

    .line 118
    .line 119
    iget-object v3, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    .line 120
    .line 121
    .line 122
    invoke-static {v3}, Lcom/narvii/media/MediaPickerGalleryFragment;->n(Lcom/narvii/media/MediaPickerGalleryFragment;)I

    .line 123
    move-result v3

    .line 124
    .line 125
    if-lt v0, v3, :cond_5

    .line 126
    .line 127
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    .line 128
    .line 129
    const-string v0, "maxStr"

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    move-result-object p1

    .line 134
    .line 135
    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 137
    move-result v0

    .line 138
    .line 139
    if-eqz v0, :cond_4

    .line 140
    .line 141
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 145
    move-result-object p1

    .line 146
    .line 147
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    .line 148
    .line 149
    sget v3, Lcom/narvii/lib/R$string;->media_image_picker_hit_max_count:I

    .line 150
    .line 151
    new-array v1, v1, [Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    invoke-static {v0}, Lcom/narvii/media/MediaPickerGalleryFragment;->n(Lcom/narvii/media/MediaPickerGalleryFragment;)I

    .line 155
    move-result v4

    .line 156
    .line 157
    .line 158
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    move-result-object v4

    .line 160
    .line 161
    aput-object v4, v1, v2

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v3, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 165
    move-result-object v0

    .line 166
    .line 167
    .line 168
    invoke-static {p1, v0, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 169
    move-result-object p1

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 173
    goto :goto_0

    .line 174
    .line 175
    :cond_4
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 179
    move-result-object v0

    .line 180
    .line 181
    .line 182
    invoke-static {v0, p1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 183
    move-result-object p1

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 187
    :goto_0
    return-void

    .line 188
    .line 189
    :cond_5
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    .line 190
    .line 191
    iget-object v0, v0, Lcom/narvii/media/MediaPickerGalleryFragment;->selectedItemList:Ljava/util/List;

    .line 192
    .line 193
    .line 194
    invoke-interface {p1}, Lcom/narvii/media/MediaSelectItem;->getUniqueKey()Ljava/lang/Object;

    .line 195
    move-result-object p1

    .line 196
    .line 197
    .line 198
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    .line 201
    .line 202
    .line 203
    invoke-static {p1, v1}, Lcom/narvii/media/MediaPickerGalleryFragment;->o(Lcom/narvii/media/MediaPickerGalleryFragment;Z)V

    .line 204
    .line 205
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    .line 206
    .line 207
    .line 208
    invoke-static {p1}, Lcom/narvii/media/MediaPickerGalleryFragment;->p(Lcom/narvii/media/MediaPickerGalleryFragment;)V

    .line 209
    :cond_6
    :goto_1
    return-void
.end method
