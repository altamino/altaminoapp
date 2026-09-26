.class Lcom/narvii/blog/post/LinkPostActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/crawler/LinkPreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/blog/post/LinkPostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/blog/post/LinkPostActivity;


# direct methods
.method constructor <init>(Lcom/narvii/blog/post/LinkPostActivity;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onPos(Lcom/narvii/util/crawler/SourceContent;Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_5

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-nez v0, :cond_4

    .line 29
    .line 30
    if-eqz p2, :cond_1

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_1
    iget-object p2, p0, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 34
    .line 35
    new-instance v0, Lcom/narvii/model/LinkSummary;

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, p1}, Lcom/narvii/model/LinkSummary;-><init>(Lcom/narvii/util/crawler/SourceContent;)V

    .line 39
    .line 40
    iput-object v0, p2, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 43
    .line 44
    iget-object p2, p1, Lcom/narvii/blog/post/LinkPostActivity;->linkUrl:Ljava/lang/String;

    .line 45
    .line 46
    if-eqz p2, :cond_2

    .line 47
    .line 48
    iget-object p1, p1, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 49
    .line 50
    .line 51
    invoke-static {p2}, Lcom/narvii/util/crawler/TextCrawler;->extendedTrim(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object p2

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Lcom/narvii/model/LinkSummary;->setLink(Ljava/lang/String;)V

    .line 56
    .line 57
    :cond_2
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/narvii/blog/post/LinkPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 61
    move-result-object p2

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Lcom/narvii/blog/post/LinkPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 65
    .line 66
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 77
    .line 78
    iget-object p1, p1, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    move-result p1

    .line 89
    .line 90
    if-nez p1, :cond_3

    .line 91
    .line 92
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 93
    .line 94
    iget-object p1, p1, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 101
    .line 102
    const-string p2, "ytv://"

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 106
    move-result p1

    .line 107
    .line 108
    if-nez p1, :cond_3

    .line 109
    .line 110
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 111
    .line 112
    iget-object p2, p1, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2}, Lcom/narvii/model/LinkSummary;->getFirstMediaUrl()Ljava/lang/String;

    .line 116
    move-result-object p2

    .line 117
    .line 118
    new-instance v0, Lcom/narvii/blog/post/LinkPostActivity$4$1;

    .line 119
    .line 120
    .line 121
    invoke-direct {v0, p0}, Lcom/narvii/blog/post/LinkPostActivity$4$1;-><init>(Lcom/narvii/blog/post/LinkPostActivity$4;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, p2, v0}, Lcom/narvii/blog/post/LinkPostActivity;->saveImage(Ljava/lang/String;Lcom/narvii/blog/post/LinkPostActivity$SaveImageCallBack;)V

    .line 125
    goto :goto_1

    .line 126
    .line 127
    :cond_3
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 128
    .line 129
    iget-object p2, p1, Lcom/narvii/blog/post/BlogPostActivity;->editTitle:Landroid/widget/EditText;

    .line 130
    .line 131
    iget-object p1, p1, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/narvii/model/LinkSummary;->getTitle()Ljava/lang/String;

    .line 135
    move-result-object p1

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    .line 140
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 141
    .line 142
    .line 143
    invoke-static {p1}, Lcom/narvii/blog/post/LinkPostActivity;->A(Lcom/narvii/blog/post/LinkPostActivity;)V

    .line 144
    goto :goto_1

    .line 145
    .line 146
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 147
    .line 148
    iget-object p1, p1, Lcom/narvii/blog/post/LinkPostActivity;->postPreviewLayout:Lcom/narvii/blog/post/LinkPostPreviewLayout;

    .line 149
    const/4 p2, 0x1

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, p2}, Lcom/narvii/blog/post/LinkPostPreviewLayout;->showFail(Z)V

    .line 153
    .line 154
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 158
    move-result-object p1

    .line 159
    .line 160
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 161
    .line 162
    .line 163
    const v1, 0x7f120b93

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 167
    move-result-object v0

    .line 168
    .line 169
    .line 170
    invoke-static {p1, v0, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 171
    move-result-object p1

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 175
    .line 176
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 177
    .line 178
    .line 179
    invoke-static {p1}, Lcom/narvii/blog/post/LinkPostActivity;->A(Lcom/narvii/blog/post/LinkPostActivity;)V

    .line 180
    .line 181
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Lcom/narvii/blog/post/LinkPostActivity;->showLinkPasteDialog()V

    .line 185
    .line 186
    :goto_1
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 187
    const/4 p2, 0x0

    .line 188
    .line 189
    iput-boolean p2, p1, Lcom/narvii/blog/post/LinkPostActivity;->isHandingUrl:Z

    .line 190
    :cond_5
    :goto_2
    return-void
.end method

.method public onPre()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/blog/post/LinkPostActivity;->parseLoadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 12
    const/4 v1, 0x1

    .line 13
    .line 14
    iput-boolean v1, v0, Lcom/narvii/blog/post/LinkPostActivity;->isHandingUrl:Z

    .line 15
    return-void
.end method
