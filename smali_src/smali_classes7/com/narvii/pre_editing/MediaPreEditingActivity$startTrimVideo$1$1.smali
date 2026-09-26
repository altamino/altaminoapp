.class public final Lcom/narvii/pre_editing/MediaPreEditingActivity$startTrimVideo$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pre_editing/MediaPreEditingActivity;->startTrimVideo(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $duration:J

.field final synthetic this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;


# direct methods
.method constructor <init>(Lcom/narvii/pre_editing/MediaPreEditingActivity;J)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startTrimVideo$1$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 3
    .line 4
    iput-wide p2, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startTrimVideo$1$1;->$duration:J

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onError()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startTrimVideo$1$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 3
    .line 4
    const-string v1, ""

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$showError(Lcom/narvii/pre_editing/MediaPreEditingActivity;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public onProgress(F)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startTrimVideo$1$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getDialog(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    sget-object v2, Lkotlin/jvm/internal/u0;->INSTANCE:Lkotlin/jvm/internal/u0;

    .line 14
    .line 15
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 16
    const/4 v3, 0x1

    .line 17
    .line 18
    new-array v4, v3, [Ljava/lang/Object;

    .line 19
    .line 20
    const/16 v5, 0x64

    .line 21
    int-to-float v5, v5

    .line 22
    mul-float/2addr p1, v5

    .line 23
    float-to-int p1, p1

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object p1

    .line 28
    const/4 v5, 0x0

    .line 29
    .line 30
    aput-object p1, v4, v5

    .line 31
    .line 32
    .line 33
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    const-string v3, "%d"

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    const-string v2, "format(...)"

    .line 43
    .line 44
    .line 45
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const/16 p1, 0x25

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Lcom/narvii/util/dialog/ProgressDialog;->updateProgress(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "outputFilePath"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startTrimVideo$1$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getDialog(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startTrimVideo$1$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getInputMedia$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/model/Media;

    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    const-string v2, "inputMedia"

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 29
    move-object v0, v1

    .line 30
    .line 31
    :cond_0
    const/16 v3, 0x7b

    .line 32
    .line 33
    iput v3, v0, Lcom/narvii/model/Media;->type:I

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startTrimVideo$1$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getInputMedia$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/model/Media;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 45
    move-object v0, v1

    .line 46
    .line 47
    :cond_1
    new-instance v3, Ljava/io/File;

    .line 48
    .line 49
    .line 50
    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    iput-object p1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 61
    .line 62
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startTrimVideo$1$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getInputMedia$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/model/Media;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    if-nez p1, :cond_2

    .line 69
    .line 70
    .line 71
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 72
    move-object p1, v1

    .line 73
    .line 74
    :cond_2
    iget-wide v3, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startTrimVideo$1$1;->$duration:J

    .line 75
    .line 76
    iput-wide v3, p1, Lcom/narvii/model/Media;->duration:J

    .line 77
    .line 78
    new-instance p1, Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 82
    .line 83
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startTrimVideo$1$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 84
    .line 85
    .line 86
    invoke-static {v0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getInputMedia$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/model/Media;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    if-nez v0, :cond_3

    .line 90
    .line 91
    .line 92
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 93
    goto :goto_0

    .line 94
    :cond_3
    move-object v1, v0

    .line 95
    .line 96
    .line 97
    :goto_0
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    const-string v1, "media"

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    .line 105
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startTrimVideo$1$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    const-string v1, "bundle"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 119
    .line 120
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startTrimVideo$1$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 121
    const/4 v1, -0x1

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 125
    .line 126
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startTrimVideo$1$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->finish()V

    .line 130
    return-void
.end method
