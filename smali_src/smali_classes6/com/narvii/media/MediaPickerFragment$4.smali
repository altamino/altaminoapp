.class Lcom/narvii/media/MediaPickerFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/MediaPickerFragment;->showYoutubeDialogue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/MediaPickerFragment;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaPickerFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/MediaPickerFragment$4;->this$0:Lcom/narvii/media/MediaPickerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
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
    .locals 2

    .line 1
    .line 2
    new-instance p1, Landroid/content/Intent;

    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v1, "ndc://fragment/"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-class v1, Lcom/narvii/media/YoutubeVideoPicker;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    const-string v1, "android.intent.action.VIEW"

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment$4;->this$0:Lcom/narvii/media/MediaPickerFragment;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/narvii/media/MediaPickerFragment;->pickCallback:Ljava/lang/String;

    .line 39
    .line 40
    const-string v1, "pickCallback"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment$4;->this$0:Lcom/narvii/media/MediaPickerFragment;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    .line 48
    .line 49
    const-string v1, "pickCallbackParams"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment$4;->this$0:Lcom/narvii/media/MediaPickerFragment;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    .line 57
    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    const-string v1, "needDuration"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 64
    move-result v0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    .line 69
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment$4;->this$0:Lcom/narvii/media/MediaPickerFragment;

    .line 70
    .line 71
    .line 72
    const v1, 0xfd05

    .line 73
    .line 74
    .line 75
    invoke-static {v0, p1, v1}, Lcom/narvii/media/MediaPickerFragment$4;->safedk_MediaPickerFragment_startActivityForResult_b7c3b91dc8a174550ffac056e1f2ca9b(Lcom/narvii/media/MediaPickerFragment;Landroid/content/Intent;I)V

    .line 76
    return-void
.end method
