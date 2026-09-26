.class Lcom/narvii/blog/post/LinkPostActivity$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/blog/post/LinkPostActivity$SaveImageCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/post/LinkPostActivity$4;->onPos(Lcom/narvii/util/crawler/SourceContent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/blog/post/LinkPostActivity$4;


# direct methods
.method constructor <init>(Lcom/narvii/blog/post/LinkPostActivity$4;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$4$1;->this$1:Lcom/narvii/blog/post/LinkPostActivity$4;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onSaveFail(Ljava/io/File;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$4$1;->this$1:Lcom/narvii/blog/post/LinkPostActivity$4;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 5
    .line 6
    iget-object v0, p1, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    iput-object v1, v0, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPostActivity;->editTitle:Landroid/widget/EditText;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/model/LinkSummary;->getTitle()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$4$1;->this$1:Lcom/narvii/blog/post/LinkPostActivity$4;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/blog/post/LinkPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/narvii/blog/post/LinkPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$4$1;->this$1:Lcom/narvii/blog/post/LinkPostActivity$4;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/narvii/blog/post/LinkPostActivity;->A(Lcom/narvii/blog/post/LinkPostActivity;)V

    .line 39
    return-void
.end method

.method public onSaveSuccess(Ljava/io/File;)V
    .locals 4

    .line 1
    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    const-string v2, "download_link_thumb width: "

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v2, " height: "

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-static {v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 47
    .line 48
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 49
    .line 50
    const/16 v2, 0x64

    .line 51
    .line 52
    if-le v1, v2, :cond_1

    .line 53
    .line 54
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 55
    .line 56
    if-gt v0, v2, :cond_0

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_0
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity$4$1;->this$1:Lcom/narvii/blog/post/LinkPostActivity$4;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    iget-object v1, p0, Lcom/narvii/blog/post/LinkPostActivity$4$1;->this$1:Lcom/narvii/blog/post/LinkPostActivity$4;

    .line 70
    .line 71
    iget-object v1, v1, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 72
    .line 73
    iget-object v2, v1, Lcom/narvii/blog/post/LinkPostActivity;->photo:Lcom/narvii/photos/PhotoManager;

    .line 74
    .line 75
    .line 76
    invoke-static {v1}, Lcom/narvii/blog/post/LinkPostActivity;->access$100(Lcom/narvii/blog/post/LinkPostActivity;)Lcom/narvii/post/DraftManager;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    iget-object v3, p0, Lcom/narvii/blog/post/LinkPostActivity$4$1;->this$1:Lcom/narvii/blog/post/LinkPostActivity$4;

    .line 80
    .line 81
    iget-object v3, v3, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 82
    .line 83
    .line 84
    invoke-static {v3}, Lcom/narvii/blog/post/LinkPostActivity;->access$000(Lcom/narvii/blog/post/LinkPostActivity;)Ljava/lang/String;

    .line 85
    move-result-object v3

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v3}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    .line 92
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v1, p1}, Lcom/narvii/photos/PhotoManager;->importPhoto(Ljava/io/File;Landroid/net/Uri;)Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    iput-object p1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 100
    goto :goto_1

    .line 101
    :catchall_0
    move-exception p1

    .line 102
    goto :goto_4

    .line 103
    :catch_0
    move-exception p1

    .line 104
    goto :goto_3

    .line 105
    .line 106
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$4$1;->this$1:Lcom/narvii/blog/post/LinkPostActivity$4;

    .line 107
    .line 108
    iget-object p1, p1, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 109
    .line 110
    iget-object p1, p1, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 111
    const/4 v0, 0x0

    .line 112
    .line 113
    iput-object v0, p1, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .line 115
    :goto_1
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$4$1;->this$1:Lcom/narvii/blog/post/LinkPostActivity$4;

    .line 116
    .line 117
    iget-object p1, p1, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 118
    .line 119
    iget-object v0, p1, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 120
    .line 121
    if-eqz v0, :cond_2

    .line 122
    .line 123
    :goto_2
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPostActivity;->editTitle:Landroid/widget/EditText;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/narvii/model/LinkSummary;->getTitle()Ljava/lang/String;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    :cond_2
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$4$1;->this$1:Lcom/narvii/blog/post/LinkPostActivity$4;

    .line 133
    .line 134
    iget-object p1, p1, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/narvii/blog/post/LinkPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 138
    move-result-object v0

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v0}, Lcom/narvii/blog/post/LinkPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 142
    .line 143
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$4$1;->this$1:Lcom/narvii/blog/post/LinkPostActivity$4;

    .line 144
    .line 145
    iget-object p1, p1, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 146
    .line 147
    .line 148
    invoke-static {p1}, Lcom/narvii/blog/post/LinkPostActivity;->A(Lcom/narvii/blog/post/LinkPostActivity;)V

    .line 149
    goto :goto_5

    .line 150
    .line 151
    .line 152
    :goto_3
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    .line 154
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$4$1;->this$1:Lcom/narvii/blog/post/LinkPostActivity$4;

    .line 155
    .line 156
    iget-object p1, p1, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 157
    .line 158
    iget-object v0, p1, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 159
    .line 160
    if-eqz v0, :cond_2

    .line 161
    goto :goto_2

    .line 162
    .line 163
    :goto_4
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity$4$1;->this$1:Lcom/narvii/blog/post/LinkPostActivity$4;

    .line 164
    .line 165
    iget-object v0, v0, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 166
    .line 167
    iget-object v1, v0, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 168
    .line 169
    if-eqz v1, :cond_3

    .line 170
    .line 171
    iget-object v0, v0, Lcom/narvii/blog/post/BlogPostActivity;->editTitle:Landroid/widget/EditText;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Lcom/narvii/model/LinkSummary;->getTitle()Ljava/lang/String;

    .line 175
    move-result-object v1

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    .line 180
    :cond_3
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity$4$1;->this$1:Lcom/narvii/blog/post/LinkPostActivity$4;

    .line 181
    .line 182
    iget-object v0, v0, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Lcom/narvii/blog/post/LinkPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 186
    move-result-object v1

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v1}, Lcom/narvii/blog/post/LinkPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 190
    .line 191
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity$4$1;->this$1:Lcom/narvii/blog/post/LinkPostActivity$4;

    .line 192
    .line 193
    iget-object v0, v0, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 194
    .line 195
    .line 196
    invoke-static {v0}, Lcom/narvii/blog/post/LinkPostActivity;->A(Lcom/narvii/blog/post/LinkPostActivity;)V

    .line 197
    throw p1

    .line 198
    :cond_4
    :goto_5
    return-void
.end method
