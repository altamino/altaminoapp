.class Lcom/narvii/widget/BackgroundPickerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/BackgroundPickerView;->setMediaPicker(Lcom/narvii/media/MediaPickerFragment;Ljava/io/File;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/BackgroundPickerView;

.field final synthetic val$draftDir:Ljava/io/File;

.field final synthetic val$flag:I

.field final synthetic val$mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;


# direct methods
.method constructor <init>(Lcom/narvii/widget/BackgroundPickerView;Lcom/narvii/media/MediaPickerFragment;ILjava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/BackgroundPickerView$1;->this$0:Lcom/narvii/widget/BackgroundPickerView;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/widget/BackgroundPickerView$1;->val$mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/widget/BackgroundPickerView$1;->val$flag:I

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/widget/BackgroundPickerView$1;->val$draftDir:Ljava/io/File;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/BackgroundPickerView$1;->this$0:Lcom/narvii/widget/BackgroundPickerView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/widget/BackgroundPickerView;->a(Lcom/narvii/widget/BackgroundPickerView;)Lcom/narvii/widget/BackgroundPickerView$OnPrePickCallback;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/widget/BackgroundPickerView$1;->this$0:Lcom/narvii/widget/BackgroundPickerView;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/widget/BackgroundPickerView;->a(Lcom/narvii/widget/BackgroundPickerView;)Lcom/narvii/widget/BackgroundPickerView$OnPrePickCallback;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1}, Lcom/narvii/widget/BackgroundPickerView$OnPrePickCallback;->onPrePick(Landroid/view/View;)V

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/BackgroundPickerView$1;->this$0:Lcom/narvii/widget/BackgroundPickerView;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/narvii/widget/BackgroundPickerView;->backgroundPost:Lcom/narvii/image/BackgroundSource;

    .line 22
    .line 23
    if-eqz p1, :cond_4

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/widget/BackgroundPickerView$1;->val$mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    .line 31
    .line 32
    .line 33
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string/jumbo v0, "type"

    .line 37
    .line 38
    const/16 v1, 0x2710

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 42
    .line 43
    iget v0, p0, Lcom/narvii/widget/BackgroundPickerView$1;->val$flag:I

    .line 44
    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    const/16 v0, 0x8e

    .line 48
    .line 49
    :cond_2
    iget-object v1, p0, Lcom/narvii/widget/BackgroundPickerView$1;->this$0:Lcom/narvii/widget/BackgroundPickerView;

    .line 50
    .line 51
    iget-object v1, v1, Lcom/narvii/widget/BackgroundPickerView;->backgroundPost:Lcom/narvii/image/BackgroundSource;

    .line 52
    .line 53
    .line 54
    invoke-interface {v1}, Lcom/narvii/image/BackgroundSource;->hasBackground()Z

    .line 55
    move-result v1

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    or-int/lit8 v0, v0, 0x40

    .line 60
    .line 61
    iget-object v1, p0, Lcom/narvii/widget/BackgroundPickerView$1;->val$mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 62
    .line 63
    .line 64
    const v2, 0x7f120fda

    .line 65
    .line 66
    iput v2, v1, Lcom/narvii/media/MediaPickerFragment;->deleteStringId:I

    .line 67
    .line 68
    :cond_3
    iget-object v1, p0, Lcom/narvii/widget/BackgroundPickerView$1;->val$mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 69
    .line 70
    .line 71
    const v2, 0x7f120e84

    .line 72
    .line 73
    iput v2, v1, Lcom/narvii/media/MediaPickerFragment;->pickColorStringId:I

    .line 74
    .line 75
    iget-object v2, p0, Lcom/narvii/widget/BackgroundPickerView$1;->this$0:Lcom/narvii/widget/BackgroundPickerView;

    .line 76
    .line 77
    iget-object v2, v2, Lcom/narvii/widget/BackgroundPickerView;->backgroundPost:Lcom/narvii/image/BackgroundSource;

    .line 78
    .line 79
    .line 80
    invoke-interface {v2}, Lcom/narvii/image/BackgroundSource;->getBackgroundColor()I

    .line 81
    move-result v2

    .line 82
    .line 83
    iput v2, v1, Lcom/narvii/media/MediaPickerFragment;->oldColor:I

    .line 84
    .line 85
    iget-object v1, p0, Lcom/narvii/widget/BackgroundPickerView$1;->val$mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 86
    .line 87
    iget-object v2, p0, Lcom/narvii/widget/BackgroundPickerView$1;->val$draftDir:Ljava/io/File;

    .line 88
    const/4 v3, 0x0

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    .line 92
    :cond_4
    :goto_0
    return-void
.end method
