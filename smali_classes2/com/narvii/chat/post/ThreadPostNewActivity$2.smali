.class Lcom/narvii/chat/post/ThreadPostNewActivity$2;
.super Lcom/narvii/post/PostHelper;
.source "ThreadPostNewActivity.java"


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

    .line 200
    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity$2;->this$0:Lcom/narvii/chat/post/ThreadPostNewActivity;

    invoke-direct {p0, p2}, Lcom/narvii/post/PostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected getPhotoUploadTarget(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostNewActivity$2;->this$0:Lcom/narvii/chat/post/ThreadPostNewActivity;

    invoke-static {v0}, Lcom/narvii/chat/post/ThreadPostNewActivity;->access$500(Lcom/narvii/chat/post/ThreadPostNewActivity;)Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostNewActivity$2;->this$0:Lcom/narvii/chat/post/ThreadPostNewActivity;

    invoke-static {v0}, Lcom/narvii/chat/post/ThreadPostNewActivity;->access$500(Lcom/narvii/chat/post/ThreadPostNewActivity;)Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->getCurrentSelect()Lcom/narvii/model/Media;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostNewActivity$2;->this$0:Lcom/narvii/chat/post/ThreadPostNewActivity;

    invoke-static {v0}, Lcom/narvii/chat/post/ThreadPostNewActivity;->access$500(Lcom/narvii/chat/post/ThreadPostNewActivity;)Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->getCurrentSelect()Lcom/narvii/model/Media;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "chat-background"

    return-object p1

    .line 206
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/post/PostHelper;->getPhotoUploadTarget(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
