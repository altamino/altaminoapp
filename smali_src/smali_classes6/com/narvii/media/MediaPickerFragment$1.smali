.class Lcom/narvii/media/MediaPickerFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/MediaPickerFragment;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ActionSheetDialog;

.field final synthetic val$li:Lcom/narvii/media/MediaPickerFragment$LatestImage;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaPickerFragment;Lcom/narvii/media/MediaPickerFragment$LatestImage;Lcom/narvii/util/dialog/ActionSheetDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/MediaPickerFragment$1;->this$0:Lcom/narvii/media/MediaPickerFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/media/MediaPickerFragment$1;->val$li:Lcom/narvii/media/MediaPickerFragment$LatestImage;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/media/MediaPickerFragment$1;->val$dlg:Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    new-instance p1, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment$1;->this$0:Lcom/narvii/media/MediaPickerFragment;

    .line 8
    .line 9
    const-string v1, "photo"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/photos/PhotoManager;

    .line 16
    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment$1;->this$0:Lcom/narvii/media/MediaPickerFragment;

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Lcom/narvii/media/MediaPickerFragment;->n(Lcom/narvii/media/MediaPickerFragment;)Ljava/io/File;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment$1;->this$0:Lcom/narvii/media/MediaPickerFragment;

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lcom/narvii/media/MediaPickerFragment;->p(Lcom/narvii/media/MediaPickerFragment;)Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    iget-boolean v1, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isGalleryNoCopy:Z

    .line 32
    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment$1;->this$0:Lcom/narvii/media/MediaPickerFragment;

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lcom/narvii/media/MediaPickerFragment;->n(Lcom/narvii/media/MediaPickerFragment;)Ljava/io/File;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    new-instance v2, Ljava/io/File;

    .line 42
    .line 43
    iget-object v3, p0, Lcom/narvii/media/MediaPickerFragment$1;->val$li:Lcom/narvii/media/MediaPickerFragment$LatestImage;

    .line 44
    .line 45
    iget-object v3, v3, Lcom/narvii/media/MediaPickerFragment$LatestImage;->path:Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/narvii/photos/PhotoManager;->importPhoto(Ljava/io/File;Landroid/net/Uri;)Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p1

    .line 59
    goto :goto_1

    .line 60
    .line 61
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment$1;->val$li:Lcom/narvii/media/MediaPickerFragment$LatestImage;

    .line 64
    .line 65
    iget-object v2, v2, Lcom/narvii/media/MediaPickerFragment$LatestImage;->path:Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/narvii/photos/PhotoManager;->getUri(Ljava/io/File;)Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    :goto_0
    new-instance v1, Lcom/narvii/model/Media;

    .line 75
    .line 76
    .line 77
    invoke-direct {v1}, Lcom/narvii/model/Media;-><init>()V

    .line 78
    .line 79
    const/16 v2, 0x64

    .line 80
    .line 81
    iput v2, v1, Lcom/narvii/model/Media;->type:I

    .line 82
    .line 83
    iput-object v0, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment$1;->this$0:Lcom/narvii/media/MediaPickerFragment;

    .line 89
    .line 90
    iget-object v1, v0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    .line 91
    .line 92
    if-nez v1, :cond_1

    .line 93
    .line 94
    new-instance v1, Landroid/os/Bundle;

    .line 95
    .line 96
    .line 97
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 98
    .line 99
    iput-object v1, v0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    .line 100
    .line 101
    :cond_1
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment$1;->this$0:Lcom/narvii/media/MediaPickerFragment;

    .line 102
    .line 103
    iget-object v0, v0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    .line 104
    .line 105
    const-string v1, "pickSource"

    .line 106
    .line 107
    const-string v2, "Latest Photo"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment$1;->this$0:Lcom/narvii/media/MediaPickerFragment;

    .line 113
    .line 114
    iget-object v0, v0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    .line 115
    .line 116
    const-string v1, "pickFrom"

    .line 117
    const/4 v2, 0x2

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 121
    .line 122
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment$1;->this$0:Lcom/narvii/media/MediaPickerFragment;

    .line 123
    .line 124
    .line 125
    invoke-static {v0, p1}, Lcom/narvii/media/MediaPickerFragment;->r(Lcom/narvii/media/MediaPickerFragment;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    goto :goto_2

    .line 127
    .line 128
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    const-string v1, "fail to import image from "

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment$1;->val$li:Lcom/narvii/media/MediaPickerFragment$LatestImage;

    .line 139
    .line 140
    iget-object v1, v1, Lcom/narvii/media/MediaPickerFragment$LatestImage;->path:Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object v0

    .line 148
    .line 149
    .line 150
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    .line 152
    :goto_2
    iget-object p1, p0, Lcom/narvii/media/MediaPickerFragment$1;->this$0:Lcom/narvii/media/MediaPickerFragment;

    .line 153
    .line 154
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment$1;->val$li:Lcom/narvii/media/MediaPickerFragment$LatestImage;

    .line 155
    .line 156
    .line 157
    invoke-static {p1, v0}, Lcom/narvii/media/MediaPickerFragment;->q(Lcom/narvii/media/MediaPickerFragment;Lcom/narvii/media/MediaPickerFragment$LatestImage;)V

    .line 158
    .line 159
    iget-object p1, p0, Lcom/narvii/media/MediaPickerFragment$1;->val$dlg:Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 163
    return-void
.end method
