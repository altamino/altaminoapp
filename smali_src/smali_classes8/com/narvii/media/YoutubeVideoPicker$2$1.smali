.class Lcom/narvii/media/YoutubeVideoPicker$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/youtube/YoutubeVideoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/YoutubeVideoPicker$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/media/YoutubeVideoPicker$2;

.field final synthetic val$m:Lcom/narvii/model/Media;


# direct methods
.method constructor <init>(Lcom/narvii/media/YoutubeVideoPicker$2;Lcom/narvii/model/Media;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/YoutubeVideoPicker$2$1;->this$1:Lcom/narvii/media/YoutubeVideoPicker$2;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/media/YoutubeVideoPicker$2$1;->val$m:Lcom/narvii/model/Media;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/media/YoutubeVideoPicker$2$1;->this$1:Lcom/narvii/media/YoutubeVideoPicker$2;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/media/YoutubeVideoPicker$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 8
    .line 9
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 10
    .line 11
    iget-object p2, p0, Lcom/narvii/media/YoutubeVideoPicker$2$1;->this$1:Lcom/narvii/media/YoutubeVideoPicker$2;

    .line 12
    .line 13
    iget-object p2, p2, Lcom/narvii/media/YoutubeVideoPicker$2;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    sget p2, Lcom/narvii/lib/R$string;->media_youtube_verify_fail_title:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 26
    .line 27
    sget p2, Lcom/narvii/lib/R$string;->media_video_picker_unavailable:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 31
    .line 32
    .line 33
    const p2, 0x104000a

    .line 34
    .line 35
    sget-object p3, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 39
    .line 40
    iget-object p2, p0, Lcom/narvii/media/YoutubeVideoPicker$2$1;->this$1:Lcom/narvii/media/YoutubeVideoPicker$2;

    .line 41
    .line 42
    iget-object p2, p2, Lcom/narvii/media/YoutubeVideoPicker$2;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    if-eqz p2, :cond_0

    .line 49
    .line 50
    iget-object p2, p0, Lcom/narvii/media/YoutubeVideoPicker$2$1;->this$1:Lcom/narvii/media/YoutubeVideoPicker$2;

    .line 51
    .line 52
    iget-object p2, p2, Lcom/narvii/media/YoutubeVideoPicker$2;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 56
    move-result-object p2

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    .line 60
    move-result p2

    .line 61
    .line 62
    if-nez p2, :cond_0

    .line 63
    .line 64
    .line 65
    :try_start_0
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception p1

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 75
    :cond_0
    :goto_0
    return-void
.end method

.method public onFinish(Ljava/lang/String;Lcom/narvii/youtube/YoutubeVideoList;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/media/YoutubeVideoPicker$2$1;->this$1:Lcom/narvii/media/YoutubeVideoPicker$2;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/media/YoutubeVideoPicker$2;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    .line 5
    .line 6
    const-string p2, "needDuration"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/media/YoutubeVideoPicker$2$1;->this$1:Lcom/narvii/media/YoutubeVideoPicker$2;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/narvii/media/YoutubeVideoPicker$2;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    .line 17
    .line 18
    iget-object p2, p0, Lcom/narvii/media/YoutubeVideoPicker$2$1;->val$m:Lcom/narvii/model/Media;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lcom/narvii/media/YoutubeVideoPicker;->fillAdditionalMediaInfo(Lcom/narvii/model/Media;)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/YoutubeVideoPicker$2$1;->this$1:Lcom/narvii/media/YoutubeVideoPicker$2;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/narvii/media/YoutubeVideoPicker$2;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    .line 27
    .line 28
    iget-object p2, p0, Lcom/narvii/media/YoutubeVideoPicker$2$1;->val$m:Lcom/narvii/model/Media;

    .line 29
    .line 30
    .line 31
    invoke-static {p1, p2}, Lcom/narvii/media/YoutubeVideoPicker;->w(Lcom/narvii/media/YoutubeVideoPicker;Lcom/narvii/model/Media;)V

    .line 32
    :goto_0
    return-void
.end method
