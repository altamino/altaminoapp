.class Lcom/narvii/chat/post/ThreadPostNewActivity$2;
.super Lcom/narvii/post/PostHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/post/ThreadPostNewActivity;->getPostHelper()Lcom/narvii/post/PostHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/post/ThreadPostNewActivity;


# direct methods
.method constructor <init>(Lcom/narvii/chat/post/ThreadPostNewActivity;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity$2;->this$0:Lcom/narvii/chat/post/ThreadPostNewActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/post/PostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected getPhotoUploadTarget(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostNewActivity$2;->this$0:Lcom/narvii/chat/post/ThreadPostNewActivity;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/post/ThreadPostNewActivity;->G(Lcom/narvii/chat/post/ThreadPostNewActivity;)Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostNewActivity$2;->this$0:Lcom/narvii/chat/post/ThreadPostNewActivity;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/chat/post/ThreadPostNewActivity;->G(Lcom/narvii/chat/post/ThreadPostNewActivity;)Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->getCurrentSelect()Lcom/narvii/model/Media;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostNewActivity$2;->this$0:Lcom/narvii/chat/post/ThreadPostNewActivity;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/narvii/chat/post/ThreadPostNewActivity;->G(Lcom/narvii/chat/post/ThreadPostNewActivity;)Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->getCurrentSelect()Lcom/narvii/model/Media;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    const-string p1, "chat-background"

    .line 41
    return-object p1

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/post/PostHelper;->getPhotoUploadTarget(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    return-object p1
.end method
