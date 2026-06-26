.class Lcom/narvii/widget/MoodView$3;
.super Ljava/lang/Object;
.source "MoodView.java"

# interfaces
.implements Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/MoodView;->setMoodSticker(Lcom/narvii/model/User;Lcom/narvii/model/Sticker;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/MoodView;

.field final synthetic val$isMemberShip:Z

.field final synthetic val$sticker:Lcom/narvii/model/Sticker;


# direct methods
.method constructor <init>(Lcom/narvii/widget/MoodView;Lcom/narvii/model/Sticker;Z)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/narvii/widget/MoodView$3;->this$0:Lcom/narvii/widget/MoodView;

    iput-object p2, p0, Lcom/narvii/widget/MoodView$3;->val$sticker:Lcom/narvii/model/Sticker;

    iput-boolean p3, p0, Lcom/narvii/widget/MoodView$3;->val$isMemberShip:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 228
    iget-object p1, p0, Lcom/narvii/widget/MoodView$3;->this$0:Lcom/narvii/widget/MoodView;

    invoke-static {p1}, Lcom/narvii/widget/MoodView;->access$200(Lcom/narvii/widget/MoodView;)Lcom/narvii/model/User;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 229
    iget-object p1, p0, Lcom/narvii/widget/MoodView$3;->this$0:Lcom/narvii/widget/MoodView;

    iget-object p2, p0, Lcom/narvii/widget/MoodView$3;->val$sticker:Lcom/narvii/model/Sticker;

    iget-boolean p3, p0, Lcom/narvii/widget/MoodView$3;->val$isMemberShip:Z

    invoke-static {p1, p2, p3}, Lcom/narvii/widget/MoodView;->access$300(Lcom/narvii/widget/MoodView;Lcom/narvii/model/Sticker;Z)V

    :cond_0
    return-void
.end method

.method public onPostExecute(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;Ljava/lang/String;)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/narvii/widget/MoodView$3;->this$0:Lcom/narvii/widget/MoodView;

    invoke-static {v0}, Lcom/narvii/widget/MoodView;->access$200(Lcom/narvii/widget/MoodView;)Lcom/narvii/model/User;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 241
    iget-object p2, p0, Lcom/narvii/widget/MoodView$3;->this$0:Lcom/narvii/widget/MoodView;

    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->getMoodColor()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/narvii/widget/MoodView;->updateMoodColor(I)V

    :cond_0
    return-void
.end method

.method public onProgressUpdate(IILjava/lang/String;)V
    .locals 0

    return-void
.end method
